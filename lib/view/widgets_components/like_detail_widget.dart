import 'package:budgetapp_machine_task/model/post_model.dart';
import 'package:flutter/material.dart';

class LikeDetailWidget extends StatelessWidget {
  const LikeDetailWidget({
    super.key,
    required this.post,
  });

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(post.firstLikeProfile),
            onBackgroundImageError: (exception, stackTrace) {
              
                const Icon(Icons.person);
            },
          ),
          const Text('Liked by'),
          Text(" ${post.firstLikeUserName}",
          style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text('and'),
          Text(' ${post.likedCount} others',
          style: const TextStyle(fontWeight: FontWeight.bold),
          ),
                  
        ],
      ),
                  
    );
  }
}

