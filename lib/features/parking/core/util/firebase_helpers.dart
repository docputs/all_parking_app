import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../service_locator.dart';
import '../../../auth/domain/usecases/get_current_user.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference get parkingLotsCollection {
    return this.collection('parking_lots');
  }

  Future<DocumentReference> managerDocument() async {
    final userOption = await getIt<GetCurrentUser>().call();
    return userOption.fold(
      (f) => throw f,
      (user) => this.collection('managers').doc(user.id),
    );
  }
}

extension DocumentReferenceX on DocumentReference {}
