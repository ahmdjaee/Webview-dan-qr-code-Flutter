import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrPage extends StatelessWidget {
  const QrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kode Qr"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tokopedia",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Card(
              child: QrImageView(
                padding: EdgeInsets.all(30),
                data:
                    'https://www.tokopedia.com/?gclid=Cj0KCQjwldKmBhCCARIsAP-0rfwbLYT39zKYX1SW6V7f-EN-JvwjvYRugV67cVoTliTOityKc07eiB8aApGXEALw_wcB',
                size: 200,
                version: QrVersions.auto,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
