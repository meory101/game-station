import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamestation/components/header.dart';
import 'package:gamestation/theme/colors.dart';
import 'package:gamestation/theme/fonts.dart';

class ShowGame extends StatefulWidget {
  ImageProvider image;
  String name;
  String hint;
  String downloads;
  ShowGame(
      {required this.image,
      required this.name,
      required this.downloads,
      required this.hint});
  @override
  State<ShowGame> createState() => _ShowGameState();
}

class _ShowGameState extends State<ShowGame> {
  List<String> names = ['lisa liz', 'lopal8', 'fai lee'];
  List<String> Comments = ['Beautiful game!','Amazing <3','What a beautiful game!'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          height: MediaQuery.of(context).size.height / 3.5,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey,
                            image: DecorationImage(
                                image: widget.image, fit: BoxFit.cover),
                          ),
                        ),
                        IconButton(onPressed: () {
                          
                        }, icon: Icon(CupertinoIcons.cloud_download,
                        size: 30,
                            color: Color.fromARGB(255, 210, 210, 210),
                            shadows: [
                              BoxShadow(
                                color: maincolor,
                                spreadRadius: 10,
                                blurRadius: 10,
                              ),
                            ],
                          ),),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '${widget.name}',
                          style: sub_W_font_sh,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '${widget.hint}',
                          style: sub_W_font_sh,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          '${widget.downloads}',
                          style: small_G_font,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Icon(
                Icons.people_outline,
                color: Color.fromARGB(255, 210, 210, 210),
                shadows: [
                  BoxShadow(
                    color: maincolor,
                    spreadRadius: 10,
                    blurRadius: 10,
                  ),
                ],
              ),
              Text(
                'Comments',
                style: sub_W_font,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: MediaQuery.of(context).size.height / 2.6,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 70,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Header(
                              image:
                                  AssetImage('assets/images/p${index + 1}.jpg'),
                              name: '${names[index]}'),
                          Text(
                           '${Comments[index]}',
                            style: small_G_font,
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
