import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../utils.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [kBlack, kPurple]
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 30),
              decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: kShadow.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                    ),
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Text("Register",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: h1Font,
                            letterSpacing: 1,
                            color: kPurple,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            prefixIcon: Icon(Icons.email),
                          ),
                          controller: emailController,
                          validator: (text){
                            return (text==null || text.isEmpty || EmailValidator.validate(text))
                                ? "Invalid Email"
                                : null;
                          },
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Pasword",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            prefixIcon: Icon(Icons.lock),
                          ),
                          obscureText: true,
                          controller: passwordController,
                          validator: (text){
                            return (text==null || text.isEmpty || text.length<6)
                                ? "Invalid Password"
                                : null;
                          },
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: (){},
                              child: Text("Forgot Password?",
                                style: TextStyle(
                                  color: kPurple,
                                  fontWeight: FontWeight.w500,
                                  fontSize: sFont,
                                ),),
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [kBlack, kPurple],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: kShadow.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: TextButton(
                              onPressed: (){},
                              child: Text("Login",
                                style: TextStyle(
                                    color: kWhite,
                                    fontWeight: FontWeight.w600,
                                    fontSize: sFont
                                ),)
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account? ",
                              style: TextStyle(
                                color: kBlack,
                                fontWeight: FontWeight.w500,
                                fontSize: sFont,
                              ),),
                            GestureDetector(
                              onTap: (){},
                              child: Text("SignUp",
                                style: TextStyle(
                                  color: kPurple,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w500,
                                  fontSize: sFont,
                                ),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
