import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loginproject/ScreenLogin.dart';
import 'package:loginproject/ScreenRegister.dart';

class ScreenSelectPage extends StatelessWidget {
  ScreenSelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Currentwidth = MediaQuery.of(context).size.width;
    final Currentheight = MediaQuery.of(context).size.height;
   

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(350)),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: Currentheight*.05,
                left: Currentwidth*.24,
                height: Currentheight * .3,
                width: Currentwidth * .5,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  width: Currentwidth * .3,
                  height: Currentheight * .3,
                  margin: EdgeInsets.all(30.0),
                ),
              ),
              Positioned(
                top: Currentheight*.115,
                left: Currentwidth*.28,
                height: Currentheight * .3,
                width: Currentwidth * .5,
                child: Text(
                  'GO',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 150,
                    color: Colors.tealAccent,
                  ),
                ),
              ),
              Positioned(
                top: Currentheight*.24,
                left: Currentwidth*.65,
                height: Currentheight * .15,
                width: Currentwidth * .18,
                child: Container(
                  // margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
              ),
              Positioned(
              top: Currentheight*.33,
                left: Currentwidth*.58,
                height: Currentheight * .125,
                width: Currentwidth * .075,
                child: Container(
                  // margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   SizedBox(
                          width: double.infinity,
                          height: Currentheight*.055,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ScreenLogin()));
                            },
                            child: Text('LOGIN',style: TextStyle(color: Colors.tealAccent,fontWeight: FontWeight.bold)),
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                                shadowColor: Colors.transparent,
                                shape: StadiumBorder(),
                                side: BorderSide(width: .50, color: Colors.white),
                                primary: Colors.white,
                                onPrimary: Colors.white,
                                textStyle: TextStyle(fontSize: 20)),
                          )
                          ),
                           SizedBox(
                     height: Currentheight*.01,
                  ),


                          SizedBox(
                        width: double.infinity,
                         height: Currentheight*.055,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScreenRegister()));
                          },
                          child: Text('REGISTER',style: TextStyle(fontWeight: FontWeight.bold),),
                          style: ElevatedButton.styleFrom(
                             elevation: 0.0,
                              shadowColor: Colors.transparent,
                              shape: StadiumBorder(),
                              side: BorderSide(width: .50, color: Colors.white),
                              primary: Colors.tealAccent,
                              onPrimary: Colors.white,
                              textStyle: TextStyle(fontSize: 20)),
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
