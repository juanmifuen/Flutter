import 'package:flutter/material.dart';
import '../data/mock_data.dart';

class RoomListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Habitaciones')),
      body: ListView.builder(
        itemCount: mockRooms.length,
        itemBuilder: (context, index) {
          final room = mockRooms[index];
          return ListTile(
            title: Text(room.name),
            subtitle: Text(room.isAvailable ? "Disponible" : "Ocupada"),
            trailing: Icon(
              room.isAvailable ? Icons.check_circle : Icons.cancel,
              color: room.isAvailable ? Colors.green : Colors.red,
            ),
          );
        },
      ),
    );
  }
}
