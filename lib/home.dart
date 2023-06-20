import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:myappBar(),
      body: Container(
          child: Stack(
            children: const [
            storyTile(),
            Posts(),
          ],
          ),
      )
    );
  }
}