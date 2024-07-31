import 'package:flutter/material.dart';

class AnimacaoImplicita extends StatefulWidget {
  @override
  _AnimacaoImplicitaState createState() => _AnimacaoImplicitaState();
}

class _AnimacaoImplicitaState extends State<AnimacaoImplicita> {

  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animação Implícita",),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              AnimatedContainer(
                padding: const EdgeInsets.all(20),
                width: _status ? 200 : 300 ,
                height: _status ? 300 : 200,
                color: _status ? Colors.white : Colors.purpleAccent,
                duration: const Duration(seconds: 2),
                curve: Curves.elasticInOut,
                child: Image.asset("assets/images/logo.png"),
              ),
              TextButton(
                child: const Text("Alterar"),
                onPressed: (){
                  setState(() {
                    _status = !_status;
                  });
                },
              )
            ],
          ),
        ],
      )
    );
  }
}
