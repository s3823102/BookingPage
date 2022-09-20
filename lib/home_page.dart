import 'package:flutter/material.dart';

class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomePage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar
        (
        elevation: 25.0,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        leading: const Icon
          (Icons.menu,
          color: Colors.white,
        ),
        actions:
        [
          GestureDetector
            (
            child: Container
              (
              margin: const EdgeInsets.only(right: 10),
              child: const Icon
                (
                Icons.notifications_rounded,
                color: Colors.white,
              ),
            )
          )
        ],
      ),
    );
  }
  
}
