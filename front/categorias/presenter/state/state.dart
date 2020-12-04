import 'package:boilerplate/clean_architecture/categorias/domain/entities/categoria.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/errors/errors.dart';

abstract class CategoriaState {}

class CategoriaLoading implements CategoriaState {
	CategoriaLoading({this.loading});
	final String loading;
}

class CategoriaSuccess implements CategoriaState {
	CategoriaSuccess({
		this.list,
	});
	final List<Categoria> list;
}

class CategoriaLoadingError implements CategoriaState {
	CategoriaLoadingError(this.categoriaError);
	final CategoriaError categoriaError;
}
