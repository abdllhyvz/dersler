DartPad üzerinden işlenen 4.ders kodları:
#
import 'package:flutter/material.dart';

void main() {

  runApp(
  
    MaterialApp(
    
      home: Scaffold(
      
        backgroundColor: Colors.blue[100],//Color
        
        appBar: AppBar(
        
          title: Text('Mutlu Yıllar'),//Text
          
          backgroundColor: Colors.blue[800],//Color
          
        ),//Appbar
        
        body: Center(
        
          child: Column(
          
            children: [
            
              Image.network('https://static.vecteezy.com/system/resources/previews/007/955/592/original/2023-happy-new-year-s-eve-background-suitable-for-luxury-party-invitations-layout-with-luxury-numbers-clock-golden-glitter-and-confetti-vector.jpg'),
              
              Row(children: [               
                
                Icon(Icons.access_alarm),
                
                Text('Mutlı Yıllar')
              ],),
              
              ElevatedButton(
              
               child: Text('Mesaj Gönder'),
               
                onPressed: (){},
                
              )
              
            ],
            
          ),
          
        )
        
      
      ), //Scaffold
    
    ), //MaterialApp
  
  );
  
}
#
