import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/get_core.dart';
import 'package:movie_app/component/button_component.dart';
import 'package:movie_app/models/movie_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            height: height * 0.44,
            width: width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/banner (2).png'), fit: BoxFit.fill),
            ),
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 25, left: 15, right: 15),
                  height: height * 0.07,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    // color: Colors.black38,
                    color: Colors.grey.withOpacity(0.9),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        height: height * 0.40,
                        width: width * 0.09,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: const Center(
                            child: Text(
                          'All',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )),
                      ),
                      const Text(
                        'Romance',
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('Sport',
                          style: TextStyle(fontSize: 19, color: Colors.white)),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('Kids',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('Horror',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button('WishList', 150, 45, Colors.red, () {}),
              button('Details', 150, 45, Colors.amber, () {}),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/banner (2).png',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: SvgPicture.asset(
                                'assets/svg-icons/Frame 13 (1).svg'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'data',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      )),
    );
  }
}
