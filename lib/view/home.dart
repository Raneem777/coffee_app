import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import 'deatails.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});
  var control1 = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          shadowColor: Colors.transparent,
          leadingWidth: double.infinity,
          toolbarHeight: 170,
          leading: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.menu_outlined),
                    Spacer(),
                    Icon(Icons.notifications_rounded),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "It's a great day for coffe",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 27),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white60,
                      ),
                      Text(
                        "Find your coffe",
                        style: TextStyle(color: Colors.white60),
                      )
                    ],
                  ),
                ),
                height: 50,
                width: 390,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(15),
                ),
              )
            ],
          ),
          bottom: TabBar(
              labelColor: Colors.orange,
              unselectedLabelColor: Colors.white30,
              indicatorColor: Colors.orange,
              tabs: [
                Tab(
                  text: 'Hot coffe',
                ),
                Tab(
                  text: 'Cold coffe',
                ),
                Tab(
                  text: 'Cappuiccino',
                )
              ]),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.black),
          child: BottomNavigationBar(
            selectedItemColor: Colors.orange,
            iconSize: 35,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications_rounded,
                  ),
                  label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            ],
          ),
        ),
        body: GridView.builder(
            itemCount: control1.model.data.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (Builder, raneem) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Deatails(
                                  data: control1.model.data[raneem],
                                )));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white10,
                          spreadRadius: 1,
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    height: 400,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            control1.model.data[raneem].image,
                            height: 100,
                          ),
                          Text(
                            control1.model.data[raneem].title,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(control1.model.data[raneem].subTitle,
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 15)),
                          Row(
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(color: Colors.orange),
                              ),
                              Text(control1.model.data[raneem].price,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
