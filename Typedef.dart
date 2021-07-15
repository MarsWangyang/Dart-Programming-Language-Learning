// 1. 定義funtion類型
typedef int Compare(Object a, Object b);

// 2. 定義Sorted class
class SortedCollection {
  Compare compare;
  SortedCollection(this.compare); //傳入的parameter是一個function類型
}

// 3. 定義排序函數
int Sort(Object a, Object b) => 0;

void main() {
  SortedCollection coll = SortedCollection(Sort);

  assert(coll.compare is Function);
  assert(coll.compare is Compare);
}
