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
            SizedBox(height: 20,),
            SearchBar(),
            SizedBox(height: 20,),
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
            SizedBox(height: 20,),
            Category(),
          ],
        ),
      ),
    );
  }
}
