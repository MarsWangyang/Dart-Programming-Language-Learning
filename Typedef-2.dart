//Traditional Method

//1.排序class
class SortedCollection {
  Function? compare;

  SortedCollection(int f(Object a, Object b)) {
    //如果用Typedef的方式去撰寫，就不用在parameter處寫的臭長
    compare = f;
  }
}

// 排序函數
int Sort(Object a, Object b) => 0;

void main() {
  SortedCollection coll = SortedCollection(Sort);
  assert(coll.compare is Function);
}
