import 'package:examen_2do_parcial/BLOC/Bloc_user.dart';
import 'package:examen_2do_parcial/UI/WIDGET/gradiente.dart';
import 'package:flutter/material.dart';
import 'package:examen_2do_parcial/UI/WIDGET/textinput.dart';
import 'package:examen_2do_parcial/UI/WIDGET/google_boton.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'screen_pass.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return login();
  }

  Widget login() {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          Stack(children: [
            Container(
              width: 60,
              height: 60,
              margin: EdgeInsets.only(top: 50, left: 20),
              child: Expanded(
                  child: Image(
                image: AssetImage("assets/img/img8.png"),
                fit: BoxFit.cover,
              )),
            ),
            Container(
              width: 400,
              height: 450,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xC0D66363), Color(0xB6F35959)],
                      begin: const FractionalOffset(1.0, 0.1),
                      end: const FractionalOffset(1.0, 0.6)),
                  image: DecorationImage(
                      image: AssetImage('assets/img/img5.png'),
                      fit: BoxFit.fitWidth)),
            ),
          ]),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 450,
                  margin: EdgeInsets.only(top: 360),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60)),
                      gradient: LinearGradient(
                        colors: [Color(0xFF05A7A7), Color(0xB63A8DD1)],
                        begin: const FractionalOffset(1.0, 0.1),
                        end: const FractionalOffset(1.0, 0.6),
                      )),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 200,
                height: 150,
                margin: EdgeInsets.only(top: 340, left: 100),
                alignment: Alignment.center,
                child: Divider(
                  color: Colors.black,
                  thickness: 5,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                      height: 100,
                      margin: EdgeInsets.only(top: 440),
                      alignment: Alignment.center,
                      child: Text(
                        "Relax Your Mind.. \nDay Episode",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.black),
                      )))
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(top: 550, left: 70),
                    child: Expanded(
                        child: Image(
                      image: AssetImage("assets/img/image4.png"),
                      fit: BoxFit.cover,
                    )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(top: 550, left: 40),
                    child: Expanded(
                        child: Image(
                      image: AssetImage("assets/img/img6.png"),
                      fit: BoxFit.cover,
                    )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 60,
                    height: 110,
                    margin: EdgeInsets.only(top: 535, left: 40),
                    child: Expanded(
                        child: Image(
                      image: AssetImage("assets/img/img7.png"),
                      fit: BoxFit.cover,
                    )),
                  )
                ],
              )
            ],
          ),
        ],
      ),

      /*Row(
            children: <Widget>[
              Container(
                  width: 250,
                  height: 40,
                  margin: EdgeInsets.only(top: 340, left: 60),
                  child: TextInput(
                      hint: "name",
                      inputType: TextInputType.name,
                      controller: TextEditingController(),
                      hintText: "name"))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  width: 250,
                  height: 40,
                  margin: EdgeInsets.only(top: 390, left: 60),
                  child: TextInput(
                      hint: "pass",
                      inputType: TextInputType.text,
                      controller: TextEditingController(),
                      hintText: "pass"))
            ],
          ),
          Row(
            children: [
              Container(
                  width: 250,
                  height: 80,
                  margin: EdgeInsets.only(top: 430, left: 60),
                  alignment: Alignment.topCenter,
                  child: GoogleBtn(
                      heightC: 20.0,
                      widhtC: 80.0,
                      onPressed: () => screenPass(),
                      text: "login"))
            ],
          ),
          Row(
            children: [
              Container(
                width: 250,
                height: 100,
                margin: EdgeInsets.only(top: 510, left: 60),
                alignment: Alignment.topCenter,
                child: Text(
                  "login with",
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(top: 550, left: 110),
                    child: Image(
                      image: AssetImage("assets/img/image1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(top: 550, left: 40),
                    child: Image(
                      image: AssetImage("assets/img/image2.jpg"),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 700, left: 120),
                    child: Text("terms of service",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                        )),
                  )
                ],
              ),
            ],
          )*/
    );
  }
}
