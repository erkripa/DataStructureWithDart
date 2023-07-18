import '../bubbleSort/swap.dart';

void insertionSort<E extends Comparable<dynamic>>(List<E> list) {
  for (int current = 1; current < list.length; current++) {
    for (int shifting = current; shifting > 0; shifting--) {
      if (list[shifting].compareTo(list[shifting - 1]) < 0) {
        list.swap(shifting, shifting - 1);
      } else {
        print("break");
        break;
      }
    }
  }
}
