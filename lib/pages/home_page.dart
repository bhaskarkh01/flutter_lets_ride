import 'package:flutter/material.dart';
import 'package:lets_ride/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(
            horizontal: _deviceWidth * 0.05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _pageTitle(),
              _autoImageWidget(),
              _destinationDropDownWidget(),
              _noOfPassengersWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#LetsGo",
      style: TextStyle(
        fontSize: 75,
        color: Colors.white,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _autoImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 238, 213, 121),
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/auto.png"),
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    return CustomDropDownWidgetButtonClass(
      values: const [
        "Yelahanka",
        "BTM",
        "Malleshwaram",
        "Basavanagudi",
        "Indiranagar",
        "Rajajinagar",
        "Hebbal",
        "Marathahalli",
        "Whitefield",
      ],
      width: _deviceWidth,
    );
  }

  Widget _noOfPassengersWidget() {
    return CustomDropDownWidgetButtonClass(
      values: const [
        "1",
        "2",
        "3",
        "4",
        "5",
      ],
      width: _deviceWidth * 0.45,
    );
  }
}
