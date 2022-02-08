// ignore: file_names
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Scaffold.of(context).openDrawer(),
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        title: const Text(
          'Health Centre',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        actions: [
          Row(
            children: [
              // ignore: missing_required_param
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                icon: const Icon(
                  Icons.favorite_rounded,
                  color: Colors.white,
                ),
              ),
              // ignore: missing_required_param
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Image.asset('assets/banner.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                        },
                        child: Category('Body Spray', 'assets/spray.png'),
                      ),
                      Category('COVID-19', 'assets/blackmask.png'),
                      Category('Categoryl', 'assets/bluemask.png'),
                    ],
                  ),
                  Row(
                    children: [
                      Category('T-store', 'assets/medicine.png'),
                      Category(' Fitness Products', 'assets/sanitizer.png'),
                      Category('Perfume', 'assets/spray.png'),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                        },
                        child: Category('test-2', 'assets/spray.png'),
                      ),
                      Category('SDL COVID-19', 'assets/blackmask.png'),
                      Category('Covid Essentials', 'assets/bluemask.png'),
                    ],
                  ),
                  Row(
                    children: [
                      Category('New health', 'assets/medicine.png'),
                      Category('First Category', 'assets/sanitizer.png'),
                      Category('Neutrition n Fitness', 'assets/spray.png'),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Productt("assets/handwash.png", 'Medohealthy careware 3Ply',
                        '500'),
                    Productt("assets/dettol.png",
                        'Dettol antiseptic liquid bottle', '190'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Productt("assets/shampoo.png", 'Test pr35', '2302'),
                    Productt("assets/cipla.png", 'Test 67', '600'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Productt("assets/handwash.png", 'Medohealthy careware 3Ply',
                        '500'),
                    Productt("assets/dettol.png",
                        'Dettol antiseptic liquid bottle', '190'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Productt("assets/shampoo.png", 'Test pr35', '2302'),
                    Productt("assets/cipla.png", 'Test 67', '600'),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title, imagePath;

  Category(
    this.title,
    this.imagePath,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        height: size.height * 0.16,
        width: size.width * 0.30,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.05),
                        spreadRadius: 5,
                        blurRadius: 1,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Productt extends StatelessWidget {
  final String imagePath, title, price;

  Productt(
    this.imagePath,
    this.title,
    this.price,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var colors = Colors;
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
      child: Stack(
        children: [
          Container(
            width: size.width * 0.45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 25, bottom: 8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    },
                    child: Container(
                      height: size.height * 0.15,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.07,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '$title',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    '₹ $price',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.green,
                            width: 2,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 6, bottom: 6),
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 17,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                // border: Border.all(color: colors.grey[300]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text('Litre'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
