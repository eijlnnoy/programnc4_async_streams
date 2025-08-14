Future<String> fetchMessage() {
  return Future.delayed(Duration (seconds: 2), () => 'Hello from a Future!');
}

void main() async {
  print('Fetching message...');
  String message = await fetchMessage();
  print(message);
}