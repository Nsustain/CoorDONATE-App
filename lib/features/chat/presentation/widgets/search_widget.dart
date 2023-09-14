import 'package:coordonate_app/core/colors/custom_colors.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  Search({Key? key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      child: TextFormField(
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.only(top: 7),
            hintText: "Search chat here....",
            hintStyle: TextStyle(color: hintTextColor),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            prefixIcon: Icon(
              Icons.search,
              color: primary,
            ),
            iconColor: primary),
        controller: controller,
      ),
    );
  }
}
