const Sequelize = require('sequelize');

module.exports = (sequelize) => {
  return sequelize.define('Urls', {
    id: {
      type: Sequelize.SMALLINT.UNSIGNED,
      primaryKey: true
    },
    url: {
      type: Sequelize.STRING(255)
    },
    name: {
      type: Sequelize.STRING(100)
    },
    isActive: {
      type: Sequelize.TINYINT(1)
    }
  }, {
    timestamps: false,
    tableName: 'urls'
  })
}