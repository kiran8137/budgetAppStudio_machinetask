import 'package:budgetapp_machine_task/controller/home_contoller.dart';
import 'package:budgetapp_machine_task/model/post_model.dart';
import 'package:budgetapp_machine_task/view/widgets_components/appbar.dart';
import 'package:budgetapp_machine_task/view/widgets_components/follow_button.dart';
import 'package:budgetapp_machine_task/view/widgets_components/like_comment_share.dart';
import 'package:budgetapp_machine_task/view/widgets_components/like_detail_widget.dart';
import 'package:budgetapp_machine_task/view/widgets_components/post_image.dart';
import 'package:budgetapp_machine_task/view/widgets_components/post_image_slider.dart';
import 'package:budgetapp_machine_task/view/widgets_components/post_widget.dart';
import 'package:budgetapp_machine_task/view/widgets_components/profile_follow.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<HomeProvider>(context, listen: false).getPost();
    return Scaffold(
      appBar: customAppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Consumer<HomeProvider>(builder: (context, value, child) {
          return ListView.separated(
            itemCount: value.postList.length,
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemBuilder: (context, index) {
              final post = value.postList[index]; //single post detail
              final postImages = post.images.split(","); //list of images
              final isLiked = post.isLiked == '1' ? true : false; 

              return PostWidget(
                post: post,
                postImages: postImages,
                isLiked: isLiked,
                value: value,
              );
            },
          );
        }),
      )),
    );
  }
}
