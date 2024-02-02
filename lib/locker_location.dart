import 'package:flutter/material.dart';
import 'package:free_locker_finder/model/parcel_locker_info.dart';

class LockerLocation extends StatelessWidget {
  final List<ParcelLockerInfo> lockers;

  // key 파라미터를 추가하고, 생성자를 const로 선언합니다.
  const LockerLocation({Key? key, required this.lockers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 여기서는 lockers 리스트를 기반으로 UI를 구성합니다.
    // 예시: lockers 리스트를 사용하여 ListView.builder 등을 구성합니다.
    // build 메서드가 null을 반환하지 않도록 주의하세요.

    return Scaffold(
      appBar: AppBar(
        title: Text('Locker Locations'),
      ),
      body: ListView.builder(
        itemCount: lockers.length,
        itemBuilder: (context, index) {
          // lockers 리스트의 각 항목을 표시하는 방법을 구현합니다.
          return ListTile(
            title: Text(lockers[index].fcltyNm ?? 'Unknown'),
            // 여기에 다른 정보를 추가할 수 있습니다.
          );
        },
      ),
    );
  }
}
