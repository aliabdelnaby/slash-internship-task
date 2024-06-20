import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.image,
    required this.name,
    this.onTap,
  });

  final String image, name;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image,
          ),
          const SizedBox(height: 5),
          Text(
            name,
          ),
        ],
      ),
    );
  }
}
