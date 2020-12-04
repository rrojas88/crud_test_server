class Categoria {
  Categoria({
    this.id,
    this.nombre,
    this.activo,
    this.imagen,
    this.ruta,
    this.fCreacion,
    this.fEdicion,
  });

  final int id;
  final String nombre;
  final bool activo;
  final String imagen;
  final String ruta;
  final DateTime fCreacion;
  final DateTime fEdicion;
}
