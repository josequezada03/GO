import 'dart:html';
import 'package:flutter/material.dart';

import '../../../utils/utils_event.dart';

class EventEditingPage extends StatefulWidget {
  const EventEditingPage({Key? key, this.event}) : super(key: key);
  final Event? event;
  @override
  State<EventEditingPage> createState() => _EventEditingPageState();
}

class _EventEditingPageState extends State<EventEditingPage> {
  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  late DateTime fromDate;
  late DateTime toDate;
  @override
  void initState() {
    super.initState();
    if (widget.event == null) {
      fromDate = DateTime.now();
      toDate = DateTime.now().add(Duration(hours: 2));
    }
  }

  @override
  void dispose() {
    titleController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade700,
        leading: CloseButton(),
        actions: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.done),
            label: Text('Guardar'),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                style: TextStyle(fontSize: 24),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Agregar Titulo',
                ),
                onFieldSubmitted: (_) {},
                validator: (titulo) => titulo != null && titulo.isEmpty
                    ? 'Titulo no puede estar vacio'
                    : null,
                controller: titleController,
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                children: [
                  buildHeader(
                    header: 'De',
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: buildDropdownField(
                            text: Utils.toDate(fromDate),
                            onCLicked: () => pickFromDateTime(pickDate: true),
                          ),
                        ),
                        Expanded(
                            child: buildDropdownField(
                          text: Utils.toTime(fromDate),
                          onCLicked: () => pickFromDateTime(pickDate: false),
                        ))
                      ],
                    ),
                  ),
                  buildHeader(
                    header: 'A',
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: buildDropdownField(
                            text: Utils.toDate(toDate),
                            onCLicked: () => pickToDateTime(pickDate: true),
                          ),
                        ),
                        Expanded(
                          child: buildDropdownField(
                            text: Utils.toTime(toDate),
                            onCLicked: () => pickToDateTime(pickDate: false),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDropdownField({
    required String text,
    required onCLicked,
  }) =>
      ListTile(
        title: Text(text),
        trailing: Icon(Icons.arrow_drop_down),
        onTap: onCLicked,
      );
  Widget buildHeader({
    required String header,
    required Widget child,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          child,
        ],
      );

  Future pickFromDateTime({required bool pickDate}) async {
    final date = await pickDateTime(fromDate, pickDate: pickDate);
    if (date == null) return;

    if (date.isAfter(toDate)) {
      toDate = DateTime(date.year, date.month, date.day);
    }

    setState(() => fromDate = date);
  }

  Future pickToDateTime({required bool pickDate}) async {
    final date = await pickDateTime(
      toDate,
      pickDate: pickDate,
      firstDate: pickDate ? fromDate : null,
    );
    if (date == null) return;

    if (date.isAfter(toDate)) {
      toDate = DateTime(date.year, date.month, date.day);
    }

    setState(() => toDate = date);
  }

  Future<DateTime?> pickDateTime(
    DateTime initialDate, {
    required bool pickDate,
    DateTime? firstDate,
  }) async {
    if (pickDate) {
      final date = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: firstDate ?? DateTime(2015, 8),
        lastDate: DateTime(2101),
      );

      if (date == null) return null;

      final time =
          Duration(hours: initialDate.hour, minutes: initialDate.minute);

      return date.add(time);
    } else {
      final timeOfDay = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(initialDate),
      );

      if (timeOfDay == null) return null;

      final date =
          DateTime(initialDate.year, initialDate.month, initialDate.day);
      final time = Duration(hours: timeOfDay.hour, minutes: timeOfDay.minute);
      return date.add(time);
    }
  }
}
