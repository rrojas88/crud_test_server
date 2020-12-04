import 'package:boilerplate/clean_architecture/categorias/data/datasource/categorias_datasource.dart';
import 'package:boilerplate/clean_architecture/categorias/data/repositories/categoria_repository_impl.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/repositories/categoria_repositories.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/usecases/redeem_categoria.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/usecases/categorias_enabled.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/usecases/categorias_redeemed.dart';
import 'package:boilerplate/clean_architecture/categorias/external/dio_datasource.dart';
import 'package:boilerplate/clean_architecture/categorias/presenter/categorias_bloc.dart';
import 'package:boilerplate/clean_architecture/categorias/presenter/categorias_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriasInjection {
  CategoriasInjection._();

  static Widget injection() {
    return MultiProvider(
      providers: [
		  
        Provider<Dio>( // Cliente HTTP
          create: (context) => Dio(),
        ),
		
        Provider<CategoriaDatasource>( // Clase abstracta con metodos1 obligados para las:
			create: (context) => DioDataSource( // Llamadas a API
				context.read<Dio>(),
			),
        ),
		
        Provider<CategoriaRepository>( // Otra Clase abstracta con metodos2 obligados (que contienen metodos1)
          create: (context) =>
              CategoriaRepositoryImpl(context.read<CategoriaDatasource>()),// CategoriaRepositoryImpl->Clase con metodos2
        ),
		Provider<CategoriaEnabled>( // Clase abstracta que implementa el Repositorio
          create: (context) =>
              CategoriaEnabledImpl(context.read<CategoriaRepository>()),
        ),
        Provider<RedeemCategoria>(
          create: (context) =>
              RedeemCategoriaImpl(context.read<CategoriaRepository>()),
        ),
        Provider<CategoriaRedeemed>(
          create: (context) =>
              CategoriaRedeemedImpl(context.read<CategoriaRepository>()),
        ),
		
        ChangeNotifierProvider<CategoriasBloc>( // Inicializa Controlador BLOC
			create: (context) => CategoriasBloc(
				categoriaEnabled: context.read<CategoriaEnabled>(),
				redeemCategoria: context.read<RedeemCategoria>(),
				categoriaRedeemed: context.read<CategoriaRedeemed>(),
          	)
            ..listCategoriasEnabled(), // Ejecuta metodo al iniciar del Bloc
            //..listTicketsRedeemed()
        ),
		
      ],
      child: CategoriasPage(),
    );
  }
}
