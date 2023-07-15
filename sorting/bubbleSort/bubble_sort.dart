import 'swap.dart';

void bubbleSort<E extends Comparable<dynamic>>(List<E> list) {
  for (int end = list.length - 1; end > 0; end--) {
    //1.
    bool isSwapped = false;

    for (int current = 0; current < end; current++) {
      // list.swap(current, current + 1); // for just a reverse a list keep this line uncomment
      if (list[current].compareTo(list[current + 1]) > 0) {
        list.swap(current, current + 1);
        isSwapped = true;
      }
    }
    if (!isSwapped) return;
  }
}
