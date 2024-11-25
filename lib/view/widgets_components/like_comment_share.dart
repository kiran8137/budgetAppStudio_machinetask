import 'package:budgetapp_machine_task/controller/home_contoller.dart';
import 'package:budgetapp_machine_task/model/post_model.dart';
import 'package:flutter/material.dart';

class LikeCommentShareWidget extends StatelessWidget {
  const LikeCommentShareWidget({
    super.key,
    required this.post,
    required this.isLiked, required this.value,
  });

  final PostModel post;
  final bool isLiked;
  final HomeProvider value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: double.infinity,
     
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         SizedBox(
           width: 100,
          
            
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               GestureDetector(
                 onTap: () async{
                  await value.postLike(post.userId, post.postId);
                  
                   
                 },
                 child: 
                 isLiked ?
                 const Icon(
                   Icons.favorite,
                   size: 25,
                 ): 
                 const Icon(
                   Icons.favorite_border_outlined,
                   size: 25,
                 )
    
               ),
             
               const Icon(
                 Icons.chat_bubble_outline,
                 size: 25,
               ),
                 
                const Icon(
                 Icons.send,
                 size: 25,
               )
             ],
           ),
         ),
                  
         
         const SizedBox(width: 113),
                  
         const Icon(Icons.bookmark_outline)
       ],
     ),
                        );
  }
}

