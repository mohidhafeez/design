import 'package:design/components/tile.dart';
import 'package:design/utils/size_config.dart';
import 'package:flutter/material.dart';

class DeliveryPageView extends StatefulWidget {
  const DeliveryPageView({super.key});

  @override
  State<DeliveryPageView> createState() => _DeliveryPageViewState();
}

List<String> options = ['option1', 'option2'];

class _DeliveryPageViewState extends State<DeliveryPageView> {
  String currentIndex = options[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.pink,
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
              icon: const Icon(Icons.close))
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
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                      Container(
                        height: SizeConfig.heightMultiplier * 18,
                        width: SizeConfig.widthMultiplier * 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                20,
                              ),
                              topRight: Radius.circular(20)),
                          color: Colors.amber[200],
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
                                  Container(
                                    child: Row(
                                      children: [
                                        CircleAvatar(
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
                                            Text(
                                              "Air Freight",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height:
                                                  SizeConfig.widthMultiplier *
                                                      2,
                                            ),
                                            Text(
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
                                      fillColor: MaterialStatePropertyAll(
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
                                  Container(
                                    child: Row(
                                      children: [
                                        CircleAvatar(
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
                                            Text(
                                              "Ocean Freight",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height:
                                                  SizeConfig.widthMultiplier *
                                                      2,
                                            ),
                                            Text(
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
                                      fillColor: MaterialStatePropertyAll(
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
                      Container(
                        height: SizeConfig.heightMultiplier * 7,
                        width: SizeConfig.widthMultiplier * 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(
                                20,
                              ),
                              bottomRight: Radius.circular(20)),
                          color: Colors.amber,
                        ),
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
