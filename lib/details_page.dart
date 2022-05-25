import 'package:assignment/colors.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final String pImage;
  final String pName;
    final String pAddress;
      final String pPrice;
        final String pRate;



  
   DetailsScreen({Key? key, required this.pImage,required this.pName,required this.pAddress, required
   this.pPrice,required this.pRate}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _count = 1;
  bool _isfavourte = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorss.bgColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(
              0xff1D1D1D,
            ),
            size: 14,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
        backgroundColor: Colorss.bgColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 450,
                    width: 374,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(widget.pImage),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                    left: 40,
                    bottom: 40,
                    child: Text(
                      widget.pName,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                          color: Color(0xffFFFFFF)),
                    )),
                Positioned(
                    bottom: 20,
                    left: 40,
                    child: Text(widget.pAddress,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFFFFFF)))),
                Positioned(
                    bottom: 40,
                    right: 40,
                    child: Text("Rs. ${widget.pPrice} /-",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFFFFFF)))),
                Positioned(
                    bottom: 20,
                    right: 40,
                    child: Text("⭐ ${widget.pRate}",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFFFFFF)))),
              ],
            ),
            SizedBox(height: 20),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("Description",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                        color: Color(0xff000000)))),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 20, right: 10),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet quam pretium odio finibus pellentesque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet quam pretium odio finibus pellentesque.",
                  style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1D1D1D))),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 2),
              child: Text("Read more..",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff1D1D1D))),
            ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      // margin: EdgeInsets.symmetric(horizontal: 20),
                      width: 96,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colorss.primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10)),
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _count++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colorss.primaryColor,
                                  size: 16,
                                )),
                          ),
                          Center(
                            child: Container(
                              child: Text("$_count",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffFFFFFF))),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10)),
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _count--;
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colorss.primaryColor,
                                  size: 16,
                                )),
                          ),
                        ],
                      )),
                  // SizedBox(height: 5),
                  Container(
                    width: 190,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colorss.primaryColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.shopping_basket_rounded,
                            color: Color(0xffFFFFFF),
                          ),
                          Text("Add to Cart",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffFFFFFF)))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _isfavourte=!_isfavourte;
                          });
                      },
                      child: _isfavourte
                          ? Icon(
                              Icons.favorite,
                              color: Colorss.primaryColor,
                              size: 18,
                            )
                          : Icon(
                              Icons.favorite_border_outlined,
                              color: Colorss.primaryColor,
                              size: 18,
                            ),
                    ),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          //  color: Colors.grey.shade50,

                          color: Color.fromRGBO(0, 0, 0, 0.1),

                          offset: Offset(0, 2),

                          spreadRadius: 1,
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
