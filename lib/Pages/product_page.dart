import 'package:flutter/material.dart';
import 'package:ui_part_3/home_page.dart';

import '../home_page_elements.dart';

class Product_Page1 extends StatefulWidget {
  @override
  _Product_Page1State createState() => _Product_Page1State();
}

class _Product_Page1State extends State<Product_Page1> {
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
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 25,right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage("assets/green-cabbage.png")),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Green Cabbage",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("\$ 12.0",style: TextStyle(color: Colors.white),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.yellow,),
                        Icon(Icons.star,color: Colors.yellow,),
                        Icon(Icons.star,color: Colors.yellow,),
                        Icon(Icons.star,color: Colors.yellow,),
                        Icon(Icons.star,color: Colors.yellow,),
                      ],
                    )
                  ],
                ),
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
            SizedBox(height: 40,),
            Text("Product Description",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            RichText(text: TextSpan(
              text: "The king of cabbages and our old friend! The wide fan-like leaves are pale green in color and with a slightly rubbery texture when raw. Pick heads that are tight and feel heavy for their size. The outer few layers are usually wilted and should be discarded before preparing.",
              style: TextStyle(fontSize: 15)
            )),
            SizedBox(height: 40,),
            Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text("Add To Cart",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
