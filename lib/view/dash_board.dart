import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../constants/array_lists.dart';
import '../constants/image_urls.dart';
import '../constants/strings.dart';
import 'cart_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        foregroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          child: Row(
            children: const [
              Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
              )
            ],
          ),
        ),
        title: Row(
          children: [
            Text(
              'Recorded Classes',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 18),
            ),
            Container(
              height: 25,
              width: 25,
              margin: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              padding: EdgeInsets.all(3),
              child: Icon(
                Icons.arrow_drop_down_sharp,
                color: Colors.black,
                size: 20,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 390,
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.bottomLeft,
                    children: [
                      SizedBox(
                        height: 390,
                        child: ImageSlideshow(
                          autoPlayInterval: 3000,
                          isLoop: true,
                          indicatorColor: Colors.blue,
                          onPageChanged: (value) {
                            debugPrint('Page changed: $value');
                          },
                          children: [
                            Image.network(
                              book1,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              book2,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              book3,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              book4,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              book5,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              book6,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              book7,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              book8,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              book9,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 250),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 20, bottom: 10),
                              child: Text(
                                aed,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[400],
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 20, bottom: 10),
                              child: const Text(
                                introduction,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 26),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Recorded Classes',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  height: 220,
                  child: ListView.builder(
                      itemCount: imageList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (cnx, index) {
                        return Container(
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (n) => DetailsView()));
                                },
                                child: Container(
                                  height: 220,
                                  width: 190,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Image.network(
                                          imageList[index],
                                          height: 130,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 5,
                                        ),
                                        child: const SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Text(
                                            adv,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 5),
                                        child: const SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Text(
                                            sub,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 7),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Text(
                                            aed,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey[400]!,
                                                fontSize: 13),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              )
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Subjects',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.builder(
                      itemCount: subjectList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 5),
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 15),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(1))),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Center(
                            child: Text(
                              subjectList[index],
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        );
                      },
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
