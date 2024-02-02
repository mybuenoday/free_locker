import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:free_locker_finder/model/parcel_locker_info.dart';

import 'locker_location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final lockers = <ParcelLockerInfo>[];

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  Future<void> loadJsonData() async {
    var jsonString = await rootBundle.loadString('assets/free_locker.json');
    var jsonData = json.decode(jsonString);
    var records = jsonData['records'] as List; // Extract the 'records' list
    setState(() {
      lockers.clear();
      lockers.addAll(records.map((e) => ParcelLockerInfo.fromJson(e)));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('무료 보관함 락커 찾기')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LockerLocation(lockers: lockers)),
            );
          },
          child: Text('보관함 위치'),
        ),
      ),
    );
  }
}
