import 'package:flutter/material.dart';
import 'package:flutter_cripto_moedas/config/app_settings.dart';
import 'package:flutter_cripto_moedas/repositories/conta_repository.dart';
import 'package:flutter_cripto_moedas/repositories/favoritas_repository.dart';
import 'package:provider/provider.dart';

import 'config/hive_config.dart';
import 'meu_aplicativo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveConfig.start();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContaRepository()),
        ChangeNotifierProvider(create: (context) => AppSettings()),
        ChangeNotifierProvider(create: (context) => FavoritasRepository()),
      ],
      child: MeuAplicativo(
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
