import 'selection_sort.dart';

void main() {
  final List<int> list = [55, 3, 44, 4, 17, 9, 0];

  print("Before Sorting => $list");

  selectionSort(list);

  print("After Sorting => $list");
}
