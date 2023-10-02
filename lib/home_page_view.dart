import 'package:design/utils/size_config.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          selectedItemColor: Colors.green,
          currentIndex: currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.navigation_outlined,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.add,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message_outlined,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                ),
                label: ""),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/bgimage.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.heightMultiplier * 50,
                  child: Column(
                    children: [
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.location_on_sharp),
                                    ),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.widthMultiplier * 2,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Your Locations",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "Segog , Sukabami",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const CircleAvatar(
                              maxRadius: 20,
                              backgroundColor: Colors.red,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  height: SizeConfig.heightMultiplier * 50,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 16.0, left: 16, right: 16, bottom: 8),
                    child: Column(
                      children: [
                        Container(
                          height: SizeConfig.heightMultiplier * 22,
                          decoration: BoxDecoration(
                              color: Colors.amber[200],
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: SizeConfig.heightMultiplier * 2,
                                ),
                                Text(
                                  "Track Your Package",
                                  style: textTheme.headlineLarge,
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier * 2,
                                ),
                                Text(
                                  "Enter the reciept number thay you got\n form our officers",
                                  textAlign: TextAlign.center,
                                  style: textTheme.bodyLarge,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 16.0,
                                    left: 16,
                                    right: 16,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.only(
                                              top: 1,
                                              bottom: 1,
                                              left: 20,
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: BorderSide.none,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: BorderSide.none,
                                            ),
                                            suffixIcon: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                              child: CircleAvatar(
                                                backgroundColor: Colors.green,
                                                radius: 10,
                                                child: Icon(
                                                  Icons.search,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            hintText:
                                                'Enter the receipt number..',
                                            fillColor: Colors.white,
                                            filled: true,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ListTile(
                            dense: true,
                            visualDensity: const VisualDensity(vertical: 2),
                            leading: const CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.amber,
                            ),
                            title: const Text("Alsa Shop",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            subtitle: const Text(
                              "#1923712",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 14),
                            ),
                            trailing: Container(
                              height: SizeConfig.heightMultiplier * 5,
                              width: SizeConfig.widthMultiplier * 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange[100],
                              ),
                              child: const Center(
                                child: Text(
                                  "On Process",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
