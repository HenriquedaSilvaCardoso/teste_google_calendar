import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

void main() {
  runApp(const MaterialApp(
    home: Main(),
    debugShowCheckedModeBanner: false,
  ));
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  late String textStart = '';
  late String textEnd = '';

  void changeStartDate(startDate) {
    setState(() {
      textStart = startDate.toString();
    });
  }

  void changeEndDate(endDate) {
    setState(() {
      textEnd = endDate.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        children: [
          Row(
            children: [
              MaterialButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(
                    context,
                    showTitleActions: true,
                    onConfirm: (date) {
                      changeStartDate(date);
                    },
                    currentTime: DateTime.now(),
                    locale: LocaleType.pt,
                  );
                },
                child: Column(
                  children: const [
                    Text(
                      'Nome do botão!',
                    ),
                  ],
                ),
              ),
              Text(textStart)
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(
                    context,
                    showTitleActions: true,
                    onConfirm: (date) {
                      changeEndDate(date);
                    },
                    currentTime: DateTime.now(),
                    locale: LocaleType.pt,
                  );
                },
                child: const Text(
                  'Show Date Time Picker',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Text(textEnd)
            ],
          ),
        ],
      ),
    );
  }
}
