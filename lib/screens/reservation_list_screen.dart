import 'package:flutter/material.dart';
import '../data/mock_data.dart';

class ReservationListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reservas')),
      body: ListView.builder(
        itemCount: mockReservations.length,
        itemBuilder: (context, index) {
          final res = mockReservations[index];
          final room = mockRooms.firstWhere((r) => r.id == res.roomId);
          return ListTile(
            title: Text(res.guestName),
            subtitle: Text('Habitación: ${room.name}\nFecha: ${res.date.toLocal()}'),
          );
        },
      ),
    );
  }
}
