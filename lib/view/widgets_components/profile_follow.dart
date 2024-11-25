
import 'package:budgetapp_machine_task/model/post_model.dart';
import 'package:budgetapp_machine_task/view/widgets_components/follow_button.dart';
import 'package:flutter/material.dart';

class ProfileAndFollow extends StatelessWidget {
  const ProfileAndFollow({
    super.key,
    required this.post,
  });

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
      children: [
        
        Container(
        
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
                CircleAvatar(
                  backgroundColor: Colors.white,
                
                backgroundImage: NetworkImage(post.profileImage),
                onBackgroundImageError: (exception, stackTrace) {
                  const Icon(Icons.person);
                },
              ),
               const SizedBox(width: 10),
               Container(
         
          child:   Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${post.userName}",
              style: const TextStyle(
                fontWeight: FontWeight.w600
              ),
              ),
              post.location == "null" ?
              const SizedBox():
              Text(post.location)
              
            ],
          ),
        ),
    
        SizedBox(width: 10),
    
        post.isFollowed == "0" ?
                  
         const FollowButton() : const SizedBox()
            ],
          )
          ),
        
       const Icon(Icons.more_horiz_outlined)
                  
       
        
      ],
    );
  }
}

