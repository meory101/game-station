import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamestation/components/header.dart';
import 'package:gamestation/components/navigator_bar.dart';
import 'package:gamestation/pages/show_game.dart';
import 'package:gamestation/theme/colors.dart';
import 'package:gamestation/theme/fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> names = ['Arcade', 'Ongame', 'Safari7'];
  List<String> downloads = ['100 downloads', '200 downloads', '140 downloads'];
  
  String hint ='fighting game with great animation and unique style.';
  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(
                  image: const AssetImage('assets/images/profile.jpg'),
                  name: 'Meory',
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Explore',
                  style: sub_W_font,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: MediaQuery.of(context).size.height / 2.6,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return ShowGame(
                                    hint: '${names[index]}'+' '+hint,
                                    image: AssetImage(
                                        'assets/images/${index + 1}.jpg'),
                                    name: '${names[index]}',
                                    downloads: '${downloads[index]}',
                                  );
                                },
                              ));
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 15),
                              height: MediaQuery.of(context).size.height / 3.5,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/${index + 1}.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${names[index]}',
                                  style: small_W_font,
                                ),
                                Text(
                                  '${downloads[index]}',
                                  style: small_G_font,
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
                Text(
                  'Highlights',
                  style: sub_W_font,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: MediaQuery.of(context).size.height / 3.5,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              height: MediaQuery.of(context).size.height / 3.5,
                              width: MediaQuery.of(context).size.width / 1.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/${index + 4}.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    selectedindex = index;
                                  });
                                },
                                icon: Icon(
                                  selectedindex == index
                                      ? Icons.bookmark
                                      : Icons.bookmark_border,
                                  color: selectedindex == index
                                      ? Colors.red
                                      : Color.fromARGB(255, 210, 210, 210),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
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
