import 'package:flutter/material.dart';

class UserEmailAddress extends StatelessWidget {
  final String hintTxt;
  final String errorText;

  UserEmailAddress(this.hintTxt, this.errorText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: new BorderRadius.circular(20.0),
          border: Border.all(color: Colors.blueAccent),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 5,
          ),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return errorText;
              }
              return null;
            },
            decoration: new InputDecoration(
              hintText: hintTxt,
              border: InputBorder.none,
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      ),
    );
  }
}
