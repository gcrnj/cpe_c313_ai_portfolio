import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../router/router.dart';

var _contentSize = kToolbarHeight - 12;

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final CustomRouter selectedRouter;

  const CustomAppbar({super.key, required this.selectedRouter});

  @override
  Widget build(BuildContext context) {
    var routers = CustomRouter.values.toList();
    routers.removeWhere((router) => router.name == CustomRouter.unknown.name);
    return AppBar(
      leading: Icon(Icons.abc, size: _contentSize,),
      title: Text(selectedRouter.name),
      actions: routers.map((router) {
        return Row(
          children: [
            CustomAppbarAction(
              text: router.name,
              isSelected: router.name == selectedRouter.name,
              icon: Icon(
                Icons.abc,
                size: 24.0,
                color: Colors.amber,
                // color: router.name == selectedRouter.name
                //     ? Colors.amber
                //     : Colors.redAccent,
              ),
              onClick: () {
                if (router.name != selectedRouter.name) {
                  context.go(router.path);
                }
              },
            ),
            SizedBox(
              width: 8,
            ),
          ],
        );
      }).toList(),
      backgroundColor: Colors.black12,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomAppbarAction extends StatelessWidget {
  final String? text;
  final bool isSelected;
  final Icon icon;
  final VoidCallback onClick;

  const CustomAppbarAction(
      {super.key,
      this.text,
      required this.isSelected,
      required this.icon,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    var finalText = text ?? "";
    var textWidget = Text(
      finalText,
      style: TextStyle(),
    );
    var roundedRectangleBorder = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    );
    var roundedBoxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: isSelected ? Colors.black12 : Colors.transparent,
        width: 1, // Adjust border width as needed
      ),
    );
    if (text != null) {
      // textIcon
      return InkWell(
        onTap: onClick,
        hoverColor: Colors.indigo.shade200,
        customBorder: roundedRectangleBorder,
        child: Container(
          decoration: roundedBoxDecoration,
          height: _contentSize,
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
          child: Row(
            children: [
              icon,
              textWidget,
            ],
          ),
        ),
      );
    } else {
      // text
      return TextButton(onPressed: onClick, child: textWidget);
    }
  }
}
