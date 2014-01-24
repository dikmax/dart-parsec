part of parsec;

class CharList extends ListBase<int> {
  List innerList = new List();

  CharList() : innerList = <int>[];
  CharList.fromString(String string) : innerList = string.codeUnits;
  CharList.from(Iterable<int> list) : innerList = new List.from(list);

  int get length => innerList.length;

  void set length(int length) {
    innerList.length = length;
  }

  void operator[]=(int index, int value) {
    innerList[index] = value;
  }

  int operator [](int index) => innerList[index];

  // Though not strictly necessary, for performance reasons
  // you should implement add and addAll.

  void add(int value) => innerList.add(value);

  void addAll(Iterable<int> all) => innerList.addAll(all);

  String toString() => new String.fromCharCodes(innerList);
}