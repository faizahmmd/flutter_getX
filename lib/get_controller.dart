import 'package:flutter_getx/repository.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  var name = "loading".obs;

  void getFirstName(){
    name.value = Repository().getFirstName();
  }

  void getLastName(){
    name.value = Repository().getLastName();
  }
}