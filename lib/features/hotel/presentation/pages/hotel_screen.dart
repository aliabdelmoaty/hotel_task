import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hotel'),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.tune)),
        Spacer(),
        IconButton(onPressed: (){}, icon: Icon(Icons.sort))
      
      ],
      ),
      body: Column(),
    );
  }
}
