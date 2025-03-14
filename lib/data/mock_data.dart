import '../models/room.dart';
import '../models/reservation.dart';

List<Room> mockRooms = [
  Room(id: 1, name: "Habitación 101", isAvailable: true),
  Room(id: 2, name: "Habitación 102", isAvailable: false),
  Room(id: 3, name: "Habitación 103", isAvailable: true),
];

List<Reservation> mockReservations = [
  Reservation(id: 1, roomId: 2, guestName: "Juan Pérez", date: DateTime.now()),
];
