import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app/utilities/import.dart';


class NoteReaderScreen extends StatefulWidget {
  NoteReaderScreen(this.doc, {Key? key}) : super(key: key);

  QueryDocumentSnapshot doc;

  @override
  State<NoteReaderScreen> createState() => _NoteReaderScreenState();
}

class _NoteReaderScreenState extends State<NoteReaderScreen> {
  @override
  Widget build(BuildContext context) {
    int colorId = widget.doc['color_id'];
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: cardsColor[colorId],
      appBar: AppBar(
        backgroundColor: cardsColor[colorId],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.doc["notes_title"],
              style: kTitleStyle,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: getDeviceHeight(5),
            ),
            Text(
              widget.doc["creation_date"],
              style: kDateTimeStyle,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: getDeviceHeight(10),
            ),
            Text(
              widget.doc["note_content"],
              style: kContentStyle,
              overflow: TextOverflow.clip,
            ),
          ],
        ),
      ),
    );
  }
}
