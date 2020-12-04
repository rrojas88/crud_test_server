import 'package:boilerplate/clean_architecture/animations/hide_widget_animation.dart';
import 'package:boilerplate/clean_architecture/categorias/domain/entities/categoria.dart';
import 'package:boilerplate/clean_architecture/categorias/presenter/custom_painter/custom_painter.dart';
import 'package:boilerplate/clean_architecture/categorias/presenter/categorias_bloc.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/ui/screens/common/my_alert_dialog.dart';
import 'package:boilerplate/utils/device/size_utils_device.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:provider/provider.dart';

class CardEnabledCategoria extends StatelessWidget {
  const CardEnabledCategoria({Key key, @required this.categoria}) : super(key: key);

  //final Categoria categoria;
  final String categoria;

	@override
	Widget build(BuildContext context) {
		
		final bloc = Provider.of<CategoriasBloc>(context, listen: false);

		return Column(
			mainAxisAlignment: MainAxisAlignment.start,
			crossAxisAlignment: CrossAxisAlignment.start,
			children: [
				Padding(
					padding: EdgeInsets.symmetric(
						horizontal: SizeConfig.heightMultiplier * 5,
					),
					child: Container(
						child: Text( categoria ),
					),
				),
				Text(
					'Category Body'
				)
			],
		);
	}
}
