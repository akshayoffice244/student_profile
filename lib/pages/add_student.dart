import 'package:flutter/material.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({super.key});

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 245, 255, 0.7),
        leading: BackButton(color: Color(0xff7E22CE)),
        title: Text(
          "Add Student",
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
                backgroundImage: AssetImage(
                  "assets/images/scholar_profile.png",
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Color(0xffFDF3FF),
            padding: EdgeInsets.fromLTRB(32, 50, 32, 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    spacing: 32,
                    children: [
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 8,
                        children: [
                          RichText(
                            //              textAlign: TextAlignVertical(y: y),
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Create ',
                                  style: TextStyle(
                                    fontFamily: "Plus Jakarta Sans",
                                    color: Color(0xff38264C),
                                    fontSize: 40,
                                    letterSpacing: -2,
                                    fontWeight: FontWeight(800),
                                  ),
                                ),
                                TextSpan(
                                  text: 'Ethereal',
                                  style: TextStyle(
                                    fontFamily: "Plus Jakarta Sans",
                                    color: Color(0xff584194),
                                    fontSize: 40,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight(800),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'ENTER THE NEW SCHOLAR\'S INFORMATION',
                            style: TextStyle(
                              fontFamily: "Plus Jakarta Sans",
                              color: Color(0xff67537C),
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight(800),
                            ),
                          ),
                        ],
                      ),

                      Card(
                        color: Colors.white,
                        elevation: 0,
                        shadowColor: Color.fromRGBO(0, 0, 0, 0.05),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.circular(32),
                          ),
                          side: BorderSide(
                            width: 1,
                            color: Color.fromRGBO(187, 164, 210, 0.1),
                          ),
                        ),
                        child: Container(
                          //width: 300,
                          padding: EdgeInsets.fromLTRB(32, 32, 32, 48),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            spacing: 32,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                spacing: 8,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                                    child: Text(
                                      // textAlign: TextAlign.left,
                                      'STUDENT NAME',
                                      style: TextStyle(
                                        fontFamily: "Plus Jakarta Sans",
                                        color: Color(0xff67537C),
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight(700),
                                      ),
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      //  labelText: "STUDENT NAME",
                                      contentPadding: EdgeInsets.fromLTRB(
                                        20,
                                        17,
                                        20,
                                        18,
                                      ),
                                      suffixIcon: Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Image.asset(
                                          "assets/icons/student_name.png",
                                          height: 10,
                                          width: 10,
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xffF9ECFF),
                                      hintText: "e.g. Julian Sterling",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(16),
                                        ),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                spacing: 8,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),

                                    child: Text(
                                      // textAlign: TextAlign.left,
                                      'CURRENT AGE',
                                      style: TextStyle(
                                        fontFamily: "Plus Jakarta Sans",
                                        color: Color(0xff67537C),
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight(700),
                                      ),
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.fromLTRB(
                                        20,
                                        17,
                                        20,
                                        18,
                                      ),
                                      suffixIcon: Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Image.asset(
                                          "assets/icons/age.png",
                                          height: 10,
                                          width: 10,
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xffF9ECFF),
                                      hintText: "18",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(16),
                                        ),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 40,
                                child: ListView(
                                  //shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Chip(
                                      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                      label: Text(
                                        "ACADEMIC YEAR 2024",
                                        style: TextStyle(
                                          fontFamily: "Plus Jakarta Sans",
                                          color: Color(0xff004C72),
                                          fontSize: 12,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight(700),
                                        ),
                                      ),
                                      backgroundColor: Color(0xffA8D7FF),
                                      side: BorderSide.none,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadiusGeometry.all(
                                          Radius.circular(999),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 25),
                                    Chip(
                                      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                      label: Text(
                                        "FULL-TIME ENROLLMENT",
                                        style: TextStyle(
                                          fontFamily: "Plus Jakarta Sans",
                                          color: Color(0xff9D365D),
                                          fontSize: 12,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight(700),
                                        ),
                                      ),
                                      backgroundColor: Color.fromRGBO(
                                        255,
                                        142,
                                        178,
                                        0.2,
                                      ),
                                      side: BorderSide.none,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadiusGeometry.all(
                                          Radius.circular(999),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Ink(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    gradient: LinearGradient(
                                      colors: [Color(0xff644DA1), Color(0xffBBA2FD)],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                  ),
                                child: FilledButton(
                                  onPressed: () {},

                                  style: FilledButton.styleFrom(
                                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                    backgroundColor: Colors.transparent,

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        12,
                                      ), // Match your TextField roundness
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    spacing: 10,
                                    children: [
                                      Text(
                                        "SAVE RECORD",
                                        style: TextStyle(
                                          fontFamily: "Plus Jakarta Sans",
                                          color: Color.fromRGBO(247, 240, 255, 1),
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight(700),
                                        ),
                                      ),
                                      Icon(
                                        Icons.check_circle_outline,
                                        color: Color(0xffF7F0FF),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "ARCHITECTING THE FUTURE THROUGH\nMETICULOUS ACADEMIC DOCUMENTATION",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Plus Jakarta Sans",
                          color: Color.fromRGBO(103, 83, 124, 0.6),
                          fontSize: 11.2,
                          letterSpacing: 2.24,
                          fontWeight: FontWeight(500),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
