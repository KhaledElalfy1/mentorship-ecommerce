import 'package:flutter/material.dart';

class ChooseCategorySection extends StatefulWidget {
  const ChooseCategorySection({super.key});

  @override
  State<ChooseCategorySection> createState() => _ChooseCategorySectionState();
}

class _ChooseCategorySectionState extends State<ChooseCategorySection> {
  List<String> categories = [
    "All",
    'Crop Tops',
    'T-Shirts',
  ];
  String dropdownValue = 'All';
  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: double.infinity,
      initialSelection: categories.first,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries:
          categories.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
