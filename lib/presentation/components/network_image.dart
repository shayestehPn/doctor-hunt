import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class CustomNetworkImage extends StatelessWidget {

  final String imageUrl;
  final double height;
  final double width;
  final BorderRadius borderRadius;

  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
    required this.height,
    required this.width,
    required this.borderRadius
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                color: Colors.grey[200],
              ),
            ),
        errorWidget: (context, url, error) =>
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                color: Colors.grey[100],
              ),
              child: const Icon(Icons.error),
            )
      ),
    );

  }
}
