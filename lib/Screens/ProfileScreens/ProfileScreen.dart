import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:test/Screens/Utils/utils.dart';

import '../Step1/Step1Screen.dart';
import 'Model/MyContainerModel.dart';
import 'Widgets/MyContainer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text(
          "Create Profile",
          style: GoogleFonts.manrope(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: orangeColor,
                        radius: 70,
                        backgroundImage: AssetImage("assets/avatar.png"),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                              backgroundColor: orangeColor,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              )))
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    return MyContainer(
                      title: myContainerModel[index].title,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: myContainerModel.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 55,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: orangeColor,
                      borderRadius: BorderRadius.circular(9)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Step1()));
                    },
                    child: Text(
                      "Next",
                      style: GoogleFonts.manrope(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
