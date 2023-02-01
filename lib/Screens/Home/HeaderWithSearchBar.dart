import 'package:flutter/material.dart';

import '../../Models/User.dart';
import '../../Utils/Colors.dart';

class HeaderWithSearchBar extends StatelessWidget {
  HeaderWithSearchBar({Key? key, this.userName}) : super(key: key);
  String? userName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          "Hi $userName",
          style: TextStyle(color: colorSecondary, fontSize: 25),
        ),
         const SizedBox(height: 10),
         Text("let's get thing done today at your finger tips",style: TextStyle(color: colorBlack, fontSize: 18),),
         const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            color: colorBackground,
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                offset: const Offset(1, 5),
                blurRadius: 3,
                color: Colors.blueGrey.withOpacity(0.3),
              ),
            ],
          ),
          child: TextField(
            style: TextStyle(
              fontSize: 22.0,
              color: colorDarkGrey,
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              prefixIcon: Icon(
                Icons.search_outlined,
                color: colorDarkGrey,
                size: 15,
              ),
              hintText: "Search services",
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 10.0),
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
