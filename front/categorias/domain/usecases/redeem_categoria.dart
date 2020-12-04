import 'package:dartz/dartz.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/errors/errors.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/repositories/categoria_repositories.dart';

// ignore: one_member_abstracts
abstract class RedeemCategoria {
  Future<Either<CategoriaError, bool>> call(int id);
}

class RedeemCategoriaImpl implements RedeemCategoria {
  RedeemCategoriaImpl(this.categoriaRepository);

  final CategoriaRepository categoriaRepository;

  @override
  Future<Either<CategoriaError, bool>> call(int id) async {
    if (id == null) {
      return Left(InvalidIdError());
    }
    return categoriaRepository.redeemCategoria(id);
  }
}
