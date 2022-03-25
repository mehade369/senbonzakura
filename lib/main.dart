import 'package:appwrite/appwrite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:senbonzakura/bootstrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  bootstrap();
}

final clientProvider = Provider<Client>((ref) {
  const host = '192.168.0.103';
  const path = 'v1';

  return Client()
    ..setEndpoint('${Uri.http(host, path)}')
    ..setProject('62352983edc3fbbd013f')
    ..setSelfSigned(status: true);
});

final accountProvider = Provider<Account>((ref) {
  final client = ref.watch(clientProvider);

  return Account(client);
});

final databaseProvider = Provider<Database>((ref) {
  final client = ref.watch(clientProvider);

  return Database(client);
});
