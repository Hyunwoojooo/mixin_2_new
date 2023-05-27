import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SelectTerm extends StatefulWidget {
  const SelectTerm({Key? key}) : super(key: key);

  @override
  State<SelectTerm> createState() => _SelectTermState();
}

class _SelectTermState extends State<SelectTerm> {
  @override
  Widget build(BuildContext context) {
    return SfDateRangePicker(
        view: DateRangePickerView.month,
        monthViewSettings: DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
        selectionMode: DateRangePickerSelectionMode.range);
  }
}
