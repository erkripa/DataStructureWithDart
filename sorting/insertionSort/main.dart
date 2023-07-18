import 'insertion_sort.dart';

void main() {
  final List<int> list = [4, 5, 3, 6, 7, 1, 2, 8, 9, 0];
  print("Befor Sorting => ${list}");
  insertionSort(list);
  print("After Sorting => ${list}");
}
