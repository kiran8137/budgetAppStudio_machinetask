
import 'package:budgetapp_machine_task/data_services/services.dart';
import 'package:flutter/material.dart';

AppBar customAppBar() {
    return AppBar( 
      backgroundColor: Color.fromARGB(124, 33, 149, 243),
      leading: Row(
        children: [
          Icon(Icons.location_on),
           
        ],
      ),
      actions: [
        
        GestureDetector(
          onTap: ()async{
          await  ApiServices().getPost();
          },
          child: Container(
            width: 120,
            height:38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue
            ),
            child: Center(child: Text('Add Post',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500
            ),
            )),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }