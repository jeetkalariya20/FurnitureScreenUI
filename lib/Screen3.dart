import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Screen1.dart';

class Screen_3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 10,
                            offset: const Offset(0,3)
                        )
                      ]
                  ),
                  child:
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Screen_1();
                      }));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: const Text("Cart",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 10,
                            offset: const Offset(0,3)
                        )
                      ]
                  ),
                  child: const Icon(
                    Icons.delete_outline_rounded,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 610,
            child: FutureBuilder<List<dynamic>>(
              builder: (context, snapshot) {
                if (snapshot.data != null && snapshot.hasData) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1),
                        child: Container(
                          height: 150,
                          child: Row(
                            children: [
                              Radio(value: "", groupValue: "",
                                  activeColor: Colors.orange,
                                  onChanged: (index){}
                              ),
                              InkWell(
                                // onTap: (){
                                //   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                //     return Screen_2();
                                //   }));
                                // },
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Image(image: NetworkImage(
                                      snapshot.data![index]['ChairImage'].toString()
                                  ),fit: BoxFit.fill,height: 130,width: 150,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 20,left: 20),
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(snapshot.data![index]['ChairName'].toString(),style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24
                                    ),),

                                    Text("\$${snapshot.data![index]['Prices'].toString()}",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22
                                    ),),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Row(

                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.circular(20),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey.withOpacity(0.5),
                                                      spreadRadius: 1,
                                                      blurRadius: 10
                                                  )
                                                ]
                                            ),
                                            child: const Icon(
                                              CupertinoIcons.minus,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(left: 15,right: 15),
                                            child: const Text("1",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20
                                              ),),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: Colors.deepPurple,
                                                borderRadius: BorderRadius.circular(20),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey.withOpacity(0.5),
                                                      spreadRadius: 1,
                                                      blurRadius: 10
                                                  )
                                                ]
                                            ),
                                            child: const Icon(
                                              CupertinoIcons.plus,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],

                                ),
                              )

                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: 5,
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


          Center(
            child: ElevatedButton(
              child: const Text("Next",style: TextStyle(

              ),),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))),
                  builder: (BuildContext context) {
                    return Container(
                      height: 350,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15, bottom: 20),
                            child: Container(
                              // child: Icon(Icons.linear_scale_outlined,size: 30,color: Colors.grey,),

                              height: 5,
                              width: 60,
                              padding: const EdgeInsets.only(bottom: 20, top: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                                const Text(
                                  "Selected Item",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 30, top: 10),
                            child: Row(
                              children: [
                                Container(
                                    child: const Text(
                                  "Grey Chair",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.grey),
                                )),
                                Container(
                                  padding: const EdgeInsets.only(left: 120),
                                  child: const Text(
                                    "\$7.98",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 30, top: 10),
                            child: Row(
                              children: [
                                Container(
                                    child: const Text(
                                  "Gera Chair",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.grey),
                                )),
                                Container(
                                  padding: const EdgeInsets.only(left: 120),
                                  child: const Text(
                                    "\$5.34",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                              child: const Text(
                            "---------------------------------------------------------------------------",
                            style: TextStyle(color: Colors.grey),
                          )),
                          Container(
                            padding: const EdgeInsets.only(left: 30, top: 10),
                            child: Row(
                              children: [
                                Container(
                                    child: const Text(
                                  "Total",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black),
                                )),
                                Container(
                                  padding: const EdgeInsets.only(left: 150),
                                  child: const Text(
                                    "\$13.32",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 15),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Container(
                                  width: 400,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius:
                                          BorderRadius.circular(50)),
                                  child: TextButton(
                                      onPressed: () {
                                        // Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                        //   return Screen_3();
                                        // }));
                                      },
                                      child: const Text(
                                        "Checkout",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20),
                                      ))),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
  Future<List<dynamic>> callLaptopApi() async {
    http.Response res = await http
        .get(Uri.parse("https://63f4f7653f99f5855dbb402a.mockapi.io/Furniture"));
    print(res.body.toString());
    List<dynamic> map = jsonDecode(res.body.toString());
    return map;
  }
}