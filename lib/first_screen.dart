// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navigation_class/second_screen.dart';

class FirstScreenWidget extends StatefulWidget {
  const FirstScreenWidget({super.key});

  @override
  State<FirstScreenWidget> createState() => _FirstScreenWidgetState();
}

class _FirstScreenWidgetState extends State<FirstScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Screen'), centerTitle: true,),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style:TextStyle(
                fontSize: 35,
                color: Colors.teal,
                fontWeight: FontWeight.bold,

              ) ,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(child: 
              Column(children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
            
                  ),
                  onChanged: (String value) =>{
            
                  } ,
                  validator: (value) {
                    return value!.isEmpty ? 'Please enter email' : null;
                  },
                ),
                SizedBox(height: 13,),
            
                TextFormField(
                  obscureText:true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    
                    hintText: 'Enter Password',
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(),
            
                  ),
                  onChanged: (String value) =>{
            
                  } ,
                  validator: (value) {
                    return value!.isEmpty ? 'Please enter Password' : null;
                  },
                ),

                 ElevatedButton(onPressed: (){
            Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondScreenWidget()),
);
 
          }, child: Text("Login",),),
              ],
            
              )),
            )

          ],

        ),
      );
      
  }
}