import 'package:chat_app/widgets/boton_azul.dart';
import 'package:chat_app/widgets/custom_input.dart';
import 'package:chat_app/widgets/labels.dart';
import 'package:chat_app/widgets/logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LogoWidget(
                  titulo: 'Messenger',
                ),
                _Form(),
                LabelsWidget(
                  ruta: 'register',
                  label1: "No tienes una cuenta?",
                  label2: "Registrarse",
                ),
                Text(
                  "Terminos y condiciones de uso",
                  style: TextStyle(fontWeight: FontWeight.w200),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: "Email",
            keyBoardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: "Password",
            isPassword: true,
            textController: passwordCtrl,
          ),
          BotonAzul(
            labelText: "Ingrese",
            onpressed: () {
              print(emailCtrl.text);
              print(passwordCtrl.text);
            },
          )
        ],
      ),
    );
  }
}
