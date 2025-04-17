const Sequelize = require('sequelize');

module.exports = (sequelize) => {
  return sequelize.define('Urls', {
    id: {
      type: Sequelize.SMALLINT,
      primaryKey: true,
      autoIncrement: true
    },
    url: {
      type: Sequelize.STRING(255)
    },
    name: {
      type: Sequelize.STRING(100)
    },
    isActive: {
      type: Sequelize.BOOLEAN
    }
  }, {
    timestamps: false,
    tableName: 'urls'
  })
}