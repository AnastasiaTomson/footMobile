import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foot_mobile/src/domain/models/standings.dart';
import 'package:foot_mobile/src/utils/extensions.dart';

class StandingsRowWidget extends HookWidget {

  const StandingsRowWidget({super.key, required this.index, required this.standing});

  final int index;
  final Standings standing;

  @override
  Widget build(BuildContext context) {
    final theme = useState(Theme.of(context));
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: standing.color != null
              ? standing.color!.toColor().withOpacity(.3)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            child: Text(
              index.toString(),
              textAlign: TextAlign.center,
              style: theme.value.primaryTextTheme.bodyMedium,
            ),
          ),
          SizedBox(width: 4),
          Expanded(
            child: Row(
              children: [
                if (standing.logo != null)
                  Image.network(standing.logo!, width: 16),
                SizedBox(width: 8),
                Text(
                  standing.teamName,
                  style: theme.value.primaryTextTheme.bodyMedium,
                ),
              ],
            ),
          ),
          SizedBox(width: 8),
          SizedBox(
            width: 20,
            child: Text(
              standing.gamesPlayed.toString(),
              textAlign: TextAlign.center,
              style: theme.value.primaryTextTheme.bodyMedium,
            ),
          ),
          SizedBox(width: 8),
          SizedBox(
            width: 20,
            child: Text(
              standing.wins.toString(),
              textAlign: TextAlign.center,
              style: theme.value.primaryTextTheme.bodyMedium,
            ),
          ),
          SizedBox(width: 8),
          SizedBox(
            width: 20,
            child: Text(
              standing.draws.toString(),
              textAlign: TextAlign.center,
              style: theme.value.primaryTextTheme.bodyMedium,
            ),
          ),
          SizedBox(width: 8),
          SizedBox(
            width: 20,
            child: Text(
              standing.losses.toString(),
              textAlign: TextAlign.center,
              style: theme.value.primaryTextTheme.bodyMedium,
            ),
          ),
          SizedBox(width: 8),
          SizedBox(
            width: 20,
            child: Text(
              standing.points.toString(),
              textAlign: TextAlign.center,
              style: theme.value.primaryTextTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}