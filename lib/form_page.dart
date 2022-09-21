import 'package:booking_page/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget
{
  const FormPage({super.key});

  @override
  State<StatefulWidget> createState() => _FormPage();

}

class _FormPage extends State<FormPage>
{
  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;

    const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
    String dropdownValue = list.first;

    return Scaffold
      (
      backgroundColor: Theme.of(context).primaryColor,
    appBar: AppBar
      (
      centerTitle: true,
      title: Row
        (
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        const [
          Text
            (
            'Book your docotor',
            style: TextStyle(color: Colors.black),
          )
        ],

      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: const Icon
        (
        Icons.menu,
        color: Colors.white,
      ),
    ),

      body: Padding(
        padding:  EdgeInsets.all(15),
        child: Column(
            children:  <Widget>[
        Padding(
        padding: EdgeInsets.all(15),
        child: TextField(
          style: TextStyle
            (
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,

          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(),
            hintText: 'Enter Your Name',
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(15),
        child: TextField(
          style: TextStyle
            (
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(),
            hintText: 'Reason to see the doctor',
          ),
        ),
      ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration
              (
              color: Colors.white,
            ),
            child:

            DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.black),
            underline: Container(
              height: 2,
              color: Colors.white,
            ),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          )
          ),

              Container
                (
                width: size.width,
                margin: const EdgeInsets.only(top:20, left: 20),
                child: GestureDetector
                  (
                  onTap: ()
                  {
                    print("Booked");
                  },
                  child: Container
                    (
                    width: 500.0,
                    padding: const EdgeInsets.all(15),
                    color: Colors.white,
                    child: const Text
                      (
                      "Submit",

                      style:TextStyle
                        (
                        color: Colors.black,
                        fontSize: 28,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,

                      ) ,

                    ),

                  ),
                ),
              ),
              Container
                (
                width: size.width,
                margin: const EdgeInsets.only(top:20, left: 20),
                child: Stack
                  (
                  fit: StackFit.loose,
                  children:
                  [
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => const HomePage(),
                        ),
                        );
                      },

                      child: Container
                        (
                        child: const Align
                          (
                          alignment: Alignment.center,
                          child: Text
                            (
                            "Return To Home Page",
                            style: TextStyle
                              (
                              color: Colors.white,
                              fontSize: 28,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
              ),

    ],
  ),
      ),
    );
  }

}





