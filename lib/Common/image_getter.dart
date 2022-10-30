import 'dart:io';
import 'dart:typed_data';




import 'package:flutter/material.dart';

import 'package:photo_manager/photo_manager.dart';

import '../utilities/colors.dart';

class ImageGetterPage extends StatefulWidget {
  int code;
  ImageGetterPage(this.code);

  @override
  _ImageGetterPageState createState() => _ImageGetterPageState();
}
class _ImageGetterPageState extends State<ImageGetterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Select Image"),
          backgroundColor: Colors.black
      ),
      body: MediaGrid(widget.code),
    );
  }
}
class MediaGrid extends StatefulWidget {
  int code;

  MediaGrid(this.code);

  @override
  _MediaGridState createState() => _MediaGridState();
}
class _MediaGridState extends State<MediaGrid> {
  List<Widget> _mediaList = [];
  int currentPage = 0;
  int? lastPage;
  File? image ;
  @override
  void initState() {
    super.initState();
    _fetchNewMedia();
  }
  _handleScrollEvent(ScrollNotification scroll) {
    if (scroll.metrics.pixels / scroll.metrics.maxScrollExtent > 0.33) {
      if (currentPage != lastPage) {
        _fetchNewMedia();
      }
    }
  }
  _fetchNewMedia() async {
    lastPage = currentPage;
    var result = await PhotoManager.requestPermissionExtend();
    if (result.isAuth) {
      // success
//load the album list
      List<AssetPathEntity> albums =
      await PhotoManager.getAssetPathList(onlyAll: true);
      print(albums);
      List<AssetEntity> media =
      await albums[0].getAssetListPaged(page:currentPage, size:60);
      print(media);
      List<Widget> temp = [];
      for (var asset in media.where((element) => element.type == AssetType.image)) {
        temp.add(
          FutureBuilder<Uint8List?>(
            future: asset.thumbnailDataWithSize(ThumbnailSize(200, 200)),
            builder: (BuildContext context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return InkWell(
                  onTap: () async {
                    var asp;
                    File? file = await asset.file;
                     File croppedImage;
                     if (widget.code == 100){
                         //asp = CropAspectRatio(ratioX: 1.0, ratioY: 0.7);






                             // CropAspectRatioPreset.ratio5x3,












                       //imageFile = croppedImage;
                       Navigator.pop(context,file);
                       setState(() {});
                     }
                    //setState(() {
                    //  image = file;
                   // });
                  },
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Image.memory(
                          snapshot.data!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      if (asset.type == AssetType.video)
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 5, bottom: 5),
                            child: Icon(
                              Icons.videocam,
                              color: Colors.white,
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              }
              return Container();
            },
          ),
        );
      }
      setState(() {
        _mediaList.addAll(temp);
        currentPage++;
      });
    } else {
      // fail
      /// if result is fail, you can call `PhotoManager.openSetting();`  to open android/ios applicaton's setting to get permission
    }
  }
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scroll)
      {
  _handleScrollEvent(scroll);
  return true;


      },
      child: Column(
        children: [

          Flexible(
            flex: 4,
            child: GridView.builder(
                itemCount: _mediaList.length,
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return _mediaList[index];
                }),
          ),
        ],
      ),
    );
  }
}