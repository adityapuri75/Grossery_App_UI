import 'package:flutter/material.dart';

import '../home_page.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010a43),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Scaffold(
            backgroundColor: Color(0xff010a43),
            body: Padding(
              padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                      child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                  Container(
                    height: 35,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xff444d88),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Stack(
                      children: [
                        Center(child: Icon(Icons.cancel_outlined,color: Colors.white,)),

                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            child: Card(
              elevation: 0,
              color: Color(0xff010a43),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row( children: [
                    Container(height: 90,width: 90,child: Image(image: AssetImage("assets/green-cabbage.png"),)),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Green Cabbage",style: TextStyle(color: Colors.white,fontSize: 18),),
                        SizedBox(height: 3,),
                        Text("Made In India",style: TextStyle(color: Colors.white,fontSize: 15),),
                        SizedBox(height: 5,),
                        Text("\$ 12",style: TextStyle(color: Colors.white,fontSize: 15),)
                      ],
                    ),]),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green
                          ),
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                        SizedBox(width: 10,),
                        Text("2 Kg",style: TextStyle(color: Colors.white),),
                        SizedBox(width: 10,),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green
                          ),
                          child: Icon(Icons.remove,color: Colors.white,),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

          Container(
            height: 100,
            child: Card(
              elevation: 0,
              color: Color(0xff010a43),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row( children: [
                      Container(height: 90,width: 90,child: Image(image: AssetImage("assets/potato.png"),)),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Potato",style: TextStyle(color: Colors.white,fontSize: 18),),
                          SizedBox(height: 3,),
                          Text("Made In India",style: TextStyle(color: Colors.white,fontSize: 15),),
                          SizedBox(height: 5,),
                          Text("\$ 5",style: TextStyle(color: Colors.white,fontSize: 15),)
                        ],
                      ),]),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green
                          ),
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                        SizedBox(width: 10,),
                        Text("2 Kg",style: TextStyle(color: Colors.white),),
                        SizedBox(width: 10,),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green
                          ),
                          child: Icon(Icons.remove,color: Colors.white,),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

          Container(
            height: 100,
            child: Card(
              elevation: 0,
              color: Color(0xff010a43),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row( children: [
                      Container(height: 90,width: 90,child: Image(image: AssetImage("assets/blackCoffe.png"),)),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Black Coffee",style: TextStyle(color: Colors.white,fontSize: 18),),
                          SizedBox(height: 3,),
                          Text("Made In India",style: TextStyle(color: Colors.white,fontSize: 15),),
                          SizedBox(height: 5,),
                          Text("\$ 8",style: TextStyle(color: Colors.white,fontSize: 15),)
                        ],
                      ),]),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green
                          ),
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                        SizedBox(width: 10,),
                        Text("2 Kg",style: TextStyle(color: Colors.white),),
                        SizedBox(width: 10,),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green
                          ),
                          child: Icon(Icons.remove,color: Colors.white,),
                        ),

                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff444d88)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Selected Items (3)",style: TextStyle(color: Colors.white,fontSize: 20),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total:",style: TextStyle(color: Colors.grey,fontSize: 15),),
                        Text("\$ 750",style: TextStyle(color: Colors.white),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10,bottom: 30,right: 10),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Center(child: Text("Proceed To Payment",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
        ),
      ),
    );
  }
}

