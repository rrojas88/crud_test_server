import 'package:boilerplate/clean_architecture/categorias/domain/errors/errors.dart';
import 'package:boilerplate/clean_architecture/categorias/presenter/enabled/card_enabled_categoria.dart';
import 'package:boilerplate/clean_architecture/categorias/presenter/state/state.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../categorias_bloc.dart';

class EnabledPage extends StatelessWidget {
  const EnabledPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final bloc = Provider.of<CategoriasBloc>(context, listen: false);

    return ValueListenableBuilder<CategoriaState>(
      valueListenable: bloc.categoriaStateEnabled,
      builder: (context, value, child) {
		  /*
        if (value is CategoriaLoading) {
          final text = (value).loading;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoActivityIndicator(
                  radius: 15,
                ),
                Text(text)
              ],
            ),
          );
        }
        if (value is CategoriaLoadingError) {
          final error =
              (value.categoriaError as CategoriaDatasourceError).messageError;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(error),
                RaisedButton(
                  onPressed: bloc.listCategoriasEnabled,
                  child: Text('Recargar'),
                  textColor: AppColors.black[500],
                  color: AppColors.yellow[500],
                )
              ],
            ),
          );
        }
		*/


        //final list = (value as CategoriaSuccess).list;
        final list = <String>['Categoria 1', 'Categoria 2'];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return CardEnabledCategoria(
                categoria: list[ index ],
              );
            },
          ),
        );
      },
    );
  }
}
