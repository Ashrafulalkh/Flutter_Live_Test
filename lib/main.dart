import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
            child: Text('Profile')
        ),
      ),

      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 25, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 81, // Adjust the radius as needed
                     backgroundColor: Colors.grey,// Background color of the outer circle
                    child: CircleAvatar(
                      radius: 80, // Adjust the radius as needed
                      backgroundImage: AssetImage('images/ashraful.jpg'), // Path to your profile picture
                    ),
                  ),
                ],
              ),
            ),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'Ashraful Khan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ashrafulkhan@gmail.com',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Padding(
              padding:EdgeInsets.fromLTRB(20, 15, 20, 0) ,
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 10,
                children: [
                  Center(
                    child: Text('Vestibulum dapibus ipsum id lorem porta condimentum. Nam scelerisque vestibulum orci, at pharetra nulla. In aliquet vel orci a vestibulum. Duis vel quam non orci dignissim venenatis ut non enim. Class aptent taciti sociosqu ad litora torquent per conubia nostra, eu tincidunt quam tristique tempor. '
                            
                        'Integer pharetra at enim non vulputate. In hac habitasse platea dictumst. Phasellus vitae rutrum mi.Quisque erat leo, scelerisque a libero ut, tincidunt convallis ligula. Nam in dui dictum, pulvinar erat a, semper risus.',

                    textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

