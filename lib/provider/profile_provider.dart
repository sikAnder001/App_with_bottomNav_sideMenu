

import 'package:flutter/foundation.dart';

class ProfileProvider with ChangeNotifier{

  double _sliderValue=1.0;
  double get sliderValue=>_sliderValue;

  setSlider(double val){
    _sliderValue=val;
    notifyListeners();
  }
}