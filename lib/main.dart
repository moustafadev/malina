import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:malina/features/home/presentation/bloc/home_bloc.dart';
import 'package:malina/features/home/presentation/screen/home_screen.dart';

import 'core/constants.dart';
import 'core/routes/routes_page.dart';
import 'locator.dart';

void main() async{
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1),(){
      FlutterNativeSplash.remove();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) =>
            locator<HomeBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Malina',
        theme: ThemeData(
          primaryColor: Colors.brown[50],
        ),
        routes: RoutesPage.routes,
        home: const HomeScreen(),
        //const AuthPageScreen(),
      ),
    );
  }
}

