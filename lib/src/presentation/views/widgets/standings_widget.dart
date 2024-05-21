import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foot_mobile/src/domain/models/standings.dart';
import 'package:foot_mobile/src/presentation/views/widgets/standings_row_widget.dart';

class StandingsWidget extends HookWidget {

  const StandingsWidget({super.key, required this.standings});

  final List<Standings> standings;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(height: 8),
      itemCount: standings.length,
      itemBuilder: (context, index) {
        return StandingsRowWidget(index: index+1, standing: standings[index]);
      },
    );
  }
}