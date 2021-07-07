import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minorproject/pages/Home.dart';

class Register extends StatelessWidget {
  const Register({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        statusBarColor: Color(0xff89e0c9), // status bar color
        statusBarBrightness: Brightness.dark,//status bar brigtness
        statusBarIconBrightness:Brightness.dark , //status barIcon Brightness
        systemNavigationBarDividerColor: Colors.white,//Navigation bar divider color
        systemNavigationBarIconBrightness: Brightness.dark,//navigation bar icon
      ),
      child: Scaffold(
        backgroundColor: Color(0xff89e0c9),
        body: SafeArea(
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 50.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0)
                )
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 30.0,
                        height: 30.0,
                        margin: EdgeInsets.only(left: 25.0, top: 25.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Color(0xff89e0c9),
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.close_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0,),
                Container(
                  width: 116.0,
                  height: 116.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(58.0)),
                    color: Color(0xff89e0c9),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "REGI",
                            style: TextStyle(
                              fontSize: 33,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "STER",
                            style: TextStyle(
                              fontSize: 33,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 45.0,),
                SizedBox(
                  width: (MediaQuery.of(context).size.width)*0.9,
                  height: (MediaQuery.of(context).size.height)*0.075,
                  child: Theme(
                    data: ThemeData(primaryColor: Color(0xff89e0c9)),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height)*0.0375),
                            borderSide: BorderSide(color: Color(0xff89e0c9), width: 2)
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height)*0.0375),
                            borderSide: BorderSide(color: Color(0xff89e0c9), width: 2)
                        ),
                        hintText: 'DISPLAY NAME',
                        hintStyle: TextStyle(color: Color(0xc189e0c9)),
                        prefixIcon: Icon(Icons.account_circle, color: Color(0xff89e0c9),),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                SizedBox(
                  width: (MediaQuery.of(context).size.width)*0.9,
                  height: (MediaQuery.of(context).size.height)*0.075,
                  child: Theme(
                    data: ThemeData(primaryColor: Color(0xff89e0c9)),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height)*0.0375),
                            borderSide: BorderSide(color: Color(0xff89e0c9), width: 2)
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height)*0.0375),
                            borderSide: BorderSide(color: Color(0xff89e0c9), width: 2)
                        ),
                        hintText: 'EMAIL',
                        hintStyle: TextStyle(color: Color(0xc189e0c9)),
                        prefixIcon: Icon(Icons.mail, color: Color(0xff89e0c9),),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                SizedBox(
                  width: (MediaQuery.of(context).size.width)*0.9,
                  height: (MediaQuery.of(context).size.height)*0.075,
                  child: Theme(
                    data: ThemeData(primaryColor: Color(0xff89e0c9)),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height)*0.0375),
                            borderSide: BorderSide(color: Color(0xff89e0c9), width: 2)
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height)*0.0375),
                            borderSide: BorderSide(color: Color(0xff89e0c9), width: 2)
                        ),
                        hintText: 'PASSWORD',
                        hintStyle: TextStyle(color: Color(0xc189e0c9)),
                        prefixIcon: Icon(Icons.lock, color: Color(0xff89e0c9),),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  width: (MediaQuery.of(context).size.width)*0.9,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => Home(),
                      ));
                    },
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff89e0c9)),
                        elevation: MaterialStateProperty.all<double>(0),
                        minimumSize: MaterialStateProperty.all<Size>(Size.fromHeight((MediaQuery.of(context).size.width)*0.14)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular((MediaQuery.of(context).size.width)*0.07),
                              side: BorderSide(
                                color: Colors.white,
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
      ),
    );;
  }
}
