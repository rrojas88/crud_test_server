import 'dart:convert';
import 'package:boilerplate/clean_architecture/categorias/domain/entities/categoria.dart';

class CategoriaRedeemedModel extends Categoria {
  factory CategoriaRedeemedModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return CategoriaRedeemedModel(
      id: map['id'],
      nombre: map['nombre'],
      imagen: map['imagen'],
      ruta: map['ruta'],
      activo: map['activo'],
      fCreacion: map['f_creacion'] == null ? null : DateTime.parse(map['f_creacion']),
      fEdicion: map['f_edicion'] == null ? null : DateTime.parse(map['f_edicion']),
    );
  }

  factory CategoriaRedeemedModel.fromJson(String source) =>
      CategoriaRedeemedModel.fromMap(json.decode(source));

  CategoriaRedeemedModel({
    this.id,
    this.nombre,
    this.imagen,
    this.ruta,
    this.activo,
    this.fCreacion,
    this.fEdicion,
  });

	@override
	final int id;
	@override
	final String nombre;
	@override
	final String imagen;
	@override
	final String ruta;
	@override
	final bool activo;
	@override
	final DateTime fCreacion;
	@override
	final DateTime fEdicion;

	Map<String, dynamic> toMap() {
		return {
			'id': id,
			'nombre': nombre,
			'imagen': imagen,
			'ruta': ruta,
			'activo': activo,
			'fCreacion': fCreacion == null
				? null
				: '${fCreacion.day}/${fCreacion.month}/${fCreacion.year.toString().substring(0, 2)}',
			'fEdicion': fEdicion == null
				? null
				: '${fEdicion.day}/${fEdicion.month}/${fEdicion.year.toString().substring(0, 2)}',
		};
	}

  String toJson() => json.encode(toMap());
}
