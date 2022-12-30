import 'on_binary_search.dart';
import 'read_file_words.dart';

void main(List<String> argv) {
  if (argv.length != 1) {
    print('dart binarysearch <word>');
    return;
  }

  String word = argv[0];
  List<String> wordList = readFileWords();

  Stopwatch timerDartSearch = Stopwatch();

  timerDartSearch.start();
  var wordFind = wordList.firstWhere((item) => item == word);
  timerDartSearch.stop();

  print('Palavra encontrada: $wordFind');
  print(
      'Tempo da busca padrão da linguagem: ${timerDartSearch.elapsedMicroseconds}');

  Stopwatch timerBinarySearch = Stopwatch();

  timerBinarySearch.start();
  final indexWordFind = wordList.binarySearch(word);
  timerBinarySearch.stop();

  print('\n');

  print('Index da palavra encontrada: $indexWordFind');
  print('Tempo da busca binária: ${timerBinarySearch.elapsedMicroseconds}');
}
