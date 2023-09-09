
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override

  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xff3E84DC).withOpacity(1.0),
              const Color(0xff04D486).withOpacity(0.47)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,

          ),
        ),
        child: SafeArea(
            child: Padding(
                padding:  EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 150, // Adjust the width and height as needed
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/img.png'), // Replace with your image asset path
                    ),
                  ),
                ),
                const Center(
                    child: Text("Stephen Mbubah",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),)
                ),
                const Center(
                    child: Text("email: mbubahs@gmail.com",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                      ),)
                ),
                Spacer(),
              GestureDetector(
                onTap: ()async {
                  final Uri _url = Uri.parse('https://github.com/StephenMbubah');
                  if (!await launchUrl(_url, mode:LaunchMode.externalApplication )) {
                    await launchUrl(_url);
                  } else {
                    throw 'Could not launch $_url';
                  }
                },
                // onTap: (){
                //     // const url = 'https://example.com'; // Replace with your desired URL
                //     // html.window.open(url, 'new_tab'); // Open the URL in a new browser tab
                //
                // },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(top: 170, ),
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                      color: Color(0xff3E84DC), borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child:  Text(
                      ' Open GitHub',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF),
                           ),
                    ),
                  ),
                ),),
                SizedBox(
                  height: 25,
                )
              ],
            ),
            )),

      ),
    );
  }
}
