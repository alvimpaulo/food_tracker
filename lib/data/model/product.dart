import 'package:intl/intl.dart';

class Product {
  final String name;
  final int qty;
  final int dateIn;
  final int dateExpired;
  final String imageUrl;

  Product(
      {required this.name,
      required this.qty,
      required this.dateIn,
      required this.dateExpired,
      required this.imageUrl});

  DateTime getDateIn() {
    return DateTime.fromMillisecondsSinceEpoch(dateIn);
  }

  DateTime getDateExpired() {
    return DateTime.fromMillisecondsSinceEpoch(dateExpired);
  }

  String getFormattedDateIn() {
    return DateFormat("dd/MM/yyyy").format(getDateIn());
  }

  String getFormattedDateExpired() {
    return DateFormat("dd/MM/yyyy").format(getDateExpired());
  }
}
