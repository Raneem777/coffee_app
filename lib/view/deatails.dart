import 'package:coffe/controller/controller.dart';
import 'package:coffe/model/modelData.dart';
import 'package:coffe/view/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Deatails extends StatelessWidget {
  Deatails({super.key, required this.data});
  final Data data;
  var control2 = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              data.image,
              height: 300,
            ),
            Text(
              data.subTitle,
              style: TextStyle(color: Colors.white54, fontSize: 20),
            ),
            Text(
              data.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                data.description,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                children: [
                  Text("Price",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      data.price,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                          fontSize: 15),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove),
                          color: Colors.orange,
                        ),
                        Text(
                          "1",
                          style: TextStyle(color: Colors.white),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: Colors.orange,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              children: [
                Container(
                  child: TextButton(
                    child: Text(
                      "Add to cart",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      control2.addToCart(data);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                  ),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(15)),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 60,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
