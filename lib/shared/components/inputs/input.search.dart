import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_app/generated/locales.g.dart';

class InputSearch extends StatelessWidget {
  const InputSearch({
    super.key,
    this.onChanged,
    this.hint,
  });
  final ValueSetter<String>? onChanged;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      style: Get.textTheme.titleSmall?.copyWith(),
      cursorHeight: 20,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 0),
        prefixIcon: Icon(Icons.search),
        hintText: LocaleKeys.searchRecipe.tr,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
    );
  }
}
