Future<String> fetchError() {
  return Future.delayed(Duration(seconds: 2), () {
    throw Exception('Failed to fetch data!');
  });
}

void main() async {
  try {
    print('Fetching data...');
    String message = await fetchError();
    print(message);
  } catch (e) {
    print('Caught an error: $e');
  }
}