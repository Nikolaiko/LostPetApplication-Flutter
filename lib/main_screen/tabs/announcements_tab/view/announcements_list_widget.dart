import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lost_pets_app/consts/ui/ui_color_consts.dart';
import 'package:lost_pets_app/consts/ui/ui_styles_consts.dart';

class AnnouncementsListWidget extends StatefulWidget {
  const AnnouncementsListWidget({Key? key}) : super(key: key);

  @override
  State<AnnouncementsListWidget> createState() => _AnnouncementsListWidgetState();
}

class _AnnouncementsListWidgetState extends State<AnnouncementsListWidget> {

  @override
  Widget build(BuildContext context) {
    MediaQueryData sizes = MediaQuery.of(context);    
    return Scaffold(
      body: Column(
        children: [          
          Container(
            height: sizes.size.height * 0.133, 
            color: mainBlue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Expanded(child: Text("Все", textAlign: TextAlign.center, style: topTitlesStyle)),
                      Expanded(child: Text("Кошки", textAlign: TextAlign.center, style: topTitlesStyle)),
                      Expanded(child: Text("Собаки", textAlign: TextAlign.center, style: topTitlesStyle)),
                      Expanded(child: Text("Другие", textAlign: TextAlign.center, style: topTitlesStyle)),
                    ],
                  ),
                ),
                SizedBox(width: sizes.size.width, height: 4, child: Container(color: mainWhite))
              ],
            )            
          )
        ],
      ),
    );
  }
}