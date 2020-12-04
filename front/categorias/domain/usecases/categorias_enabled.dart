import 'package:boilerplate/clean_architecture/categorias/domain/entities/categoria.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/errors/errors.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/repositories/categoria_repositories.dart';
import 'package:dartz/dartz.dart';

// ignore: one_member_abstracts
abstract class CategoriaEnabled {
	Future<Either<CategoriaError, List<Categoria>>> call();
}

class CategoriaEnabledImpl implements CategoriaEnabled {

	CategoriaEnabledImpl(this.categoriaRepository);

	final CategoriaRepository categoriaRepository;

	@override
	Future<Either<CategoriaError, List<Categoria>>> call() async {
		return categoriaRepository.categoriasEnabled();
	}
}
