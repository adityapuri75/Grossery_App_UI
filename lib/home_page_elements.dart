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
          height: 60,
          width: MediaQuery.of(context).size.width/1.5,
          decoration: BoxDecoration(
            color: Color(0xff6a6f8f),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.search,color: Color(0xffc5c9e2),size: 25,),
                SizedBox(width: 13,),
                Text("Search your goods here...",style: TextStyle(color: Color(0xffc5c9e2),fontSize: 16),)
              ],
            ),
          ),
        ),
        SizedBox(width: 12,),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: Color(0xff444d88),
              borderRadius: BorderRadius.circular(15)
          ),
          child: Icon(Icons.filter_list_alt,color: Colors.white,size: 25,),
        ),
      ],
    );
  }
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xff2a3763),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(image: AssetImage('assets/fruits.png'),),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Fruits",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xff4e4d75),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(image: AssetImage('assets/vegetables.png'),),
                  ),
                ),
                SizedBox(height: 10,),
                Text("vegetables",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xff3f6065),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(image: AssetImage('assets/rice.png'),),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Rice",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xff634c66),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(image: AssetImage('assets/meat.png'),),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Meat",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xff2a3763),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(image: AssetImage('assets/bakery.png'),),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Bakery",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

