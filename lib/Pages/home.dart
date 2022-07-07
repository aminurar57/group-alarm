import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  String hour='0', minutes='0';
  late TextEditingController hourController;
  late TextEditingController minuteController;

  @override
  void initState(){
    super.initState();
    hourController = TextEditingController();
  }
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 100,
                margin: EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  //color: Colors.cyan,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Center(
                  child: TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(2),
                    ],
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Hour',
                      hintText: 'hour',
                    ),
                    onChanged: (String str){
                      hour = str;
                    },
                    // controller: hourController,
                    // keyboardType: TextInputType.number,
                  ),
                )
              ),
              Container(
                  height: 40,
                  width: 100,
                  margin: EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    //color: Colors.cyan,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(
                    child: TextField(
                      inputFormatters: [
                        // FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(2),
                      ],
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Minutes',
                        hintText: 'minutes',
                      ),
                      onChanged: (String str){
                        minutes = str;
                      },
                      // controller: hourController,
                      // keyboardType: TextInputType.number,
                    ),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}
