

import 'package:flutterunwrapped/view/learn_widgets_screen/learn_widgets_collection/beginner_level/bottom_nav_bar_explain.dart';
import 'package:flutterunwrapped/view/learn_widgets_screen/learn_widgets_collection/beginner_level/card_explain.dart';
import 'package:flutterunwrapped/view/learn_widgets_screen/learn_widgets_collection/beginner_level/drawer_explain.dart';
import 'package:flutterunwrapped/view/learn_widgets_screen/learn_widgets_collection/beginner_level/icons_explain.dart';
import 'package:flutterunwrapped/view/learn_widgets_screen/learn_widgets_collection/beginner_level/list_explain.dart';
import 'package:flutterunwrapped/view/learn_widgets_screen/learn_widgets_collection/beginner_level/stack_explain.dart';
import 'package:get/get.dart';
import '../../view/learn_widgets_screen/learn_widgets_collection/beginner_level/app_bar_explain.dart';
import '../../view/learn_widgets_screen/learn_widgets_collection/beginner_level/column_explain.dart';
import '../../view/learn_widgets_screen/learn_widgets_collection/beginner_level/container_explain.dart';
import '../../view/learn_widgets_screen/learn_widgets_collection/beginner_level/grid_view_explain.dart';
import '../../view/learn_widgets_screen/learn_widgets_collection/beginner_level/image_explain.dart';
import '../../view/learn_widgets_screen/learn_widgets_collection/beginner_level/material_app_explain.dart';
import '../../view/learn_widgets_screen/learn_widgets_collection/beginner_level/row_explain.dart';
import '../../view/learn_widgets_screen/learn_widgets_collection/beginner_level/scaffold_explain.dart';
import '../../view/learn_widgets_screen/learn_widgets_collection/beginner_level/silver_grid_explain.dart';
import '../../view/learn_widgets_screen/learn_widgets_collection/beginner_level/silver_app_bar_explain.dart';
import '../../view/learn_widgets_screen/learn_widgets_collection/beginner_level/silver_list_explain.dart';
import '../../view/learn_widgets_screen/learn_widgets_collection/beginner_level/size_box_explain.dart';
import '../../view/learn_widgets_screen/learn_widgets_collection/beginner_level/text_explain.dart';
import '../../view/learn_widgets_screen/widget_expand/tabs_switcher.dart';

class WidgetCollection{
  static String root_beginner_widgit = 'lib/view/learn_widgets_screen/learn_widgets_collection/beginner_level/';

  List<String> name_of_simple_widget =[
    'AppBar',
    'Sliver AppBar',
    'Material App',
    'Scaffold',
    'Container',
    'Sizebox',
    'Text',
    'Column',
    'Row',
    'Icons',
    'Image',
    'List View',
    'Grid View',
    'Stack',
    'Drawer',
    'Card',
    'Bottom Navigation Bar',
    'Silver Grid',
    'Silver List',
  ];
  var Screens_of_simple_widget =<Function>[
    // () => ErrorDisplay().showUnderConstructionDialog(),
    // () => ErrorDisplay().showUnderConstructionDialog(),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}app_bar_explain.dart', wid: const AppBarWidget(),)),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}silver_app_bar_explain.dart', wid: SilverAppBarExplain())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}material_app_explain.dart', wid: const MaterialAppExplain())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}scaffold_explain.dart', wid: const ExplainScaffold())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}container_explain.dart', wid: const ContainerExplain())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}size_box_explain.dart', wid: const SizeBoxExplain())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}text_explain.dart', wid: const TextExplain())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}column_explain.dart', wid: const ColumnExplain())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}row_explain.dart', wid: const RowExplain())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}icons_explain.dart', wid: const IconExplain())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}image_explain.dart', wid: const ImageExplain())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}list_explain.dart', wid: const List_Explain())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}grid_view_explain.dart', wid: const GridViewExplain())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}stack_explain.dart', wid: const StackExplain())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}drawer_explain.dart', wid: const DrawerExplain())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}card_explain.dart', wid: const CardExamples())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}bottom_nav_bar_explain.dart', wid: const BottomNavigationBarExplain())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}silver_grid_explain.dart', wid: const SliverGridExplain())),
    () => Get.to(AppCodeViewer(filePath: '${root_beginner_widgit}silver_list_explain.dart', wid: const SliverListExplain())),
  ];
}