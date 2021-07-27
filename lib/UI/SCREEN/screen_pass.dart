import 'package:examen_2do_parcial/BLOC/Bloc_user.dart';
import 'package:examen_2do_parcial/UI/SCREEN/inicio.dart';
import 'package:examen_2do_parcial/UI/WIDGET/google_boton.dart';
import 'package:examen_2do_parcial/UI/WIDGET/gradiente.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class screenPass extends StatelessWidget {
  @override
  late bloc_user userBloc;
  final _controllerUsername = TextEditingController();
  final _controllerHobbies = TextEditingController();
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _controlSession();
  }

  Widget _controlSession() {
    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return login();
          } else {
            return Inicio();
          }
        });
  }

  Widget login() {
    return Scaffold(
        body: Stack(fit: StackFit.loose, children: [
      Gradiente(),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 80, left: 50),
            width: 270,
            height: 150,
            child: Text(
              "  Welcome to..\n Meditation Care",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          )
        ],
      ),
      Row(
        children: [
          Column(
            children: [
              Container(
                width: 300,
                height: 250,
                margin: EdgeInsets.only(top: 160, left: 40),
                child: Image(
                  image: AssetImage("assets/img/img3.png"),
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ],
      ),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 480, left: 40),
            width: 300,
            height: 150,
            child: Expanded(
                child: Text(
              "Lorem ipsum dolor sit amet consectetur adipiscing elit ut dui, pulvinar nec mauris lobortis tortor proin vitae nostra, pellentesque nullam nisl nunc auctor cursus nisi litora.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            )),
          )
        ],
      ),
      Row(
        children: [
          Container(
              width: 250,
              height: 80,
              margin: EdgeInsets.only(top: 700, left: 60),
              alignment: Alignment.topCenter,
              child: GoogleBtn(
                  heightC: 40.0,
                  widhtC: 180.0,
                  onPressed: () {
                    userBloc.signIn().then((UserCredential user) =>
                        print("usted se a autenticado como:${user.user}"));
                  }, //{
                  //bloc_user.signIn().then((UserCredential user) =>
                  //print("usted se a autenticado como:${user.user}"));

                  //},
                  text: "Get Started"))
        ],
      ),
    ]));
  }
}
