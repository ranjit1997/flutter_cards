import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  Container MyList(String imageVal, String heading, String subHeading){
    return  Container(
              width: 160.0,
              child:Card(
                child:Wrap(
                  children: <Widget>[
                    Image.network(imageVal),
                    ListTile(
                      title: Text(heading),
                      subtitle: Text(subHeading),
                ),
            ]
        )
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Item", 
        style: TextStyle(color: Colors.white,))
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 300,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            MyList("https://images.unsplash.com/photo-1503875154399-95d2b151e3b0?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", "Heading1", "SubHeading1"),
            MyList("https://images.unsplash.com/photo-1503875154399-95d2b151e3b0?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", "Heading1", "SubHeading1"),
            MyList("https://images.unsplash.com/photo-1503875154399-95d2b151e3b0?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", "Heading1", "SubHeading1"),
            MyList("https://images.unsplash.com/photo-1503875154399-95d2b151e3b0?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", "Heading1", "SubHeading1"),
            MyList("https://images.unsplash.com/photo-1503875154399-95d2b151e3b0?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", "Heading1", "SubHeading1"),
         
            MyList("https://images.unsplash.com/photo-1503875154399-95d2b151e3b0?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", "Heading1", "SubHeading1"),
          ]
        ),
      ),
    );
  }
}