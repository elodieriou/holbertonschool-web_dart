void main(List<String> args) {
    int score = int.parse(args[0]);
    if (score > 0) print('$score is positive');
    else if (score == 0) print('$score is zero');
    else print('$score is negative');
}
