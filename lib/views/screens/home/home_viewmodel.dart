import 'dart:async';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:lima/app/locator.dart';
import 'package:lima/services/layout_manager.dart';
import 'package:stacked/stacked.dart';

/// The `ViewModel` for the `Home` screen.
class HomeViewModel extends BaseViewModel {
  String textVal = 'vertical';
  void updateText(BuildContext context) {
    l<LayoutManager>().updateLayout(context);
    var temp = textVal;
    textVal = l<LayoutManager>().layout == Layout.vertical
        ? 'vertical'
        : 'horizontal';
    if (temp == textVal) return;
    notifyListeners();
  }

  /// The page controller.
  PageController pageController = PageController(initialPage: 0);

  /// The current page index.
  int pageIndex = 0;

  /// Is the current language english?
  bool isEnglish = false, 
  /// Can the pageviewer scroll to right
       canGoRight = true, 
  /// Can the pageviewer scroll to left
       canGoLeft = false;

  /// Boolean value to check whether the mouse is currently over a button or not.
  bool isMouseOverButton = false;

  /// The size of the view
  Size size = const Size(0, 0);

  /// The sizes of each difficulty button
  List<Size?> buttonSizes = List.filled(3, const Size(0, 0));

  /// The focus node that contains the whole screen, used for physical key press events.
  FocusNode focusNode = FocusNode();

  /// Function used to re-enable the left and right buttons (after temporarily disabling them)
  void scroll() async {
    if (pageIndex < 2) canGoRight = true;
    if (pageIndex > 0) canGoLeft = true;
    notifyListeners();
  }
}
