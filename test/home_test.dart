import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:test_process/test_process.dart';

void main() {
  final port = '8080';
  final host = 'http://0.0.0.0:$port';

  setUp(() async {
    await TestProcess.start(
      'dart',
      ['run', 'bin/server.dart'],
      environment: {'PORT': port},
    );
  });

  test('teste generico', () async {
    print('test');
    expect(1 + 1, 2);
  });
}
