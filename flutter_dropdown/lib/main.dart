import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DropDownButton',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropDown"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DropdownButton(
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
            ElevatedButton(
              child: const Text("CheckBox"),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Checkboxx()));
              },
            ),
            ElevatedButton(
              child: const Text("TextBox"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TextBoxe()),
                );
              },
            ),
            ElevatedButton(
              child: const Text("Searchble"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Search()),
                );
              },
            ),
            ElevatedButton(
              child: const Text("DatePicker"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DateControll()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

///Check Box
class Checkboxx extends StatelessWidget {
  const Checkboxx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Checkbox Sample')),
        body: const Center(
          child: CheckboxExample(),
        ),
      ),
    );
  }
}

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool senthil = false;
  bool kumar = false;
  bool jack = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        children: <Widget>[
          Text("Senthil"),
          Checkbox(
            value: senthil,
            onChanged: (bool? value) {
              setState(() {
                senthil = value!;
              });
            },
          ),
          Text("kumar"),
          Checkbox(
            value: senthil,
            onChanged: (bool? value) {
              setState(() {
                kumar = value!;
              });
            },
          ),
          Text("Senthil"),
          Checkbox(
            value: senthil,
            onChanged: (bool? value) {
              setState(() {
                jack = value!;
              });
            },
          )
        ],
        const SizedBox(height: 30),
      ),
    ));
  }
}

//TextBox
class TextBoxe extends StatelessWidget {
  const TextBoxe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFileds"),
        backgroundColor: Colors.deepOrange,
      ),
      body: const Textform(),
    );
  }
}

class Textform extends StatelessWidget {
  const Textform({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
        ),
      ],
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Searchable Dropdown'),
      ),
      body: Row(
        children: <Widget>[
          DropdownSearch<String>(
            mode: Mode.DIALOG,
            showSearchBox: true,
            showSelectedItems: true,
            items: const [
              "India",
              "Ireland",
              "England",
              "South Africa",
              "West Indies",
              "Afghanistan",
              "Newzeland",
              "Usa",
              "Canada",
            ],
            dropdownSearchDecoration: const InputDecoration(
              labelText: "Country",
            ),
            onChanged: (String? selectedItem) {
              print(selectedItem);
            },
            selectedItem: "India",
          ),
        ],
      ),
    );
  }
}

//DateController
class DateControll extends StatefulWidget {
  const DateControll({super.key});

  @override
  State<DateControll> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DateControll> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selecetedTime= TimeOfDay.now();

  String get getDate {
    return DateFormat("dd-MMM-yyyy").format(_selectedDate);
  }

  String get getTime {
    final now = DateTime.now();
    final dateTime = DateTime(
        now.year, now.month, now.day, _timeOfDay.hour, _timeOfDay.minute);
    return DateFormat('hh.mm a').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date & Time Picker"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => openDatePicker(),
                    child: Text("Selecte date"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.cyan,
                    child: Text("Selected date -- $getDate"),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => OpenTimePicker(),
                    child: Text("Selecte Time"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.cyanAccent,
                    child: Text("Selected Time -- $getTime"),
                  ),
                ],
              ),
            ],
          )),
    );
  }

  Future<void> openDatePicker() async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2005, 4, 1),
      lastDate: DateTime.now(),
    );
    if (selectedDate != null) {
      setState(() {
        _selectedDate = selectedDate;
      });
    }
  }

  Future<void> OpenTimePicker() async {
    final selecetedTime =
        await showTimePicker(context: context, initialTime: _timeOfDay);
    if (selecetedTime != null) {
      setState(() {
        _timeOfDay = selecetedTime;
      });
    }
  }
}
