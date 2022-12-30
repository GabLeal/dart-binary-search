import 'dart:io';

List<String> readFileWords() {
  var fname = 'words.txt';
  File file = File(fname);
  return file
      .readAsStringSync()
      .split('\n')
      .where((element) => element.isNotEmpty)
      .toList();
}
