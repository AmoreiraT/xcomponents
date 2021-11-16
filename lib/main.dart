import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xcomponents/features/product/bloc/product_bloc.dart';
import 'package:xcomponents/features/product/presentation/product_page.dart';
import 'package:xcomponents/view/home.dart';
import 'package:xcomponents/xcomponets/components/x_app.dart';
import 'package:xcomponents/xcomponets/x_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductBloc>(
          create: (BuildContext context) => ProductBloc(),
          child: ProductPage(),
        ),
      ],
      child: XApp(
        title: 'X Components',
        theme: XTheme().build(context),
        home: const Home(),
        routes: {
          'home': (context) => const Home(),
          'product': (context) => ProductPage(),
        },
      ).build(context),
    );
  }
}
