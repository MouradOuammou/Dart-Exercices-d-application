Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Données reçues';
}

void main() async {
  print('Loading...');
  final data = await fetchData();
  print(data);

  // Comparaison avec Java et JavaScript
  print('\nComparaison:');
  print('Java: Thread.sleep() + callbacks ou CompletableFuture');
  print('JavaScript: Promises avec .then() ou async/await');
}