import 'package:flutter/material.dart';
import 'package:student_profile/pages/academic_ethereal.dart';
import 'package:student_profile/pages/add_student.dart';
import 'package:student_profile/student.dart';

class StudentDirectory extends StatefulWidget {
  const StudentDirectory({super.key});

  @override
  State<StudentDirectory> createState() => _StudentDirectoryState();
}

class _StudentDirectoryState extends State<StudentDirectory> {
  static const Color color_1 = Color(0xff7E22CE);
  static const Color color_2 = Color(0xffC084FC);
  static const Color color_3 = Color(0xffBBA2FD);

  List<Student> students = [
    Student(
      name: "Alexander Thorne",
      age: 21,
      major: "PHILOSOPHY",
      profile_pic: "pic_1.png",
      isActive: true,
    ),
    Student(
      name: "Elena Vance",
      age: 22,
      major: "DIGITAL ARTS",
      profile_pic: "pic_2.png",
      isActive: false,
    ),
    Student(
      name: "Julian Brooks",
      age: 20,
      major: "MATHEMATICS",
      profile_pic: "pic_3.png",
      isActive: false,
    ),
    Student(
      name: "Sophia Chen",
      age: 23,
      major: "ARCHITECTURE",
      profile_pic: "pic_4.png",
      isActive: true,
    ),
    Student(
      name: "Marcus Wright",
      age: 22,
      major: "LINGUISTICS",
      profile_pic: "pic_5.png",
      isActive: false,
    ),
    Student(
      name: "Lila Rossi",
      age: 21,
      major: "MUSIC THEORY",
      profile_pic: "pic_6.png",
      isActive: false,
    ),
    Student(
      name: "Isabella Martinez",
      age: 24,
      major: "LAW",
      profile_pic: "pic_7.png",
      isActive: false,
    ),
    Student(
      name: "Nathaniel Cole",
      age: 22,
      major: "KINESIOLOGY",
      profile_pic: "pic_8.png",
      isActive: true,
    ),
    Student(
      name: "Amara Okafor",
      age: 19,
      major: "NEUROSCIENCE",
      profile_pic: "pic_9.png",
      isActive: false,
    ),
    Student(
      name: "Oliver Gray",
      age: 21,
      major: "HISTORY",
      profile_pic: "pic_10.png",
      isActive: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      backgroundColor: Color(0xffFDF3FF),
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Color.fromRGBO(250, 245, 255, 0.7),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: color_1),
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 2, 15, 2),
            child: CircleAvatar(
              radius: 21,
              backgroundColor: color_3,
              child: CircleAvatar(
                radius: 19,
                backgroundImage: AssetImage("assets/images/user_profile.png"),
              ),
            ),
          ),
        ],
        title: Text(
          "Student Directory",
          style: TextStyle(
            fontFamily: "Plus Jakarta Sans",
            fontWeight: FontWeight(700),
            fontSize: 20,
            foreground: Paint()
              ..shader = const LinearGradient(
                colors: <Color>[color_1, color_2],
              ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(24, 96, 24, 0),
            child: Text(
              "DIRECTORY",

              style: TextStyle(
                fontFamily: "Plus Jakarta Sans",
                fontSize: 12,
                fontWeight: FontWeight(700),
                color: Color(0xff644DA1),
                letterSpacing: 1.2,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(24, 0, 24, 0),

            child: RichText(
              //              textAlign: TextAlignVertical(y: y),
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Academic\n',
                    style: TextStyle(
                      fontFamily: "Plus Jakarta Sans",
                      color: Color(0xff38264C),
                      fontSize: 48,
                      letterSpacing: -2.4,
                      fontWeight: FontWeight(800),
                    ),
                  ),
                  TextSpan(
                    text: 'Ethereal',
                    style: TextStyle(
                      fontFamily: "Plus Jakarta Sans",
                      color: Color(0xff584194),
                      fontSize: 48,
                      letterSpacing: 0,
                      fontWeight: FontWeight(800),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(24, 0, 0, 0),

            child: Row(
              spacing: 8,
              children: [
                Chip(
                  backgroundColor: Color(0xffA8D7FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(
                      Radius.circular(9999),
                    ),
                  ),
                  side: BorderSide.none,
                  label: Text(
                    "CLASS OF 2024",

                    style: TextStyle(
                      fontFamily: "Plus Jakarta Sans",
                      color: Color(0xff004C72),
                      fontSize: 10,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight(700),
                    ),
                  ),
                ),
                Chip(
                  backgroundColor: Color(0xffEBD4FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(
                      Radius.circular(9999),
                    ),
                  ),
                  side: BorderSide.none,
                  label: Text(
                    "ACTIVE",

                    style: TextStyle(
                      fontFamily: "Plus Jakarta Sans",
                      color: Color(0xff67537C),
                      fontSize: 10,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight(700),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(24, 16, 24, 0),
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                 // print("index: ${index}");
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>AcademicEthereal()));
                    },
                    child: Container(
                      
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                      child: Card(
                        color: index % 2 == 0 ? Colors.white : Color(0xffF9ECFF),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(12),
                        ),
                    
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 20,
                                children: [
                                  Stack(
                                    children: [
                                      CircleAvatar(
                                        radius: 28,
                                        backgroundImage: AssetImage(
                                          "assets/images/${students[index].profile_pic}",
                                        ),
                                      ),
                                      if (students[index].isActive!)
                                        Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: CircleAvatar(
                                            radius: 8,
                                            backgroundColor: Colors.white,
                                            child: CircleAvatar(
                                              radius: 6,
                                              backgroundColor: Color(0xffFF8EB2),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        students[index].name.toString(),
                                        style: TextStyle(
                                          fontFamily: "Plus Jakarta Sans",
                                          color: Color(0xff38264C),
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight(700),
                                        ),
                                      ),
                                      Row(
                                        spacing: 8,
                    
                                        children: [
                                          Text(
                                            students[index].age.toString(),
                                            style: TextStyle(
                                              fontFamily: "Plus Jakarta Sans",
                                              color: Color(0xff67537C),
                                              fontSize: 14,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight(500),
                                            ),
                                          ),
                                          CircleAvatar(
                                            radius: 2,
                                            backgroundColor: Color(0x66BBA4D2),
                                          ),
                    
                                          Text(
                                            students[index].major.toString(),
                                            style: TextStyle(
                                              fontFamily: "Plus Jakarta Sans",
                                              color: Color(0xff67537C),
                                              fontSize: 10,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight(500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  "assets/icons/arrow_fw.png",
                                  height: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        clipBehavior: Clip.hardEdge,

        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (c)=> AddStudent()));
        },

        child: Ink(
          decoration: BoxDecoration(
            //  shape: BoxShape.rectangle,
            // borderRadius: BorderRadiusGeometry.circular(12),
            gradient: LinearGradient(colors: [Color(0xff644DA1), Color(0xffBBA2FD)],transform: GradientRotation(.5)),
          ),
          child: Center(
            child: Image.asset("assets/icons/fb_bt.png", width: 17.5),
          ),
        ),
      ),
    );
  }
}
