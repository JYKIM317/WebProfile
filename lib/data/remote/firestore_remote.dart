class FirestoreImplements {
  getDocument({
    required String collectionName,
    required String documentName,
  }) {}

  setDocument({
    required String collectionName,
    required String documentName,
    required Map<String, dynamic> json,
  }) {}

  updateDocument({
    required String collectionName,
    required String documentName,
    required Map<String, dynamic> json,
  }) {}

  getCollection({required String collectionName}) {}
}
