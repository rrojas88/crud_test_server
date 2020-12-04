import 'package:boilerplate/clean_architecture/categorias/data/datasource/categorias_datasource.dart';
import 'package:boilerplate/clean_architecture/categorias/data/models/categorias_enabled_model.dart';
import 'package:boilerplate/clean_architecture/categorias/data/models/categorias_redeemed_model.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/errors/errors.dart';
import 'package:boilerplate/core/services/network/constants/endpoints.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
// 

class DioDataSource implements CategoriaDatasource {
  DioDataSource(this.dioClient);
  final Dio dioClient;

  @override
  Future<List<CategoriaEnabledModel>> getListCategorias() async {
	  print('Inicio Peticion....');
    //final preferences = await SharedPreferences.getInstance();
    final response = await dioClient.get('http://192.168.5.128:3002/categorias',
		options: Options(
			headers: {
				//'Content-Type': 'application/json',
				//'Authorization': 'Bearer ${preferences.getString('idToken')}'
			},
			followRedirects: false,
			validateStatus: (status) => status < 500,
		),
    );
		print('Response Categorias');
		print( response );
		if (response.statusCode == 200) {
			final list = (response.data['data'] as List)
			.map(
			(e) => CategoriaEnabledModel.fromMap(e),
			)
			.toList();
			print( 'Fin response' );

			return list;
		} else {
			throw CategoriaDatasourceError( messageError: 'Error en el codigo de respuesta' );
		}
  }

  @override
  Future<List<CategoriaRedeemedModel>> getCategoriasRedeemed() async {
    final preferences = await SharedPreferences.getInstance();
    final response = await dioClient.get(
      '${Endpoints.baseUrl}api/specialoffers/redeemed',
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${preferences.getString('idToken')}'
        },
        followRedirects: false,
        validateStatus: (status) => status < 500,
      ),
    );
    if (response.statusCode == 200) {
      final list = (response.data['data'] as List)
          .map(
            (e) => CategoriaRedeemedModel.fromMap(e),
          )
          .toList();
      return list;
    } else {
      throw CategoriaDatasourceError(
        messageError: 'Error en el codigo de respuesta',
      );
    }
  }

  @override
  Future<bool> setRedeemCategoria(int id) async {
    final preferences = await SharedPreferences.getInstance();
    final response = await dioClient.post(
      '${Endpoints.baseUrl}api/specialoffers/$id/redeem',
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${preferences.getString('idToken')}'
        },
        followRedirects: false,
        validateStatus: (status) => status < 500,
      ),
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      throw CategoriaDatasourceError(
        messageError: 'Error en el codigo de respuesta',
      );
    }
  }
}
