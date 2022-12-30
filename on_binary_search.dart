extension BinarySearch on List<String> {
  int binarySearch(String findword) {
    int low = 0;
    int up = this.length - 1;

    while (low <= up) {
      int mean = (low + up) >> 1;
      if (this[mean] == findword) {
        return mean;
      } else if (this[mean].compareTo(findword) < 0) {
        low = mean + 1;
      } else {
        up = mean - 1;
      }
    }
    return -1;
  }
}
