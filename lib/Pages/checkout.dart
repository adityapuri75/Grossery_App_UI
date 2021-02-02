import 'package:flutter/material.dart';
import 'package:ui_part_3/Pages/Payment_details.dart';
import 'package:ui_part_3/Pages/cart.dart';

import '../home_page.dart';

class CheckoutPage extends StatelessWidget {
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cart()));
                      },
                      child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                  Text("Checkout",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 25),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140,
                decoration: BoxDecoration(
                  color: Color(0xff081257),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Payment Datails",style: TextStyle(color: Colors.white,fontSize: 20),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sub total price",style: TextStyle(color: Color(0xff606ba1)),),
                          Text("\$100",style: TextStyle(color: Color(0xff606ba1)),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery Charge",style: TextStyle(color: Color(0xff606ba1)),),
                          Text("\$20",style: TextStyle(color: Color(0xff606ba1)),)
                        ],
                      ),
                      Divider(
                        thickness: 1,
                          color: Color(0xff606ba1)
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Pay",style: TextStyle(color: Colors.white),),
                          Text("\$120",style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ],
                  ),
                ),
            ),
            SizedBox(height: 30,),
            Text("Payment Method",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Color(0xff081257),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: 100,width:100,child: Image(image: AssetImage("assets/paypal.png"),)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Paypal",style: TextStyle(color: Colors.white,fontSize: 18),),
                        SizedBox(height: 5,),
                        Text("1234**********13",style: TextStyle(color: Color(0xff606ba1)),)
                      ],
                    ),
                    Icon(Icons.credit_card,color: Colors.white,size: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 60,),

            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PaymentMessage()));
              },
              child: Container(
                height: 60 ,
                width: 135,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green
                ),
                child: Center(child: Text("Buy",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
