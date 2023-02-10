import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  margin: EdgeInsets.all(20),
                  height: 50,
                  width: 50,
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
                  child:
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Screen_1();
                      }));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30,right: 30),
                  child: Text("Cart",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  width: 50,
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
                  child: Icon(
                    Icons.delete_outline_rounded,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 334,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 1),
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
                                          "http://atlas-content-cdn.pixelsquid.com/stock-images/contemporary-chair-z0AGK2F-600.jpg"
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
                                        Text("Grey Chair",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25
                                        ),),

                                        Text("\$7.98",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25
                                        ),),
                                        Text("  "),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(10),
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
                                              child: Icon(
                                                CupertinoIcons.minus,
                                                size: 18,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(left: 20,right: 15),
                                              child: Text("1",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20
                                                ),),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(10),
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
                                              child: Icon(
                                                CupertinoIcons.plus,
                                                size: 18,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],

                                    ),
                                  )

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 1),
                            child: Container(
                              height: 150,
                              child: Row(
                                children: [
                                  Radio(value: "", groupValue: "",
                                      activeColor: Colors.grey,
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
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXZvFhU112C2OLksU9j3fsUDKb6TFpxwiYADcSC13xq5BVfiVwBJev83gdwLDW2r28MEA&usqp=CAU"
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
                                        Text("Mona Chair",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25
                                        ),),

                                        Text("\$6.54",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25
                                        ),),
                                        Text("  "),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius: BorderRadius.circular(10),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.grey.withOpacity(0.5),
                                                        spreadRadius: 1,
                                                        blurRadius: 10
                                                    )
                                                  ]
                                              ),
                                              child: Icon(
                                                CupertinoIcons.minus,
                                                size: 18,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(left: 20,right: 15),
                                              child: Text("1",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20
                                                ),),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.deepPurple,
                                                  borderRadius: BorderRadius.circular(10),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.grey.withOpacity(0.5),
                                                        spreadRadius: 1,
                                                        blurRadius: 10
                                                    )
                                                  ]
                                              ),
                                              child: Icon(
                                                CupertinoIcons.plus,
                                                size: 18,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],

                                    ),
                                  )

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 1),
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
                                          "https://ardudana.ro/wp-content/uploads/2020/11/8-QUEEN-MONA-N..jpg"
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
                                        Text("Gera Chair",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25
                                        ),),

                                        Text("\$5.34",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25
                                        ),),
                                        Text("  "),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius: BorderRadius.circular(10),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.grey.withOpacity(0.5),
                                                        spreadRadius: 1,
                                                        blurRadius: 10
                                                    )
                                                  ]
                                              ),
                                              child: Icon(
                                                CupertinoIcons.minus,
                                                size: 18,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(left: 20,right: 15),
                                              child: Text("1",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20
                                                ),),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.deepPurple,
                                                  borderRadius: BorderRadius.circular(10),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.grey.withOpacity(0.5),
                                                        spreadRadius: 1,
                                                        blurRadius: 10
                                                    )
                                                  ]
                                              ),
                                              child: Icon(
                                                CupertinoIcons.plus,
                                                size: 18,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],

                                    ),
                                  )

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            width: 500,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 20,
                      offset: Offset(0,3)
                  )
                ]
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 20),
                  child: Container(
                    // child: Icon(Icons.linear_scale_outlined,size: 30,color: Colors.grey,),

                    height: 5,
                    width: 60,
                    padding: EdgeInsets.only(bottom: 20,top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Text("Selected Item",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                      ),)
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30,top: 10),
                  child: Row(
                    children: [
                      Container(
                          child: Text("Grey Chair",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey
                          ),)
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 120),
                        child: Text("\$7.98",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                        ),),
                      )

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30,top: 10),
                  child: Row(
                    children: [
                      Container(
                          child: Text("Gera Chair",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey
                          ),)
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 120),
                        child: Text("\$5.34",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                        ),),
                      )

                    ],
                  ),
                ),
                Container(
                    child: Text("---------------------------------------------------------------------------",
                      style: TextStyle(
                          color: Colors.grey
                      ),)
                ),
                Container(
                  padding: EdgeInsets.only(left: 30,top: 10),
                  child: Row(
                    children: [
                      Container(
                          child: Text("Total",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black
                          ),)
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 150),
                        child: Text("\$13.32",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                        ),),
                      )

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 15,top: 15),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                        width: 400,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: TextButton(
                            onPressed: () {
                              // Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              //   return Screen_3();
                              // }));
                            },
                            child: Text(
                              "Checkout",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                            ))),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}