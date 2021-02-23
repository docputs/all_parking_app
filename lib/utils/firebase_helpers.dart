import 'package:cloud_firestore/cloud_firestore.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference get parkingLotCollection {
    return this.collection('parking_lots');
  }

  CollectionReference get managerCollection {
    return this.collection('managers');
  }

  CollectionReference get employeeCollection {
    return this.collection('employees');
  }

  CollectionReference parkedVehiclesCollection(String parkingLotId) {
    return this.collection('parking_lots/$parkingLotId/parked_vehicles');
  }
}
