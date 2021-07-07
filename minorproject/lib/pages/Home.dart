import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minorproject/pages/Account.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Razorpay _razorpay;

  GlobalKey<ScaffoldState> _key = GlobalKey();

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_WtkZfUNY4RB1KW',
      'amount': 5000,
      'name': 'Dhilip',
      'description': 'Payment',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e);
    }
  }

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
          key: _key,
          backgroundColor: Colors.white,
          drawer: Drawer(
            child: Column(
              children: [
                SafeArea(
                  child: Container(
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    height: 140.0,
                    color: Color(0xff6cd538),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 20.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Account(),
                          ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.account_circle, color: Colors.white, size: 30.0,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "9735389472",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20.0,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.0,),
                ListTile(
                  leading: Icon(Icons.list),
                  title: Text(
                    "Order History",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(
                    "Help and Support",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.update),
                  trailing: Icon(Icons.circle, color: Colors.red, size: 12.0,),
                  title: Text(
                    "Updates",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.power_settings_new),
                  onTap: (){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        content: Text("Are you sure you want to log out"),
                        actions: [
                          FlatButton(
                            onPressed: (){popout(context);},
                            child: Text("No", style: TextStyle(
                                color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),),
                          ),
                          FlatButton(
                            onPressed: (){
                              popout(context);
                              popout(context);
                              popout(context);
                            },
                            child: Text("Yes, Log out", style: TextStyle(
                                color: Colors.black,
                              fontWeight: FontWeight.normal
                            ),),
                          )
                        ],
                      );
                    });
                  },
                  title: Text(
                    "Log out",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
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
                          icon: Icon(Icons.menu, color: Colors.white,),
                        onPressed: (){
                          _key.currentState.openDrawer();
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                            "Home",
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
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: (MediaQuery.of(context).size.width)*0.7,
                        child: ElevatedButton(
                          onPressed: () {
                            openCheckout();
                          },
                          child: Text(
                            'Make Payment',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xff6cd538)),
                              elevation: MaterialStateProperty.all<double>(6.0),
                              minimumSize: MaterialStateProperty.all<Size>(Size.fromHeight((MediaQuery.of(context).size.width)*0.14)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    side: BorderSide(
                                      color: Color(0xff6cd538),
                                    ),
                                  )
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "SUCCESS: " + response.paymentId, timeInSecForIosWeb: 4);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "ERROR: " + response.code.toString() + " - " + response.message,
        timeInSecForIosWeb: 4);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName, timeInSecForIosWeb: 4);
  }

  void popout(BuildContext context){
    Navigator.pop(context);
  }
}


