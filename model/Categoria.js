
const { Sequelize, DataTypes } = require('sequelize');

const bd = require('./bd')
const sequelize = bd.sequelize

const Categoria = sequelize.define('categoria', {
	nombre: {
		type: DataTypes.STRING(30),
		allowNull: false,
		unique: true
	},
	activo: {
		type: DataTypes.BOOLEAN,
		defaultValue: true
	},
	imagen: {
		type: DataTypes.STRING(1000)
	},
	ruta: {
		type: DataTypes.STRING(300)
	},
}, {
	sequelize,
	timestamps: true,
	createdAt: 'f_creacion',
	updatedAt: 'f_edicion',
    modelName: 'Categoria',
    //freezeTableName: true, // Nombre de la tabla igual al del modelo
    tableName: 'categorias',
    underscored: true,// Permitir "_" en campos/columnas FOREIGN KEY ???
})

const init = async () => {
	await sequelize.sync();
	console.log('TB Categoria ready ...!');
}
init()

module.exports = Categoria;
