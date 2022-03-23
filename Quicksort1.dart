/* Программный код быстрой сортировки на Dart */
import 'dart:math';

void main() {
  List arr = [1, 2, 5, 6, 3, 8];
  print(getResult(arr));
}

getResult(List arr) {
  if (arr.length < 2) return arr;

  var pivot = arr.removeLast();
  var left = [];
  var right = [];

  for (var i = 0; i < arr.length; i++) {
    if (pivot >= arr[i])
      left.add(arr[i]);
    else
      right.add(arr[i]);
  }
  return getResult(left) + [pivot] + getResult(right);
}
