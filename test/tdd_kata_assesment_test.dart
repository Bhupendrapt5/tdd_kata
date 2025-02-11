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
}
