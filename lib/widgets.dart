import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

String person1 =
    "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60";
String person2 =
    "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60";
String person3 =
    "https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60";
String person4 =
    "https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60";
String person5 =
    "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60";
String person6 =
    "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60";
String person7 =
    "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60";


AppBar myappBar() {
  return AppBar(
    title: const Text(
      "Instagram",
      style: TextStyle(
          fontFamily: "myFont",
          fontWeight: FontWeight.w500,
          fontSize: 40,
          color: Colors.black
          ),
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    actions: [
      IconButton(
          iconSize: 32,
          onPressed: () {},
          icon: const Icon(
            MdiIcons.plusBox,
            color: Colors.black,
          )),
      IconButton(
          iconSize: 32,
          onPressed: () {},
          icon: const Icon(
            MdiIcons.facebookMessenger,
            color: Colors.black,
          ))
    ],
  );
}

class storyTile extends StatelessWidget {
  const storyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (
        BuildContext context,
        int index,
      ) {
        return stories();
      },
      scrollDirection: Axis.horizontal,
      itemCount: 1,
    );
  }
}

Container stories() {
  return Container(
    height: 100,
    color: Colors.white,
    padding: const EdgeInsets.all(5),
    child: Row(
      children: [
        personalStories(
          "Your Story",
          person1,
        ),
        personalStories(
          "David Micheal",
          person2,
        ),
        personalStories(
          "Ivanda strunic",
          person3,
        ),
        personalStories(
          "Cutie princess",
          person4,
        ),
        personalStories("Baba@insta", person6),
        personalStories("2_pac", person7),
        personalStories(
          "Chnegy",
          person5,
        ),
        personalStories(
          "DrinQueen",
          person2,
        ),
        personalStories("2_slow", person6),
        personalStories("The_gunta", person7),
      ],
    ),
  );
}

Container personalStories(
  String name,
  String person,
) {
  return Container(
    margin: const EdgeInsets.all(5),
    child: Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.pink,
                  Colors.yellow,
                ],
              )),
          child: Center(
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(person), fit: BoxFit.cover)),
            ),
          ),
        ),
        Text(
          name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 10,
          ),
        ),
      ],
    ),
  );
}

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: const EdgeInsets.only(top: 90),
      decoration: const BoxDecoration(color: Colors.amberAccent),
      child: Stack(
        children:const[
          
        ]
      ),
    );
  }
}

