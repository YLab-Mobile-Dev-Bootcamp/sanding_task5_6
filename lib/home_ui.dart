import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUI extends StatefulWidget {
  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height,
      ),
      designSize: Size(375, 812),
    );
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(tablet: 600, desktop: 950, watch: 300),
      mobile: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Row(
                      children: [
                        Text('Hello, ', style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        ),),
                        Text('Jhon!', style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff67E5CE),
                        ),),
                      ],
                    )
                    
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 30),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Home', style: TextStyle(
                          color: Color(0xFFF99928),
                          fontSize: 12,

                        ),),
                        Icon(Icons.location_on, color: Color(0xFFF99928),),
                      ],
                    ),
                  )
                  
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 190.w,
                color: Colors.white,
                padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Row(
                          children: [
                            Text('GET ', style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),),
                            Text('50% ', style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),),
                            Text('AS A JOINING BONUS', style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('USE CODE ON CHECKOUT', style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),),
                            Text('NEW 50%', style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),)
                          ],
                        ),
                      ),
                      
                    ],
                    
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF67E5CE),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(height: 15.w),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text('RECOMENDED FOR YOU', style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),),
                  )
                ],
              ),
              SizedBox(
                height: 12.w,
              ),
              SizedBox(
                height: 230.w,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left:17),
                      child: Container(
                        width: 157.w,
                        height: 230.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 0,
                            color: Color(0xff000000).withOpacity(0.1),
                            offset: Offset(0, 0),
                          )]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 156.w,
                              width: 156.w,
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow(
                                blurRadius: 0,
                                spreadRadius: 0,
                                color: Color(0xff000000).withOpacity(0.1),
                                offset: Offset(0, 0),
                              )],
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(image: AssetImage('assets/egg.jpg'), fit: BoxFit.cover,)
                              ), 
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Text('Egg Salad', style: GoogleFonts.poppins(textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                              )),)
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, top: 20),
                                  child: Text('Rp.60.000', style: GoogleFonts.bebasNeue(textStyle: TextStyle(
                                    color: Color(0xff2FDBBC),
                                    fontSize: 18,
                                  )),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10, top: 15),
                                  child: Icon(Icons.shopping_basket_sharp, color: Color(0xff2FDBBC),),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        width: 157.w,
                        height: 230.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 0,
                            color: Color(0xff000000).withOpacity(0.1),
                            offset: Offset(0, 0),
                          )]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 156.w,
                              width: 156.w,
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 0,
                                color: Color(0xff000000).withOpacity(0.1),
                                
                              )],
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(image: AssetImage('assets/salmon.png'), fit: BoxFit.cover,)
                              ), 
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Text('Grilled Salmon', style: GoogleFonts.poppins(textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                              )),)
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, top: 20),
                                  child: Text('Rp.90.000', style: GoogleFonts.bebasNeue(textStyle: TextStyle(
                                    color: Color(0xff2FDBBC),
                                    fontSize: 18,
                                  )),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10, top: 15),
                                  child: Icon(Icons.shopping_basket_sharp, color: Color(0xff2FDBBC),),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: 157.w,
                        height: 230.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 0,
                            color: Color(0xff000000).withOpacity(0.1),
                            offset: Offset(0, 0),
                          )]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 156.w,
                              width: 156.w,
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 0,
                                color: Color(0xff000000).withOpacity(0.1),
                                offset: Offset(0, 0),
                              )],
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(image: AssetImage('assets/burger.jpg'), fit: BoxFit.cover,)
                              ), 
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Text('Burger', style: GoogleFonts.poppins(textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                              )),)
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, top: 20),
                                  child: Text('Rp.70.000', style: GoogleFonts.bebasNeue(textStyle: TextStyle(
                                    color: Color(0xff2FDBBC),
                                    fontSize: 18,
                                  )),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10, top: 15),
                                  child: Icon(Icons.shopping_basket_sharp, color: Color(0xff2FDBBC),),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.w),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text('RESTAURANT', style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),),
                  )
                ],
              ),
              SizedBox(
                height: 15.w,
              ),
              SizedBox(
                height: 80.w,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20, left: 15),
                          child: Container(
                            height: 80.w,
                            width: 80.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 0,
                              color: Color(0xff000000).withOpacity(0.1),
                                  offset: Offset(0, 0),
                              )],
                              borderRadius: BorderRadius.all(Radius.circular(20)),  
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 64.w,
                                width: 64.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(image: AssetImage('assets/dmnlogo.png'), fit: BoxFit.cover,)
                                  ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: 80.w,
                            width: 80.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 0,
                              color: Color(0xff000000).withOpacity(0.1),
                                  offset: Offset(0, 0),
                              )],
                              borderRadius: BorderRadius.all(Radius.circular(20)),  
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 64.w,
                                width: 64.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(image: AssetImage('assets/bklogo.jpg'), fit: BoxFit.cover,)
                                  ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: 80.w,
                            width: 80.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 0,
                              color: Color(0xff000000).withOpacity(0.1),
                                  offset: Offset(0, 0),
                              )],
                              borderRadius: BorderRadius.all(Radius.circular(20)),  
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 64.w,
                                width: 64.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(image: AssetImage('assets/mdc1logo.png'), fit: BoxFit.cover,)
                                  ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: 80.w,
                            width: 80.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 0,
                              color: Color(0xff000000).withOpacity(0.1),
                                  offset: Offset(0, 0),
                              )],
                              borderRadius: BorderRadius.all(Radius.circular(20)),  
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 64.w,
                                width: 64.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(image: AssetImage('assets/phlogo.png'), fit: BoxFit.cover,)
                                  ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ),
              SizedBox(height: 24.w),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text('POPULAR IN YOUR AREA', style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),),
                  )
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Row(
          children: [
            buildNavBarItem(Icons.home),
            buildNavBarItem(Icons.search),
            buildNavBarItem(Icons.shopping_basket),
            buildNavBarItem(Icons.favorite),
            buildNavBarItem(Icons.person),
          ],
        ),
      ),
      tablet: Container(color: Colors.yellow),
      desktop: Container(color: Colors.red),
      watch: Container(color: Colors.purple),
    );
  }

  Container buildNavBarItem(IconData icon) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width / 5,
      decoration: BoxDecoration(color: Colors.white30),
      child: Icon(icon),
    );
  }
  
}
