int add(String numbers) {
  if (numbers.isEmpty) {
    return 0;
  }

  String delimiters = r',|\n';
  final regex = RegExp(delimiters);

  numbers = numbers.replaceAll(r'\n', '\n');
  final splitNumbers = numbers.split(regex);

  if (splitNumbers.length == 1) {
    return int.parse(splitNumbers[0]);
  }
  int sum = 0;

  for (final number in splitNumbers) {
    sum += int.parse(number);
  }
  return sum;
}
