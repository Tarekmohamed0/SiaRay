// import 'package:firebase_auth/firebase_auth.dart';

// class AuthServices {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   // Check if a user is signed in
//   User? get currentUser => _auth.currentUser;

//   // Sign in with email and password
//   Future<User?> signInWithEmailAndPassword(
//       String email, String password) async {
//     try {
//       final UserCredential userCredential =
//           await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return userCredential.user;
//     } catch (e) {
//       print("Error signing in: $e");
//       return null;
//     }
//   }

//   // Sign out
//   Future<void> signOut() async {
//     await _auth.signOut();
//   }

//   // Register a new user
//   Future<User?> registerWithEmailAndPassword(
//       String email, String password) async {
//     try {
//       final UserCredential userCredential =
//           await _auth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return userCredential.user;
//     } catch (e) {
//       print("Error registering: $e");
//       return null;
//     }
//   }

//   // Any other Firebase Auth methods you may need
// }
