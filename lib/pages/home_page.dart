import 'package:flutter/material.dart';

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
    List<String> _items = [
      "Yelahanka",
      "BTM",
      "Malleshwaram",
      "Basavanagudi",
      "Indiranagar",
      "Rajajinagar",
      "Hebbal",
      "Marathahalli",
      "Whitefield",
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        value: _items.first,
        onChanged: (_) {},
        items: _items.map(
          (e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          },
        ).toList(),
        underline: Container(),
        dropdownColor: Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
