const Sequelize = require('sequelize');
const CONFIG = require('../config');

const sequelize = new Sequelize(CONFIG.database, CONFIG.username, CONFIG.password, {
  dialect: 'mysql',
  host: CONFIG.host,
  logging: false
})
const Urls = require('./Urls')(sequelize)
const DailyPrice = require('./DailyPrice')(sequelize)

module.exports = {
  sequelize,
  Urls,
  DailyPrice
}