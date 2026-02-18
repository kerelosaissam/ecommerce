import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final IconData icon;
  final Color dra;

  const ReusableContainer({
    super.key,
    required this.icon, required this.dra,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        icon,
        size: 18,
        color: dra,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
