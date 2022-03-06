import 'dart:io';
import 'package:path_provider/path_provider.dart';

// Retrieves the path to application's own Support directory to store db, etc.
Future<String> getPath() async {
  Directory docDir = await getApplicationSupportDirectory();
  var pathList = docDir.path.split('\\');
  // pathList[pathList.length - 1] = 'Pictures';
  var picturePath = pathList.join('\\');
  // print(picturePath);
  return picturePath;
}
