import 'package:assignment/colors.dart';
import 'package:assignment/details_page.dart';
import 'package:assignment/home_product.dart';
import 'package:assignment/sign_in.dart';
import 'package:assignment/sign_up.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = [
// Text('Call Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    HomeGrid(),
    DetailsScreen(
        pImage: "image/img4.jpg",
        pName: "Zara Pink 2563",
        pAddress: "New Road ShowRoom",
        pPrice: "2000",
        pRate: "4.5"),
    SignUpPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorss.bgColor,
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 80,
        width: 398,

        // color: Colors.green,

        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colorss.bgColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                // color: Color(0xffC4C4C4),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.camera_alt_outlined,
                ),
                label: "Camera"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: "Cart")
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Color(0xffC4C4C4),
          selectedItemColor: Colorss.primaryColor,
          iconSize: 30,
          onTap: _onItemTapped,
        ),
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
    );
  }
}

class HomeGrid extends StatelessWidget {
  const HomeGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colorss.bgColor,
        appBar: AppBar(
          centerTitle: true,
          title: Title(
            child: Text(
              "Home",
              style: TextStyle(
                  color: Color(
                    0xff000000,
                  ),
                  fontSize: 16,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w700),
            ),
            color: Colors.red,
          ),
          elevation: 0,
          backgroundColor: Colorss.bgColor,
        ),
        body: InkWell(
          onTap: () {},
          child: Container(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              childAspectRatio: 0.7,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return DetailsScreen(
                          pImage: "image/product-02.jpg",
                          pName: "Zara Pink 2563",
                          pAddress: "New Road ShowRoom",
                          pPrice: "2000",
                          pRate: "4.5");
                    }));
                  },
                  child: GridViewProduct(
                      productName: "Zara Pink 2563",
                      image: "image/product-02.jpg",
                      price: "2000",
                      productAddress: "New Road ShowRoom"),
                ),
                InkWell(
                  onTap: (){
                     Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return DetailsScreen(
                          pImage: "image/gallery-02.jpg",
                          pName: "Jacket",
                          pAddress: "Kathmandu",
                          pPrice: "1500",
                          pRate: "3.5");
                    }));
                  },
                  child: GridViewProduct(
                      productName: "Jacket",
                      image: "image/gallery-02.jpg",
                      price: "1500",
                      productAddress: "Kathmandu"),
                ),
                InkWell(
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context){
                       return DetailsScreen(pImage: "image/formal.jpg", pName: "Zara 2655", pAddress: "Newroad Showroom", pPrice: "2000", pRate: "4.7");
                    }));
                  },
                  child: GridViewProduct(
                      productName: "Zara 2655",
                      image: "image/gallery-07.jpg",
                      price: "2000",
                      productAddress: "Newroad Showroom"),
                ),
                GridViewProduct(
                    productName: "Hoodie",
                    image: "image/gallery-03.jpg",
                    price: "3500",
                    productAddress: "Lalitpur"),
                GridViewProduct(
                    productName: "Hoodie",
                    image: "image/gallery-06.jpg",
                    price: "3500",
                    productAddress: "Lalitpur"),
                GridViewProduct(
                    productName: "Hoodie",
                    image: "image/gallery-01.jpg",
                    price: "3500",
                    productAddress: "Lalitpur"),
                GridViewProduct(
                    productName: "Hoodie",
                    image: "image/gallery-02.jpg",
                    price: "3500",
                    productAddress: "Lalitpur"),
                GridViewProduct(
                    productName: "Hoodie",
                    image: "image/gallery-04.jpg",
                    price: "3500",
                    productAddress: "Lalitpur"),
              ],
            ),
          ),
        ));
  }
}
