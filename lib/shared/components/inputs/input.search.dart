import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      style: Get.textTheme.titleSmall?.copyWith(),
      cursorHeight: 20,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 0),
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
    );
  }
}
