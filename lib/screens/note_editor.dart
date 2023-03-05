import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app/utilities/import.dart';

class NoteEditorScreen extends StatefulWidget {
  const NoteEditorScreen({super.key});

  @override
  State<NoteEditorScreen> createState() => _NoteEditorScreenState();
}

class _NoteEditorScreenState extends State<NoteEditorScreen> {
  QueryDocumentSnapshot? doc;
  int colorId = Random().nextInt(cardsColor.length);
  // DateTime now = DateTime.now();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var now = DateTime.now();
    var month = now.month.toString().padLeft(2, '0');
    var day = now.day.toString().padLeft(2, '0');
    var dateTime = '${now.year}-$month-$day ${now.hour}:${now.minute}';
    return Scaffold(
      backgroundColor: cardsColor[colorId],
      appBar: AppBar(
        backgroundColor: cardsColor[colorId],
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Add a new Note',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getDeviceWidth(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Note Title',
              ),
              style: kTitleStyle,
            ),
            SizedBox(
              height: getDeviceHeight(8),
            ),
            Text(
              dateTime,
              style: kDateTimeStyle,
            ),
            SizedBox(
              height: getDeviceHeight(20),
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              controller: _contentController,
              maxLines: null,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Note Content',
              ),
              style: kContentStyle,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          FirebaseFirestore.instance.collection("Notes").add({
            "notes_title": _titleController.text.toString(),
            "creation_date": dateTime.toString(),
            "note_content": _contentController.toString(),
            "color_id": colorId.toInt(),
          }).then((value) {
            // print(value);
            Navigator.pop(context);
          }).catchError(
            (error) =>
                showSnackBar(context: context, text: "Failed to save note. "),
          );
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
