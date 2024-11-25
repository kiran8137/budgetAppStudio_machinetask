
import 'package:budgetapp_machine_task/data_services/services.dart';
import 'package:budgetapp_machine_task/model/post_model.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{

HomeProvider({required this.postServices});
ApiServices postServices;

List<PostModel> postList = [];

Future<void> getPost()async {
  
  final posts = await postServices.getPost();
  
  postList.addAll(posts);
  notifyListeners();
  
}

Future<void> postLike(String userId , String postId)async{
  await postServices.postLike(userId, postId);
  postList.clear();
   final posts = await postServices.getPost();
    postList.addAll(posts);
  notifyListeners();
}

}