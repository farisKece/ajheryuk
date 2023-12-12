import 'package:carousel_slider/carousel_slider.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 75,
            width: Get.width,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      ClipOval(
                        child: SizedBox(
                          width: 65,
                          height: 65,
                          child: Image.asset(
                            "assets/images/makima.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xFF4ED442),
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hallo, Faris",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icons/award.png",
                            width: 18,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "+1600",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFCD034),
                            ),
                          ),
                          const Text(
                            " Points",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(
                                0xFFFCD034,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 26,
                  height: 26,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 26,
                        height: 26,
                        child: Image.asset(
                          "assets/icons/notification.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 13,
                          height: 13,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xFFEC5F5F),
                            border: Border.all(color: Colors.white, width: 3),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                StoryItem(
                  image: "assets/images/ansel.jpeg",
                ),
                StoryItem(
                  image: "assets/images/freya.jpeg",
                ),
                StoryItem(
                  image: "assets/images/zee.jpeg",
                ),
                StoryItem(
                  image: "assets/images/marsha.jpeg",
                ),
                StoryItem(
                  image: "assets/images/Sheryl.jpeg",
                ),
                StoryItem(
                  image: "assets/images/michie.jpeg",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //RichText(text: text)
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 19),
            child: Row(
              children: [
                Text(
                  "Upcoming",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  " people of this week",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                CategoryItem(
                  item: "All",
                  status: true,
                ),
                CategoryItem(
                  item: "JKT 48",
                  status: false,
                ),
                CategoryItem(
                  item: "Artist",
                  status: false,
                ),
                CategoryItem(
                  item: "Brand Ambasador",
                  status: false,
                ),
                CategoryItem(
                  item: "Content Creator",
                  status: false,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            child: Column(
              children: [
                CarouselSlider(
                  items: imageSliders,
                  carouselController: controller.carouselController,
                  options: CarouselOptions(
                    height: Get.height * 0.5,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      controller.current.value = index;
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map(
                    (entry) {
                      return GestureDetector(
                        onTap: () => controller.carouselController
                            .animateToPage(entry.key),
                        // child: Obx(
                        //   () => Container(
                        //     width: 12.0,
                        //     height: 12.0,
                        //     margin: EdgeInsets.symmetric(
                        //       vertical: 8.0,
                        //       horizontal: 4.0,
                        //     ),
                        //     decoration: BoxDecoration(
                        //       shape: BoxShape.circle,
                        //       color: (Theme.of(context).brightness ==
                        //                   Brightness.dark
                        //               ? Colors.white
                        //               : Colors.black)
                        //           .withOpacity(
                        //               controller.current.value == entry.key
                        //                   ? 0.9
                        //                   : 0.4),
                        //     ),
                        //   ),
                        // ),
                        child: Obx(
                          () => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            width: 20,
                            height: 8,
                            decoration: BoxDecoration(
                              color: controller.current.value == entry.key
                                  ? Color(0xFFEC5F5F)
                                  : Colors.grey[400],
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        backgroundColor: Color.fromARGB(255, 114, 3, 134),
      ),
    );
  }
}

final List<String> imgList = [
  "assets/images/ansel.jpeg",
  "assets/images/freya.jpeg",
  "assets/images/zee.jpeg",
  "assets/images/marsha.jpeg",
  "assets/images/Sheryl.jpeg",
  "assets/images/michie.jpeg",
];

final List<Widget> imageSliders = imgList
    .map(
      (item) => SizedBox(
        height: 30,
        width: 700,
        child: Container(
          height: 30,
          width: 700,
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Stack(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height,
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      'No. ${imgList.indexOf(item)} image',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    )
    .toList();

class CategoryItem extends StatelessWidget {
  CategoryItem({
    required this.item,
    required this.status,
    super.key,
  });

  final String item;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: status == true ? Color(0xFFEC5F5F) : Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        item,
        style: TextStyle(color: status == true ? Colors.white : Colors.black54),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({
    required this.image,
    super.key,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      width: 105,
      height: 105,
      child: Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFEC5F5F), width: 5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: const EdgeInsets.all(5),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width: 3.8),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color(0xFF4DC9D1),
                border: Border.all(color: Colors.white, width: 3),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5.5),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                "assets/icons/video.png",
                width: 23,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
