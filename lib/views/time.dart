import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cards/model/buy_list.dart';
import 'package:flutter_cards/utility/service.dart';
class TimePage extends StatefulWidget {
  @override
  _TimePageState createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {

QuerySnapshot productSnapshot;
DatabaseService databaseService = new DatabaseService();
@override
void initState(){
   print("${databaseService.documentIdOfBuyProduct}");
   databaseService.getProductData(databaseService.documentIdOfBuyProduct).then((val){
     productSnapshot = val;
      super.initState();
   }
   Product(productSnapshot['name'],productSnapshot['price'],productSnapshot['image']);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Testing"),
       ),
       body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            SizedBox(
              height: 3,
            ),
            chefCard(),
            SizedBox(
              height: 2,
            ),
            madeInFarmCard(),
          ],
        ),
      ),
      
    );
  }

  Widget chefCard(){
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Chef Card'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: cardListContainer(),
          ),
        ],
      ),
    );
  }

    Widget madeInFarmCard(){
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Made In Farm'),
            
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: cardListContainer(),
          ),
        ],
      ),
    );
  }

  Widget containerCard(String imageVal, String titleVal, String priceVal){
    return Column(
      children: <Widget>[
       Container(
          height: 100.0,
          width: 100.0,
          decoration: new BoxDecoration(
            image: DecorationImage(
              image: new NetworkImage(imageVal),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          titleVal,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14.0),
        ),
        SizedBox(
          height:10,
        ),
        Text(
          priceVal,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14.0),
        ),
      ],
    );
  }

  Widget cardListContainer(){
     return Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            containerCard(
                'https://lh3.googleusercontent.com/48wwD4kfFSStoxwuwCIu6RdM2IeZmZKfb1ZeQkga0qEf1JKsiD-hK3Qf8qvxHL09lQ=s180-rw',
                'Amazon Kindle', '₹ 400'),
            SizedBox(
              width: 20.0,
            ),
            containerCard(
                'https://lh3.googleusercontent.com/7uRfJe2KkpKxZuMvY4OjhIq-TJrMeHgWYQt0H7LHZl4WNDAYjI6FFrLSsLhj2g8cqKr5=s180-rw',
                'Audible', '₹ 500'),
            SizedBox(
              width: 20.0,
            ),
            containerCard(
                'https://lh3.googleusercontent.com/d6TTnyRybU8B2naK8a0y1_u8ufjtK5V-mizS6o1tCx0U1aYPX9nJzcq9rSm5W2VVzBw=s180-rw',
                'Skype', '₹ 600'),
            SizedBox(
              width: 20.0,
            ),
            containerCard(
                'https://lh3.ggpht.com/-wROmWQVYTcjs3G6H0lYkBK2nPGYsY75Ik2IXTmOO2Oo0SMgbDtnF0eqz-BRR1hRQg=s180-rw',
                'Google Docs', '₹ 700'),
            SizedBox(
              width: 20.0,
            ),
            containerCard(
                'https://lh3.googleusercontent.com/S3kGpXqfWleVJuCSH-nFuoz3Ey7se8pnwSe2OP9pbm2e-DHRlNdlmM6njhsUyV4bmE8=s180-rw',
                'Polaris', '₹ 800'),
            SizedBox(
              width: 20.0,
            ),
            containerCard(
                'https://lh3.googleusercontent.com/uI7mYOHs-xu-3oclPekf0Keaubhc_h_Q5wq9YdupUR1PzOGge5zV_CWnOBNAs45pDM7I=s180-rw',
                'OfficeSuite', '₹ 900'),
          ],
      ));
  }
}