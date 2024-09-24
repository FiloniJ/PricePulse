const Sequelize = require('sequelize');

module.exports = (sequelize) => {
  return sequelize.define('DailyPrice', {
    id: {
      type: Sequelize.SMALLINT.UNSIGNED,
      primaryKey: true
    },
    item: {
      type: Sequelize.SMALLINT.UNSIGNED,
    },
    date: {
      type: Sequelize.DATE
    },
    price: {
      type: Sequelize.MEDIUMINT.UNSIGNED
    }
  }, {
    timestamps: false,
    tableName: 'daily_price'
  })
}