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
                      hintText: 'ENTER TEXT',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.deepPurple
                        ),
                      ),
                    prefixIcon: Icon(Icons.abc_rounded, color: Colors.black,)
                    ),
                    onChanged: (text) async{
                      const apiKey = '589737d0c2mshd5724a7cf3ed992p12857bjsn20e22a13855b';
                      const to = 'es';
                      final url = Uri.parse('https://rapidapi.com/googlecloud/api/google-translate1');
                      final response =  await 'http.post(url)';
                      final translation = await text.translate(await Text.translate
                      from: 'auto',
                      to :'es'
                      );
                      setState(() {
                        translated = translation.text;
                      });


    }

                  ),
                  const Divider(height: 32,),
                  Text('translated',
                        style: const TextStyle(
                        fontSize: 36,
                        color: Colors.indigoAccent

  ),)
                  

                ],
              ),

          ))) ;


  }
