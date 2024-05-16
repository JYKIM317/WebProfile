import 'package:webprofile/data/remote/firestore_remote.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:webprofile/data/remote/analytics_remote.dart';

class ProjectsRemote extends FirestoreImplements {
  @override
  Future<QuerySnapshot?> getCollection({required String collectionName}) async {
    const String orderByField = 'endDate';
    try {
      return FirebaseFirestore.instance
          .collection(collectionName)
          .orderBy(orderByField, descending: true)
          .get();
    } catch (e) {
      Analytics().sendLogEvent(logName: e.toString());
      return null;
    }
  }
}
