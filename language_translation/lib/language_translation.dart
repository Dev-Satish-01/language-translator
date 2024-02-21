import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class LanguageTranslationPage extends StatefulWidget {
  const LanguageTranslationPage({super.key});

  @override
  State<LanguageTranslationPage> createState() => _LanguageTranslationPageState();
}

class _LanguageTranslationPageState extends State<LanguageTranslationPage> {

  var languages = ["Afrikaans", "Albanian", "Arabic", "Armenian", "Azerbaijani", "Basque", "Belarusian", "Bengali", "Bosnian", "Bulgarian", "Catalan", "Cebuano", "Chichewa", "Chinese", "Corsican", "Croatian", "Czech", "Danish", "Dutch", "English", "Esperanto", "Estonian", "Filipino", "Finnish", "French", "Frisian", "Galician", "Georgian", "German", "Greek", "Gujarati", "Haitian Creole", "Hausa", "Hawaiian", "Hebrew", "Hindi", "Hmong", "Hungarian", "Icelandic", "Igbo", "Indonesian", "Irish", "Italian", "Japanese", "Javanese", "Kannada", "Kazakh", "Khmer", "Kinyarwanda", "Korean", "Kurdish", "Kyrgyz", "Lao", "Latin", "Latvian", "Lithuanian", "Luxembourgish", "Macedonian", "Malagasy", "Malay", "Malayalam", "Maltese", "Maori", "Marathi", "Mongolian", "Myanmar (Burmese)", "Nepali", "Norwegian", "Odia (Oriya)", "Pashto", "Persian", "Polish", "Portuguese", "Punjabi", "Romanian", "Russian", "Samoan", "Scots Gaelic", "Serbian", "Sesotho", "Shona", "Sindhi", "Sinhala", "Slovak", "Slovenian", "Somali", "Spanish", "Sundanese", "Swahili", "Swedish", "Tajik", "Tamil", "Tatar", "Telugu", "Thai", "Turkish", "Turkmen", "Ukrainian", "Urdu", "Uyghur", "Uzbek", "Vietnamese", "Welsh", "Xhosa", "Yiddish", "Yoruba", "Zulu"];
  var originalLanguage = "From";
  var destinationLanguage = "To";
  var output = "";
  TextEditingController languageController = TextEditingController();

  void translate(String src, String dest, String input) async{
    GoogleTranslator translator = new GoogleTranslator();
    var translation = await translator.translate(input, from: src, to: dest);
    setState(() {
      output = translation.text.toString();
    });
    if(src=='--' || dest=='--'){
      setState(() {
        output = "Fail to translate";
      });
    }
  }

