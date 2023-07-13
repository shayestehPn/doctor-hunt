import 'package:flutter/material.dart';
import 'images/gifs.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: Center(
            child: Gif.loaderGif
        ),
      ),
    );
  }
}
