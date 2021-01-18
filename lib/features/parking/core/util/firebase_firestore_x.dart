import 'package:cloud_firestore/cloud_firestore.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference get parkingLotsCollection {
    return this.collection('parking_lots');
  }
}
