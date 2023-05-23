import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  bool senthil = false;
  bool kumar = false;
  bool jack = false;
  DateTime selectedDate = DateTime.now();
  TimeOfDay selecetedTime= TimeOfDay.now();
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Flutter Operation"),
      ),
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(
              labelText: "Enter your Name",
              hintText: "Enter your name",
            ),
          ),
          const SizedBox(height: 100),
          Row(
            children: <Widget>[
              DropdownButton<String>(
                items: const [
                  DropdownMenuItem<String>(
                    value: 'India',
                    child: Text('India'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'England',
                    child: Text('England'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'South Africa',
                    child: Text('South Africa'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'New Zealand',
                    child: Text('New Zealand'),
                  ),
                ],
                value: 'India',
                onChanged: (value) {},
              ),
            ],
          ),
          SizedBox(height: 100),
          Row(
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
              Text("Kumar"),
              Checkbox(
                value: kumar,
                onChanged: (bool? value) {
                  setState(() {
                    kumar = value!;
                  });
                },
              ),
              Text("Jack"),
              Checkbox(
                value: jack,
                onChanged: (bool? value) {
                  setState(() {
                    jack = value!;
                  });
                },
              )
            ],
          ),
          SizedBox(height: 100),
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
          Row(

              children: [

                ElevatedButton(

                  onPressed: () {

                     
                    showDatePicker(

                      context: context,

                      initialDate: selectedDate,

                      firstDate: DateTime(2005),

                      lastDate: DateTime.now(),

                    ).then((date) {

                      if (date != null) {

                        setState(() {

                          selectedDate = date;

                        });

                      }

                    });

                  },

                  child: const Text('SelectDate'),

                ),

              ],

            ),

            const SizedBox(height: 16),

            Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Container(

                  padding: const EdgeInsets.all(8),

                  decoration: const BoxDecoration(

                    color: Colors.deepPurpleAccent

                  ),

                  child: Text(

                    DateFormat('yyyy-MM-dd').format(selectedDate),

                    style: const TextStyle(
 

                      color: Colors.white,

                    ),
                  ),
                ),
                const SizedBox(height: 60,width: 60,),

                ElevatedButton(

                  onPressed: () {

                    showTimePicker(

                      context: context,

                      initialTime: selecetedTime,

                    ).then((time) {

                      if (time != null) {

                        setState(() {

                          selecetedTime = time;

                        });

                      }

                    });

                  },

                  child: const Text('SelectTime'),

                ),

                const SizedBox(height: 16,width: 60),

                Container(

                  padding: const EdgeInsets.all(8),

                  decoration: const BoxDecoration(

                    color:Colors.deepPurpleAccent

                  ),

                  child: Text(

                    selecetedTime.format(context),

                    style: const TextStyle(
                      color: Colors.black87

                    ),

                  ),

                ),

              ],

            ),
           
        ],
        
      ),
      ),
    );
  }

  
}
