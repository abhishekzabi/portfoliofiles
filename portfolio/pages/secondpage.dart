import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Column(
            children: [
               Center(
                  child: Text(
                "Get To Know More",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    color: Colors.grey[700]),
              )),
              const Text(
                "About Me",
                style: TextStyle(
                    fontSize: 42,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 90, right: 700),
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("assets/arts/aout.jpg",fit: BoxFit.cover,)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 650, right: 100, top: 200),
            child: Row(children: [
              Expanded(
                child: Container(
                  height: 180,
                  width: 370,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: const Color.fromARGB(255, 42, 41, 41),
                          width: 1)),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.people_alt_outlined,
                                color: Colors.black,
                                size: 30,
                              )),
                          const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              "Experience",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0,
                                  color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                           Text(
                            "1 + years",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0,
                                color:Colors.grey[700]),
                          ),
                           Text(
                            "Software Development",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0,
                                color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                    height: 180,
                    width: 370,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.school,
                                  color: Colors.black,
                                  size: 30,
                                )),
                            const Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Education",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0,
                                    color: Colors.black),
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                             Text(
                              "Master Of Computer Application",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0,
                                  color: Colors.grey[700]),
                            ),
                            Text(
                              "Bachelor  Of Computer Application",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0,
                                  color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ]),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 700, top: 430),
            child: Expanded(
              child: SizedBox(
                  height: 380,
                  width: 740,
                  child: Text(
"As an MCA graduate specializing in Flutter development with a strong foundation in UI/UX design, I bring a blend of technical proficiency and collaborative spirit. My experience spans machine learning and mobile application development, showcasing my ability to deliver intuitive and high-performance solutions. Driven by a passion for continuous learning and innovation, I am eager to contribute effectively to dynamic projects and teams."                      ,
                      style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 1,
                          fontFamily: "Poppins",
                          color: Colors.black))),
            ),
          ),
        ],
      ),

    
    );
  }
}
