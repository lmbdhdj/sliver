import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:silver/routes/pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //WidgetsFlutterBinding 继承BindingBase,同时有很多binding扩展,这里初始可以深度定制影响这些功能绑定
  runApp(const GetMaterialApp(
      //GetX初使用
      debugShowCheckedModeBanner: false,
      initialRoute: Pages.initIAL,
      locale: Locale('fr', 'Ca'),
      fallbackLocale: Locale('en', 'US'),
      // 添加回调语言选项，以备上面指定的语言翻译不存在
     ));
}

