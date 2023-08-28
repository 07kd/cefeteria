import 'package:cafeteria/signUp_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "FOOOD",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "Always With You",
            style: TextStyle(fontSize: 25, color: Colors.grey),
          ),
          SizedBox(
            height: deviceHeight*0.03,
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/plate-removebg-preview.png",
              height: deviceHeight*0.4,
            ),
          )),
          SizedBox(
            height: deviceHeight*0.01,
          ),
          Container(
              width: deviceWidth*0.6,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Login_page()));
                  },
                  child: Text("Login"))),
          SizedBox(
            height: deviceHeight*0.02,
          ),
          Container(
              width: deviceWidth*0.6,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUp_page()));
                  },
                  child: Text("Sign up"))),
        ],
      ),
    ));
  }
}
