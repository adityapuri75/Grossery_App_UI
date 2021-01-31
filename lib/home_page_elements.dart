import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010a43),
      body: Padding(
        padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu,color: Colors.white,),
            Container(
              height: 35,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xff444d88),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Stack(
                children: [
                  Center(child: Icon(Icons.shopping_bag,color: Colors.white,)),
                  Padding(
                    padding: const EdgeInsets.only(right: 6,bottom: 2),
                    child: Align(
                      alignment: Alignment.bottomRight,
                        child: Icon(Icons.circle,size: 12,color: Color(0xff49b747),)),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class MainText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hey, Paul",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Text("Find your daily Goods here",style: TextStyle(fontSize: 18,color: Color(0xff5a6289)),)

        ],

    );
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width/1.5,
          decoration: BoxDecoration(

          ),
        )
      ],
    );
  }
}
