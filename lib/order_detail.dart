import 'package:design/delivery_page_view.dart';
import 'package:design/utils/size_config.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class OrderDetailView extends StatefulWidget {
  const OrderDetailView({super.key});

  @override
  State<OrderDetailView> createState() => _OrderDetailViewState();
}

class _OrderDetailViewState extends State<OrderDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Live Tracking',
          style: TextStyle(fontSize: 28, color: Colors.black),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              color: Colors.black38,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/map.jpg',
                height: SizeConfig.heightMultiplier * 35,
                width: SizeConfig.widthMultiplier * 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Container(
              height: SizeConfig.heightMultiplier * 20,
              width: SizeConfig.widthMultiplier * 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.green),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Colors.green,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 3,
                          child: const DottedLine(
                            direction: Axis.vertical,
                            dashColor: Colors.white,
                            dashLength: 2,
                            dashGapLength: 4,
                            dashGapRadius: 80,
                          ),
                        ),
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.home_outlined,
                            color: Colors.green,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 4,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'My Location',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '404 Street RD, Maxico',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 3,
                        ),
                        const Text(
                          'Odeon Express',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('2567 Royal in , Mesa, New Jersy',
                            style: TextStyle(color: Colors.white)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DeliveryPageView())),
              child: Container(
                height: SizeConfig.heightMultiplier * 23,
                width: SizeConfig.widthMultiplier * 100,
                decoration: BoxDecoration(
                  color: Colors.amber[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 20,
                                  child: Icon(Icons.person),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Andrew Jackson",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Couriro - Regular",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 20,
                                  child: Icon(Icons.call_outlined),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 20,
                                  child: Icon(Icons.message_outlined),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Package Weight",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "Status",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "0.8 KG",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w800),
                          ),
                          Container(
                            height: SizeConfig.heightMultiplier * 4.5,
                            width: SizeConfig.widthMultiplier * 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange[200],
                            ),
                            child: const Center(
                              child: Text(
                                "Processing",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 179, 107, 0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
