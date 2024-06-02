import 'package:coffe/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Cart extends StatelessWidget {
  Cart({super.key});
  var control3 = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: GetBuilder<Controller>(builder: (_) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(
                control3.cartList.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 100,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset(control3.cartList[index].image),
                              Padding(
                                padding: const EdgeInsets.all(25),
                                child: Column(
                                  children: [
                                    Text(
                                      control3.cartList[index].title,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Price",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(control3.cartList[index].price,
                                            style: TextStyle(
                                                color: Colors.orange)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.white12,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        control3.decreament(
                                            control3.cartList[index]);
                                      },
                                      icon: Icon(Icons.remove),
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      control3.cartList[index].quantity
                                          .toString(),
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          control3.increament(
                                              control3.cartList[index]);
                                        },
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
                      ),
                    )),
          ),
        );
      }),
      bottomNavigationBar: Container(
        child: TextButton(
          child: Text(
            "Add to cart",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
        height: 50,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
