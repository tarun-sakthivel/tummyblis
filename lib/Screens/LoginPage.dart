import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tummyblis/Components/FormContainerWidget.dart';
import 'package:tummyblis/Components/firebase_auth_svs.dart';
import 'package:tummyblis/Components/toast.dart';
import 'package:tummyblis/Screens/Homepage.dart';
import 'package:tummyblis/Screens/Homescreen.dart';
import 'package:tummyblis/Screens/Signuppage.dart';
import 'package:tummyblis/Screens/vendor_homescreen.dart';
import 'package:tummyblis/Screens/welcomepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  late String? valueChoose = "Student";
  List listItem = ["Student", "Vendor"];
  bool _SigningIn = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/Images/BgFrame2.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  "Tummy Bliss",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            //SizedBox(height: 5),
            SizedBox(height: 15),
            Logindetails(),
          ],
        ),
      ),
    );
  }

  Widget Logindetails() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          //SizedBox(height: 20),
          Text(
            'USER LOGIN',
            style: TextStyle(
              color: Color(0xFF39B93E),
              fontSize: 32,
              fontFamily: 'Georgia',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 25),
          FormContainerWidget(
            controller: _emailController,
            icon: Icon(Icons.email_outlined),
            hintText: "Email",
            isPasswordField: false,
          ),
          SizedBox(height: 25),
          FormContainerWidget(
            controller: _passwordController,
            icon: Icon(Icons.lock_outline),
            hintText: "Password",
            isPasswordField: true,
          ),
          SizedBox(height: 25),
          Container(
            width: 300, // Set the width of the dropdown button
            child: DropdownButton(
              dropdownColor: Colors.greenAccent,
              icon: Icon(Icons.arrow_drop_down),
              hint: Text("Choose your category:"),
              value: valueChoose,
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue as String?;
                });
              },
              items: listItem.map((valueItem) {
                return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: _signIn,
            child: Container(
              height: 55,
              width: 310,
              decoration: BoxDecoration(
                  color: Color(0xFF39B93E),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: _SigningIn
                    ? CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 15, color: Colors.black87),
              ),
              SizedBox(width: 5),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Signup()));
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(221, 13, 103, 229)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _signIn() async {
    setState(() {
      _SigningIn = true;
    });
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.loginEandP(email, password);
    setState(() {
      _SigningIn = false;
    });
    if (user != null) {
      showToast(message: "User successfully Loged in");
      if (valueChoose == "Student") {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Welcome()));
      } else {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Vendor_Homepage()));
      }
    } else {
      showToast(message: "Login unsuccessful");
    }
  }
}


// //LOGIN PAGE
// onTap: () => {
//               if (valueChoose == "Student")
//                 {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Welcome()))
//                 }
//               else
//                 {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => Vendor_Homepage()))
//                 }
//             },