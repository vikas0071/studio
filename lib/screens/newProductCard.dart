import 'package:flutter/material.dart';

class NewProductCard extends StatefulWidget {
  const NewProductCard({super.key});

  @override
  State<NewProductCard> createState() => _NewProductCardState();
}

class _NewProductCardState extends State<NewProductCard> {
  var images = [
    'assets/images/Product1.png',
    'assets/images/Product2.png',
    'assets/images/Product3.png',
    'assets/images/Product1.png',
    'assets/images/Product2.png',
    'assets/images/Product3.png',
    'assets/images/Product1.png',
    'assets/images/Product2.png',
    'assets/images/Product3.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  hoverColor: Colors.green,
                  onTap: () => print("Apparel Tapped"),
                  child: Text(
                    'Apparel',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                InkWell(
                  hoverColor: Colors.green,
                  onTap: () => print("Accessories Tapped"),
                  child: Text(
                    'Accessories',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Syne',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                InkWell(
                  hoverColor: Colors.green,
                  onTap: () => print("Best Sellers Tapped"),
                  child: Text(
                    'Best sellers',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                InkWell(
                  hoverColor: Colors.green,
                  onTap: () => print("50% off Tapped"),
                  child: Text(
                    '50% off',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Allow horizontal scrolling
              child: Column(
                children: [
                  Row(
                    children: [
                      for (var image in images)
                        Container(
                          width: 310,
                          height: 322,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(image),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Container(
                            width: 45,
                            height: 45,
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    decoration:
                                        BoxDecoration(color: Color(0xFF161615)),
                                    child: Icon(
                                      Icons.arrow_outward,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    for (var i = 0; i < images.length; i++)
                      Container(
                        width: 310,
                        height: 125,
                        margin: EdgeInsets.only(right: 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 125,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 258,
                                    height: 30,
                                    child: Text(
                                      'FLORIDA JACKET',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 26,
                                        fontFamily: 'Syne',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(
                                    width: 303,
                                    height: 49,
                                    child: Text(
                                      'Suffered alteration in some form, bysuffalterattion in some forme, byinjected humor, or randomised',
                                      style: TextStyle(
                                        color: Color(0x7F161615),
                                        fontSize: 14,
                                        fontFamily: 'Work Sans',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(
                                    width: 258,
                                    height: 30,
                                    child: Text(
                                      '\$100',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 26,
                                        fontFamily: 'Syne',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                  ]),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
