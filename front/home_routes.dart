




home.dart

Padding(
									padding: const EdgeInsets.only(right: 20),
									child: IconButton(
										icon: Icon(Icons.adb),
										color: AppColors.yellow[500],
										onPressed: () {
											setState(() {
												Navigator.of(context)
													.pushReplacementNamed(
														Routes.categorias,
														arguments: {} );
											});
										},
									)
                                ),
                                
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
class Routes {
  Routes._();

  //static variables
  static const String categorias = '/categorias';

static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
	  case categorias:
        return MaterialPageRoute(
          builder: (_) => CategoriasInjection.injection(),
        );

 }
  }
}

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++









