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
          color: const Color.fromARGB(255, 238, 213, 121),
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(
            horizontal: _deviceWidth * 0.05,
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  _bookRideWidget(),
                ],
              ),
              Align(child: _autoImageWidget()),
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
        color: Colors.black,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _autoImageWidget() {
    return Container(
      height: _deviceHeight * 0.45,
      width: _deviceWidth * 0.90,
      decoration: const BoxDecoration(
        //color: Color.fromARGB(255, 206, 175, 161),
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/auto.png"),
        ),
      ),
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellersInformationWidget(),
          _rideButton(),
        ],
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

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownWidgetButtonClass(
          values: const ["1", "2", "3", "4", "5"],
          width: _deviceWidth * 0.45,
        ),
        CustomDropDownWidgetButtonClass(
          values: const ["Economy", "Business", "First", "Private"],
          width: _deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: (() {}),
        child: const Text(
          "Let's Go",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        // color: Colors.white,
      ),
    );
  }
}
