import 'package:flutter/material.dart';

class CustomLogin extends StatelessWidget {
  String topText;
  String subText;
  String firstDetail;
  String secondDetail;
  String? thirdDetail;
  String? fourthDetail;
  String firsttextFieled;
  String secondtextFieled;
  String? thirdtextFieled;
  String? fourthtextFieled;

  String? asterick;

  CustomLogin({
    Key? key,
    required this.topText,
    required this.subText,
    required this.firstDetail,
    required this.secondDetail,
    this.thirdDetail,
    this.fourthDetail,
    required this.firsttextFieled,
    required this.secondtextFieled,
    this.thirdtextFieled,
    this.fourthtextFieled,
    this.asterick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              topText,
              style: TextStyle(
                  fontSize: 24,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1D1D1D)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              subText,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                  color: Color(0xff1D1D1D)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              children: [
                Text(
                  firstDetail,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                      color: Color(0xff1D1D1D)),
                ),
                Text(asterick!, style: TextStyle(color: Colors.red.shade900)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 60,
              width: 374,
              child: TextField(
                decoration: InputDecoration(
                  // border:InputBorder.none,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color(0xffC4C4C4), width: 1)),

                  label: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      firsttextFieled,
                      style: TextStyle(
                        letterSpacing: 0.5,
                        color: Color(
                          0xffC4C4C4,
                        ),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  // labelStyle: TextStyle(fontSize: )
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Text(
              secondDetail,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                  color: Color(0xff1D1D1D)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 60,
              width: 374,
              child: TextField(
                decoration: InputDecoration(
                  // border:InputBorder.none,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color(0xffC4C4C4), width: 1)),

                  label: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      secondtextFieled,
                      style: TextStyle(
                        letterSpacing: 0.5,
                        color: Color(
                          0xffC4C4C4,
                        ),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  // labelStyle: TextStyle(fontSize: )
                ),
              ),
            ),
          ),
        thirdDetail!=null ? SizedBox(
            height: 10,
          ) :Container(),
         thirdDetail != null
                ?  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Row(
                    children: [
                      Text(
                        thirdDetail!,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                            color: Color(0xff1D1D1D)),
                      ),
                      Text(asterick!,
                          style: TextStyle(color: Colors.red.shade900))
                    ],
                  )
          ): Container(),
          thirdDetail!=null ? SizedBox(
            height: 10,
          ) :Container(),
          thirdtextFieled != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 60,
                    width: 374,
                    child: TextField(
                      decoration: InputDecoration(
                        // border:InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Color(0xffC4C4C4), width: 1)),

                        label: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            thirdtextFieled!,
                            style: TextStyle(
                              letterSpacing: 0.5,
                              color: Color(
                                0xffC4C4C4,
                              ),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        // labelStyle: TextStyle(fontSize: )
                      ),
                    ),
                  ),
                )
              : Container(),
        fourthDetail!=null ? SizedBox(
            height: 10,
          ) :Container(),
          fourthDetail != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    children: [
                      Text(
                        fourthDetail!,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                            color: Color(0xff1D1D1D)),
                      ),
                      Text(asterick!,
                          style: TextStyle(color: Colors.red.shade900))
                    ],
                  ),
                )
              : Container(),
         fourthDetail!=null ? SizedBox(
            height: 10,
          ) :Container(),
        fourthDetail != null
                ?   Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                    height: 60,
                    width: 374,
                    child: TextField(
                      decoration: InputDecoration(
                        // border:InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Color(0xffC4C4C4), width: 1)),

                        label: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            fourthtextFieled!,
                            style: TextStyle(
                              letterSpacing: 0.5,
                              color: Color(
                                0xffC4C4C4,
                              ),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        // labelStyle: TextStyle(fontSize: )
                      ),
                    ),
                  )
                ,
          ): Container(),
        ],
      ),
    );
  }
}
