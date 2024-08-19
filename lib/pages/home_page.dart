import 'package:flutter/material.dart';

import '../components/option.dart';
import '../models/search_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<SearchModel> models = [];

  void _getModels() {
    models = SearchModel.getModels();
  }

  @override
  Widget build(BuildContext context) {
    _getModels();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 90),
              Text(
                "Hello James",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Make your day easy with us",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Option(
                    boxColor: Colors.deepPurple.withOpacity(0.5),
                    height: 250,
                    text1: "Talk with\nCooper",
                    text2: "Let's try it now",
                    icon: Icons.notification_add,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Option(
                        boxColor:
                            Color.fromARGB(255, 190, 198, 44).withOpacity(0.5),
                        height: 120,
                        text1: "New chat",
                        icon: Icons.message_sharp,
                      ),
                      SizedBox(height: 10),
                      Option(
                        boxColor: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                        height: 120,
                        text1: "Search",
                        icon: Icons.scale,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Search",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              searchListView(),
            ],
          ),
        ),
      ),
    );
  }

  ListView searchListView() {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(27),
          child: Container(
            color: Colors.deepPurpleAccent.withOpacity(.02),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: models[index].boxColor,
                        ),
                        child: Icon(
                          models[index].icon,
                          size: 25,
                          color: models[index].iconColor,
                        ),
                        padding: EdgeInsets.all(4),
                      ),
                      SizedBox(width: 16),
                      Text(models[index].text),
                    ],
                  ),
                  const Icon(Icons.more_horiz_rounded),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: models.length,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
    );
  }
}
