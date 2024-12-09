import 'package:flutter/material.dart';

import 'package:oro_moskofidi_test_app/core/utils/localizations.dart';

class ClearHistoryButton extends StatelessWidget {
  @protected
  final ValueChanged<bool> onPressed;

  const ClearHistoryButton({
    required this.onPressed,
    super.key,
  });

  @protected
  Future<void> _showDialog(BuildContext context) async {
    await showDialog<bool>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(context.l10n.clearHistoryDialogTitle),
        content: Text(context.l10n.clearHistoryDialogDescription),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              onPressed(false);
              Navigator.pop(context, false);
            },
            child: Text(context.l10n.noButtonCaption),
          ),
          TextButton(
            onPressed: () {
              onPressed(true);
              Navigator.pop(context, true);
            },
            child: Text(
              context.l10n.yesButtonCaption,
              style: const TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent.withOpacity(0.5),
      elevation: 0,
      child: InkWell(
        onTap: () async {
          await _showDialog(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(context.l10n.clearHistoryButtonCaption),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
