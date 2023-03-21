import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:silver/routes/pages.dart';
import 'package:get_storage/get_storage.dart';
import 'package:bot_toast/bot_toast.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //WidgetsFlutterBinding 继承BindingBase,同时有很多binding扩展,这里初始可以深度定制影响这些功能绑定
  //本地修改测试
  await GetStorage().initStorage;
  runApp(const GetExample());
}

class GetExample extends StatelessWidget {
  const GetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //GetX初使用
      debugShowCheckedModeBanner: false,
      initialRoute: Pages.initIAL,
      builder: BotToastInit(),
      //toast初始化
      locale: const Locale('fr', 'Ca'),
      getPages: Pages.routes,
      fallbackLocale: const Locale('en', 'US'),
      // 添加回调语言选项，以备上面指定的语言翻译不存在
    );
  }
}
