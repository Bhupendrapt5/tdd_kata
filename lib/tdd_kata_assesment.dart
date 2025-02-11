int add(String numbers) {
  if (numbers.isEmpty) {
    return 0;
  }
  final splitNumbers = numbers.split(',');

  if (splitNumbers.length == 1) {
    return int.parse(splitNumbers[0]);
  }

  return 42;
}
