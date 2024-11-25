import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PostImageSliderWidget extends StatelessWidget {
  const PostImageSliderWidget({
    super.key,
    required this.postImages,
  });

  final List<String> postImages;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                          width: double.infinity,
                          height: 270,
                          
                        
       
      child: 
        CarouselSlider.builder(
     itemCount: postImages.length, 
     itemBuilder:(context , index, realIndex){
       final image = postImages[index];
       print(" image at : $image");
       
       return 
        Image.network(image,fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
     return const Center(child: Text('loading....'));
                          },
    );
     } ,
     options: CarouselOptions(height: 210,  pauseAutoPlayInFiniteScroll :true),
     )
                        );
  }
}

