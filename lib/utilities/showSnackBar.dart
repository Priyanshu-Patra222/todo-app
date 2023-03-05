import 'package:todo_app/utilities/import.dart';

void showSnackBar(
    {required BuildContext context, required String text, Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color ?? Colors.black,
      content: Text(text),
    ),
  );
}
