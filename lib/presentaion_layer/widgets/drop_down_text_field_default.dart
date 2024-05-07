import 'package:atom/presentaion_layer/resources/app_constants.dart';
import 'package:atom/presentaion_layer/resources/strings_manager.dart';
import 'package:atom/presentaion_layer/resources/values_manager.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class DropDownTextFieldDefault extends StatelessWidget {
  final FocusNode searchFocusNode = FocusNode();
  final FocusNode textFieldFocusNode = FocusNode();
  final List<DropDownValueModel> dropDownValueModelList;
  final TextEditingController textEditingController ;
  DropDownTextFieldDefault({super.key, required this.dropDownValueModelList, required this.textEditingController});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppPadding.p20, bottom: AppPadding.p20),
      child: DropDownTextField(
        dropDownIconProperty: IconProperty(
          color: Colors.orange,
        ),
        clearOption: false,
        textFieldFocusNode: textFieldFocusNode,
        searchFocusNode: searchFocusNode,
        dropDownItemCount: AppConstants.dropDownItemCount,
        searchShowCursor: false,
        enableSearch: true,
        searchKeyboardType: TextInputType.text,
        dropDownList: dropDownValueModelList,
        onChanged: (val) {},
        textFieldDecoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: AppPadding.p23, horizontal: AppPadding.p15), // Padding inside the text field
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(3),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const  BorderSide(color: Colors.orange),
            borderRadius: BorderRadius.circular(20),
          ),
          focusColor: Colors.orange,
          filled: true, // Fill color to show rounded borders
          fillColor: Colors.white,
          hintText: AppStrings.selectItem,
          iconColor: Colors.orange,
        ),
        searchDecoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: AppPadding.p10, horizontal: AppPadding.p15), // Padding inside the search field
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide:  BorderSide(color: Colors.orange),
          ),
          filled: true, // Fill color to show rounded borders
          fillColor: Colors.white,
          iconColor: Colors.orange,
          prefixIconColor: Colors.orange,
          suffixIconColor: Colors.orange,
        ),
      ),
    );
  }
}
