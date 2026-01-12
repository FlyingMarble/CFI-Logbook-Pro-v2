import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'issued_endorsement.g.dart';

@HiveType(typeId: 2)
class IssuedEndorsement extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  String studentId;

  @HiveField(2)
  String templateId;

  @HiveField(3)
  String renderedText;

  @HiveField(4)
  DateTime issuedDate;

  @HiveField(5)
  String instructorSignaturePath;

  IssuedEndorsement({
    String? id,
    required this.studentId,
    required this.templateId,
    required this.renderedText,
    required this.instructorSignaturePath,
    DateTime? issuedDate,
  })  : id = id ?? const Uuid().v4(),
        issuedDate = issuedDate ?? DateTime.now();
}
