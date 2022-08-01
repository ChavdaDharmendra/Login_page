import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login_Page",
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login Page"),
      //   actions: <Widget>[
      //     IconButton(icon: Icon(Icons.login_rounded), onPressed: () {}),
      //     IconButton(icon: Icon(Icons.home), onPressed: () {})
      //   ],
      // ),
      body: Column(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'password',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              minWidth: double.infinity,
              onPressed: () {},
              child: Text("Login"),
              color: Colors.blue,
              textColor: Colors.white,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Text("Forgot password? No yawa. Tap me"),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: FlatButton(
              minWidth: double.infinity,
              color: Colors.grey[300],
              onPressed: () {},
              child: Text("No Account? sign up"),
            ),
          )
        ],
      ),
    );
  }
}
