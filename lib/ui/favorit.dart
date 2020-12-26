import 'package:flutter/material.dart';

class Favrot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('حسابي'),
        centerTitle: true,
        // backgroundColor: Color(0xff963369),
        backgroundColor: Colors.red,
        elevation: 3,
        leading: Icon(
          Icons.search,
          color: Colors.black,
          size: 30.0,
        ),
        actions: [
          Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 165,
                    child: Icon(Icons.favorite,  color: Colors.red,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage('assest/image/img7.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5), BlendMode.darken)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 200,
                    width: 165,
                    child: Icon(Icons.favorite,  color: Colors.red,),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assest/image/img10.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.4), BlendMode.darken)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 165,
                    child: Icon(Icons.favorite,  color: Colors.red,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage('assest/image/imag3.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.4), BlendMode.darken)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 200,
                    width: 165,
                    child: Icon(Icons.favorite,  color: Colors.red,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assest/image/img2.jpg',
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.4), BlendMode.darken),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
               Row(
                children: [
                  Container(
                    height: 200,
                    width: 165,
                    child: Icon(Icons.favorite,  color: Colors.red,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage('assest/image/img4.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.4), BlendMode.darken)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 200,
                    width: 165,
                   child: Icon(Icons.favorite,  color: Colors.red,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assest/image/img5.jpg',
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.4), BlendMode.darken),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
