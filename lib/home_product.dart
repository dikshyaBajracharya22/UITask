import 'package:assignment/colors.dart';
import 'package:flutter/material.dart';

class GridViewProduct extends StatelessWidget {
  final String image;
  final String productName;
  final String productAddress;
  final String price;
  GridViewProduct(
      {Key? key,
      required this.productName,
      required this.image,
      required this.price,
      required this.productAddress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),

            offset: Offset(2, 2),
            
            // spreadRadius: 1,
            blurRadius: 4,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(

          // color: Colors.red,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
       
            children: [
              Container(
                height: 157,
                width: 157,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                productName,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                productAddress,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Rs. $price /-",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff000000)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
