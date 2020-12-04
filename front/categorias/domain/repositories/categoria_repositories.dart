import 'package:boilerplate/clean_architecture/categorias/domain/entities/categoria.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';

abstract class CategoriaRepository {
  Future<Either<CategoriaError, List<Categoria>>> categoriasEnabled();
  Future<Either<CategoriaError, List<Categoria>>> categoriasRedeemed();
  Future<Either<CategoriaError, bool>> redeemCategoria(int id);
}
