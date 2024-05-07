import 'package:atom/presentaion_layer/resources/strings_manager.dart';
import 'package:atom/presentaion_layer/resources/values_manager.dart';
import 'package:flutter/material.dart';

class DefaultTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const DefaultTextField(
      {super.key, required this.controller, required this.hintText});

  @override
  State<DefaultTextField> createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(
                top: AppPadding.p20, bottom: AppPadding.p20),
            child: TextFormField(
              controller: widget.controller,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                    vertical: AppPadding.p23, horizontal: AppPadding.p15),
                // Padding inside the text field
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.orange),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusColor: Colors.orange,
                filled: true,
                // Fill color to show rounded borders
                fillColor: Colors.white,
                hintText: widget.hintText,
                iconColor: Colors.orange,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 68,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                int currentValue = int.tryParse(widget.controller.text) ??
                    0; // Parse current value, defaulting to 0
                widget.controller.text =
                    (currentValue + 1).toString(); // Increment and update text
              });
            },

            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.orange; // Color when button is pressed
                }
                return Colors.white; // Default color
              }),
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.white; // Text/icon color when pressed
                }
                return Colors.black; // Default text/icon color
              }),
              elevation: MaterialStateProperty.all(0),
               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                 const RoundedRectangleBorder(
                   borderRadius: BorderRadius.zero,  // Makes the corners sharp
                 ),
               ),
            ),
            child: const Icon(Icons.add),
          ),
        ),
        SizedBox(
          height: 65,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                int currentValue = int.tryParse(widget.controller.text) ??
                    0; // Parse current value, defaulting to 0
                if (currentValue > 0) {
                  widget.controller.text = (currentValue - 1).toString();
                } else {
                  widget.controller.text =
                      AppStrings.zero; // Increment and update text
                }
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.orange; // Change background on press
                }
                return Colors.white; // Default background
              }),
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.white; // Text/icon color when pressed
                }
                return Colors.black; // Default text/icon color
              }),
              elevation: MaterialStateProperty.all(0),
              shape : MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,  // Makes the corners sharp
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(bottom: AppPadding.p15),
              child: Icon(Icons.minimize),
            ),
          ),
        ),
      ],
    );
  }
}

class DefaultTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;

  const DefaultTextFormField(
      {super.key, required this.hintText, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(top: AppPadding.p20, bottom: AppPadding.p20),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
              vertical: AppPadding.p23, horizontal: AppPadding.p15),
          // Padding inside the text field
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.orange),
            borderRadius: BorderRadius.circular(20),
          ),
          focusColor: Colors.orange,
          filled: true,
          // Fill color to show rounded borders
          fillColor: Colors.white,
          hintText: hintText,
          iconColor: Colors.orange,
        ),
      ),
    );
  }
}
