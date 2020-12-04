import 'package:boilerplate/clean_architecture/categorias/presenter/categorias_bloc.dart';
import 'package:boilerplate/ui/screens/auth_page/sign_in_page/00_sign_in_page.dart';
import 'package:boilerplate/ui/shared/app_bar/bottom_bar.dart';
import 'package:boilerplate/ui/shared/app_bar/default_app_bar.dart';
import 'package:boilerplate/ui/shared/button/floating_button.dart';
import 'package:boilerplate/ui/shared/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriasPage extends StatefulWidget {
  const CategoriasPage({Key key}) : super(key: key);

  @override
  _CategoriasPageState createState() => _CategoriasPageState();
}

class _CategoriasPageState extends State<CategoriasPage> with SingleTickerProviderStateMixin {
  CategoriasBloc bloc;

  @override
  void initState() {
    bloc = Provider.of<CategoriasBloc>(context, listen: false);
    bloc.tabController = TabController(
      length: bloc.listPage.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    //bloc.tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
          false,
          null,
          Size(MediaQuery.of(context).size.height,
              MediaQuery.of(context).size.height * 0.06),
          'home_title'),
      drawer: DrawerCustomize(),
      bottomNavigationBar: BottomBar(),
      floatingActionButton: PassportBottom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 17,
            width: SizeConfig.screenWidthDynamic,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/bg-home.jpg'),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              'Tickers Dorados',
              style: TextStyle(
                fontSize: SizeConfig.heightMultiplier * 5,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.5, 1.5),
                    blurRadius: 5.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ],
              ),
            ),
          ),
			//Text('Opciones TABs'),
			
          TabBar(
            controller: bloc.tabController,
            tabs: [
              Tab(
                text: 'Listado',
              ),
              Tab(
                text: 'Seleccionar',
              ),
            ],
          ),
          Expanded(
			  	//child: Text(' Visor TABs '),
				
				child: TabBarView(
					children: bloc.listPage,
					controller: bloc.tabController,
				), 
          ),
        ],
      ),
    );
  }
}
