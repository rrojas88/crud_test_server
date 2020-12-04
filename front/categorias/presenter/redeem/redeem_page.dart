import 'package:boilerplate/clean_architecture/categorias/domain/errors/errors.dart';
import 'package:boilerplate/clean_architecture/categorias/presenter/redeem/card_redeem_ticket.dart';
import 'package:boilerplate/clean_architecture/categorias/presenter/state/state.dart';
import 'package:boilerplate/clean_architecture/categorias/presenter/categorias_bloc.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RedeemPage extends StatelessWidget {
	const RedeemPage({Key key}) : super(key: key);

	@override
	Widget build(BuildContext context) {

		//final bloc = Provider.of<TicketsBloc>(context, listen: false);

		return Container(
			child: Text('Tab sin Contenido..'),
		);
	}
}
