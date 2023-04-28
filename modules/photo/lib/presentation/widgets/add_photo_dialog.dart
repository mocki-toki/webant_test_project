
import 'dart:io';

import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo/photo.dart';

class AddPhotoDialog extends StatelessWidget {
  const AddPhotoDialog();

  static Future<void> open(BuildContext context) {
    return showCupertinoModalPopup(
      context: context,
      builder: (_) => AddPhotoDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            onPressed: () => _onSelect(context, ImageSource.gallery),
            child: Text('Select from gallery'),
          ),
          CupertinoActionSheetAction(
            onPressed: () => _onSelect(context, ImageSource.camera),
            child: Text('Take a photo'),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            'Cancel',
            style: TextStyle(color: Colors.accent),
          ),
        ),
      ),
    );
  }

  Future<void> _onSelect(BuildContext context, ImageSource source) async {
    final file = await ImagePicker().pickImage(source: source);
    if (file != null) {
      Navigator.pop(context);
      return context.open(AddPhotoPageRoute(File(file.path)));
    }
  }
}
