import 'package:equatable/equatable.dart';

class BaseRoute extends Equatable {
  final String name;
  final String path;

  const BaseRoute({
    required this.name,
    required this.path,
  });

  @override
  List<Object?> get props => [
        name,
        path,
      ];
}
