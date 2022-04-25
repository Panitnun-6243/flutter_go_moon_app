import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

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
          child: Column(
            children: [
              _pageTitle(),
              Column(
                children: [
                  _destinationDropDownWidget(),
                  _travellerInformationWidget(),
                ],
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
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
    List<String> _items = ['Tanny Station', 'Panitnun Station'];

    return CustomDropDownButton(
      values: _items,
      width: _deviceWidth,
    );
  }

  Widget _travellerInformationWidget() {
    List<String> _items = ['1', '2', '3', '4'];

    return CustomDropDownButton(
      values: _items,
      width: _deviceWidth * 0.45,
    );
  }
}
