import 'package:mvc_pattern/mvc_pattern.dart';

import '../models/restaurant.dart';

class WalkthroughController extends ControllerMVC {
  List<Restaurant> topRestaurants = <Restaurant>[];

  WalkthroughController() {
    //listenForTopRestaurants();
  }
}
