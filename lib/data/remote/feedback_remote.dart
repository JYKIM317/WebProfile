import 'package:webprofile/data/remote/firestore_remote.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:webprofile/data/remote/analytics_remote.dart';

class FeedbackRemote extends FirestoreImplements {
  @override
  setDocument(
      {required String collectionName,
      required String documentName,
      required Map<String, dynamic> json}) async {
    try {
      await FirebaseFirestore.instance
          .collection(collectionName)
          .doc(documentName)
          .set(json);
    } catch (e) {
      Analytics().sendLogEvent(logName: e.toString());
    }
  }
}
