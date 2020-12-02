
const { Sequelize } = require('sequelize')

const sequelize = new Sequelize({
	dialect: 'sqlite',
	storage: 'model/db.sqlite'
})


const initBD = async () => {
	try {
		await sequelize.authenticate()
		console.log('SQLITE OK.')
	}
	catch (error) {
		console.error('Error Sqlite:', error)
	}
}

module.exports = {
	initBD,
	sequelize
}
