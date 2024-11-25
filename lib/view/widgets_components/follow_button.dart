import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 30,
     width: 90,
     decoration: BoxDecoration(
       color: Colors.black,
       borderRadius: BorderRadius.circular(5)
     ),
     child: const Center(
       child: Text("Follow",
       style: TextStyle(
         color: Colors.white,
         fontWeight: FontWeight.w500
       ),
       ),
     ),
                            );
  }
}