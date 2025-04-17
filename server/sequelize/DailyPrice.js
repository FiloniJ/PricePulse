const Sequelize = require('sequelize');

module.exports = (sequelize) => {
  return sequelize.define('DailyPrice', {
    id: {
      type: Sequelize.SMALLINT,
      primaryKey: true,
      autoIncrement: true
    },
    item: {
      type: Sequelize.SMALLINT,
    },
    date: {
      type: Sequelize.DATE
    },
    price: {
      type: Sequelize.INTEGER
    }
  }, {
    timestamps: false,
    tableName: 'daily_price'
  })
}