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
          child: Stack(
            children: [
              Column(
                children: [
                  _pageTitle(),
                  _bookRideWidget(),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
              Align(
                child: _astroImageWidget(),
                alignment: Alignment.centerRight,
              )
            ],
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
      width: _deviceWidth * 0.55,
      height: _deiceHeight * 0.7,
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButton(
          values: const ['1', '2', '3', '4'],
          width: _deviceWidth * 0.45,
        ),
        CustomDropDownButton(
            values: const ['Economy', 'Business', 'First', 'Private'],
            width: _deviceWidth * 0.40)
      ],
    );
  }

  Widget _bookRideWidget() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellerInformationWidget(),
          _rideButton()
        ],
      ),
      height: _deiceHeight * 0.25,
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deiceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            10,
          )),
      child: MaterialButton(
        onPressed: (() {}),
        child: const Text('Get ride!!'),
      ),
    );
  }
}
