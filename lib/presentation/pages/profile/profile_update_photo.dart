// // ignore_for_file: public_member_api_docs, sort_constructors_first, unused_element, prefer_const_constructors_in_immutables
// part of '../pages.dart';

// class ProfileUpdatePhoto extends StatefulWidget {
//   final ProfileUpdatePhotoData profileUpdatePhotoData;
//   const ProfileUpdatePhoto({
//     Key? key,
//     required this.profileUpdatePhotoData,
//   }) : super(key: key);

//   @override
//   State<ProfileUpdatePhoto> createState() => _ProfileUpdatePhotoState();
// }

// class _ProfileUpdatePhotoState extends State<ProfileUpdatePhoto> {
//   String urlImage = '';
//   //late UpdatePhotoCubit _updatePhotoCubit;

//   @override
//   void initState() {
//     super.initState();
//     // BlocProvider.of<UpdatePhotoCubit>(context).fetchProfileUpdatePhoto();
//     //_updatePhotoCubit = UpdatePhotoCubit(ProfileUpdatePhotoRepositoryImpl());

//     urlImage = widget.profileUpdatePhotoData.image;
//     super.initState();
//   }

//   @override
//   void dispose() {
//     urlImage = widget.profileUpdatePhotoData.image;
//     //_updatePhotoCubit.close();
//     super.dispose();
//   }

//   bool isUpdating = false;
//   File? image;
//   Future<void> _getImageFromCamera() async {
//     final picker = ImagePicker();
//     final pickedImage = await picker.pickImage(source: ImageSource.gallery);

//     if (pickedImage != null) {
//       setState(
//         () {
//           image = File(pickedImage.path);
//           urlImage = '';
//         },
//       );
//     }
//   }

//   bool isUpdate = false;

//   bool validate() {
//     if (image == null) {
//       Commons().showSnackbarError(context, 'Photo Profile Tidak Boleh Kosong');
//       return false;
//     }
//     return true;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(40),
//         child: AppBar(
//           shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
//           backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
//           centerTitle: true,
//           elevation: 0.5,
//           leading: GestureDetector(
//             onTap: () => context.go('/profileblank'),
//             child: const Icon(
//               Icons.arrow_back_ios_rounded,
//               color: Color(0xff333333),
//             ),
//           ),
//           actions: [
//             IconButton(
//               onPressed: () => context.go('/profilesettings'),
//               icon: Image.asset('assets/icons/setting.png'),
//             ),
//           ],
//           title: const Text('Edit Photo'),
//           titleTextStyle: const TextStyle(
//             fontFamily: "inter_semibold",
//             fontSize: 14,
//             fontWeight: FontWeight.w600,
//             color: Color(0xff333333),
//           ),
//         ),
//       ),
//       backgroundColor: Colors.grey[200],
//       body: BlocListener<UpdatePhotoCubit, UpdatePhotoState>(
//         listener: (context, state) {
//           if (state is UpdatePhotoIsError) {
//             Commons().showSnackbarError(context, state.message!);
//           } else if (state is UpdatePhotoIsSucces) {
//             context.goNamed(Routes.profileblankPage);
//             Commons().showSnackbarInfo(context, "Update Data Berhasil");
//           }
//         },
//         child: isUpdating
//             ? const Center(
//                 child: CircularProgressIndicator(
//                 color: Colors.blue,
//               ))
//             : SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.only(top: 50),
//                       alignment: Alignment.center,
//                       child: image != null
//                           ? const CircleAvatar(
//                               maxRadius: 50,
//                               backgroundImage:
//                                   AssetImage('assets/images/avatar.png'),
//                             )
//                           : CircleAvatar(
//                               maxRadius: 50,
//                               backgroundImage: NetworkImage(
//                                 widget.profileUpdatePhotoData.image,
//                               ),
//                             ),
//                     ),
//                   ],
//                 ),
//               ),
//       ),
//     );
//   }
// }
