// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';

class ReportRulerPicker extends StatefulWidget {
  ReportRulerPicker({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _ReportRulerPickerState createState() => _ReportRulerPickerState();
}

class _ReportRulerPickerState extends State<ReportRulerPicker> {
  RulerPickerController? _rulerPickerController;

  num currentValue = 40;

  List<RulerRange> ranges = const [
    RulerRange(begin: 0, end: 10, scale: 0.1),
    RulerRange(begin: 10, end: 100, scale: 1),
    RulerRange(begin: 100, end: 300, scale: 10),
  ];

  @override
  void initState() {
    super.initState();
    _rulerPickerController = RulerPickerController(value: currentValue);
  }

  Widget _buildPositionBtn(num value) {
    return InkWell(
      onTap: () {
        _rulerPickerController?.value = value;
      },
      child: Container(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          color: Colors.blue,
          child: Text(
            value.toString(),
            style: const TextStyle(color: Colors.white),
          )),
    );
  }

  Widget _buildChangeRangerBtn(String tip, List<RulerRange> rangeList) {
    return InkWell(
      onTap: () {
        setState(() {
          ranges = rangeList;
        });
      },
      child: Container(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          color: Colors.blue,
          child: Text(
            tip,
            style: TextStyle(color: Colors.white),
          )),
    );
  }

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  currentValue.toStringAsFixed(1),
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                const Text(
                  "kg",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            const SizedBox(height: 20),
            RulerPicker(
              controller: _rulerPickerController!,
              onBuildRulerScaleText: (index, value) {
                return value.toInt().toString();
              },
              ranges: ranges,
              scaleLineStyleList: const [
                ScaleLineStyle(
                    color: Colors.grey, width: 1.5, height: 30, scale: 0),
                ScaleLineStyle(
                    color: Colors.grey, width: 1, height: 25, scale: 5),
                ScaleLineStyle(
                    color: Colors.grey, width: 1, height: 15, scale: -1)
              ],
              onValueChanged: (value) {
                setState(() {
                  currentValue = value;
                });
              },
              width: MediaQuery.of(context).size.width,
              height: 150,
              rulerMarginTop: 10,
            ),
          ],
        ),
      ),
    );
  }
}
