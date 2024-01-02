import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: const Text(
          "Cars",
          style: TextStyle(
            color: Colors.red,
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // #categories
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    categoriesItem(true, "All"),
                    categoriesItem(false, "Red"),
                    categoriesItem(false, "Green"),
                    categoriesItem(false, "Yellow"),
                    categoriesItem(false, "White"),
                    categoriesItem(false, "None"),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              buildItems(
                  image: "assets/images/im_car1.jpg",
                  carName: "PDP Car",
                  carType: "Electric",
                  carSum: '2000\$'),
              buildItems(
                  image: "assets/images/im_car2.jpg",
                  carName: "PDP Car",
                  carType: "Electric",
                  carSum: '2000\$'),
              buildItems(
                  image: "assets/images/im_car3.jpg",
                  carName: "PDP Car",
                  carType: "Electric",
                  carSum: '2000\$'),
              buildItems(
                  image: "assets/images/im_car4.png",
                  carName: "PDP Car",
                  carType: "Electric",
                  carSum: '2000\$'),
              buildItems(
                  image: "assets/images/im_car5.jpg",
                  carName: "PDP Car",
                  carType: "Electric",
                  carSum: '2000\$'),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoriesItem(bool selected, String title) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: selected ? Colors.red : Colors.white,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: selected ? Colors.white : Colors.black,
              fontSize: selected ? 20 : 18,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildItems(
      {required String image,
      required String carName,
      required String carType,
      required String carSum}) {
    return Container(
      margin:const EdgeInsets.only(bottom: 16),
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 10,
              offset:const Offset(0,10),
            ),
          ]
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.6),
            Colors.black.withOpacity(0.3),
            Colors.black.withOpacity(0.2),
          ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      carName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      carType,
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  carSum,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              height: 36,
              width: 36,
              decoration:
                  const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              child: const Center(
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
