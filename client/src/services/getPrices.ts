import { PriceType } from "../types/bd"

export type dailyPriceType = {
  date: Date,
  price: number,
}

export type minPriceType = {
  minPrice: number,
  minPriceDay: Date,
  lastPrice?: number,
}

const getPrices = (prices: PriceType[]) => {
  const dailyPrice: dailyPriceType[][] = []
  const minPrice: minPriceType[] = []
  let lastDate: Date | string = ''
  prices.forEach(el => {
    if (!minPrice[el.item] || (el.price < minPrice[el.item].minPrice)) {
      minPrice[el.item] = {minPrice: el.price, minPriceDay: el.date}
    }
    minPrice[el.item].lastPrice = el.price
    lastDate = el.date
    if (!dailyPrice[el.item]) {
      dailyPrice[el.item] = []
      dailyPrice[el.item].push({date: el.date, price: el.price})
    } else {
      let lastId = dailyPrice[el.item].length - 1
      if (dailyPrice[el.item][lastId].date === el.date) {
        if (dailyPrice[el.item][lastId].price > el.price) {
          dailyPrice[el.item][lastId].price = el.price
        }
      } else {
        dailyPrice[el.item].push({date: el.date, price: el.price})
      }
    }
  })
    
  return {minPrice, lastDate, dailyPrice}
}

export default getPrices