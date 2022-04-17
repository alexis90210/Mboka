import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Profile extends StatefulWidget {
  const Profile({
    Key? key,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
  }

  String? path;

  // _getImageFromGallery() async {
  //   List<Media>? res = await ImagesPicker.pick(
  //     count: 3,
  //     pickType: PickType.all,
  //     language: Language.System,
  //     maxTime: 30,
  //     // maxSize: 500,
  //     cropOpt: CropOption(
  //       // aspectRatio: CropAspectRatio.wh16x9,
  //       cropType: CropType.circle,
  //     ),
  //   );
  //   print(res);
  //   if (res != null) {
  //     print(res.map((e) => e.path).toList());
  //     setState(() {
  //       path = res[0].thumbPath;
  //     });
  //     // bool status = await ImagesPicker.saveImageToAlbum(File(res[0]?.path));
  //     // print(status);
  //   }
  // }

  // _getImageFromCamera() async {
  //   List<Media>? res = await ImagesPicker.openCamera(
  //     // pickType: PickType.video,
  //     pickType: PickType.image,
  //     quality: 0.8,
  //     maxSize: 800,
  //     // cropOpt: CropOption(
  //     //   aspectRatio: CropAspectRatio.wh16x9,
  //     // ),
  //     maxTime: 15,
  //   );
  //   print(res);
  //   if (res != null) {
  //     print(res[0].path);
  //     setState(() {
  //       path = res[0].thumbPath;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'asset/ic_launcher.png',
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        'MBOKA',
                        style: TextStyle(
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber.shade900,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        color: Colors.black,
                        onPressed: () => {
                              showMenu(
                                  context: context,
                                  position:
                                      const RelativeRect.fromLTRB(0, 0, 0, 0),
                                  items: [
                                    PopupMenuItem(
                                        onTap: () => {},
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.bug_report,
                                              color: Colors.amber.shade900,
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            const Text('Reporter un bug'),
                                          ],
                                        )),
                                    PopupMenuItem(
                                        onTap: () => {},
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.share_outlined,
                                              color: Colors.amber.shade900,
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            const Text('Partager MBOKA'),
                                          ],
                                        )),
                                    PopupMenuItem(
                                        onTap: () => {},
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.phone_android,
                                              color: Colors.amber.shade900,
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            const Text(
                                                'Contacter la Team Mboka'),
                                          ],
                                        )),
                                    PopupMenuItem(
                                        onTap: () => {},
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.logout,
                                              color: Colors.amber.shade900,
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            const Text('Se deconnecter'),
                                          ],
                                        ))
                                  ])
                            },
                        iconSize: 23,
                        icon: const Icon(Icons.more_vert_rounded)),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () => {},
            child: SizedBox(
              width: 120,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Image.network(
                  'https://via.placeholder.com/150',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
