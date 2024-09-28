const CONFIG = require('./config');
const { Op } = require('sequelize');
const db = require('./db');

// URLS
const getURLs = async (params) => {
  return await db.Urls.findAndCountAll({
    offset: Number(params.offset) || 0,
    limit: Number(params.limit)|| null,
    where: {
      isActive: params.isActive
    }
  })
}

const addURL = async(data) => {
  return await db.Urls.create({url: data.url, name: data.name, isActive: 1})
}

const changeURL = async(params) => {
  return await db.Urls.update({ isActive: params.isActive }, {
    where: {
      id: params.id
    }
  })
}
// Цены
const getPrices = async (params) => {
  const urls = await getURLs({
    offset: params.offset,
    limit: params.limit,
    isActive: params.isActive
  })
  let ids = []
  urls.rows.forEach(url => {
    ids.push(url.id)
  })
  return await db.DailyPrice.findAll({
    where: {
      date: {
        [Op.gte] : params.dateFrom,
        // [Op.lte] : params.dateTo
      },
      item: ids
    }
  })
}

const savePrices = (data) => {
  const date = Date.now()
  db.DailyPrice.create({item: data.id, date, price: data.price})
}
// Проверка последней даты парсинга
const dayOfLastParse = async () => {
  return await db.DailyPrice.findOne({
    order: [
      ['id', 'DESC'],
    ],
    limit: 1
  })
}

module.exports = {
  getURLs,
  addURL,
  changeURL,
  getPrices,
  savePrices,
  dayOfLastParse
}