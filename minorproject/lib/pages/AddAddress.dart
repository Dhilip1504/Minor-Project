import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xff6cd538),
        statusBarColor: Color(0xff51a029), // status bar color
        statusBarBrightness: Brightness.light,//status bar brigtness
        statusBarIconBrightness:Brightness.light , //status barIcon Brightness
        systemNavigationBarDividerColor: Colors.white,//Navigation bar divider color
        systemNavigationBarIconBrightness: Brightness.light, //navigation bar icon
      ),
      child:
      Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 5.0),
                height: 60.0,
                width: double.maxFinite,
                color: Color(0xff6cd538),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white,),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Add Address",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Full Name',
                          hintStyle: TextStyle(color: Color(0xC6575555), fontSize: 17.0),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'House No. / Building name*',
                          hintStyle: TextStyle(color: Color(0xC6575555), fontSize: 17.0),
                        ),
                      ),
                      SizedBox(height: 30.0,),
                      Text(
                        "Locality",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xff448b25),
                        ),
                      ),
                      Text(
                        "ISB Campus, Gachibowli",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 25.0,),
                      Text(
                        "City",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xff448b25),
                        ),
                      ),
                      Text(
                        "Hyderabad",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 25.0,),
                      Text(
                        "Pincode",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xff448b25),
                        ),
                      ),
                      Text(
                        "500032",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: (MediaQuery.of(context).size.width)*0.9,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'ADD ADDRESS',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xffbbbbbb)),
                                      elevation: MaterialStateProperty.all<double>(6.0),
                                      minimumSize: MaterialStateProperty.all<Size>(Size.fromHeight((MediaQuery.of(context).size.width)*0.14)),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            side: BorderSide(
                                              color: Color(0xffbbbbbb),
                                            ),
                                          )
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
