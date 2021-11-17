import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petspital/app/constant/constants.dart';

class TFFx extends StatelessWidget {
  final TextEditingController controller;
  final String hintx;
  final TextInputType tt;
  TFFx(this.controller, this.hintx, this.tt, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: false,
      style: GoogleFonts.lato(
          fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal),
      decoration: const InputDecoration(
        hintText: 'Number',
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding: EdgeInsets.only(left: 0, bottom: 0, top: 0, right: 0),
      ),
      textAlign: TextAlign.start,
      cursorColor: primaryColor,
      keyboardType: tt,
    );
  }
}

class TFF extends StatelessWidget {
  TFF(this.sname, this.name, this.textInputType);

  final TextEditingController sname;
  final String name;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: GoogleFonts.comfortaa(
              textStyle: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold
                  //letterSpacing: .5
                  ),
            ),
          ),
          TextFormField(
            keyboardType: textInputType,
            controller: sname,
            validator: (value) {
              if (value!.isEmpty) {
                return '$name can not be empty';
              }

              return null;
            },
            decoration: InputDecoration(
              hintText: name,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding:
                  EdgeInsets.only(left: 0, bottom: 0, top: 0, right: 0),
            ),
          ),
        ],
      ),
    );
  }
}
