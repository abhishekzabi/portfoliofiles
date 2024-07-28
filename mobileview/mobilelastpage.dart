import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileLastPage extends StatelessWidget {
  const MobileLastPage({super.key});
  Future<void> _openUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
Future<void> _sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'abhishekkp321@gmail.com', // Replace with your email address
      
    );

    await _openUrl(emailUri.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        height: 700,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Column(

              children: [
                SizedBox(height: 200,),
                Center(
                    child: Text(
                  "Get in Touch",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.grey[700]), 
                )),
                const Text(
                  "Contact Me",
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color:const Color.fromARGB(255, 42, 41, 41),
                          width: 1)),
                  child: Row(
                    children: [
                     const  SizedBox(
                        width: 39,
                      ),
                      IconButton(
                          onPressed: _sendEmail,
                          icon:const Icon(
                            Icons.email,
                            size: 23,
                          )),
                     const  Text(
                        "abhishekkp321@gmail.com",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: Colors.black),
                      ),
                    
                    ],
                  ),
                ),
               const SizedBox(
                  height: 190,
                ),
                Container(
                  height: 100,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color:const Color.fromARGB(255, 255, 255, 255), width: 1)),
                  child: Row(
                    children: [
                     const SizedBox(
                        width: 70,
                      ),
                      IconButton(
                          onPressed: _sendEmail,
                          icon:const Icon(
                            Icons.email,
                            size: 23,
                          )),
                     const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.instagram,
                            size: 23,
                          )),
                     const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          onPressed: 
                           (){
                        _openUrl("https://www.linkedin.com/in/abhishek-k-p-898304277/");

                      },
                          icon: const FaIcon(
                            FontAwesomeIcons.linkedin,
                            size: 23,
                          )),
                     const SizedBox(
                        width: 10,
                      ),
                      
                      IconButton(
                          onPressed: () {
                            _openUrl("https://www.behance.net/abhishekabhi12");
                          },
                          icon:const FaIcon(
                            FontAwesomeIcons.behance,
                            size: 23,
                          )),
                    ],
                  ),
                ),
                Text(
                  "Copyright  2024 Abhishekkp.All Right Reserverd.",
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
