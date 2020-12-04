const express = require("express")
const bodyParser = require('body-parser')
const cors = require('cors')
const app = express()

app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())

const bd = require('./model/bd')
bd.initBD()

const Categoria = require('./model/Categoria')

const PORT = 3002
const TOKENs = 'token1'

let usuario = {
	nombre:'',
	apellido: ''
};
let respuesta = {
	error: false,
	codigo: 200,
	statusCode: 200,
	mensaje: '',
	data: null
}

// Configurar cabeceras y cors =====================
app.use(cors())
/*
app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Authorization, X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Allow-Request-Method');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE');
    res.header('Allow', 'GET, POST, OPTIONS, PUT, DELETE');
    next();
});*/


app.get('/', function(req, res) {
	respuesta = {
		error: false,
		codigo: 200,
		mensaje: 'Punto de inicio'
	}
	res.send(respuesta);
})
app.route('/categorias')
.get( async ( req, res ) => {
	const data = await Categoria.findAll()
	//console.log('Dataa'); console.log( data )
	respuesta = {
		error: false,
		codigo: 200,
		mensaje: '',
		data
	};
	res.send(respuesta)
 })
 .post( async (req, res) => {
	 console.log( 'Cuerpo Peticion' )
	 console.log( req.body )
	 respuesta.mensaje = ''

	if( ! req.body.nombre ){
		respuesta = {
			error: true,
			codigo: 502,
			mensaje: 'El campo nombre es requerido'
		}
	}
	else if( ! req.body.token || req.body.token === null ){
		respuesta = {
			error: true,
			codigo: 502,
			mensaje: 'token requerido'
		}
	}
	else{
		if( req.body.token != TOKENs ){
			respuesta.error = true
			respuesta.codigo = 502
			respuesta.mensaje = 'Token no coincide'
		}
		else{
			let row;
			try {
				row = await Categoria.create({
					nombre: req.body.nombre,
					imagen: req.body.imagen
				})
			} catch (e) {
				console.log( 'Inicio error __________' )
				//console.log( e )
				console.log( e.errors )
				respuesta.error = true
				respuesta.codigo = 502
				respuesta.mensaje = e.errors
			}


			if( row === null || ! row ){
				respuesta.error = true
				respuesta.codigo = 502
				if( respuesta.mensaje === '' )
					respuesta.mensaje = 'Categoria no creada'
			}
			else{
				respuesta.error = false
				respuesta.data = row;
			}
		}
	}
	res.send(respuesta);
 })
 .put( async (req, res) => {
	 console.log( 'Cuerpo Update' )
	 console.log( req.body )
	 respuesta.mensaje = ''

    if( ! req.body.nombre || ! req.body.id ){
 	   respuesta = {
 		   error: true,
 		   codigo: 502,
 		   mensaje: 'El campo nombre/id es requerido'
 	   }
    }
    else if( ! req.body.token || req.body.token === null ){
 	   respuesta = {
 		   error: true,
 		   codigo: 502,
 		   mensaje: 'token requerido'
 	   }
    }
    else{
 	   if( req.body.token != TOKENs ){
 		   respuesta.error = true
 		   respuesta.codigo = 502
 		   respuesta.mensaje = 'Token no coincide'
 	   }
 	   else{
 		   let row;
 		   try {
	 			  row = await Categoria.findByPk( req.body.id );
				  row.nombre = req.body.nombre;
				  row.imagen = req.body.imagen;
			      await row.save();
 		   } catch (e) {
 			   console.log( 'Inicio error Upd__________' )
 			   //console.log( e )
 			   console.log( e.errors )
 			   respuesta.error = true
 			   respuesta.codigo = 502
 			   respuesta.mensaje = e.errors
 		   }
 		   if( row === null || ! row ){
 			   respuesta.error = true
 			   respuesta.codigo = 502
 			   if( respuesta.mensaje === '' )
 				   respuesta.mensaje = 'Categoria no actualizada'
 		   }
 		   else{
 			   respuesta.error = false
 			   respuesta.data = row;
 		   }
 	   }
    }
	res.send(respuesta);
 })
.delete( async (req, res) => {
	console.log( 'ID => ' +  req.body.id )
	respuesta.mensaje = ''

   if( ! req.body.id ){
	  respuesta = {
		  error: true,
		  codigo: 502,
		  mensaje: 'El id es requerido'
	  }
   }
   else if( ! req.body.token || req.body.token === null ){
	  respuesta = {
		  error: true,
		  codigo: 502,
		  mensaje: 'token requerido'
	  }
   }
   else{
	  if( req.body.token != TOKENs ){
		  respuesta.error = true
		  respuesta.codigo = 502
		  respuesta.mensaje = 'Token no coincide'
	  }
	  else{
		  let row;
		  try {
			  row = await Categoria.findByPk( req.body.id );
		  } catch (e) {
			  console.log( 'Inicio error Upd__________' )
			  //console.log( e )
			  console.log( e.errors )
			  respuesta.error = true
			  respuesta.codigo = 502
			  respuesta.mensaje = e.errors
		  }
		  if( row === null || ! row ){
			  respuesta.error = true
			  respuesta.codigo = 502
			  if( respuesta.mensaje === '' )
				  respuesta.mensaje = 'Categoria no actualizada'
		  }
		  else{
			  respuesta.error = false
			  respuesta.data = row;
		  }
	  }
   }
	res.send(respuesta)
})

app.use(function(req, res, next) {
	respuesta = {
		error: true,
		codigo: 404,
		mensaje: 'URL no encontrada'
	}
	res.status(404).send(respuesta)
})

app.listen( PORT, () => {
	console.log(`Server Ok in Port: ${PORT}`);
})
