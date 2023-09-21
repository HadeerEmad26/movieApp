// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:movie_app/models/MoviesResponse.dart';
//
// class FirebaseFunctions{
//
//
//   static CollectionReference<Results> getMoviesCollection() {
//     return FirebaseFirestore.instance
//         .collection('Movies')
//         .withConverter<Results>(
//       fromFirestore: (snapshot, _) {
//         return Results.fromJson(snapshot.data()!);
//       },
//       toFirestore: (value, _) {
//         return value.toJson();
//       },
//     );
//   }
//
//
//
//
//   static Future<void> addMovie(Results results) {
//     var collection = getMoviesCollection();
//     var docRef = collection.doc();
//    // results.id = docRef.id;
//     return docRef.set(results);
//   }
//
//
// }