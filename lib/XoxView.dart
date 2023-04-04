import 'package:flutter/material.dart';
import 'XoxModel.dart';
import 'XoxVM.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class XoxView extends StatelessWidget {
  XoxView({super.key});
  final XoxVM _XoxVM = XoxVM();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("XOX.."),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 400,
              width: 412,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                  ),
                  itemCount: _XoxVM.gameData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Observer(builder: (context) {
                      return MaterialButton(
                        splashColor: Colors.cyan,
                        onPressed: () {
                          _XoxVM.tappedButton(index);
                        },
                        
                        child: _XoxVM.gameData[index] == ""
                            ? Icon(Icons.edit, size:50)
                            : _XoxVM.gameData[index] == "Close"
                                ? Icon(Icons.close, color: Colors.red, size:50)
                                : Icon(Icons.circle_outlined, color: Colors.green, size:50),
                      );
                    });
                    // return MaterialButton(
                    //   onPressed: () {
                    //     _XoxVM.changeIcon(index);
                    //   },
                    //   child: Observer(builder: (context) {
                    //     return Icon(_XoxVM.buttonData[index]);
                    //   }),
                    // );
                  }),
            ),
            SizedBox(height: 200,),
            Observer(builder: (context) {
              return Text(_XoxVM.winner, style: TextStyle(fontSize: 20),);
            }),
            // Observer(
            //   builder: (context) {
            //     return RichText(text: TextSpan(
            //       children: [
            //         TextSpan(text: _XoxVM.winner),
            //         TextSpan(text: "is winner..")
            //       ]
            //     ));
            //   }
            // ),
            SizedBox(height: 30,),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),)
              ),
                onPressed: () {
                  _XoxVM.resetGame();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text("RESET"),
                )),
                 SizedBox(height: 20,),
            Text("TRY YOUR LUCK")
          ],
        ),
      ),
    ));
  }
}
