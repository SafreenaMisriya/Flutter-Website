import 'package:flutter/material.dart';

AppBar appbar() {
  return AppBar(
    backgroundColor: Colors.black,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1hcw16QWSSCKjdmTuNns-GGzbD97190HUwg&s',
              width: 40,
            ), // Add your logo

            const Text(
              "URUMM",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
