//LinkedList creations
import 'node.dart';

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  LinkedList({this.head, this.tail});

  //isEmpty
  bool get isEmpty => head == null;

  //Adding Element intoLinked List

  //1.Push from front
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  //2.append from last
  void append(E value) {
    if (isEmpty) {
      push(value);
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  //3.find node at index
  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex++;
    }
    return currentNode;
  }

  //4.insert after a node
  Node<E> insertAfter(Node<E> node, E value) {
    if (node == tail) {
      append(value);
      return tail!;
    }

    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  //5.insert after a node
  void insertAfterIndex(int index, E value) {
    final node = nodeAt(index);

    if (node == null) return print("Unbounded Range Error index : $index");

    if (node == tail) {
      append(value);
    }

    node.next = Node(value: value, next: node.next);
  }

  //Remove List
  E? pop() {
    final value = head?.value;
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }
    return value;
  }

  E? removeLast() {
    if (head?.next == null) return pop();

    // 2
    var current = head;
    while (current!.next != tail) {
      current = current.next;
    }

    // 3
    final value = tail?.value;
    tail = current;
    tail?.next = null;
    return value;
  }

  //print
  @override
  String toString() {
    if (head == null) return "Empty List";
    return head.toString();
  }
}
