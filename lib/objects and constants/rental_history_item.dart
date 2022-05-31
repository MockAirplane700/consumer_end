class RentalHistoryItem {
  final String date;
  final String unitNumber;
  final String unitBuilding;
  final String amountPayed;

  RentalHistoryItem({
    required this.unitNumber, required this.amountPayed,
    required this.date, required this.unitBuilding
});
}