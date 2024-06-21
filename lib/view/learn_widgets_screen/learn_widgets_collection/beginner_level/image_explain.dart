import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart'
    show kTransparentImage;

import '../../../../frequent_used_widget/custom_phone_layout.dart';

/// A simple stateful widget that demonstrates different ways to use the
/// [Image] widget in Flutter, including asset images, network images,
/// images with fade-in effects, and cached network images.
class ImageExplain extends StatefulWidget {
  /// Creates an [ImageExplain] widget.
  const ImageExplain({super.key});

  @override
  State<ImageExplain> createState() => _ImageExplainState();
}

class _ImageExplainState extends State<ImageExplain> {
  @override
  Widget build(BuildContext context) {
    // bool hasConnection;
    return CustomPhoneLayout(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Image Example'),
          centerTitle: true,
        ),
        // Scaffold provides a structure for the visual interface, including
        // an optional app bar, drawer, and a body.
      
        /// The body of the Scaffold is a [ListView] that contains multiple
        /// [ListTile] and [Image] widgets demonstrating different image types.
        body: ListView(
          children: [
            // Displaying an image from the local asset bundle.
            const ListTile(title: Text('Image from Asset:')),
            Image.asset('assets/images/logo_no_bg.png'),
            const Divider(),
      
            // Displaying an image from a network URL.
            const ListTile(title: Text('Image from Network:')),
            Image.network(
              'https://source.unsplash.com/random/?river&1',
              scale: 1.0,
              height: 300,
            ),
            const Divider(),
      
            // Displaying an image with a fade-in effect using a network URL.
            const ListTile(title: Text('Fade In Image:')),
            Card(
              child: Center(
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: 'https://source.unsplash.com/random/?Computer&1',
                ),
              ),
            ),
            const Divider(),
      
            // Displaying a cached network image with a progress indicator.
            const ListTile(title: Text('Cached Network Image:')),
            CachedNetworkImage(
              imageUrl: "https://source.unsplash.com/random/?tiger&1",
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                      child: CircularProgressIndicator(
                          value: downloadProgress.progress)),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ],
        ),
      ),
    );
  }
}
