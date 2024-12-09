import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:oro_moskofidi_test_app/core/utils/localizations.dart';

import 'package:oro_moskofidi_test_app/features/files/presentation/widgets/molecules/files_list_view.dart';

class FilesScreen extends StatefulWidget {
  const FilesScreen({super.key});

  @override
  State<FilesScreen> createState() => _FilesScreenState();
}

class _FilesScreenState extends State<FilesScreen> {
  @visibleForTesting
  static const filesSource = [
    'https://images.pexels.com/photos/28857430/pexels-photo-28857430.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/26833902/pexels-photo-26833902.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/29414465/pexels-photo-29414465.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/29502178/pexels-photo-29502178.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(context.l10n.filesScreenTitle),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: FilesListView(
            source: UnmodifiableListView(filesSource),
          ),
        ),
      ),
    );
  }
}
