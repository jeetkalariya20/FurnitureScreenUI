import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_project/Screen1.dart';

class Screen2_1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                    child: Text("Detail",
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
                      Icons.favorite_border,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Container(
                        alignment: Alignment.center,
                        child: Image(image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXZvFhU112C2OLksU9j3fsUDKb6TFpxwiYADcSC13xq5BVfiVwBJev83gdwLDW2r28MEA&usqp=CAU"
                        ),fit: BoxFit.cover,height: 350,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              // margin: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mona Chair",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  Text(
                    " ",
                  ),
                  Text(
                    "This chair has very soft material and a good design that makes you feel \n happy when you have it",
                    style: TextStyle( fontSize: 20,color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 50,
              child: Row(
                children: [
                  Container(
                    child: Text("Colour",style: TextStyle(
                        fontSize: 20
                    ),),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(Icons.water_drop,color: Colors.grey,size: 30,),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 7),
                    child: Icon(Icons.circle,color: Colors.red,size: 30,),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 7),
                    child: Icon(Icons.circle,color: Colors.blueAccent,size: 30,),
                  ),
                ],
              ),
            ),
            Container(
                child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          child: Text("\$6.54",style:
                          TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                          )
                            ,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Container(
                            width: 180,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child:
                              Text(
                                "Cart",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white
                                ),
                              ),
                            )),
                      ),

                    ]
                )
            )
          ],
        ),
      ),
    ));
  }
}