import 'package:flutter/material.dart';
import 'package:titanium/app/instance.dart';

import '../../core/constants.dart';
import '../../core/widgets/base_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LandingScreen(),
    );
  }
}

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BasePage(
        child: SliverGrid.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            // return Container(
            //   alignment: Alignment.center,
            //   color: Colors.teal[100 * (index % 9)],
            //   child: Text('grid item $index'),
            // );

            return Card(
              color: const Color.fromRGBO(255, 255, 255, 1),
              child: Hero(
                tag: products[index],
                // child: Image(
                //   image: AssetImage(products[index]),
                //   height: 350,
                //   width: 350,
                // ),
                child: Ink.image(
                  fit: BoxFit.fill,
                  width: 350,
                  height: 350,
                  image: AssetImage(products[index]),
                  child: InkWell(
                    onTap: () {
                      Application.instance.router.goToProductCardPage(index);
                    },
                    // child: const Align(
                    //   child: Padding(
                    //     padding: EdgeInsets.all(10.0),
                    //     child: Text(
                    //       'PUFFIN',
                    //       style: TextStyle(
                    //         fontWeight: FontWeight.w900,
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ),
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 450.0,
            // mainAxisSpacing: 10.0,
            // crossAxisSpacing: 10.0,
            // childAspectRatio: 4.0,
          ),
        ),
      ),
    );
  }
}
