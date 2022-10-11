/// Flutter
import 'package:flutter/material.dart';

/// Architectural dependencies
import 'package:stacked/stacked.dart';
import 'package:lima/app/router.gr.dart';
import 'package:lima/app/locator.dart';

/// This view's model
import 'sidemenu_viewmodel.dart';

class SideMenu extends StatelessWidget {
  SideMenu({
    this.content,
    this.width, 
  });

  /// The child of the side menu. Usually contains a Column of the list elements.
  Widget? content;

  /// The width of the menu
  double? width;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SideMenuModel(),
        builder: (context, model, child) {
          return Drawer(
              width: width ?? 250,
              child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color(0xFFA6E1FA),
                        Color(0xFFB9FFB7),
                      ])),
                  child: Row( 
                    children: [
                      Expanded(
                        child: content ?? const SizedBox(width: 10)
                      ), 
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Icons.arrow_back_ios, 
                        color: Color(0xFF2A2B2A))
                      )
                    ]
                  ), 
                  ));
        });
  }
}