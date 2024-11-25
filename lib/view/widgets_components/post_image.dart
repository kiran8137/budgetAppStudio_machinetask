
import 'package:flutter/material.dart';

class PostImageWidget extends StatelessWidget {
  const PostImageWidget({
    super.key,
    required this.postImages,
  });

  final List<String> postImages;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 270,
       
    
          
         child:  Image.network(postImages[0],fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return const Center(child: Text('loading....'));
      },
          )
    );
  }
}

