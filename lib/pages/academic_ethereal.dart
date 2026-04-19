import 'package:flutter/material.dart';

class AcademicEthereal extends StatefulWidget {
  const AcademicEthereal({super.key});

  @override
  State<AcademicEthereal> createState() => _AcademicEtherealState();
}

class _AcademicEtherealState extends State<AcademicEthereal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Color.fromRGBO(250, 245, 255, 0.7),
        leading: BackButton(color: Color(0xff7E22CE)),
        title: Text(
          "Academic Ethereal",
          style: TextStyle(
            fontFamily: "Plus Jakarta Sans",
            fontWeight: FontWeight(700),
            fontSize: 20,
            letterSpacing: -0.5,
            foreground: Paint()
              ..shader = const LinearGradient(
                colors: <Color>[Color(0xff7E22CE), Color(0xffC084FC)],
              ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 2, 15, 2),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xffBBA2FD),
              child: CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage("assets/images/user_profile.png"),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            color: Color(0xffFDF3FF),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 256,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/profile_bg.png'),
                          fit: BoxFit.fill,
                        ),
                      ),

                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(100, 77, 161, 0.9),
                            Color.fromRGBO(187, 162, 253, 0.7),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        //color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 158, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        spacing: 32,
                        children: [
                          Stack(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.all(
                                    Radius.circular(80),
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 80,
                                  backgroundColor: Color(0xffFDF3FF),
                                  child: CircleAvatar(
                                    radius: 70,
                                    backgroundImage: AssetImage(
                                      "assets/images/student_profile_photo.png",
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Chip(
                                  side: BorderSide.none,
                                  backgroundColor: Color(0xffFF8EB2),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadiusGeometry.all(Radius.circular(999))
                                  ),
                                    label: Text("DEANS LIST",

                                    style: TextStyle(
                                      fontFamily: "Plus Jakarta Sans",
                                      color: Color(0xff640432),
                                      fontSize: 10,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight(700),
                                    ))),
                              )
                            ],
                          ),
                          Column(
                            spacing: 8,
                            children: [
                              Text(
                                'Isabella Chen ',
                                style: TextStyle(
                                  fontFamily: "Plus Jakarta Sans",
                                  color: Color(0xff38264C),
                                  fontSize: 36,
                                  letterSpacing: -0.9,
                                  fontWeight: FontWeight(800),
                                ),
                              ),
                              Row(
                                spacing: 12,
                                children: [
                                  Chip(
                                    padding: EdgeInsets.fromLTRB(16, 6, 16, 6),
                                    label: Text(
                                      "CLASS OF 2024",
                                      style: TextStyle(
                                        fontFamily: "Plus Jakarta Sans",
                                        fontWeight: FontWeight(700),
                                        fontSize: 12,
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                    side: BorderSide.none,
                                    backgroundColor: Color(0xffA8D7FF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadiusGeometry.all(
                                        Radius.circular(999),
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 3,
                                    backgroundColor: Color.fromRGBO(
                                      187,
                                      164,
                                      210,
                                      0.3,
                                    ),
                                  ),
                                  Text(
                                    "21 Years Old",
                                    style: TextStyle(
                                      fontFamily: "Plus Jakarta Sans",
                                      fontWeight: FontWeight(500),
                                      fontSize: 16,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //following column
                          Container(
                            width: MediaQuery.of(context).size.width - 32,

                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              spacing: 16,
                              children: [
                                Card(
                                  elevation: 0,
                                  color: Color(0xffF9ECFF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      24,
                                    ),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.all(24),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      spacing: 8,
                                      children: [
                                        Text(
                                          "MAJOR PROGRAM",
                                          style: TextStyle(
                                            fontFamily: "Plus Jakarta Sans",
                                            fontWeight: FontWeight(700),
                                            fontSize: 10,
                                            letterSpacing: 2,
                                            color: Color(0xff67537C),
                                          ),
                                        ),
                                        Text(
                                          "Architecture & Spatial Design",
                                          style: TextStyle(
                                            fontFamily: "Plus Jakarta Sans",
                                            fontWeight: FontWeight(600),
                                            fontSize: 20,
                                            letterSpacing: 2,
                                            color: Color(0xff644DA1),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(top: 11.5),
                                          child: Row(
                                            spacing: 8,
                                            children: [
                                              Image.asset(
                                                "assets/icons/cap.png",

                                                height: 10.5,
                                              ),
                                              Text(
                                                "Faculty of Fine Arts",
                                                style: TextStyle(
                                                  fontFamily:
                                                      "Plus Jakarta Sans",
                                                  fontWeight: FontWeight(400),
                                                  fontSize: 14,
                                                  letterSpacing: 0,
                                                  color: Color(0xff67537C),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  elevation: 0,
                                  color: Color(0xffF9ECFF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      24,
                                    ),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.all(24),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      spacing: 8,
                                      children: [
                                        Text(
                                          "ACADEMIC STATUS",
                                          style: TextStyle(
                                            fontFamily: "Plus Jakarta Sans",
                                            fontWeight: FontWeight(700),
                                            fontSize: 10,
                                            letterSpacing: 2,
                                            color: Color(0xff67537C),
                                          ),
                                        ),
                                        Text(
                                          "4.0 GPA (Honors)",
                                          style: TextStyle(
                                            fontFamily: "Plus Jakarta Sans",
                                            fontWeight: FontWeight(600),
                                            fontSize: 20,
                                            letterSpacing: 0,
                                            color: Color(0xff38264C),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(top: 11.5),
                                          child: Row(
                                            spacing: 8,
                                            children: [
                                              Image.asset(
                                                "assets/icons/calendar.png",

                                                height: 10.5,
                                              ),
                                              Text(
                                                "7th Semester",
                                                style: TextStyle(
                                                  fontFamily:
                                                      "Plus Jakarta Sans",
                                                  fontWeight: FontWeight(400),
                                                  fontSize: 14,
                                                  letterSpacing: 0,
                                                  color: Color(0xff67537C),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Card(
                            elevation: 0,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1,color: Color.fromRGBO(187, 164, 210, 0.1)),
                              borderRadius: BorderRadiusGeometry.all(
                                Radius.circular(24),
                              ),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 32,
                              padding: EdgeInsets.all(32),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 16,
                                children: [
                                  Text(
                                    "PROFILE SUMMARY",
                                    style: TextStyle(
                                      color: Color(0xff67537C),
                                      fontFamily: "Plus Jakarta Sans",
                                      fontWeight: FontWeight(700),
                                      fontSize: 10,
                                      letterSpacing: 2,
                                    ),
                                  ),

                                  Text(
                                    "Specializing in sustainable urban environments with a focus on regenerative materials. Currently leading the university's \"Green Sprawl\" initiative and maintaining a position on the Provost's Honor Roll for three consecutive years.",
                                    style: TextStyle(
                                      color: Color(0xff38264C),
                                      fontFamily: "Plus Jakarta Sans",
                                      fontWeight: FontWeight(500),
                                      fontSize: 16,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 161,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 32, 0, 48),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FilledButton(
                              
                                    onPressed: () {},
                                    style: FilledButton.styleFrom(
                                      padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                                      backgroundColor: Color(0xffEBD4FF),
                              
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ), // Match your TextField roundness
                                      ),
                                    ),
                                    child: Row(
                                      spacing: 12,
                                      children: [
                                       Image.asset("assets/icons/delete.png", height: 18,),
                                        Text(
                                          "Delete Student Record",
                                          style: TextStyle(
                                            color: Color(0xffB41340),
                                            fontFamily: "Plus Jakarta Sans",
                                            fontWeight: FontWeight(700),
                                            fontSize: 16,
                                            letterSpacing: 0.4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar:Container(
        width: MediaQuery.of(context).size.width,

        //color: Color.fromRGBO(255, 255, 255, 1),
        // padding: EdgeInsets.fromLTRB(24.55, 8, 24.55, 16),
        height: 80,

        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          //boxShadow: 1,
          color: Color.fromRGBO(255, 255, 255, 0.8),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Container(
          // width: MediaQuery.of(context).size.width,
          //color: Colors.grey,
          margin: EdgeInsets.fromLTRB(20, 8, 20, 16),
          child: Row(
            spacing: 17,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: GestureDetector(

                  onTap: () {
                    print("I was clicked");
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 8),

                    decoration: BoxDecoration(
                      color: Color(0xffF3E8FF),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 4,
                      children: [
                        Image.asset("assets/icons/directory.png", height: 16),
                        Text(
                          "DIRECTORY",
                          style: TextStyle(
                            fontFamily: "Plus Jakarta Sans",
                            color: Color(0xff6B21A8),
                            fontSize: 10,
                            letterSpacing: 1,
                            fontWeight: FontWeight(700),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Image.asset("assets/icons/analytics.png", height: 16),
                      Text(
                        "Analytics".toUpperCase(),
                        style: TextStyle(
                          fontFamily: "Plus Jakarta Sans",
                          color: Color(0xff94A3B8),
                          fontSize: 10,
                          letterSpacing: 1,
                          fontWeight: FontWeight(700),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Image.asset("assets/icons/settings.png", height: 16),
                      Text(
                        "SETTINGS",
                        style: TextStyle(
                          fontFamily: "Plus Jakarta Sans",
                          color: Color(0xff94A3B8),
                          fontSize: 10,
                          letterSpacing: 1,
                          fontWeight: FontWeight(700),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
