import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/constants.dart';
import 'package:flutter_web_portfolio/sections/topSection/components/logo_and_blur_box.dart';
import 'package:flutter_web_portfolio/sections/topSection/components/person_pic.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      constraints: const BoxConstraints(
        maxHeight: 900,
        minHeight: 700,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/background.png'),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            LogoAndBlurBox(size: size),
            const Positioned(
              bottom: 0,
              right: 0,
              child: PersonPic(),
            ),
            const Positioned(
              bottom: 0,
              child: Menu(),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItem = [
    'Home',
    'About',
    'Services',
    'Portfolio',
    'Testimonial',
    'Contact',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      constraints: const BoxConstraints(
        maxWidth: 1100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItem.length,
          (index) => buildMenuItem(index),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 100,
        constraints: const BoxConstraints(minWidth: 122),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              menuItem[index],
              style: const TextStyle(
                fontSize: 20,
                color: kTextColor,
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom: selectedIndex == index ? -2 : -32,
              child: Image.asset('assets/images/Hover.png'),
            ),
          ],
        ),
      ),
    );
  }
}
