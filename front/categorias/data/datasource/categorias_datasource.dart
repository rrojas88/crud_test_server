import 'package:boilerplate/clean_architecture/categorias/data/models/categorias_enabled_model.dart';
import 'package:boilerplate/clean_architecture/categorias/data/models/categorias_redeemed_model.dart';

abstract class CategoriaDatasource {
  Future<List<CategoriaEnabledModel>> getListCategorias();
  Future<List<CategoriaRedeemedModel>> getCategoriasRedeemed();
  Future<bool> setRedeemCategoria(int id);
}
