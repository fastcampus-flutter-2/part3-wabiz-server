import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_dto.freezed.dart';

part 'response_dto.g.dart';

@freezed
class ResponseDto with _$ResponseDto {
  const factory ResponseDto({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: 'msg') String? msg,
    @JsonKey(name: 'body') String? body,
  }) = _ResponseDto;

  factory ResponseDto.fromJson(Map<String, Object?> json) =>
      _$ResponseDtoFromJson(json);
}
