import 'package:all_parking/features/auth/presentation/auth_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../service_locator.dart';
import '../../../auth/domain/usecases/get_current_user.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference get parkingLotsCollection {
    return this.collection('parking_lots');
  }
}
