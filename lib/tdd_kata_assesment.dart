int add(String numbers) {
  if (numbers.isEmpty) {
    return 0;
  }
  String delimiters = ',';
  numbers = numbers.replaceAll(r'\n', '\n');

  if (numbers.startsWith("//")) {
    int newlineIndex = numbers.indexOf("\n");
    String partBeforeNewline = numbers.substring(0, newlineIndex);

    numbers = numbers.substring(newlineIndex + 1);
    delimiters = partBeforeNewline.replaceAll('//', '');
  }

  final regex = RegExp(delimiters + r'|\n');

  final splitNumbers = numbers.split(regex);

  int sum = 0;
  for (final number in splitNumbers) {
    if (int.parse(number).isNegative) {
      throw Exception('Negative numbers are not allowed');
    }
    sum += int.parse(number);
  }
  return sum;
}
