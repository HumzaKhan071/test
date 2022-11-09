import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/Screens/Step1/Model/MyStepModel.dart';

import 'Widget/MyStepContainer.dart';

class Step1 extends StatefulWidget {
  const Step1({super.key});

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 17.0),
            child: Text(
              "Skip",
              style: GoogleFonts.manrope(
                  color: Color(0xffF38E2A),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Select any 5 of your favorite topics",
                style: GoogleFonts.manrope(
                    fontSize: 27, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                childAspectRatio: 3,
                physics: BouncingScrollPhysics(),
                children: List.generate(
                    myStepContainerModel.length,
                    (index) => MyStepContainer(
                          text: myStepContainerModel[index].text,
                          image: myStepContainerModel[index].image,
                        )),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 55,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xffF38E2A),
                    borderRadius: BorderRadius.circular(9)),
                child: Center(
                  child: Text(
                    "Done",
                    style: GoogleFonts.manrope(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
