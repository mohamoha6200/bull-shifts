import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
class Failure<T> with _$Failure<T> {
  /// Json parsing Failure
  const factory Failure.readAssetFailure(
          [@Default("La lecture du fichier Json a échoué") String message]) =
      ReadAssetFailure;
}
