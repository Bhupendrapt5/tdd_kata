import 'package:tdd_kata_assesment/tdd_kata_assesment.dart';
import 'package:test/test.dart';

void main() {
  test('calculate empty string, return 0', () {
    expect(add(''), 0);
  });
  test('calculate single length string, return first element', () {
    expect(add('5'), 5);
  });
  test('calculate string with comma, return sum', () {
    expect(add('5,8'), 13);
  });

  test('calculate string with comma and (\n) delimiter, return sum', () {
    expect(add('5,8\n5'), 18);
  });
  test('calculate string with custom delimiter , return sum', () {
    expect(add('//;\n1;2;3\n5'), 11);
  });

  test('calculate string with negative number , return exception', () {
    expect(
      () => add('5,-8\n5'),
      throwsA(isA<Exception>().having((e) => e.toString(), 'message',
          contains('Negative numbers are not allowed'))),
    );
  });
}
