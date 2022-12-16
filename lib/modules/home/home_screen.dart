import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_bmi/modules/home/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, left: 30),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      "Let's calculate",
                      style: TextStyle(
                          color: Color(0xff484848),
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      "your current BMI",
                      style: TextStyle(
                          color: Color(0xff484848),
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 30),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      "You can find out whether you are",
                      style: TextStyle(
                          color: Color(0xff7F7F7F),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      "overweight, underweight or ideal weight",
                      style: TextStyle(
                          color: Color(0xff7F7F7F),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 105,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xff323335),
                        borderRadius: BorderRadius.circular(40),
                        // border:
                        //     Border.all(color: Color(0xffE2E2E2), width: 2)
                      ),
                      child: const Center(
                        child: Text(
                          "Female",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1),
                        ),
                      )),
                  Container(
                      width: 105,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                              color: const Color(0xffE2E2E2), width: 2)),
                      child: const Center(
                        child: Text(
                          "Male",
                          style: TextStyle(
                              color: Color(0xff888888),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1),
                        ),
                      )),
                  Container(
                      width: 105,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                              color: const Color(0xffE2E2E2), width: 2)),
                      child: const Center(
                        child: Text(
                          "Other",
                          style: TextStyle(
                              color: Color(0xff888888),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1),
                        ),
                      )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Container(
                    width: 350,
                    height: 65,
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: TextField(
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                        //scrollPadding: EdgeInsets.only(left: 30),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(3),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            controller.height.value = double.parse(value);
                          }
                        },
                        // controller: _controller,
                        decoration: InputDecoration(
                            hintText: 'Height',
                            hintStyle: TextStyle(color: Colors.grey.shade300,fontSize: 22),
                            border: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10)),
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: TextField(
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(3),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            controller.weight.value = double.parse(value);
                          }
                        },
                        decoration: InputDecoration(
                            hintText: 'Weight',
                            hintStyle: TextStyle(color: Colors.grey.shade300,fontSize: 22),
                            border: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => controller.isBMIControl(),
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.only(top: 220),
                width: 320,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xff468FF8),
                    borderRadius: BorderRadius.circular(40)),
                child: const Center(
                    child: Text(
                  'Calculate BMI',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                )),
                // color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
