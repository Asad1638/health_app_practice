
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String leadingImage;
  final String trailingImage;
  final VoidCallback onTap;

  const ListTileWidget({
    required this.title,
    required this.subtitle,
    required this.leadingImage,
    required this.trailingImage,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          leading: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(leadingImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(subtitle),
          trailing: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(trailingImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
