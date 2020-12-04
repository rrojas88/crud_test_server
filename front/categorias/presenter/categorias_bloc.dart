import 'package:boilerplate/clean_architecture/categorias/domain/usecases/redeem_categoria.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/usecases/categorias_enabled.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/usecases/categorias_redeemed.dart';
import 'package:boilerplate/clean_architecture/categorias/presenter/state/state.dart';
import 'package:flutter/material.dart';

import 'enabled/enabled_page.dart';
import 'redeem/redeem_page.dart';

class CategoriasBloc extends CategoriaState with ChangeNotifier {

	CategoriasBloc({
		@required this.categoriaRedeemed,
		@required this.redeemCategoria,
		@required this.categoriaEnabled,
	});

  final RedeemCategoria redeemCategoria;
  final CategoriaEnabled categoriaEnabled;
  final CategoriaRedeemed categoriaRedeemed;

  final categoriaStateEnabled = ValueNotifier<CategoriaState>(CategoriaLoading(loading: 'Cargando'));
  final categoriaStateRedeemed = ValueNotifier<CategoriaState>(CategoriaLoading(loading: 'Cargando'));

	List<Widget> listPage = [
		EnabledPage(),
		RedeemPage(), 
	];

  TabController tabController;

  Future<void> listCategoriasRedeemed() async {
    categoriaStateRedeemed.value = CategoriaLoading(loading: 'Cargando');
    final result = await categoriaRedeemed.call();
    result.fold(
      (categoriaError) =>
          categoriaStateRedeemed.value = CategoriaLoadingError(categoriaError),
      (listCategorias) =>
          categoriaStateRedeemed.value = CategoriaSuccess(list: listCategorias),
    );
  }

  Future<void> listCategoriasEnabled() async {
    categoriaStateEnabled.value = CategoriaLoading(loading: 'Cargando');
    final result = await categoriaEnabled.call(); // Llamado a metodo2 del Repositorio
    result.fold(
      (categoriaError) => categoriaStateEnabled.value = CategoriaLoadingError(categoriaError),
      (listCategorias) => categoriaStateEnabled.value = CategoriaSuccess(list: listCategorias),
    );
  }

  Future<bool> redeemedCategoria(int id) async {
    final result = await redeemCategoria.call(id);
    return result.fold((categoriaError) => false, (confirm) {
      print('se redimio el cupon categoria ========');
      listCategoriasRedeemed();
      return true;
    });
  }
}
