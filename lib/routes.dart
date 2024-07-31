import 'package:flutter/material.dart';
import 'package:app_animacoes/AnimacaoImplicita.dart';
import 'package:app_animacoes/CriandoAnimacoesBasicas.dart';
import 'package:app_animacoes/Home.dart';
import 'package:app_animacoes/AnimacaoTween.dart';
import 'package:app_animacoes/AnimacoesExplicitasConstruidas.dart';
import 'package:app_animacoes/MaisSobreAnimacoes.dart';

class Routes {

  static const String routeAnimacoesImplicita = "/animacoes-implicita";
  static const String routeAnimacoesBasicas = "/animacoes-basicas";
  static const String routeAnimacoesTween = "/animacoes-tween";
  static const String routeAnimacoesExplicitas = "/animacoes-explicitas";
  static const String routeMaisSobreAnimacoes = "/animacoes-extras";

  static Route<dynamic> generateRoute(RouteSettings settings){

    switch( settings.name ){
      case "/":
        return MaterialPageRoute(
            builder: (_) => const Home()
        );
      case routeAnimacoesImplicita:
        return MaterialPageRoute(
            builder: (_) => AnimacaoImplicita()
        );
      case routeAnimacoesBasicas:
        return MaterialPageRoute(
            builder: (_) => CriandoAnimacoesBasicas()
        );
      case routeAnimacoesTween:
        return MaterialPageRoute(
            builder: (_) => AnimacaoTween()
        );
      case routeAnimacoesExplicitas:
        return MaterialPageRoute(
            builder: (_) => AnimacoesExplicitasConstruidas()
        );
      case routeMaisSobreAnimacoes:
        return MaterialPageRoute(
            builder: (_) => MaisSobreAnimacoes()
        );
      default:
        return _erroRota();
    }

  }

  static Route<dynamic> _erroRota(){
    return MaterialPageRoute(
        builder: (_){
          return Scaffold(
            appBar: AppBar(title: const Text("Tela não encontrada!"),),
            body: const Center(
              child: Text("Tela não encontrada!"),
            ),
          );
        }
    );
  }
}