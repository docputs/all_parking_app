import 'package:all_parking/features/parking/presentation/manage_parking_lots/screens/components/manage_parking_lot_tile.dart';
import 'package:all_parking/features/parking/presentation/select_parking_lot/screens/components/parking_lot_info_tile.dart';
import 'package:flutter/material.dart';

import '../../../../../../widgets/default_section_title.dart';
import '../../../../domain/entities/parking_lot.dart';

class ParkingLotList extends StatelessWidget {
  final String headerText;
  final List<ParkingLot> parkingLots;
  final bool allowActions;

  const ParkingLotList(this.parkingLots, {this.allowActions = false, this.headerText = '', Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultSectionTitle(headerText),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) =>
                allowActions ? ManageParkingLotTile(parkingLots[index]) : ParkingLotInfoTile(parkingLots[index]),
            itemCount: parkingLots.length,
          ),
        ),
      ],
    );
  }
}
