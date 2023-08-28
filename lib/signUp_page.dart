import 'package:flutter/material.dart';
class SignUp_page extends StatefulWidget {
  const SignUp_page({Key? key}) : super(key: key);

  @override
  State<SignUp_page> createState() => _SignUp_pageState();
}

class _SignUp_pageState extends State<SignUp_page> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
body: SingleChildScrollView(
  child: Column(
    children: [
      Container(
        height: deviceHeight*0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
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
            ],
          ),
        ),
      ),
      SizedBox(
        height: deviceHeight*0.02,
      ),
      Container(
        height: 315,
        width: deviceWidth*0.96,
        child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Name",
                      labelText: "Full Name"),
                ),
                Divider(
                  thickness: 2,
                ),
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
                ),
                Divider(
                  thickness: 2,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: " Confirm Password",
                      labelText: "Confirm Password"),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        height: deviceHeight*0.03,
      ),
      Container(
          width: deviceWidth*0.3,
          child: ElevatedButton(
              style:
              ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
              onPressed: () {},
              child: Text("Sign Up"))),
      SizedBox(
        height: deviceHeight*0.02,
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
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
              width: deviceWidth*0.03,
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
              width: deviceWidth*0.03,
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
      ),
Padding(
  padding: const EdgeInsets.only(top: 10,bottom: 10),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.center,

    children: [
          Text("Already have an account ?",style: TextStyle(fontSize: 17,
          color: Colors.grey.shade700),),SizedBox(width: deviceWidth*0.02,),
      Text("Login",style: TextStyle(
        color: Colors.cyan,fontSize: 18
      ),),
    ],
  ),
),

    ],
  ),
),
    );
  }
}
