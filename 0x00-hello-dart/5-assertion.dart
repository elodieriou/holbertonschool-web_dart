void main(List<String> args) {
  int score = int.parse(args[0]);
  String message = (score < 80) ? throw AssertionError("The score must be bigger or equal to 80") : 'You Passed';
  print(message);
}
