import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
     return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.tealAccent,
      body: Stack(
        children: [
          Column(
              // children: [
              //   Expanded(flex: 2, child: Container(color: Colors.tealAccent)),
              //   Expanded(child: Container(color: Colors.amber)),
              // ],
              ),
          Align(
            alignment: Alignment(0, 1.5),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              width: size.width * 2,
              height: size.width * 2.05,
              child: Card(
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                // child: Center(child: Text('CARD', style: Theme.of(context).textTheme.headline2)),
              ),
            ),
          ),
          Positioned(
            left: 15.0,
            top: 110.0,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 14.0,
                  backgroundColor: Colors.tealAccent,
                  child: Icon(Icons.close, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 100,
            height: 180,
            width: 180,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.tealAccent, shape: BoxShape.circle),
              width: 150,
              height: 150,
              margin: EdgeInsets.all(30.0),
            ),
          ),
           Positioned(
              top: 185,
              left: 125,
              height: 200,
              width: 200,
              child: Text(
                "LOGIN",
                style: TextStyle(
                  letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 50),
              )),
        

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                SizedBox(
                  height: 50,
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail,color: Colors.tealAccent,),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.tealAccent,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                            color: Colors.tealAccent,
                          ),
                        ),
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.tealAccent)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password,color: Colors.tealAccent,),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.tealAccent,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                            color: Colors.tealAccent,
                          ),
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.tealAccent)),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ScreenLogin()));
                      },
                      child: Text('LOGIN'),
                      style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          shadowColor: Colors.transparent,
                          shape: StadiumBorder(),
                          side: BorderSide(width: .50, color: Colors.white),
                          primary: Colors.tealAccent,
                          onPrimary: Colors.white,
                          textStyle: TextStyle(fontSize: 20)),
                    ))
              ],
            ),
          ),
          //)
        ],
      ),
    );

  }
}
