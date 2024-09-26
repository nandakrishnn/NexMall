
import 'package:ecommerceflutter/core/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../core/utils/constants.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppConstants.kheight30,
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              // AppConstants.kwidth5,
        
    
      
              Icon(
                Icons.location_on_rounded,
                color: AppColors.greenColor,
                size: 25,
              ),
              AppConstants.kwidth5,
              Text(
                'ABCD , New Delhi',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              AppConstants.kwidth5,
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: AppColors.greenColor,
                size: 20,
              )
            ],
          ),
        ),
      AppConstants.kheight10,
        Padding(
          // Added Padding for the TextFormField
          padding: const EdgeInsets.symmetric(
              horizontal: 8.0), // Padding on the sides
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 290,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search for products/stores',
                      filled: true,
                      fillColor:const Color.fromARGB(255, 238, 235, 235),
                      suffixIcon: Icon(Icons.search,color: AppColors.greenColor,size: 30,),
                  
                      border: OutlineInputBorder(
                    
                        borderRadius: BorderRadius.circular(
                            8.0), 
                        borderSide: BorderSide
                            .none,
                      ),
                    ),
                  ),
                ),
                   AppConstants.kwidth10,
                  Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.red,
                    size: 30,
                  ),
               AppConstants.kwidth10,
                    Icon(
                    Icons.local_offer_outlined,
                    size: 30,
                    fill: 0,
                    color: Colors.orange,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
