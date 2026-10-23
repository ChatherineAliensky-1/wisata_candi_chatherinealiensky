import 'package:flutter_test/flutter_test.dart';

import 'package:wisatacandi/main.dart';

void main() {
  testWidgets('Detail screen menampilkan data candi', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Lokasi'), findsOneWidget);
    expect(find.text('Deskripsi'), findsOneWidget);
    expect(find.text('Gallery'), findsOneWidget);
  });
}
