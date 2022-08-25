import 'package:agent_listing_app/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchTextFormFieldwithPrefix extends StatelessWidget {
  const SearchTextFormFieldwithPrefix(
      {Key? key,
      this.hintText,
      this.label,
      this.controller,
      this.validator,
      this.isReadOnly = false,
      this.inputFormatterList,
      this.keyboardType,
      this.borderColor = primaryColor})
      : super(key: key);
  final String? hintText;
  final String? label;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? isReadOnly;
  final List<TextInputFormatter>? inputFormatterList;
  final TextInputType? keyboardType;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: 70,
        //width: MediaQuery.of(context).size.width * 0.8,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: primaryColor,
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ],
          color: primaryColor,
          //borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * .05, vertical: size.height * 0.015),
          child: TextFormField(
            style: textColor,
            controller: controller,
            readOnly: isReadOnly!,
            inputFormatters: inputFormatterList,
            keyboardType: keyboardType,
            decoration: InputDecoration(
                fillColor: textFieldColor,
                filled: true,
                hintText: hintText ?? 'Search...',
                hintStyle: const TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: primaryColor),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: primaryColor),
                ),
                // isDense: true,
                contentPadding: EdgeInsets.zero),
            //   validator: validator ??
            //       (String? value) {
            //         if (value!.isEmpty) {
            //           return 'Please fill out this feild';
            //         }
            //         return null;
            //       },
            // ),
          ),
        ));
  }
}
