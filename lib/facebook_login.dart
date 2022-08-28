import 'package:flutter/material.dart';
import 'package:learning_app/main.dart';

class FacebookLogin extends StatefulWidget {
  FacebookLogin({Key? key}) : super(key: key);

  @override
  State<FacebookLogin> createState() => _FacebookLoginState();
}

class _FacebookLoginState extends State<FacebookLogin> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              // height: MediaQuery.of(context).size.height * 0.3,
              child: Image.asset('images/facebook.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                children: [
                  /*TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone number or email',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),*/
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(5),
                  //   child: Container(
                  //     width: double.infinity,
                  //     padding: EdgeInsets.all(15),
                  //     decoration: const BoxDecoration(
                  //       border: Border(
                  //         top: BorderSide(width: 1, color: Colors.grey),
                  //         left: BorderSide(width: 1, color: Colors.grey),
                  //         right: BorderSide(width: 1, color: Colors.grey),
                  //         // bottom: BorderSide(width: 1, color: Colors.grey),
                  //       ),
                  //     ),
                  //     child: Text('Phone number or email'),
                  //   ),
                  // ),

                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            alignment: Alignment.centerLeft,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                // labelText: 'Email',
                                hintText: 'Phone number or email',
                                border: InputBorder.none,
                              ),
                              onSaved: (newValue) {
                                setState(() {
                                  email = newValue;
                                });
                              },
                            ),
                          ),
                          const Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          Container(
                            height: 40,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                // labelText: 'Password',
                                hintText: 'Password',
                                border: InputBorder.none,
                              ),
                              onSaved: (newValue) {
                                setState(() {
                                  password = newValue;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => {
                        formKey.currentState?.save(),
                      },
                      child: const Text('Login'),
                    ),
                  ),
                  TextButton(
                    onPressed: () => {},
                    child: Text('Forget Password'),
                  ),
                  TextButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyHome(),
                        ),
                      )
                    },
                    child: Text('Back'),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email : ${email ?? ''}'),
                        Text('Password : ${password ?? ''}'),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ElevatedButton(
          onPressed: () => {},
          child: const Text('Create new account'),
        ),
      ),
    );
  }
}
