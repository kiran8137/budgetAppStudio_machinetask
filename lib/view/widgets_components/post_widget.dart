import 'package:budgetapp_machine_task/controller/home_contoller.dart';
import 'package:budgetapp_machine_task/model/post_model.dart';
import 'package:budgetapp_machine_task/view/widgets_components/like_comment_share.dart';
import 'package:budgetapp_machine_task/view/widgets_components/like_detail_widget.dart';
import 'package:budgetapp_machine_task/view/widgets_components/post_image.dart';
import 'package:budgetapp_machine_task/view/widgets_components/post_image_slider.dart';
import 'package:budgetapp_machine_task/view/widgets_components/profile_follow.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
    required this.post,
    required this.postImages,
    required this.isLiked, required this.value,
  });

  final PostModel post;
  final List<String> postImages;
  final bool isLiked;
  final HomeProvider value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: double.infinity,
    height: 500,
     
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileAndFollow(post: post), //widgets which shows the profile details and follow button 
        const SizedBox(height: 10),
    
        postImages.length == 1? 
        PostImageWidget(postImages: postImages): // post image widget for single image from api
          
           PostImageSliderWidget(postImages: postImages),  // post image slider widget for mutliple image from api
    
         
        const SizedBox(height: 10),
         LikeCommentShareWidget(post: post, isLiked: isLiked, value: value,), //widget for like , comment , share and save 
                  
        const SizedBox(height: 10),
                  
        LikeDetailWidget(post: post), //widget which shows the likes details  
    
        post.description == "null" ?
        const SizedBox():
        SizedBox(
          height: 45,
          width: 300,
           
          child: Text(
            overflow: TextOverflow.fade,
             post.description 
          ),
        ),
                  
        const SizedBox(
          height: 5,
        ),
    
        post.commentCount == "0" ?
        const SizedBox():
        Text('view All ${post.commentCount} comoments',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 13
          )
        ),
        const SizedBox(height: 1),
                  
        const Text('2 days ago',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12
          )
        ),
      
      ],
    ),
                  );
  }
}

