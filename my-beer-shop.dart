import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      // This is main structer of app
      home: Calculate ()//
               );
    }
}

class Calculate extends StatefulWidget {
  @override
  _CalculateState createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  
  var product = TextEditingController(); //box collecting product's name
  var quantity = TextEditingController(); //box collecting amount
  var price = TextEditingController(); //box collecting price
  
  String result = '<< result will appear here >>' ;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
                  title: Text('My Beer shop')
        ),
        drawer: Drawer(
          child: Column(
            children: [
              // Blue box
              Container(
                height:100,
                color:Colors.blue,
              ),
              // Text1
              Text('This is a Drawer'),
              ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('Your photo album'),
                onTap: () {
                  print('This is a photo');
                }
              )
            ]
          )
        ),
        body: Center(
                  child: Container(
                          //color:Colors.blue,
                          height:500,
                          width:300,
                          child: Align( 
                            alignment: Alignment.center,
                            child:Column(
                                  children: [
                                     // Picture
                                     Image(
                                       width:150,
                                       image: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/71-P90Sl3-L._AC_SL1500_.jpg'),
                                    ),
                                    // Space between pic and text
                                    SizedBox(height:10),
                                    TextField(
                                      controller: product, //controller tells reference position
                                      decoration: InputDecoration(
                                        labelText: 'Product',
                                        border: OutlineInputBorder()
                                      
                                      )
                                      
                                    ),
                                    SizedBox(height:10),
                                    TextField(
                                      controller: quantity, //controller tells reference position
                                      decoration: InputDecoration(
                                        labelText: 'Quantity',
                                        border: OutlineInputBorder()
                                      
                                      )
                                    ),
                                    SizedBox(height:10),
                                    TextField(
                                      controller: price, //controller tells reference position
                                      decoration: InputDecoration(
                                        labelText: 'Price',
                                        border: OutlineInputBorder()
                                      )
                                    ),
                                    SizedBox(height:20),
                                    RaisedButton(
                                      child: Text('Calculate'),
                                      onPressed:() {
                                        print('Processing');
                                        print('----------');
                                        print(product.text);
                                        print(quantity.text);
                                        print(price.text);
                                        
                                        var v1 = product.text;
                                        var v2 = int.parse(quantity.text); //function for variable conversion
                                        var v3 = int.parse(price.text); 
                                        var calculate = v2*v3;
                                        
                                        setState(() {
                                          // function for refreshing app 
                                          result = 'Product : $v1 Quantity : $v2 Price : $v3 Total : $calculate bath ';
                                        });
                                      }
                                    ),
                                    SizedBox(height:20),
                                    Text(result),
                                    SizedBox(height:20),
                                    Text('Calculated by iningchy the ice puker'),
                                    // Text
                                    //Text('Hello',style: TextStyle(
                                                          //fontSize: 25,color:Colors.black)),
                                    //Text('iningchy',style: TextStyle(
                                                          //fontSize: 30,color:Colors.pink)),
                                    //Text('How are you today?',style: TextStyle(
                                                          //fontSize: 25,color:Colors.grey)),
                                    //Text(':) ',style: TextStyle(
                                                          //fontSize: 25,color:Colors.black)),
                                   ]
                                ) )// Column
                          )
                     )
                  );
  }
}
