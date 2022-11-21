import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:seminar/blah.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CarouselSlider'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 80.0,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 400.0,
                enableInfiniteScroll: true,
              ),
              items: images.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        i,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ));
  }
}
