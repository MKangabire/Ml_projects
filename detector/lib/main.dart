import 'package:flutter/material.dart';

void main() => runApp(MLModelApp());

class MLModelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PredictionPage(),
    );
  }
}

class PredictionPage extends StatefulWidget {
  @override
  _PredictionPageState createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage> {
  final TextEditingController _inputController = TextEditingController();
  String _prediction = "Your prediction will appear here";

  void _triggerPrediction() {
    setState(() {
      _prediction =
          "Static prediction based on input: ${_inputController.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone prediction tool'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                // First label and TextField
                Text(
                  'Enter Phone Model',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: _inputController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'e.g., iPhone 16',
                  ),
                ),
                SizedBox(height: 20),
                // Second label and TextField
                Text(
                  'Enter RAM Size',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: _inputController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'e.g., 8GB',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _triggerPrediction,
              child: Text('Get Prediction'),
            ),
            SizedBox(height: 30),
            Text(
              'Prediction:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              _prediction,
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
