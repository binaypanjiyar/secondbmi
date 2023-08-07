import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      height: 50,
                      width: 50,
                      image: AssetImage('image/logo.png'),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Maintenance',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Rubik Medium',
                              color: Color(0xff2D3142)),
                        ),
                        Text(
                          'Box',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Rubik Medium',
                              color: Color(0xffF9703B)),
                        ),
                      ],
                    )

                  ],
                ),
                const SizedBox(height: 40,),
                const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Rubik Medium',
                        color: Color(0xff2D3142)),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Center(
                  child: Text(
                    'This is the login page system ,'
                    '\nfor clz login ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Rubik Regular',
                        color: Color(0xff4C5980)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                  decoration:  InputDecoration(
                    hintText: 'Email',
                    fillColor: const Color(0xfffF8F9FA),
                    filled: true,
                    prefixIcon: const Icon(Icons.email,color: Color(0xff323F4B),),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration:  InputDecoration(
                        hintText: 'Password',
                        fillColor: const Color(0xfffF8F9FA),
                        filled: true,
                        prefixIcon: const Icon(Icons.lock_open,color: Color(0xff323F4B),),
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: const Color(0xffF9703B),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:const Center(
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Rubik Regular',
                          color: Colors.white),
                    ),
                  ) ,
                ),
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an Account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Rubik Regular',
                          color: Color(0xff4C5980)),
                    ),
                    Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Rubik Medium',
                          color: Color(0xffF9703B)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
