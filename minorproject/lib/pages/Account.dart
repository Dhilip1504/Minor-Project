import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minorproject/pages/AddAddress.dart';

class Account extends StatelessWidget {
  const Account({Key key}) : super(key: key);

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
                        "Account",
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
              SizedBox(height: 30.0,),
              Icon(Icons.account_circle, color: Color(0xff6cd538), size: 100.0,),
              Text(
                  "9735389472",
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              SizedBox(height: 25.0,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: '    YOUR NAME',
                      hintStyle: TextStyle(color: Color(0xFF575555)),
                      prefixIcon: Icon(Icons.account_circle, color: Colors.black,),
                      suffixIcon: Icon(Icons.edit, color: Colors.black,)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 18.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: '    EMAIL',
                    hintStyle: TextStyle(color: Color(0xFF575555)),
                    prefixIcon: Icon(Icons.mail, color: Colors.black,),
                    suffixIcon: Icon(Icons.edit, color: Colors.black,)
                  ),
                ),
              ),
              SizedBox(
                width: 160,
                height: 37.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => AddAddress(),
                    ));
                  },
                  child: Text(
                    'ADD ADDRESS',
                    style: TextStyle(
                      color: Color(0xff54a72c),
                      fontWeight: FontWeight.normal,
                      fontSize: 15.0
                    ),
                  ),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Color(0xff89e0c9)),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      elevation: MaterialStateProperty.all<double>(0),
                      minimumSize: MaterialStateProperty.all<Size>(Size.fromHeight((MediaQuery.of(context).size.width)*0.14)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7.0)),
                            side: BorderSide(
                              color: Color(0xff54a72c),
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
    );;
  }
}
