int add(String numbers) {
  if (numbers.isEmpty) {
    return 0;
  }
  final splitNumbers = numbers.split(',');

  if (splitNumbers.length == 1) {
    return int.parse(splitNumbers[0]);
  }
  int sum = 0;

  for (final number in splitNumbers) {
    sum += int.parse(number);
  }
  return sum;
}
