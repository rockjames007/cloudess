import 'package:flutter/material.dart';

main() => runApp(TimeSheet());

class TimeSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _buildCarouselItem()
        ],
      )
    );
  }


  Widget _buildCarouselItem() {
    return Container(
      color: Colors.blue,
      height: 100.0,
      child: PageView.builder(
        // store this controller in a State to save the carousel scroll position
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        controller: PageController(initialPage: 9),
        itemBuilder: (BuildContext context, int itemIndex) {

          return _buildCarousel();
        },
      ),
    );
  }
  Widget _buildCarousel() {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        child:ListTile(
          title:RichText(textAlign: TextAlign.center,text: TextSpan(
              children: <TextSpan>[TextSpan(text: '14'),TextSpan(text: '-'),TextSpan(text: '21')]
          )) ,
        )
      ),
    );
  }
}