import 'package:flutter/material.dart';

class StarsSection extends StatefulWidget {
  const StarsSection({super.key});

  @override
  State<StarsSection> createState() => _StarsSectionState();
}

class _StarsSectionState extends State<StarsSection> {
 final ValueNotifier<int> _selectedStar = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
        (index) => GestureDetector(
          onTap: () {
            _selectedStar.value = index + 1;
          },
          child: ValueListenableBuilder(
            valueListenable: _selectedStar,
            builder: (context, value, child) {
              return Icon(
                Icons.star,
                size: 50,
                color: Color(
                  value > index ? 0xff508A7B : 0xffB1B5C3,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