  String getLanguageCode(String language){
    if (language == "Afrikaans") {
    return "af";
  } else if (language == "Albanian") {
    return "sq";
  } else if (language == "Arabic") {
    return "ar";
  } else if (language == "Armenian") {
    return "hy";
  } else if (language == "Azerbaijani") {
    return "az";
  } else if (language == "Basque") {
    return "eu";
  } else if (language == "Belarusian") {
    return "be";
  } else if (language == "Bengali") {
    return "bn";
  } else if (language == "Bosnian") {
    return "bs";
  } else if (language == "Bulgarian") {
    return "bg";
  } else if (language == "Catalan") {
    return "ca";
  } else if (language == "Cebuano") {
    return "ceb";
  } else if (language == "Chichewa") {
    return "ny";
  } else if (language == "Chinese") {
    return "zh";
  } else if (language == "Corsican") {
    return "co";
  } else if (language == "Croatian") {
    return "hr";
  } else if (language == "Czech") {
    return "cs";
  } else if (language == "Danish") {
    return "da";
  } else if (language == "Dutch") {
    return "nl";
  } else if (language == "English") {
    return "en";
  } else if (language == "Esperanto") {
    return "eo";
  } else if (language == "Estonian") {
    return "et";
  } else if (language == "Filipino") {
    return "tl";
  } else if (language == "Finnish") {
    return "fi";
  } else if (language == "French") {
    return "fr";
  } else if (language == "Frisian") {
    return "fy";
  } else if (language == "Galician") {
    return "gl";
  } else if (language == "Georgian") {
    return "ka";
  } else if (language == "German") {
    return "de";
  } else if (language == "Greek") {
    return "el";
  } else if (language == "Gujarati") {
    return "gu";
  } else if (language == "Haitian Creole") {
    return "ht";
  } else if (language == "Hausa") {
    return "ha";
  } else if (language == "Hawaiian") {
    return "haw";
  } else if (language == "Hebrew") {
    return "he";
  } else if (language == "Hindi") {
    return "hi";
  } else if (language == "Hmong") {
    return "hmn";
  } else if (language == "Hungarian") {
    return "hu";
  } else if (language == "Icelandic") {
    return "is";
  } else if (language == "Igbo") {
    return "ig";
  } else if (language == "Indonesian") {
    return "id";
  } else if (language == "Irish") {
    return "ga";
  } else if (language == "Italian") {
    return "it";
  } else if (language == "Japanese") {
    return "ja";
  } else if (language == "Javanese") {
    return "jw";
  } else if (language == "Kannada") {
    return "kn";
  } else if (language == "Kazakh") {
    return "kk";
  } else if (language == "Khmer") {
    return "km";
  } else if (language == "Kinyarwanda") {
    return "rw";
  } else if (language == "Korean") {
    return "ko";
  } else if (language == "Kurdish") {
    return "ku";
  } else if (language == "Kyrgyz") {
    return "ky";
  } else if (language == "Lao") {
    return "lo";
  } else if (language == "Latin") {
    return "la";
  } else if (language == "Latvian") {
    return "lv";
  } else if (language == "Lithuanian") {
    return "lt";
  } else if (language == "Luxembourgish") {
    return "lb";
  } else if (language == "Macedonian") {
    return "mk";
  } else if (language == "Malagasy") {
    return "mg";
  } else if (language == "Malay") {
    return "ms";
  } else if (language == "Malayalam") {
    return "ml";
  } else if (language == "Maltese") {
    return "mt";
  } else if (language == "Maori") {
    return "mi";
  } else if (language == "Marathi") {
    return "mr";
  } else if (language == "Mongolian") {
    return "mn";
  } else if (language == "Myanmar (Burmese)") {
    return "my";
  } else if (language == "Nepali") {
    return "ne";
  } else if (language == "Norwegian") {
    return "no";
  } else if (language == "Odia (Oriya)") {
    return "or";
  } else if (language == "Pashto") {
    return "ps";
  } else if (language == "Persian") {
    return "fa";
  } else if (language == "Polish") {
    return "pl";
  } else if (language == "Portuguese") {
    return "pt";
  } else if (language == "Punjabi") {
    return "pa";
  } else if (language == "Romanian") {
    return "ro";
  } else if (language == "Russian") {
    return "ru";
  } else if (language == "Samoan") {
    return "sm";
  } else if (language == "Scots Gaelic") {
    return "gd";
  } else if (language == "Serbian") {
    return "sr";
  } else if (language == "Sesotho") {
    return "st";
  } else if (language == "Shona") {
    return "sn";
  } else if (language == "Sindhi") {
    return "sd";
  } else if (language == "Sinhala") {
    return "si";
  } else if (language == "Slovak") {
    return "sk";
  } else if (language == "Slovenian") {
    return "sl";
  } else if (language == "Somali") {
    return "so";
  } else if (language == "Spanish") {
    return "es";
  } else if (language == "Sundanese") {
    return "su";
  } else if (language == "Swahili") {
    return "sw";
  } else if (language == "Swedish") {
    return "sv";
  } else if (language == "Tajik") {
    return "tg";
  } else if (language == "Tamil") {
    return "ta";
  } else if (language == "Tatar") {
    return "tt";
  } else if (language == "Telugu") {
    return "te";
  } else if (language == "Thai") {
    return "th";
  } else if (language == "Turkish") {
    return "tr";
  } else if (language == "Turkmen") {
    return "tk";
  } else if (language == "Ukrainian") {
    return "uk";
  } else if (language == "Urdu") {
    return "ur";
  } else if (language == "Uyghur") {
    return "ug";
  } else if (language == "Uzbek") {
    return "uz";
  } else if (language == "Vietnamese") {
    return "vi";
  } else if (language == "Welsh") {
    return "cy";
  } else if (language == "Xhosa") {
    return "xh";
  } else if (language == "Yiddish") {
    return "yi";
  } else if (language == "Yoruba") {
    return "yo";
  } else if (language == "Zulu") {
    return "zu";
  }
    return "--";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff10223d),
      appBar: AppBar(
        title: Text("Language Translator"), 
        centerTitle: true, 
        backgroundColor: Color(0xff10223d),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(focusColor: Colors.white, 
                  iconDisabledColor: Colors.white,
                  iconEnabledColor: Colors.white,
                  hint: Text(
                    originalLanguage, style: TextStyle(color: Colors.white),
                  ),
                  dropdownColor: Colors.white,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: languages.map((String dropDownStringItem){
                      return DropdownMenuItem(child: Text(dropDownStringItem), 
                      value: dropDownStringItem,);
                    }).toList(),
                    onChanged: (String? value){
                      setState(() {
                        originalLanguage = value!;
                      });
                    },

                  ),

                  SizedBox(width: 40,),
                  Icon(Icons.arrow_right_alt_outlined, color: Colors.white, size: 40,),

                  DropdownButton(focusColor: Colors.white, 
                  iconDisabledColor: Colors.white,
                  iconEnabledColor: Colors.white,
                  hint: Text(
                    destinationLanguage, style: TextStyle(color: Colors.white),
                  ),
                  dropdownColor: Colors.white,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: languages.map((String dropDownStringItem){
                      return DropdownMenuItem(child: Text(dropDownStringItem), 
                      value: dropDownStringItem,);
                    }).toList(),
                    onChanged: (String? value){
                      setState(() {
                        destinationLanguage = value!;
                      });
                    },

                  )
                ],
              ),
              SizedBox(height: 40,),
              Padding(padding: EdgeInsets.all(8),
              child: TextFormField(cursorColor: Colors.white, 
              autofocus: false, 
              style: TextStyle(color: Colors.white), 
              decoration: InputDecoration(
                labelText: 'Please enter your text...',
                labelStyle: TextStyle(fontSize: 15, color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1
                  )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1), 
                    ),
                    errorStyle: TextStyle(color: Colors.red, fontSize: 15),
                ),
                controller: languageController,
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Please enter text to translate';
                  }
                  return null;
                },
                ),),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: ElevatedButton(
                    
                    onPressed: (){
                      translate(getLanguageCode(originalLanguage), getLanguageCode(destinationLanguage), languageController.text.toString());
                    }, 
                    child: Text("Translate"),
                    )
                  ),
                  Text(
                    "\n$output",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}