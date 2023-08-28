import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:cafeteria/profile.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

import 'add_to_cart.dart';
import 'category_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  int current = 0;
  int _tabIndex = 1;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final _controller = PageController();
  int currentIndex = 0;
  ///banner images
  List imageList = [
    {"id": 1, "image_path": "assets/f1.jpeg"},
    {"id": 2, "image_path": "assets/f2.jpeg"},
    {"id": 3, "image_path": "assets/Banner_image1.jpg"},
    {"id": 4, "image_path": "assets/Banner_image2.jpg"},
    {"id": 5, "image_path": "assets/Banner_image4.jpg"},

  ];
  final CarouselController carouselController = CarouselController();
  int currentSlider = 0;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
///tab bar icon
  final List<Map<String, dynamic>> iconItem = [
    {"icon": Icons.dinner_dining},
    {"icon": Icons.fastfood},
    {"icon": Icons.wine_bar},
    {"icon": Icons.cake_outlined},
  ];
  ///category icon
  final List<Map<dynamic, dynamic>> cateItem = [
    {
      "data": [
        {
          "title": "Sea Food",
          "subtitle": "Best experience so pleasant",
          "images": "assets/seafood1.jpg",
          "price": "201",
        },
        {
          "title": "Burger",
          "subtitle": "Best experience so pleasants",
          "images": "assets/Burger.jpg",
          "price": "202",
        },
        {
          "title": "MockTail",
          "subtitle": "Best experience so pleasant",
          "images": "assets/mocktail.jpg",
          "price": "203",
        },
        {
          "title": "Cake",
          "subtitle": "Best experience so pleasant",
          "images": "assets/birthday-.jpeg",
          "price": "204",
        },
        {
          "title": "Cake",
          "subtitle": "Best experience so pleasant",
          "images": "assets/1.jpg",
          "price": "205",
        },
      ],
    },
    {
      "meta": [
        {
          "title": "North Indian",
          "subtitle": "Best experience so pleasants",
          "images": "assets/north_indian_food.jpg",
          "price": "202",
        },
        {
          "title": "Cheese Burger",
          "subtitle": "Best experience so pleasants",
          "images": "assets/cheeseburger_pizza.jpg",
          "price": "202",
        },
        {
          "title": "DrinkStock",
          "subtitle": "Best experience so pleasant",
          "images": "assets/drinkstock.jpg",
          "price": "203",
        },
        {
          "title": "Blue Berry",
          "subtitle": "Best experience so pleasant",
          "images": "assets/blubarry_cake.jpg",
          "price": "204",
        },
        {
          "title": "South Indian",
          "subtitle": "Best experience so pleasant",
          "images": "assets/1.jpg",
          "price": "205",
        },
      ],
    },
    {
      "beta": [
        {
          "title": "Chinese",
          "subtitle": "Best experience so pleasant",
          "images": "assets/chinesefood.png",
          "price": "203",
        },
        {
          "title": "Grilled Pizza",
          "subtitle": "Best experience so pleasants",
          "images": "assets/Grilled Pizza.jpg",
          "price": "202",
        },
        {
          "title": "Drink Stock",
          "subtitle": "Best experience so pleasant",
          "images": "assets/drink stock.jpg",
          "price": "203",
        },
        {
          "title": "Vanila Cake",
          "subtitle": "Best experience so pleasant",
          "images": "assets/Naked-Cake.jpg",
          "price": "204",
        },
        {
          "title": "South Indian",
          "subtitle": "Best experience so pleasant",
          "images": "assets/1.jpg",
          "price": "205",
        },
      ],
    },
    {
      "peta": [
        {
          "title": "Tandoor",
          "subtitle": "Best experience so pleasant",
          "images": "assets/tandoor.jpeg",
          "price": "204",
        },
        {
          "title": "Chicken Pizza",
          "subtitle": "Best experience so pleasants",
          "images": "assets/jhatpat_chicken_pizza.jpg",
          "price": "202",
        },
        {
          "title": "Caloria",
          "subtitle": "Best experience so pleasant",
          "images": "assets/calaroia_.jpg",
          "price": "203",
        },
        {
          "title": "Strawberry Cake",
          "subtitle": "Best experience so pleasant",
          "images": "assets/Strawberry-Eton-Mess.png",
          "price": "204",
        },
        {
          "title": "South Indian",
          "subtitle": "Best experience so pleasant",
          "images": "assets/1.jpg",
          "price": "205",
        },
      ],
    },
    {
      "seta": [
        {
          "title": "South Indian",
          "subtitle": "Best experience so pleasant",
          "images": "assets/1.jpg",
          "price": "205",
        },
        {
          "title": "Stuffed Pizza",
          "subtitle": "Best experience so pleasants",
          "images": "assets/stuffed_pizza.jpg",
          "price": "202",
        },
        {
          "title": "Cocktails",
          "subtitle": "Best experience so pleasant",
          "images": "assets/Cocktails.jpg",
          "price": "203",
        },
        {
          "title": "Jello Cake",
          "subtitle": "Best experience so pleasant",
          "images": "assets/jello poke cake.jpg",
          "price": "204",
        },
        {
          "title": "South Indian",
          "subtitle": "Best experience so pleasant",
          "images": "assets/1.jpg",
          "price": "205",
        },
      ],
    },
  ];


  TextEditingController textController = TextEditingController();
  Widget build(BuildContext context) {
    print("kd"+cateItem.toString());

    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AnimSearchBar(
                      color: Colors.cyan,
                      onSubmitted: (p0) {},
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      width: deviceWidth * 0.8,
                      textController: textController,
                      onSuffixTap: () {
                        setState(() {
                          textController.clear();
                        });
                      },
                    ),
                    SizedBox(
                      width: deviceWidth * 0.02,
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.cyan,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "What would you like to\n eat?",
                  style: GoogleFonts.roboto(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              // Expanded(
              //   child: ListView.builder(
              //     shrinkWrap: true,
              //       physics: const BouncingScrollPhysics(),
              //       itemCount: iconItem.length,
              //      scrollDirection: Axis.horizontal,
              //       itemBuilder: (ctx, index) {
              //         return Row(
              //           children: [
              //             Padding(
              //               padding: const EdgeInsets.all(8.0),
              //               child: Container(
              //                 color: Colors.grey,
              //                 height: 50,
              //                 width: 50,
              //                 child: Icon(iconItem[index]["icon"],color: Colors.red,),
              //               ),
              //             )
              //           ],
              //         );
              //       }),
              // ),
              ///tab bar
              Container(
                height: deviceHeight * 0.1,
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
                              iconItem[index]["icon"];
                              // getOnlySubCategoryList(current.toString());
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.all(5),
                              width: deviceWidth * 0.211,
                              height: deviceHeight * 0.08,
                              decoration: BoxDecoration(
                                color: current == index
                                    ? Colors.white70
                                    : Colors.white54,
                                borderRadius: current == index
                                    ? BorderRadius.circular(15)
                                    : BorderRadius.circular(10),
                                border: current == index
                                    ? Border.all(
                                        color: Colors.cyan,
                                        width: deviceWidth * 0.01)
                                    : null,
                              ),
                              child: Center(
                                  child: Icon(
                                iconItem[index]["icon"],
                                color: current == index
                                    ? Colors.cyan
                                    : Colors.grey,
                                size: 40,
                              )),
                            ),
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
                        ],
                      );
                    }),
              ),
              Text("Foodies",
                  style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ///category
        Container(
          height: deviceHeight * 0.32,
          width: deviceWidth * 0.99,
          child: ListView.builder(
            itemCount: cateItem.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final categoryData = cateItem[index];
              final itemList = categoryData.values.first;
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Category_page(
                        itemList[current]["title"].toString(),
                        itemList[current]["images"].toString(),
                        itemList[current]["price"].toString(),
                      ),
                    ),
                  );
                },
                child: Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Container(
                              width: deviceWidth * 0.5,
                              height: deviceHeight * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    itemList[current]["images"].toString(),
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    itemList[current]["title"].toString(),
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            itemList[0]["subtitle"].toString(),
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Discount",
                  style: GoogleFonts.anton(fontSize: 27),
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.01,
              ),
            ///slider
              Padding(
                padding:
                    const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            print(currentSlider);
                          },
                          child: CarouselSlider(
                            items: imageList
                                .map(
                                  (item) => Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          item["image_path"],
                                        ),
                                        fit: BoxFit.fill,
                                        //width: double.infinity,
                                      ),
                                    ),
                                    // child: Image.asset(
                                    //   item["image_path"],
                                    //   fit: BoxFit.cover,
                                    //   width: double.infinity,
                                    // ),
                                  ),
                                )
                                .toList(),
                            carouselController: carouselController,
                            options: CarouselOptions(
                              scrollPhysics: const BouncingScrollPhysics(),
                              autoPlay: true,
                              aspectRatio: 2,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentSlider = index;
                                });
                              },
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: imageList.asMap().entries.map(
                              (entry) {
                                print(entry);
                                print(entry.key);
                                return GestureDetector(
                                  onTap: () => carouselController
                                      .animateToPage(entry.key),
                                  child: Container(
                                    width: currentSlider == entry.key
                                        ? deviceWidth * 0.02
                                        : deviceWidth * 0.02,
                                    height: deviceHeight * 0.01,
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 3.0,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: currentSlider == entry.key
                                            ? Colors.red
                                            : Colors.teal),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ///another category container
              Container(
                height: deviceHeight * 0.32,
                width: deviceWidth * 0.99,
                child: ListView.builder(
                  itemCount: cateItem.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final categoryData = cateItem[index];
                    final itemList = categoryData.values.first;
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Category_page(
                              itemList[current]["title"].toString(),
                              itemList[current]["images"].toString(),
                              itemList[current]["price"].toString(),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Container(
                                    width: deviceWidth * 0.5,
                                    height: deviceHeight * 0.2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          itemList[current]["images"].toString(),
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          itemList[current]["title"].toString(),
                                          style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  itemList[0]["subtitle"].toString(),
                                  style: TextStyle(fontSize: 17, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      ///bootom navigation bar
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: deviceHeight * 0.07,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.location_on_outlined, size: 30),
          Icon(Icons.shopping_bag, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.cyan,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {
            _page = index;
          });

          switch (index) {
            // case 0:
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => Category_page(),
            //       )
            //   );
            //   break;
            // case 1:
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => Category_page(),
            //       )
            //   );
            //  break;
            case 2:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Add_to_cart(cateItem[index]["image"].toString(),
                        cateItem[index]["title"].toString(),
                        cateItem[index]["price"].toString()


                  ),
                    )

              );
              break;
            case 3:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ));
              break;
          }
        },
        letIndexChange: (index) => true,
      ),
    ));
  }
}
