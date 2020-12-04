import 'dart:convert';
import 'package:boilerplate/clean_architecture/categorias/domain/entities/categoria.dart';

class CategoriaEnabledModel extends Categoria {
  factory CategoriaEnabledModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return CategoriaEnabledModel(
      nombre: map['nombre'],
      imagen: map['imagen'],
      ruta: map['ruta'],
      activo: map['activo'],
      fCreacion: map['f_creacion'] ?? DateTime.parse(map['f_creacion']),
      fEdicion: map['f_edicion'] == null ? null : DateTime.parse(map['f_edicion']),
      id: map['id'],
    );
  }

  factory CategoriaEnabledModel.fromJson(String source) =>
      CategoriaEnabledModel.fromMap(json.decode(source));

	CategoriaEnabledModel({
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
      'expireAt': fCreacion ?? '${fCreacion.day}/${fCreacion.month}/${fCreacion.year.toString().substring(0, 2)}',
    };
  }

  String toJson() => json.encode(toMap());
}
