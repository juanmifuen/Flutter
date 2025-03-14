class Reservation {
  final int id;
  final int roomId;
  final String guestName;
  final DateTime date;

  Reservation({
    required this.id,
    required this.roomId,
    required this.guestName,
    required this.date,
  });
}
