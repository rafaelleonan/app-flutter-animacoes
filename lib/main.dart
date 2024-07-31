import 'package:app_animacoes/Home.dart';
import 'package:flutter/material.dart';
import 'package:app_animacoes/routes.dart';

void main() => runApp(
    const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: Routes.generateRoute,
    )
);