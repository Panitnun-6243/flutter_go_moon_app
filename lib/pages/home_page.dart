import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deiceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deiceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.lightBlue,
          child: _destinationDropDownWidget(),
          width: _deviceWidth,
          height: _deiceHeight,
          padding: EdgeInsets.symmetric(
            horizontal: _deviceWidth * 0.05,
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
          color: Colors.white, fontSize: 70, fontWeight: FontWeight.w800),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    List<DropdownMenuItem<String>> _items =
        ['Tanny Station', 'Panitnun Station'].map(
      (e) {
        return DropdownMenuItem(
          child: Text(e),
          value: e,
        );
      },
    ).toList();
    return Container(
      child: DropdownButton(
        items: _items,
        onChanged: (_) {},
      ),
    );
  }
}
