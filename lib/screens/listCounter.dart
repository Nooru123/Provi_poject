import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/countProvider.dart';
class listCounter extends StatelessWidget {
  const listCounter({super.key});

  @override
  Widget build(BuildContext context) {

    final countProvider = Provider .of<CountProvider>(context,listen: false);
    print('object');


    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<CountProvider>(
              builder: (context,value,child) {
                return SizedBox(
                  height: 700,
                  child: ListView.builder(






                    itemCount: countProvider. count1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return  Container(
                        alignment: Alignment.center,
                        color: Colors.black,
                        child: Text(countProvider.count1[index].toString(),
                          style: TextStyle(color: countProvider.count1[index]>5?Colors.red:Colors.green ),
                          // style: TextStyle(color: countProvider.count>5?Colors.red:Colors.green ),

                        ),
                      );

                    },
                  ),
                );
              }
            ),        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
