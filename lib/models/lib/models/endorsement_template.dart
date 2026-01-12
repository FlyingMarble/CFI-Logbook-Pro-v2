import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'endorsement_template.g.dart';

@HiveType(typeId: 1)
class EndorsementTemplate extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String category; // Solo, XC, Practical Test, etc.

  @HiveField(3)
  String body; 
  // Example: 
  // "I certify that {{student_name}} has received and logged the required training..."

  @HiveField(4)
  bool isDefault;

  @HiveField(5)
  DateTime updatedAt;

  EndorsementTemplate({
    String? id,
    required this.title,
    required this.category,
    required this.body,
    this.isDefault = false,
    DateTime? updatedAt,
  })  : id = id ?? const Uuid().v4(),
        updatedAt = updatedAt ?? DateTime.now();
}
