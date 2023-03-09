import 'package:flutter/material.dart';

class BookInfo extends StatelessWidget {
  String title;
  String imgPath;
  BookInfo({Key? key, required this.title, required this.imgPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 20),
      child: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 120,
              maxWidth: 80,
            ),
            child: Image(
              image: AssetImage(imgPath),
              fit: BoxFit.fill,
            ),
          ),
          const FittedBox(
            fit: BoxFit.scaleDown,
            child: SizedBox(
              width: 80,
              child: Text(
                "This is a long text that needs to be constrained",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 11),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
