import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'add_to_cart.dart';


class Product_Description extends StatefulWidget {
  final String productimages;
final String producttitle;
final String productPrice;

   Product_Description(this.productimages,this.producttitle,this.productPrice,{Key? key, }) : super(key: key);

  @override
  State<Product_Description> createState() => _Product_DescriptionState();
}

final List<Map<String, dynamic>> iconItem = [
  {"title": "S"},
  {"title": "M"},
  {"title": "L"},
];
int counter = 1;

int current = 0;



class _Product_DescriptionState extends State<Product_Description> {
  @override
  Widget build(BuildContext context) {

    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: deviceHeight*0.5,
                width: deviceWidth*0.999,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage(
                          widget.productimages.toString(),
                        ),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>
                                      Add_to_cart(widget.productimages.toString(),
                                        widget.producttitle,widget.productPrice

                                    ),
                                  )

                              );
                            },
                            child: Container(
                              child: Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceHeight*0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.producttitle,
                      style: GoogleFonts.roboto(
                          fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "₹230",
                      style: GoogleFonts.roboto(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: Text(
                  "Made with ❤️ by Diora Tommes",
                  style: GoogleFonts.roboto(fontSize: 16, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 7),
                child: Text(
                  "Size :",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: deviceHeight*0.1,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: iconItem.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  current = index;
                                });
                                iconItem[index]["title"];
                                // getOnlySubCategoryList(current.toString());
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: const EdgeInsets.all(5),
                                width: deviceWidth*0.1,
                                height: deviceHeight*0.06,
                                decoration: BoxDecoration(
                                    color: current == index
                                        ? Colors.cyan
                                        : Colors.white60,
                                    borderRadius: current == index
                                        ? BorderRadius.circular(15)
                                        : BorderRadius.circular(10),
                                    border:
                                        Border.all(color: Colors.cyan, width: deviceWidth*0.01)),
                                child: Center(
                                    child: Text(iconItem[index]["title"],
                                        style: TextStyle(
                                          color: current == index
                                              ? Colors.white
                                              : Colors.grey.shade700,
                                        ))),
                              ),
                              // Visibility(
                              //     visible: current == index,
                              //     child: Container(
                              //       width: 5,
                              //       height: 5,
                              //       decoration: const BoxDecoration(
                              //           color: Colors.red,
                              //           shape: BoxShape.circle),
                              //     ))
                            )
                          ],
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 3),
                child: Text(
                  "Quantity:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 7),
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                          width: deviceWidth*0.1,
                          height: deviceHeight*0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.cyan, width: deviceWidth*0.01)),
                          child: InkWell(
                              onTap: () {
                                if (counter > 1) {
                                  setState(() {
                                    counter--;
                                  });
                                }
                              },
                              child: Icon(
                                Icons.remove,
                                size: 30,
                                color: Colors.cyan,
                              ))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      counter.toString(),
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: deviceWidth*0.1,
                        height: deviceHeight*0.06,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.cyan, width: deviceWidth*0.01)),
                        child: InkWell(
                            onTap: () {
                              if (counter >= 1) {
                                setState(() {
                                  counter++;
                                });
                              }
                            },
                            child: Icon(
                              Icons.add,
                              size: 30,
                              color: Colors.cyan,
                            ))),
                  ],
                ),
              ),

     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Text("Product Description :",
       style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.bold,),),
     )

            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            height: deviceHeight*0.06,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
              color: Colors.cyan,),
            width: double.infinity,
            child: Center(
              child: Text("ORDER NOW",style: GoogleFonts.roboto(fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold),),
              
            ),
          ),
        ),
      ),
    );
  }
}
