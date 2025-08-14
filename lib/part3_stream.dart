Stream<int> countStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() {
  print('Listening to stream...');
  countStream(5).listen((number) {
    print('Received: $number');
  });
}