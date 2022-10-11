/// Flutter
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Architectural Dependencies
import 'package:lima/app/locator.dart';
import 'package:lima/views/components/sidemenu/sidemenu_view.dart';
import 'package:stacked/stacked.dart';
import 'package:lima/app/router.gr.dart';
import 'package:auto_route/auto_route.dart';

/// Widgets
import 'package:flutter_switch/flutter_switch.dart';
import 'package:keyboard_event/keyboard_event.dart';

/// The viewmodel of this view
import './level2_viewmodel.dart';

/// Storage dependencies
import 'package:realm/realm.dart';

class Level2View extends StatelessWidget {
  
  double menuWidth = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        onDrawerChanged: (isOpened) {
          if (isOpened) menuWidth = MediaQuery.of(context).size.width / 4;
          if (!isOpened) menuWidth = 0;
        },
        drawer: SideMenu(
          width: MediaQuery.of(context).size.width / 4, 
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i = 0; i < 8; i++) 
                Container(margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 16), child: Text('Element $i', style: 
                  Theme.of(context).textTheme.headline5!.copyWith(
                    color: const Color(0xFF2A2B2A)
                  )
                )
                )
              ]
          )
        ),
        body: ViewModelBuilder.reactive(
                viewModelBuilder: () => Level2ViewModel(),
                builder: (context, model, child) { 
                    return Row(
                        children: [
                            AnimatedContainer(
                                duration: const Duration(milliseconds: 120), 
                                curve: Curves.ease, 
                                width: menuWidth
                            ),
                            Column(children: [
                                GestureDetector(
                                    onTap: () {
                                        context.router.replace(HomeView(initialIndex: 1));
                                    },
                                    child: const Icon(
                                        Icons.arrow_back,
                                    )
                                ),
                                GestureDetector(
                                    onTap: () {
                                        Scaffold.of(context).openDrawer();
                                        model.notifyListeners();
                                    },
                                    child: const Icon( Icons.arrow_forward_ios)
                                )
                            ]
                            ),
                        ],
                    );
                }
            )
    );
  }
}
