// import 'package:flutter/material.dart';

// class CustomTile extends StatefulWidget {
//   final String title;
//   final String subTitle;
//   final IconData icon;
//   final String optionValue;
//   const CustomTile(
//       {super.key,
//       required this.title,
//       required this.subTitle,
//       required this.icon,
//       required this.optionValue});

//   @override
//   State<CustomTile> createState() => _CustomTileState();
// }

// List<String> options = ['option1', 'option2'];

// class _CustomTileState extends State<CustomTile> {
//   String currentOption = options[0];
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         CircleAvatar(
//           child: Icon(widget.icon),
//         ),
//         Column(
//           children: [
//             Text(widget.title),
//             Text(widget.subTitle),
//           ],
//         ),
//         Radio(
//             value: widget.optionValue,
//             groupValue: currentOption,
//             onChanged: (value) {
//               setState(() {
//                 currentOption = value.toString();
//               });
//             })
//       ],
//     );
//   }
// }
