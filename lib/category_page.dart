import 'package:cafeteria/product_description.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category_page extends StatefulWidget {
  final String catitemname;
  final String catimages;
  final String price;

   Category_page(this.catitemname, this.catimages, this.price,  {Key? key,}) : super(key: key);

  @override
  State<Category_page> createState() => _Category_pageState();
}

class _Category_pageState extends State<Category_page> {

  final List<Map<String, dynamic>> categoryItem = [
    {
      "title": "Fish Curry",
      "subtitle": "Glogigo matt",
      "images": "assets/1.jpg",
      "price": "₹230",
      "icon": Icon(Icons.shopping_cart),


    },
    {
      "title": "Prawn Masala",
      "subtitle": "Glogigo matt",
      "images": "assets/2.jpg",
      "price": "₹230",
      "icon": Icon(Icons.shopping_cart),
    },
    {
      "title": "Crab Masala",
      "subtitle": "Glogigo matt",
      "images": "assets/3.jpg",
      "price": "₹230",
      "icon": Icon(Icons.shopping_cart),
    },
    // {
    //   "title": "Lotus",
    //   "subtitle": "Glogigo matt",
    //   "images": "assets/chinesefood.png",
    //   "price": "₹230",
    //   "icon": Icon(Icons.shopping_cart),
    // },
    // {
    //   "title": "Lotus",
    //   "subtitle": "Glogigo matt",
    //   "images": "assets/chinesefood.png",
    //   "price": "₹230",
    //   "icon": Icon(Icons.shopping_cart),
    // },
    // {
    //   "title": "Noodles & Pasta",
    //   "images": "assets/banner/noodles-removebg-preview.png"
    // },
    // {
    //   "title": "Detergents & Laundry",
    //   "images": "assets/banner/detergents-removebg-preview.png"
    // },
    // {
    //   "title": "Bevrages",
    //   "images": "assets/banner/bevrage-removebg-preview.png"
    // },
    // {
    //   "title": "Body & Skincare",
    //   "images": "assets/banner/bodycare-removebg-preview.png"
    // },
    // {
    //   "title": "Hair Care",
    //   "images": "assets/banner/hair_care-removebg-preview.png"
    // },
  ];
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: deviceHeight*0.5,
                width: deviceWidth*0.995,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage(
                          widget.catimages.toString(),
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
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 5),
                      child: Text(widget.catitemname,
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 10),
                      child: Text("Ready to order",
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 20)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceHeight*0.02,
              ),
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: categoryItem.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Product_Description(categoryItem[index]["images"].toString(),
                                categoryItem[index]["title"],
                              categoryItem[index]["price"],

                                ),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: deviceHeight*0.2,
                        width: deviceWidth*0.992,
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
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            categoryItem[index]["images"],
                                          ),
                                          fit: BoxFit.cover)),
                                  height: deviceHeight*0.2,
                                  width: deviceWidth*0.3,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(

                                    children: [
                                      Text(
                                        categoryItem[index]["title"],
                                        style: GoogleFonts.roboto(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                     SizedBox(width: deviceWidth*0.11,),

                                      Text(
                                        categoryItem[index]["price"],
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: deviceWidth*0.07,
                                  ),
                                  SizedBox(
                                    height: deviceHeight*0.01,
                                  ),
                                  Text(
                                    categoryItem[index]["subtitle"],
                                    style: GoogleFonts.roboto(
                                        fontSize: 18, color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: deviceHeight*0.02,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: deviceHeight*0.06,
                                        width: deviceWidth*0.2,
                                        child: Card(
                                          elevation: 10,
                                          shadowColor: Colors.black,
                                          child: Icon(Icons.shopping_cart),
                                        ),
                                      ),
                                      Container(
                                        height: deviceHeight*0.06,
                                        width: deviceWidth*0.2,
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
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
