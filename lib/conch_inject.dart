import 'package:flutter/material.dart';
import 'package:flutter_conch_loader/flutter_conch_loader.dart';
void init_conch() async {
  // 推荐使用shilpy平台配置
  var fileLoader = ShiplyFileLoader(ResHubParams(
      appVersion: "1.0.0",
      deviceId: "12345",
      appId: "6db6d7936d",
      appKey: "a19b7300-e6f0-45f4-80d7-9a1986812f0b",
      env: "online",
      resId: "conch_test_pokedex",
      awaitNetData: true));
  // 初始化基础能力
  // 初始化完成之后的操作
  ConchLoader.getInstance().init(
    showDebugTag: true,
    customLoadPageReporter: (name, code, message) {
      print("加载结果 name: $name, code: $code,message:$message");
    },
    onLoadingBuilder: () {
      return Scaffold(
        body: Center(
          child: Text("初始化加载样式……"),
        ),
      );
    },
  );
  // 绑定具体加载逻辑
  ConchLoader.getInstance().bindFileLoader(fileLoader, isPreLoad: true);
  ConchLoader.getInstance();
}
