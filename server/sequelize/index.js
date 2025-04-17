const Sequelize = require('sequelize');
const CONFIG = require('../app/config');

const sequelize = new Sequelize(CONFIG.database, CONFIG.username, CONFIG.password, {
  dialect: 'postgres',
  host: CONFIG.host,
  port: CONFIG.port,
  logging: false
})


const Urls = require('./Urls')(sequelize)
const DailyPrice = require('./DailyPrice')(sequelize)

module.exports = {
  sequelize,
  Urls,
  DailyPrice
}