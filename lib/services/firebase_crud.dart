// import 'package:firebase_database/firebase_database.dart';

// class DataService {
//   fetch() async {
//     FirebaseDatabase database = FirebaseDatabase.instance;
//     DatabaseReference ref =
//         FirebaseDatabase.instance.ref().child('doctordetials');
//     DatabaseEvent event = await ref.once();
//     //DataSnapshot snapshotData = event.snapshot;

//     // print(snapshotData.value);
//     Future<Map<String, dynamic>> map = ref.once().then((event) {
//       var data = event.snapshot.value;
//       Map<String, dynamic> map = Map<String, dynamic>.from(data as dynamic);

//       return map;
//     });
//     // List<Object?> map1 = event.snapshot.value as dynamic;
//     // List<Map<String, dynamic>> map = [];
//     return map;
//   }
// }
