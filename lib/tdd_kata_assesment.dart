int add(String input) {
  if (input.isEmpty) {
    return 0;
  }
  final delimiterInfo = getDelimitersAndNumbers(input);
  final delimiter = delimiterInfo.delimiter;
  final numbers = delimiterInfo.numbers;

  final isMultiplication = delimiter == '*';
  final regex = RegExp('[$delimiter\n]');
  final splitNumbers = numbers.split(regex);

  return _calculateResult(splitNumbers, isMultiplication);
}

int _calculateResult(List<String> splitNumbers, bool isMultiplication) {
  int result = isMultiplication ? 1 : 0;

  for (final numStr in splitNumbers) {
    final numValue = _validateAndParse(numStr);
    result = isMultiplication ? result * numValue : result + numValue;
  }

  return result;
}

int _validateAndParse(String number) {
  final value = int.parse(number);
  if (value < 0) throw Exception('Negative numbers are not allowed');
  return value;
}

class DelimiterInfo {
  final String delimiter;
  final String numbers;
  DelimiterInfo(this.delimiter, this.numbers);
}

DelimiterInfo getDelimitersAndNumbers(String input) {
  if (input.startsWith("//")) {
    final newlineIndex = input.indexOf("\n");
    final delimiter = input.substring(2, newlineIndex);
    final numbers = input.substring(newlineIndex + 1);
    return DelimiterInfo(delimiter, numbers);
  }
  return DelimiterInfo(',', input);
}
