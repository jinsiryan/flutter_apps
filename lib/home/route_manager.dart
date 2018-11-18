import 'package:flutter/material.dart';
import 'page/test_page.dart';
import 'page/update_widget_page.dart';
import 'page/padding_widget.dart';
import 'page/add_or_delete.dart';
import 'page/animation.dart';
import 'page/canvas.dart';
import 'page/custom_widgets.dart';
import 'page/async_load_data.dart';
import 'page/lifecycle_watcher.dart';
import 'page/layouts.dart';
import 'page/input.dart';
import 'home.dart';
import 'package:flutter_apps/gank/page/gank_home_page.dart';

const HOME = "home";
const TEST = "test";
const UPDATE_PAGE = "udpate_page";
const PADDING_PAGE = "padding_page";
const CHANGE_PAGE = "change_page";
const ANIM_PAGE = "anim_page";
const CANVAS_PAGE = "canvas_page";
const CUSTOM_WIDGET_PAGE = "custom_widget_page";
const LOAD_DATA_PAGE = "load_data_page";
const ISOLATE_LOAD_DATA_PAGE = "isolate_load_data_page";
const LIFECYC_LEWATCHER_PAGE = "lifecycle_watcher_page";
const LAYOUTS_PAGE = "layouts_page";
const GESTURE_DETECTOR_PAGE = "gesture_detector_page";
const Input_Form_Page = "input_form_page";
//https://gank.io/
const GANK_IO_PAGE = "gank_io_page";

Map<String, WidgetBuilder> mainRouts =<String, WidgetBuilder>{
  HOME: (BuildContext context) => new MyHomePage(),
  TEST: (BuildContext context) => new TestPage(),
  UPDATE_PAGE: (BuildContext context) => new UpdatePage(),
  PADDING_PAGE: (BuildContext context) => new PaddingWidget(),
  CHANGE_PAGE: (BuildContext context) => new ChangeWidgetPage(),
  ANIM_PAGE: (BuildContext context) => new MyFadeTest(),
  CANVAS_PAGE: (BuildContext context) => new CanvasPage(),
  CUSTOM_WIDGET_PAGE: (BuildContext context) => new CustomWidgetPage(),
  LOAD_DATA_PAGE: (BuildContext context) => new LoadDataPage(),
  ISOLATE_LOAD_DATA_PAGE: (BuildContext context) => new IsolateLoadDataPage(),
  LIFECYC_LEWATCHER_PAGE: (BuildContext context) => new LifecycleWatcherPage(),
  LAYOUTS_PAGE: (BuildContext context) => new LayoutsPage(),
  GESTURE_DETECTOR_PAGE: (BuildContext context) => new GestureDetector(),
  Input_Form_Page: (BuildContext context) => new InputFormPage(),
   GANK_IO_PAGE: (BuildContext context) => new GankHomePage(),

};

