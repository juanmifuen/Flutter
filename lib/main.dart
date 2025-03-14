import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(HotelBookingApp());//HotelBookingApp
}

class HotelBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Booking App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(), 
    );
  }
}
