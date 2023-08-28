import 'package:cafeteria/home_page.dart';
import 'package:flutter/material.dart';

import 'forget_password.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: deviceHeight*0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/food9..jpeg",
                      ),
                      fit: BoxFit.cover)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "WELCOME",
                      style: TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "BACK",
                      style: TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight*0.02,
            ),
            Container(
              height: 165,
              width: deviceWidth*0.98,
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            labelText: "Email or Phone number"),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            labelText: "Password"),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight*0.02,
            ),
            Container(
                width: deviceWidth*0.7,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage()));
                    },
                    child: Text("Login"))),
            SizedBox(
              height: deviceHeight*0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Card(
                    elevation: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/f3-removebg-preview.png",
                        height: deviceHeight*0.04,
                        width: deviceWidth*0.09,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: deviceWidth*0.04,
                ),
                Container(
                  child: Card(
                    elevation: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/g-removebg-preview.png",
                        height: deviceHeight*0.04,
                        width: deviceWidth*0.09,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: deviceWidth*0.04,
                ),
                Container(
                  child: Card(
                    elevation: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/t-removebg-preview.png",
                        height: deviceHeight*0.04,
                        width: deviceWidth*0.09,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: deviceHeight*0.03,
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgetPassword()));
              },
              child: Text(
                "Forget Password ?",
                style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
