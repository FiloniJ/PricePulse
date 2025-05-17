export const name = '«Ozon»'
export const selectors = [
    'div[data-widget="webPrice"] > div > div > button > span > div > div > div > div > span',
    'div[data-widget="webPrice"] > div > div > div > div > span'
]
let isOzonFirst = true
export const antibot = async (page) => {
    if (!isOzonFirst) return
    await page.goto('https://www.ozon.ru')
    try {
        await page.waitForSelector('#reload-button', {timeout: 5000})
        await page.click('#reload-button')
    } catch(e) {
        await page.goto('https://www.ozon.ru')
    } finally {
        isOzonFirst = false
    }
}