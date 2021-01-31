import 'package:flutter/material.dart';

import 'home_page_elements.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010a43),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
          child: CustomAppBar()),
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainText(),
            SizedBox(height: 15,),
            SearchBar(),
            SizedBox(height: 15,),
            //////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Text("View All",style: TextStyle(color: Color(0xff5a6289),fontSize: 16),),
                      Icon(Icons.navigate_next,color: Colors.white,size: 30,)
                    ],
                  )
                ],
              ),
            ),
            ///////////////////////////////////////////////////
            SizedBox(height: 10,),
            Category(),
            SizedBox(height: 10,),
            ///////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Selling',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Text("View All",style: TextStyle(color: Color(0xff5a6289),fontSize: 16),),
                      Icon(Icons.navigate_next,color: Colors.white,size: 30,)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            TopSelling(),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Text('Nearby Shops',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xff444d88),
                  borderRadius: BorderRadius.circular(15)

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
                      child: Image(image: AssetImage("assets/Walmart_logo_transparent_png.png"),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Walmart India",style: TextStyle(color: Colors.white,fontSize: 15),),
                          Text("Open 9AM - 5PM",style: TextStyle(color: Color(0xff6a6f8f),fontSize: 15)),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              SizedBox(width: 5,),

                              Text("5",style: TextStyle(color: Colors.white)),
                              SizedBox(width: 10,),
                              Container(
                                height: 12,
                                width: 2,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10,),
                              Text("9.11 Km",style: TextStyle(color: Colors.white),)
                            ],
                          )

                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
