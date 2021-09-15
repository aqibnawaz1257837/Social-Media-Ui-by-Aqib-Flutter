import 'package:flutter/material.dart';
import 'cureveclipper.dart';
import 'home_screen.dart';


class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              ClipPath(
                clipper: CurveClipper(),
                child: Image(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: double.infinity,
                  image: AssetImage('assets/images/login_background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('LOGIN FRENZY ', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34.0,
                color: Theme.of(context).primaryColor,
                letterSpacing: 10.0
              ),
              ),
              SizedBox(
                height: 10.0,
              ),

             Padding(
               padding:  EdgeInsets.symmetric(horizontal: 20.0 , vertical: 10.0),
               child: TextField(
                 decoration: InputDecoration(
                   contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                   fillColor: Colors.white,
                   filled: true,
                   hintText: 'UserName',
                   prefixIcon: Icon(
                     Icons.account_box,
                     size: 30.0,
                   )
                 ),
               ),
             ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0 , vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Password',
                      prefixIcon: Icon(
                          Icons.lock,
                        size: 30.0,

                      )
                  ),
                  obscureText: true,
                ),
              ),

              SizedBox(
                height: 40.0,
              ),

              GestureDetector(
                onTap: (){

                  Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) =>
                    HomeScreen(),
                    ),
                  );

                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 60.0),
                  alignment: Alignment.center,
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22.0,
                        color: Colors.white,
                        letterSpacing: 1.5
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      alignment: Alignment.center,
                      color: Theme.of(context).primaryColor,
                      height: 80.0,
                      child: Text('Don\'t Have an Account? Sign Up' ,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0,
                          color: Colors.white,
                          letterSpacing: 1.5
                      ),
                      ),
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
