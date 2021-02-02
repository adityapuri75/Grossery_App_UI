import 'package:flutter/material.dart';

import '../home_page.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010a43),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/intro_image.png"),),
              Text("Get your goods at the",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              Text("door",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Shop Online and get products from the",style: TextStyle(color: Colors.white),),
              Text("store to your door in less than one",style: TextStyle(color: Colors.white),),
              Text("hour",style: TextStyle(color: Colors.white),),
              SizedBox(height: 120,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                        SizedBox(width: 7,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                        SizedBox(width: 7,),
                        Container(
                          height: 10,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(child: Icon(Icons.navigate_next,size: 60,color: Colors.white,)),
                      ),
                    )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
