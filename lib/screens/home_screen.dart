import 'package:flutter/material.dart';
import 'room_list_screen.dart';
import 'reservation_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hotel Manager')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Ver Habitaciones'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => RoomListScreen()));
              },
            ),
            ElevatedButton(
              child: Text('Ver Reservas'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ReservationListScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
