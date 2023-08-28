// import 'package:flutter/material.dart';
//
// import 'data/item_data.dart';
// import 'model/base_model.dart';
// class AddToCart {
//   static void addToCart(BaseModel data, BuildContext context) {
//     bool contains = itemsOnCart.contains(data);
//
//     if (contains == true) {
//       var snackBar = SnackBar(content: Text('You have added this item on cart before'));
//       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//     } else {
//       itemsOnCart.add(data);
//
//       var snackBar = SnackBar(content: Text('Sucessfully added to cart'));
//       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//     }
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Add_to_cart extends StatefulWidget {
  final String productImage;
  final String productTitle;
  final String productPrice;
   Add_to_cart(this.productImage,this.productTitle,this.productPrice,   {Key? key})
      : super(key: key);
  @override
  State<Add_to_cart> createState() => _Add_to_cartState();
}
class _Add_to_cartState extends State<Add_to_cart> {
// Adding values to the array
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Add To Cart"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: deviceHeight * 0.2,
              width: deviceWidth * 0.992,
              child: Card(
                elevation: 10,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                  widget.productImage.toString(),
                                ),
                                fit: BoxFit.cover)),
                        height: deviceHeight * 0.2,
                        width: deviceWidth * 0.3,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(

                          children: [

                            Text(
                              widget.productTitle,
                              style: GoogleFonts.roboto(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: deviceWidth * 0.11,
                            ),

                            Text(
                              widget.productPrice,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                        SizedBox(
                          width: deviceWidth * 0.07,
                        ),
                        SizedBox(
                          height: deviceHeight * 0.01,
                        ),
                        Text(
                          widget.productTitle,
                          style: GoogleFonts.roboto(
                              fontSize: 18, color: Colors.grey),
                        ),
                        SizedBox(
                          height: deviceHeight * 0.02,
                        ),
                        Row(
                          children: [
                            Container(
                              height: deviceHeight * 0.06,
                              width: deviceWidth * 0.2,
                              child: Card(
                                elevation: 10,
                                shadowColor: Colors.black,
                                child: Icon(Icons.shopping_cart),
                              ),
                            ),
                            Container(
                              height: deviceHeight * 0.06,
                              width: deviceWidth * 0.2,
                              child: Card(
                                shadowColor: Colors.black,
                                elevation: 20,
                                child: Center(
                                    child: Text(
                                  "Details",
                                  style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
