import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/setting_controller.dart';
import '../../theme/text_theme.dart';
import '../../theme/theme_controller.dart';

class SettingPage extends GetView<SettingController> {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          onTap: () {
            Get.dialog(const _ThemeChangingDialog());
          },
          title: const Text("App Theme"),
          subtitle: Obx(() => Text(
                Get.find<ThemeController>().activeThemeModeName(),
              )),
        )
      ],
    );
  }
}

class _ThemeChangingDialog extends GetView<ThemeController> {
  const _ThemeChangingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: 250,
        width: 300,
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(28.0, 20.0, 28.0, 0.0),
                child: Text(
                  'Chose Theme',
                  style: AppTextStyle(
                    color: context.theme.colorScheme.onBackground,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              RadioListTile(
                title: Text(
                  'Light',
                  style: AppTextStyle(
                    color: context.theme.colorScheme.onBackground,
                  ),
                ),
                value: ThemeMode.light.index,
                onChanged: (value) {
                  controller.saveThemeMode(ThemeMode.light);
                  Get.back();
                },
                groupValue: controller.currentThemeMode.value.index,
              ),
              RadioListTile(
                title: Text(
                  'Dark',
                  style: AppTextStyle(
                    color: context.theme.colorScheme.onBackground,
                  ),
                ),
                value: ThemeMode.dark.index,
                onChanged: (value) {
                  controller.saveThemeMode(ThemeMode.dark);

                  Get.back();
                },
                groupValue: controller.currentThemeMode.value.index,
              ),
              RadioListTile(
                title: Text(
                  'System Default',
                  style: AppTextStyle(
                    color: context.theme.colorScheme.onBackground,
                  ),
                ),
                value: ThemeMode.system.index,
                onChanged: (value) {
                  controller.saveThemeMode(ThemeMode.system);
                  Get.back();
                },
                groupValue: controller.currentThemeMode.value.index,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
