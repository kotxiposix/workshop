import 'package:andela_website/widgets/call_to_action.dart';
import 'package:andela_website/widgets/content_description.dart';
import 'package:andela_website/widgets/home_container.dart';
import 'package:andela_website/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpeg"), fit: BoxFit.cover),
            color: Color.fromARGB(255, 6, 129, 98)),
        child: CenteredContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavigationBarWidget(),
              Expanded(
                  child: Row(
                children: [
                  ContentDescription(),
                  Expanded(child: Center(child: CallToAtion(title: "Join us")))
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
