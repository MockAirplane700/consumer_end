class Problem {
  final String problemName;
  final String problemDescription;
  final List<String> photos;
  final bool status;

  Problem({
    required this.photos, required this.problemDescription, required this.problemName, required this.status
});
}