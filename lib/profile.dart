import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(

                      children: [
                        InkWell(onTap: (){
                          Navigator.pop(context);
                        },
                            child: Container(child: Icon(Icons.arrow_back,color: Colors.cyan,size: 27,))),Spacer(),
                        Icon(Icons.search,color: Colors.cyan,size: 27,),SizedBox(width: deviceWidth*0.06,),
                        Icon(Icons.notifications,color: Colors.cyan,size: 27,)
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.grey.shade200,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage('assets/profile.jpeg'),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        right: 1,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(Icons.edit, color: Colors.black),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 3,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  50,
                                ),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(2, 4),
                                  color: Colors.black.withOpacity(
                                    0.3,
                                  ),
                                  blurRadius: 3,
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),SizedBox(height: deviceHeight*0.01,),
                  Text("John doe",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,

                  ),),
                  Text("John.d@examle.com",
                    style: GoogleFonts.roboto(
                      fontSize: 16,


                    ),),
                 SizedBox(height: deviceHeight*0.02,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                      child: ListTile(

                        leading: Icon(Icons.perm_identity_sharp,
                        color: Colors.cyan,),
                        title: Text(
                          'Edit Profile',style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),

                        ),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.cyan,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(

                        leading: Icon(Icons.privacy_tip_outlined,
                          color: Colors.cyan,),
                        title: Text(
                          'Privacy',style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),

                        ),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.cyan,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(

                        leading: Icon(Icons.history,
                          color: Colors.cyan,),
                        title: Text(
                          'History',style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),

                        ),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.cyan,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(

                        leading: Icon(Icons.help_outline,
                          color: Colors.cyan,),
                        title: Text(
                          'Help & Support',style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),

                        ),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.cyan,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(

                        leading: Icon(Icons.settings,
                          color: Colors.cyan,),
                        title: Text(
                          'Setting',style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),

                        ),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.cyan,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(

                        leading: Icon(Icons.login_outlined,
                          color: Colors.cyan,),
                        title: Text(
                          'Log Out',style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),

                        ),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.cyan,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
