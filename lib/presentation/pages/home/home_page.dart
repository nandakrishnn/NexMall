import 'package:ecommerceflutter/core/utils/colors.dart';
import 'package:ecommerceflutter/core/utils/constants.dart';
import 'package:ecommerceflutter/presentation/widgets/home.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(140),
          child:  CustomAppBarHome()),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text('What would you like to do today?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21.5),),
                GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),itemBuilder: (context, index) {
                  
                },)
              ],
            ),
          )),
    );
  }
}
