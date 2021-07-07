import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minorproject/pages/Login.dart';
import 'package:minorproject/pages/Register.dart';

class LoginAndRegister extends StatelessWidget {
  const LoginAndRegister({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        statusBarColor: Color(0xff89e0c9), // status bar color
        statusBarBrightness: Brightness.dark,//status bar brigtness
        statusBarIconBrightness:Brightness.dark , //status barIcon Brightness
        systemNavigationBarDividerColor: Colors.white,//Navigation bar divider color
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,

        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xff89e0c9),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(MediaQuery.of(context).size.width))
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SafeArea(child: SizedBox(height: 25.0,)),
              SafeArea(
                child: Container(
                  width: 116.0,
                  height: 116.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(58.0)),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "GO",
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 73.0,
                      color: Color(0xff89e0c9),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: ((MediaQuery.of(context).size.width)/2)-90),
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: ((MediaQuery.of(context).size.width)/2)-85+60),
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.0,),
              SizedBox(
                width: (MediaQuery.of(context).size.width)*0.9,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Color(0xff89e0c9),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Color(0xff89e0c9)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
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
              SizedBox(height: 20.0,),
              SizedBox(
                width: (MediaQuery.of(context).size.width)*0.9,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Register(),
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
                              width: 2,
                              color: Colors.white,
                            ),
                          )
                      )
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
