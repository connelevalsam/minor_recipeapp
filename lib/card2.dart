import 'package:flutter/material.dart';
import 'package:workout3/themes/fooderlichTheme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/mag5.png"), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 390, height: 650),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 26,
                        backgroundImage: AssetImage("assets/author_katz.jpeg"),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mike Katz',
                            style: FooderlichTheme.lightTextTheme.headline3,
                          ),
                          Text(
                            'Smoothie Connoisseur',
                            style: FooderlichTheme.lightTextTheme.headline6,
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_outlined,
                        size: 36,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                    bottom: 20,
                    right: 10,
                  ),
                  Positioned(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ),
                    ),
                    bottom: 50,
                    left: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
