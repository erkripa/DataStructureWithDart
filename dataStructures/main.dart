import 'linkedList/linked_list.dart';

void main() {
//   final node1 = Node(value: 1);
//   final node2 = Node(value: 2);
//   final node3 = Node(value: 3);

//   node1.next = node2;
//   node2.next = node3;
//   print(node1);

  //1.push operation from front
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print(list);

  //check node is empty or not
  // print(list.isEmpty);

  // //2.append operation form end
  // list.append(4);
  // list.append(5);

  // print('Before: $list');

  // //3.find Node at given index

  // final resultNode = list.nodeAt(2);
  // list.insertAfter(resultNode!, 34);

  // list.insertAfterIndex(3, 309);
  // print('After: $resultNode');
  // print('final list: $list');

  // list.pop();
  list.removeLast();
  print(list);
}
