import 'package:design/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeliveryPageView extends StatefulWidget {
  const DeliveryPageView({super.key});

  @override
  State<DeliveryPageView> createState() => _DeliveryPageViewState();
}

List<String> options = ['option1', 'option2'];

class _DeliveryPageViewState extends State<DeliveryPageView> {
  String? valueChoose;
  List listitem = [
    'Urgent',
    'Normal',
  ];
  String currentIndex = options[0];
  //colors
  Color container1Color = Colors.transparent;
  Color container2Color = Colors.transparent;
  Color container1text = Colors.black;
  Color container2text = Colors.black;

  void changeColor(int containerIndex) {
    setState(() {
      if (containerIndex == 1) {
        container1Color = Colors.green;
        container2Color = Colors.transparent;
        container1text = Colors.white;
        container2text = Colors.black;
      } else {
        container1Color = Colors.transparent;
        container2Color = Colors.green;
        container1text = Colors.black;
        container2text = Colors.white;
      }
    });
  }

//swtich  button
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.amber[100],
        title: const Text(
          "Choose Service",
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                (Navigator.pop(context));
              },
              icon: const Icon(
                Icons.close,
                color: Colors.black38,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: SizeConfig.heightMultiplier * 70,
                width: SizeConfig.widthMultiplier * 100,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                      const Text(
                        "Select Delivery Type",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                      //lightColor Container
                      Container(
                        height: SizeConfig.heightMultiplier * 18,
                        width: SizeConfig.widthMultiplier * 100,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(
                                20,
                              ),
                              topRight: Radius.circular(20)),
                          color: Colors.amber[100],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.green,
                                          child: Icon(Icons.flight_outlined),
                                        ),
                                        SizedBox(
                                          width: SizeConfig.widthMultiplier * 2,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Air Freight",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height:
                                                  SizeConfig.widthMultiplier *
                                                      2,
                                            ),
                                            const Text(
                                              "Reliable and Hassle Free",
                                              style: TextStyle(
                                                  color: Colors.green),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Radio(
                                      fillColor: const MaterialStatePropertyAll(
                                          Colors.orange),
                                      value: options[0],
                                      groupValue: currentIndex,
                                      onChanged: (value) {
                                        setState(() {
                                          currentIndex = value.toString();
                                        });
                                      })
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.green,
                                          child: Icon(
                                              Icons.directions_boat_outlined),
                                        ),
                                        SizedBox(
                                          width: SizeConfig.widthMultiplier * 2,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Ocean Freight",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height:
                                                  SizeConfig.widthMultiplier *
                                                      2,
                                            ),
                                            const Text(
                                              "Reliable and Hassle Free",
                                              style: TextStyle(
                                                  color: Colors.green),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Radio(
                                      fillColor: const MaterialStatePropertyAll(
                                          Colors.orange),
                                      value: options[1],
                                      groupValue: currentIndex,
                                      onChanged: (value) {
                                        setState(() {
                                          currentIndex = value.toString();
                                        });
                                      })
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                      //bottom Container
                      Container(
                        height: SizeConfig.heightMultiplier * 7,
                        width: SizeConfig.widthMultiplier * 100,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(
                                20,
                              ),
                              bottomRight: Radius.circular(20)),
                          color: Colors.amber[200],
                        ),
                        //dropdown button
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 50.0),
                            child: DropdownButton(
                              icon: const Icon(
                                CupertinoIcons.arrow_down,
                                color: Colors.orange,
                              ),
                              hint: const Text(
                                "View All type",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w500),
                              ),
                              value: valueChoose,
                              onChanged: (newValue) {
                                setState(() {
                                  valueChoose = newValue.toString();
                                });
                              },
                              items: listitem.map((valueItem) {
                                return DropdownMenuItem(
                                  value: valueItem,
                                  child: Text(valueItem),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
//select container
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              changeColor(1);
                            },
                            child: Container(
                              height: SizeConfig.heightMultiplier * 20,
                              width: SizeConfig.widthMultiplier * 42,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black26),
                                color: container1Color,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    child: Icon(Icons.flight_outlined),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 2,
                                  ),
                                  Text(
                                    "Regular",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: container1text),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 2,
                                  ),
                                  Text(
                                    "Super Fast and\n Safe Delivery",
                                    style: TextStyle(color: container1text),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              changeColor(2);
                            },
                            child: Container(
                              height: SizeConfig.heightMultiplier * 20,
                              width: SizeConfig.widthMultiplier * 42,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black26),
                                color: container2Color,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    child: Icon(Icons.rocket_outlined),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 2,
                                  ),
                                  Text(
                                    "Lightning",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: container2text),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 2,
                                  ),
                                  Text(
                                    "Fast , Silent and\n Safe Delivery",
                                    style: TextStyle(color: container2text),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      //tile
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      Container(
                        height: SizeConfig.heightMultiplier * 10,
                        width: SizeConfig.widthMultiplier * 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black38)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Parcel Guranateed!",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: SizeConfig.heightMultiplier * 1,
                                    ),
                                    const Text(
                                      "More guaranteed up to 74% safe",
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ],
                                ),
                              ),
                              //swtich button
                              CupertinoSwitch(
                                activeColor: Colors.green,
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                      Container(
                        height: SizeConfig.heightMultiplier * 6,
                        width: SizeConfig.widthMultiplier * 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(255, 255, 111, 0)),
                        child: const Center(
                            child: Text("Calculate",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white))),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
