import 'package:flutter/material.dart';

class CountProvider with ChangeNotifier{
  List<int>count1=[];
  int count =0;
  void setCount(){
    count++;
    count1.insert(0,count);
    notifyListeners();
  }



}