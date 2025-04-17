const puppeteer = require('puppeteer');
const { getURLs, savePrices, dayOfLastParse } = require('./db');
const config = require('./config');

const sleep = ms => new Promise(resolve => setTimeout(resolve, ms));
let urls = []
const waitTimeMS = 6000

const antibotPass = async (page) => { // Обходим защиту против ботов у озона
  await page.goto('https://www.ozon.ru')
  try {
    await page.waitForSelector('#reload-button', {timeout: 5000})
    await page.click('#reload-button')
  } catch(e) {
    if (e instanceof puppeteer.TimeoutError) {
      await page.goto('https://www.ozon.ru')
    }
  }
}

const errorLog = (e, url) => {
  if (e instanceof puppeteer.TimeoutError) {
    console.log(`Не удалось спарсить товар по ссылке ${url}`)
  }
}

const startParser = async (id, url) => {
  const lastParseDate = await dayOfLastParse()
  const today = new Date().toJSON().substring(0,10)
  if (today === lastParseDate.date && !url) {
    return console.log('Сегодня уже был массовый парсинг товаров. Повторный запуск парсинга только вручную.')
  }
  let isOzonFirst = true
  const browser = await puppeteer.launch({
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
      // "--single-process",
      "--disable-gpu",
      '--disable-blink-features=AutomationControlled',
    ],
  })
  if (!id || !url) {
    const data = await getURLs({isActive: true})
    urls = data.rows
  } else {
    urls = []
    urls.push({id, url})
  }
  const page = await browser.newPage()
  page.setCacheEnabled(true)
  await page.setUserAgent('Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36');
  await page.setExtraHTTPHeaders({
    'Accept-Language': 'en-US,en;q=0.9',
    'Referer': 'https://example.com',
  });
  // Начинаем собирать данные
  let num = 1
  let successAmount = 0

  while (num <= urls.length) {
    const url = urls[num - 1].url
    const name = urls[num - 1].name
    if (isOzonFirst && (url.indexOf('www.ozon.ru') != -1)) {
      isOzonFirst = false
      await antibotPass(page)
    }
    try {
      await page.goto(url, {waitUntil: 'load', timeout: 60000})
    } catch(e) {
      console.log(`Страница с товаром «${name}» не загрузилась до конца`)
    }
    let selector = (url.indexOf('www.ozon.ru') == -1)
    ? "span.sales-block-offer-price__price-final"
    : 'div[data-widget="webPrice"] > div > div > button > span > div > div > div > div > span'
    try {
      await page.waitForSelector(selector, {timeout: waitTimeMS})
    } catch(e) {
      if (e instanceof puppeteer.TimeoutError) {
        // errorLog(e, url)
        selector = 'div[data-widget="webPrice"] > div > div > div > div > span'
        try {
          await page.waitForSelector(selector, {timeout: waitTimeMS})
        } catch(e) {
          // errorLog(e, url)
        }
      }
    }
    
    let price = await page.evaluate((selector, url) => {
      const el = document.querySelector(selector)
      let text = '0'
      if (el) {
        text = el.innerText
      }
      let bonusValue = '0'
      if (url.indexOf('www.ozon.ru') == -1) {
        const el = document.querySelector('div.pdp-cashback-table__money-bonus.money-bonus.xs.money-bonus_loyalty > span.bonus-amount')
        if (el) {
          bonusValue = document.querySelector('div.pdp-cashback-table__money-bonus.money-bonus.xs.money-bonus_loyalty > span.bonus-amount').innerText
        }
      }
      return Number(text.replace(/[^0-9]/g,"")) - Number(bonusValue.replace(/[^0-9]/g,""))
    }, selector, url)
    if (price > 0) {
      savePrices({id: urls[num - 1].id, price})
      successAmount += 1
    } else {
      console.log(`Не удалось спарсить товар «${name}»`)
    }
    num += 1
  }
  console.log(`Цены обновлены. Успешно ${successAmount} из ${urls.length}`)
  await browser.close()
}

startParser()

module.exports = {startParser}