import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "My app",
    home: homePage(),
    // initialRoute: "/",
    // routes: {
    //   // "/":(context) => homePage(),
    //   // "/login":(context) => LoginPage(),
    // },
  ));
}

// Home page class


class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xffB14A37),
      appBar: AppBar(

      ),
      body: Text("homepage"),
      bottomNavigationBar: Container(
        color: Colors.black,
        height: 27,
        margin: EdgeInsets.only(bottom: 60,right: 25,left: 25),
        child: TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) => LoginPage()),),);
        }, child: Text("go to login page")),
      ),
    );
  }
}

// Login class

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.brown,
      ),
      body: Container(
        
        width: 340,
        height: 443,
        decoration: BoxDecoration(borderRadius:BorderRadius.circular(11.8),
        color: Colors.white,),
        margin:EdgeInsets.only(top: 220, bottom: 181, left: 25, right: 25) ,
        child:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(child: Text("Login")),
            ),
            Padding(
              padding: const EdgeInsets.all(41),
              child: Column(
                children: [
                Column(
                  children: [
                      Container(
                    margin: EdgeInsets.only(left: 0, right: 180,),
                    child: Text("UserName"),
                  ),
                  Container(
                    child:const TextField(
                      decoration: InputDecoration(
                        prefixIcon:Icon(Icons.person),
                        labelText:"Enter UserName",
                      ),
                      
                    ),
                  ),
                  ],
                ),
                 Column(
                  children: [ 
                    Container(
                    margin: EdgeInsets.only(top: 24, right: 180,),
                    child: Text("password"),
                  ),
                  Container(
                    child:const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon:Icon(Icons.lock),
                        labelText:"password",
                      ),
                      
                    ),
                  ),],
                  
                 ),
                 Padding(
                  
                   padding: const EdgeInsets.only(top: 20,left: 20,right: 30),
                   child: Container(
                    height: 40,
                    width: 80,
                    color: Colors.grey,
                    child: 
                   TextButton(onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => homePage())));
                   }, child: Text("Login"),)),
                 ),
                 
                ],
                
              ),
              
            ),
             Divider(
                  thickness: 2,
                  color: Colors.green,
                 ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.github),
              Icon(FontAwesomeIcons.twitter),
              Icon(FontAwesomeIcons.google),
            ],
           ),
       
          ],
        )),
      bottomNavigationBar: TextButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => homePage()));

      },
      child:Container(
        margin: EdgeInsets.only(bottom: 20),
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.home),
            Text("Home",style: TextStyle(color: Colors.black),),
            
          ],
        ),
      )),
    );
  }
}