import 'package:flutter/material.dart';

class HistoryRecordTile extends StatelessWidget {
  @protected
  final String caption;

  const HistoryRecordTile({
    required this.caption,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFF2F2F2),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(caption),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
