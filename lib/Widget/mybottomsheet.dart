
import 'package:flutter/material.dart';

Future<void> showBotomSheet(BuildContext context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return DraggableScrollableSheet(
            initialChildSize: 0.5,
            minChildSize: 0.3,
            maxChildSize: 1,
            builder: (context, controller) {
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blueAccent,
                      Colors.blue[900],
                    ],
                  ),
                ),
                child:ListView.builder(
                  controller: controller,
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (context,index){
                   return index%2==0? ListTile(
                          title: Text("Push Up"),
                          subtitle: Text("Upperbody"),
                          trailing: Column(
                            children:[
                              Icon(Icons.timer),
                              Text("12.30")
                            ]
                          ),
                        ): ListTile(
                          title: Text("Squat"),
                          subtitle: Text("Lower Body"),
                          trailing: Column(
                            children:[
                              Icon(Icons.timer),
                              Text("9.48")
                            ]
                          ),
                        );
                  })
                
              );
            });
      });
}
