import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:pdf/widgets.dart';

class PdfHelper {
  static Future<File> saveDocument({
    required String name,
    required Document pdf,
  }) async {
    final bytes = await pdf.save();

    final file = File('/storage/emulated/0/Download/$name');

    await file.writeAsBytes(bytes);

    return file;
  }

  static Future openFile(File file) async {
    final url = file.path;

    await OpenFile.open(url);
  }
}