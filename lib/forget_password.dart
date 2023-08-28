import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text("Forget Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
                child: Text(
              "Forget Password",
              style:
                  GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: deviceHeight*0.01,
            ),
            Text("Please enter your email to return your account"),
            SizedBox(
              height: deviceHeight*0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                    hintText: "Email or Phone number"),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: deviceWidth*0.9,
                  child: ElevatedButton(
                      style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => HomePage()));
                      },
                      child: Text("Send"))),
            ),
          ],
        ),
      ),
    );
  }
}
