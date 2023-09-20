import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'newProductCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double myWidth = 300;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      setState(() {
        myWidth = MediaQuery.of(context).size.width * 0.95;
      });
    }
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'ShopKart',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.black,
              actions: [
                if (kIsWeb)
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Home",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "About",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Our Products",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Contact Us",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  width: 30,
                ),
                if (!kIsWeb)
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black,
                    child: Stack(children: [
                      Container(
                          alignment: Alignment.topRight,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            alignment: Alignment.bottomRight,
                            image: AssetImage('assets/images/menImage.png'),
                          ))),
                      Positioned(
                        bottom: 40,
                        child: Opacity(
                          opacity: 0.20,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 320.19,
                            decoration: BoxDecoration(color: Color(0xFFF07E15)),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: MediaQuery.of(context).size.height * 0.5,
                          right: MediaQuery.of(context).size.width * 0.2,
                          child: Text(
                            'Fresh',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 55,
                              fontFamily: 'Syne',
                              fontWeight: FontWeight.w800,
                              height: 0.02,
                            ),
                          )),
                      Positioned(
                          bottom: MediaQuery.of(context).size.height * 0.4,
                          right: MediaQuery.of(context).size.width * 0.1,
                          child: Text(
                            '2022',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 55,
                              fontFamily: 'Syne',
                              fontWeight: FontWeight.w800,
                              height: 0.02,
                            ),
                          )),
                      Positioned(
                          bottom: MediaQuery.of(context).size.height * 0.3,
                          right: MediaQuery.of(context).size.width * 0.2,
                          child: Text(
                            'Look',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 55,
                              fontFamily: 'Syne',
                              fontWeight: FontWeight.w800,
                              height: 0.02,
                            ),
                          )),
                      Positioned(
                          bottom: MediaQuery.of(context).size.height * 0.1,
                          right: MediaQuery.of(context).size.width * 0.3,
                          child: Row(
                            children: [
                              Container(
                                width: 976,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 64,
                                height: 89.08,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: StarBorder(
                                    points: 4,
                                    innerRadiusRatio: 0.09,
                                    pointRounding: 0,
                                    valleyRounding: 0,
                                    rotation: 0,
                                    squash: 0,
                                  ),
                                ),
                              )
                            ],
                          )),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.white,
                          )),
                          child: Center(
                            child: Row(
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'See All',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_outward,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            'New products',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontFamily: 'Syne',
                              fontWeight: FontWeight.w600,
                              height: 0.03,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 22,
                                height: 22,
                                decoration: ShapeDecoration(
                                  color: Colors.black,
                                  shape: StarBorder(
                                    points: 4,
                                    innerRadiusRatio: 0.23,
                                    pointRounding: 0,
                                    valleyRounding: 0,
                                    rotation: 0,
                                    squash: 0,
                                  ),
                                ),
                              ),
                              Container(
                                width: myWidth,
                                decoration: ShapeDecoration(
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFF161615),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: NewProductCard(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.fill,
                    )),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 385,
                          height: 52,
                          child: Text(
                            'Newslleter',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 26,
                              fontFamily: 'Syne',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 290,
                          height: 60,
                          child: Text(
                            '\nGet news about articles and updates in your inbox.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 18,
                              fontFamily: 'Work Sans',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: TextFormField(
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            decoration: InputDecoration(
                              hintText: 'NAME',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                            controller: nameController,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: TextFormField(
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              hintText: 'EMAIL',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                            controller: emailController,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: TextFormField(
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              hintText: 'MESSAGE',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                            controller: messageController,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'GET IN TOUCH',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 55,
                                  fontFamily: 'Syne',
                                  fontWeight: FontWeight.w800,
                                  height: 0.01,
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              ElevatedButton(
                                
                                  onPressed: () {
                                    print(nameController.text);
                                    print(emailController.text);
                                    print(messageController.text);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    
                                      primary: Color(0xFFF07E15),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                            color: Color(0xFFF07E15),
                                            width: 1,
                                            strokeAlign:
                                                BorderSide.strokeAlignCenter,
                                          ))),
                                  child: Text(
                                    'SUBMIT',
                                  )),
                            ])
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
