const puppeteer = require('puppeteer');
const { getURLs, savePrices, dayOfLastParse } = require('../app/db');
const config = require('../app/config');
const ozon = require('./ozon')
const mm = require('./megamarket')

let urls = []
const waitTimeMS = 6000
let page
const parserSites = {
  'www.ozon.ru': ozon,
  'megamarket.ru': mm
}

const openBrowser = async () => {
  browser = await puppeteer.launch({
    headless: 'new',
    executablePath: config.browserPath,
    slowMo: 250,
    timeout: 60000,
    args: [
      "--no-sandbox",
      "--disable-setuid-sandbox",
      "--disable-dev-shm-usage",
      "--disable-accelerated-2d-canvas",
      "--no-first-run",
      "--no-zygote",
      "--disable-gpu",
      '--disable-blink-features=AutomationControlled',
    ],
  })
  page = await browser.newPage()
  page.setCacheEnabled(true)
  await page.setUserAgent('Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36');
  await page.setExtraHTTPHeaders({
    'Accept-Language': 'en-US,en;q=0.9',
    'Referer': 'https://example.com',
  });
  return browser
}

const isMassiveParseBlocked = async (url) => {
  const lastParseDate = await dayOfLastParse()
  const today = new Date().toJSON().substring(0,10)
  if (today === lastParseDate.date && !url) {
    console.log('Сегодня уже был массовый парсинг товаров. Повторный запуск парсинга только вручную.')
    return true
  }
}

const searchParser = (url) => {
  for (const key in parserSites) {
    if (url.indexOf(key) != -1) {
      return parserSites[key]
    }
  }
  console.error('Парсер не поддерживает данный сайт!')
  throw new Error('Парсер не поддерживает данный сайт!')
}

const getUrls = async (id, url) => {
  if (!id || !url) {
    const data = await getURLs({isActive: true})
    urls = data.rows
  } else {
    urls = []
    urls.push({id, url})
  }
  return urls
}

const parseUrls = async(urls) => {
  let num = 1
  let successAmount = 0
  while (num <= urls.length) {
    const url = urls[num - 1].url
    const name = urls[num - 1].name
    const parser = searchParser(url)
    await parser.antibot(page)
    try {
      await page.goto(url, {waitUntil: 'load', timeout: 60000})
    } catch(e) {
      console.error(`Страница с товаром «${name}» не загрузилась до конца`)
    }
    // Поиск по селекторам
    let findedSelector = false
    for (const selector of parser.selectors) {
      let idx = 1
      try {
        await page.waitForSelector(selector, {timeout: waitTimeMS})
        idx++
        findedSelector = selector
      } catch(e) {
        console.error(`Не удалось найти цену по селектору № ${idx} у парсера ${parser.name} у товара ${name}`)
      }
    }
    // Вычет бонуса с цены
    if (findedSelector) {
      let price = await page.evaluate((bonusSelector, url, selector) => {
        const el = document.querySelector(selector)
        let text = '0'
        if (el) {
          text = el.innerText
        }
        let bonusValue = '0'
        if (bonusSelector) {
          const el = document.querySelector(bonusSelector)
          if (el) bonusValue = el.innerText
        }
        return Number(text.replace(/[^0-9]/g,"")) - Number(bonusValue.replace(/[^0-9]/g,""))
      }, parser.bonusSelector, url, findedSelector)
      if (price > 0) {
        savePrices({id: urls[num - 1].id, price})
        successAmount += 1
      } else {
        console.error(`Не удалось спарсить товар «${name}»`)
      }
    }
    num += 1
  }
  return successAmount
}


const startParser = async(id, url) => {
  const isBlocked = await isMassiveParseBlocked(url)
  if (isBlocked) return
  const urls = await getUrls(id, url)
  const browser = await openBrowser()
  const successAmount = await parseUrls(urls)
  console.log(`Цены обновлены. Успешно ${successAmount} из ${urls.length}`)
  await browser.close()
}

startParser()

module.exports = { startParser }