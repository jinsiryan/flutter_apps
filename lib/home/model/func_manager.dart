
import 'package:flutter_apps/home/route_manager.dart';
import 'func_item.dart';
class FuncManager{

  static List<FuncItem> getItems(){
    var list = new List<FuncItem>();
    list.add(new FuncItem(TEST, "页面切换"));
    list.add(new FuncItem(UPDATE_PAGE, "组件的更新"));
    list.add(new FuncItem(PADDING_PAGE, "内边距"));
    list.add(new FuncItem(CHANGE_PAGE, "添加或删除组件"));
    list.add(new FuncItem(ANIM_PAGE, "动画的使用"));
    list.add(new FuncItem(CANVAS_PAGE, "Canvas draw/paint"));
    list.add(new FuncItem(CUSTOM_WIDGET_PAGE, "自定义 Widgets"));
    list.add(new FuncItem(LOAD_DATA_PAGE, "异步加载数据"));
    list.add(new FuncItem(ISOLATE_LOAD_DATA_PAGE, "isolate 异步加载数据"));
    list.add(new FuncItem(LIFECYC_LEWATCHER_PAGE, "组件的生命周期事件"));
    list.add(new FuncItem(LAYOUTS_PAGE, "layouts"));
    list.add(new FuncItem(GESTURE_DETECTOR_PAGE, "手势的使用" ));
    list.add(new FuncItem(Input_Form_Page, "表单输入"));
    list.add(new FuncItem(GANK_IO_PAGE, "GANK_IO"));
    return list;
  }


}