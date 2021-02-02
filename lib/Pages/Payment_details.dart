import 'package:flutter/material.dart';
import 'package:ui_part_3/home_page.dart';


class PaymentMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010a43),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/payment-succesful.png"),),
            Text("Payment successful",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Your payment has been processed",style: TextStyle(color: Colors.white),),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text("Track Order",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
