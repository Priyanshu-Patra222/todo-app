import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app/utilities/import.dart';

Widget noteCard(
    {required Function()? onTap, required QueryDocumentSnapshot doc}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: cardsColor[doc['color_id']],
        borderRadius: kHalfCurve,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc["notes_title"],
            style: kTitleStyle,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: getDeviceHeight(5),
          ),
          Text(
            doc["creation_date"],
            style: kDateTimeStyle,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: getDeviceHeight(10),
          ),
          Text(
            doc["note_content"],
            style: kContentStyle,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}
