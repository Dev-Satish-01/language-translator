import 'package:flutter/material.dart';

class page extends StatefulWidget {
  @override
  State<page> createState() => _State();
}

class _State extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text ('TRANSLATION APP'),

        ),
      ),

      body:

      Center(child: Container(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  TextField(

                    decoration: InputDecoration(
                      hintText: 'ENTER THE ENGLISH WORD',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.deepPurple
                        ),
                      ),
                    prefixIcon: Icon(Icons.abc_rounded, color: Colors.black,)
                    ),
                    onChanged: (text) async{


    }
                    },
                  ),
                  

                ],
              ),

          ))) ;


  }


