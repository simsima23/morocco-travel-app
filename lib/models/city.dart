import 'activity.dart';
 
class City {
  final String name;
  final String description;
  final String imagePath;
  final List<Activity> activities;

  City({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.activities,
  });
}