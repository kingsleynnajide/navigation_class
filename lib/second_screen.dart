// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SecondScreenWidget extends StatefulWidget {
  const SecondScreenWidget({super.key});

  @override
  State<SecondScreenWidget> createState() => _SecondScreenWidgetState();
}

class _SecondScreenWidgetState extends State<SecondScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(backgroundColor: Color.fromARGB(255, 48, 209, 140),
            leading: Center(child: Text('Chat')),
            title: Center(child: Text('Edit profile')),
            centerTitle: true,
            actions: [Center(child: Text('Settings'))],

          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                child: Column(children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 105,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.teal,
                      ),
                      Positioned(
                        bottom:-10,
                        left: 20,
                        child: Row(
                          children: [
                            CircleAvatar(
                                radius: 50,
                                backgroundImage: Image.asset('assets/images/display_image.jpg').image
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(children: [
                                          Text('godking'),
                                          Text('online'),
                                        ],),
                                      )
                          ],
                        ),
                      ),
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    
                    width: 400,
                    
                    child: TextField(
                      decoration: InputDecoration(hintText: 'EMAIL'),
                      
                    ),
                  ),
                ),
                SizedBox(
                  
                  width: 400,
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'CHANGE PASSWORD'),
                      obscureText: true,
                      
                    ),
                  ),
                ),
                SizedBox(
                  
                  width: 400,
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'YOUR PHONE'),
                      
                    ),
                  ),
                ),
                SizedBox(
                  
                  width: 400,
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'CITY, STATE'),
                      
                    ),
                  ),
                ),
                SizedBox(
                  
                  width: 400,
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'NATIONALITY'),
                      
                    ),
                  ),
                ),
                SizedBox(
                  width: 400,
                  
                  child: ElevatedButton(onPressed: (){}, child: Text('Save'), 
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),)),
                  
            
                ],),
              ),
            ),
            
      

              
            ),
          ),
          );
  }
}
