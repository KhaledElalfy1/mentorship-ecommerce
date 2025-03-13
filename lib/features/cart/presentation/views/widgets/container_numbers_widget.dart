import '../../../../../core/routes/routes_exports.dart';

class ContainerNumbersWidget extends StatefulWidget {
  const ContainerNumbersWidget({super.key});

  @override
  State<ContainerNumbersWidget> createState() => _ContainerNumbersWidgetState();
}

class _ContainerNumbersWidgetState extends State<ContainerNumbersWidget> {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              if (i > 1) {
                --i;
              }
            });
          },
          child: Icon(
            Icons.remove_rounded,
            size: 15.sp,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        Text("$i",
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(0.5))),
        InkWell(
          onTap: () {
            setState(() {
              ++i;
            });
          },
          child: Icon(
            Icons.add,
            size: 15.sp,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}