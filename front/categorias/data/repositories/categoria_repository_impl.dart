import 'package:boilerplate/clean_architecture/categorias/data/datasource/categorias_datasource.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/errors/errors.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/entities/categoria.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/repositories/categoria_repositories.dart';
import 'package:dartz/dartz.dart'; // 

class CategoriaRepositoryImpl implements CategoriaRepository {

	CategoriaRepositoryImpl(this.categoriaRepository);
	final CategoriaDatasource categoriaRepository;

	@override
	Future<Either<CategoriaError, List<Categoria>>> categoriasEnabled() async {
		try {
			final result = await categoriaRepository.getListCategorias();
			return Right(result);
		} on CategoriaDatasourceError catch (e) {
			print('error desde Implementacion del Repo'); print( e );
			return Left(e);
		}
	}


	@override
	Future<Either<CategoriaError, bool>> redeemCategoria(int id) async {
		try {
			final result = await categoriaRepository.setRedeemCategoria(id);
			return Right(result);
		} on CategoriaDatasourceError catch (e) {
			return Left(e);
		}
	}

  

	@override
	Future<Either<CategoriaError, List<Categoria>>> categoriasRedeemed() async {
		try {
		final result = await categoriaRepository.getCategoriasRedeemed();
			return Right(result);
		} on CategoriaDatasourceError catch (e) {
			return Left(e);
		}
	}
}
