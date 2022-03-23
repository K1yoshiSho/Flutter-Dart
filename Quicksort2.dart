/* Программный код быстрой сортировки на Dart */
import 'dart:math';

void main() {
  List arr = [1, 2, 5, 6, 3, 8];
  int high = arr.length - 1;
  int low = 0;
  List<dynamic> result = quickSort(arr, low, high);
  print(result);
}

List<dynamic> quickSort(List list, int low, int high) {
  if (low < high) {
    int pi = partition(list, low, high);
    quickSort(list, low, pi - 1);
    quickSort(list, pi + 1, high);
  }
  return list;
}

int partition(List<dynamic> list, low, high) {
  if (list.isEmpty) {
    return 0;
  }
  int pivot = list[high];
  int i = low - 1;
  for (int j = low; j < high; j++) {
    if (list[j] < pivot) {
      i++;
      swap(list, i, j);
    }
  }
  swap(list, i + 1, high);
  return i + 1;
}

void swap(List list, int i, high) {
}
