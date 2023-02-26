import 'package:screen_project/Screen2.dart';
import 'package:screen_project/Screen2_1.dart';
import 'package:screen_project/Screen2_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'Screen3.dart';

class Screen_1 extends StatefulWidget {
  @override
  State<Screen_1> createState() => _Screen_1State();
}

class _Screen_1State extends State<Screen_1> {
  // int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.sort,
                  ),
                  padding: EdgeInsets.only(right: 250),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://api.brusselstimes.com/wp-content/uploads/2019/05/vddriessche-c-stamp-media.jpg")
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose Your Best",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                Text(
                  "Furniture",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                Text(
                  "high quality furniture",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            height: 45,
            width: 300,
            child: TextFormField(
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search..',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 10),
                  child: Container(
                    width: 130,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextButton(
                          onPressed: () {
                            // Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            //   return Screen_3();
                            // }));
                          },
                          child: Text(
                            "Chair",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50,right: 20),
                  child: Container(
                    width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return Screen_3();
                            }));
                          },
                          child: Text(
                            "Cart",
                            style: TextStyle(
                              color: Colors.black
                            ),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50,right: 20),
                  child: Container(
                    width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextButton(
                          onPressed: () {
                              // Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              //   return Screen_3();
                              // }));
                          },
                          child: Text(
                            "Bed",
                            style: TextStyle(
                              color: Colors.black
                            ),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40),
                  child: Container(
                    width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sofa",
                            style: TextStyle(
                              color: Colors.black
                            ),
                          ))),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 295,
            width: 330,
            child: FutureBuilder<List<dynamic>>(
              builder: (context, snapshot) {
                if (snapshot.data != null && snapshot.hasData) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          height: 150,
                          width: 100,
                          padding: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 10,
                                    offset: Offset(0,3)
                                )
                              ]
                          ),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                    return Screen_2();
                                  }));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Image(image: NetworkImage(
                                      snapshot.data![index]['ChairImage'].toString()
                                  ),fit: BoxFit.cover,height: 130,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20,left: 20),
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Text(snapshot.data![index]['ChairName'].toString(),style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24
                                      ),),
                                    ),
                                    Text(snapshot.data![index]['Comfortable'].toString(),style: TextStyle(
                                        fontSize: 16
                                    ),),
                                    RatingBar.builder(
                                        initialRating: 5,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        itemCount: 5,
                                        itemSize: 18,
                                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                                        itemBuilder: (context,_)=>
                                            Icon(Icons.star,
                                              color: Colors.orange,
                                            )
                                        , onRatingUpdate: (index){}),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text("\$${snapshot.data![index]['Prices'].toString()}",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25
                                      ),),
                                    ),
                                  ],

                                ),
                              )

                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: 4,
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
              future: callLaptopApi(),
            ),
          ),
        ],
      ),

          bottomNavigationBar: BottomNavigationBar(
            // currentIndex: _currentIndex,
            // type: BottomNavigationBarType.fixed,
            items: [
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.home_outlined,size: 30),
              //   label: "",
              //   backgroundColor: Colors.blue
              // ),
          BottomNavigationBarItem(
            icon: Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(Icons.home_outlined,size: 40)),
            label: "",

          ),

          BottomNavigationBarItem(
                icon: Icon(Icons.star_outline,size: 30,color: Colors.grey,),
                label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shop_outlined,size: 30,color: Colors.grey,),
                label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline,size: 30,color: Colors.grey,),
              label: "",
            ),
          ],
            // selectedItemColor: Colors.white,
            // backgroundColor: Colors.white,
            onTap: (index) {
              // setState(() {
              //   _currentIndex=index;
              // });
            },
          ),

    )
    );
  }
  Future<List<dynamic>> callLaptopApi() async {
    http.Response res = await http
        .get(Uri.parse("https://63f4f7653f99f5855dbb402a.mockapi.io/Furniture"));
    print(res.body.toString());
    List<dynamic> map = jsonDecode(res.body.toString());
    return map;
  }
}