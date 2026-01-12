import 'package:hive/hive.dart';

part 'cfi_profile.g.dart';

@HiveType(typeId: 3)
class CfiProfile extends HiveObject {
  @HiveField(0)
  String fullName;

  @HiveField(1)
  String certificateNumber;

  @HiveField(2)
  DateTime certificateExpiration;

  @HiveField(3)
  String? signatureImagePath;

  CfiProfile({
    required this.fullName,
    required this.certificateNumber,
    required this.certificateExpiration,
    this.signatureImagePath,
  });
}
