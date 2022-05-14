import 'dart:math';

const _digits = '1234567890';
const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz$_digits';
Random _rnd = Random();

// random string of length [len]
String getRandomString(int length) => String.fromCharCodes(Iterable.generate(length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

// random number of length [len]
String getRandomNumber(int length) => String.fromCharCodes(Iterable.generate(length, (_) => _digits.codeUnitAt(_rnd.nextInt(_digits.length))));
