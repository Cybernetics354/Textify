import 'package:flutter/material.dart';

class BrowseViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search),
          Text("Tidak ditemukan apapun")
        ],
      ),
    );
  }
}