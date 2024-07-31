import 'package:flutter/material.dart';
import 'package:app_animacoes/routes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 250,
                child: const Text("Animações implícitas"),
              ),
              onPressed: () {
                Navigator.pushNamed(context, Routes.routeAnimacoesImplicita);
              },
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 250,
                child: const Text("Animações básicas"),
              ),
              onPressed: () {
                Navigator.pushNamed(context, Routes.routeAnimacoesBasicas);
              },
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 250,
                child: const Text("Animações tween"),
              ),
              onPressed: () {
                Navigator.pushNamed(context, Routes.routeAnimacoesTween);
              },
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 250,
                child: const Text("Animações explícitas"),
              ),
              onPressed: () {
                Navigator.pushNamed(context, Routes.routeAnimacoesExplicitas);
              },
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 250,
                child: const Text("Mais sobre animações"),
              ),
              onPressed: () {
                Navigator.pushNamed(context, Routes.routeMaisSobreAnimacoes);
              },
            ),
          ],
        ),
      ),
    );
  }
}
