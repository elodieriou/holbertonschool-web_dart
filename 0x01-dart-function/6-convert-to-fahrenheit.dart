List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF = temperaturesInC.map((e) => (e * 9 / 5) + 32).toList();
  return temperaturesInF.map((e) => double.parse(e.toStringAsFixed(2))).toList();
}
