import 'package:flutter/material.dart';

class ViewHistoryTile extends StatelessWidget {
  @protected
  final String caption;

  const ViewHistoryTile({
    required this.caption,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFF2F2F2),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(caption),
            ),
          ],
        ),
      ),
    );
  }
}
