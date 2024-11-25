
import 'dart:convert';
import 'dart:developer';

import 'package:budgetapp_machine_task/constants/constants.dart';
import 'package:budgetapp_machine_task/model/post_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiServices {

  Future<List<PostModel>> getPost() async{

    try{
      var url = Uri.parse(uri);
      
      final response = await http.get(url);

      if(response.statusCode == 200){
        final data = jsonDecode(response.body)['data']['data'] as List;

        final postData = data.map((post)=> PostModel.fromJson(post)).toList();

      debugPrint(postData[0].userName);
      
      return postData;
      }else{
        throw Exception();
      }

       


    }catch(error){
      log(error.toString());
      throw Exception();
    }

  }


  Future<void> postLike (String userId , String postId)async{

    try{

      final body = jsonEncode({
         "post_id" : postId,
          "user_id" : userId,
          "token" : token
      }); 
      
      final headers = {
        'Content-Type': 'application/json'
      };

      final postUrl = Uri.parse(posturi);

      

      final response = await http.post(
        postUrl,
        body: body,
        headers: headers
        
      );

      if(response.statusCode == 200){
        debugPrint("url $postUrl body $body response ${response.body}");
        debugPrint(response.toString());
        debugPrint(response.body);
        debugPrint('liked');
      }else{
         debugPrint(response.statusCode.toString());
      }

    }catch(error){
      log(error.toString());
      throw Exception(error);
    }
  }
}