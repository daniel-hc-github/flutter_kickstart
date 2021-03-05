
import 'dart:async';

import 'package:flutter_kickstarter/resource/resource.dart';

class SplashBloc{

  StreamController _splashController;

  StreamSink<Resource<String>> get _splashSink => _splashController.sink;
  Stream<Resource<String>> get splashStream => _splashController.stream;

  SplashBloc(){
    _splashController = StreamController<Resource<String>>();
    _splashSink.add(Resource.idle());
  }

  String getToken() {
    return "";
  }

  dispose(){
    _splashController?.close();
  }
}