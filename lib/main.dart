import 'package:appwrite/appwrite.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:log_pose/log_pose.dart';
import 'package:senbonzakura/bootstrap.dart';
import 'package:senbonzakura/repositories/repositories.dart';

const host = '192.168.0.104';
const path = 'v1';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Loggy.initLoggy(
    logPrinter: const EternalLogPose(),
  );

  final client = Client()
    ..setEndpoint('${Uri.http(host, path)}')
    ..setProject('62352983edc3fbbd013f')
    ..setSelfSigned(status: true);

  final account = Account(client);
  final storage = Storage(client);

  bootstrap(
    productApi: LocalProductApi(),
    authApi: AppwriteAuthApi(account: account),
    storageApi: AppwriteStorageApi(storage),
  );
}
