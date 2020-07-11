import 'package:flutter/material.dart';
class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Testing"),
        ),
        body: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          SizedBox(height: 10),
          //this is first
          Text(
            'Card1',
            style: TextStyle(fontSize: 18),
            
          ),
          SizedBox(height: 10),
          Container(
            child:Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(child: Text('Dummy Card Text')),
                  ),
            ),
          ),
          ),
         
           // this is secound
           SizedBox(height: 10),
           Text(
            'Card2',
            style: TextStyle(fontSize: 18),
          ),

          SizedBox(height: 10),
           Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(child: Text('Dummy Card Text')),
                  ),
            ),
          ),
          // This is threed
                     SizedBox(height: 10),
           Text(
            'Card3',
            style: TextStyle(fontSize: 18),
          ),

          SizedBox(height: 10),
           Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(child: Text('Dummy Card Text')),
                  ),
            ),
          ),
          //this is fourth
           SizedBox(height: 10),
           Text(
            'Card4',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
           Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(child: Text('Dummy Card Text')),
                  ),
            ),
          ),
          // Text(
          //   'Demo Headline 2',
          //   style: TextStyle(fontSize: 18),
          // ),
          // Expanded(
          //   child: ListView.builder(
          //     shrinkWrap: true,
          //     itemBuilder: (ctx,int){
          //       return Card(
          //         child: ListTile(
          //             title: Text('Motivation $int'),
          //             subtitle: Text('this is a description of the motivation')),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}