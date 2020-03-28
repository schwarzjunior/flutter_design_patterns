import 'dart:math' as math;

import 'package:meta/meta.dart';

import 'package:flutter_design_patterns/design_patterns/template_method/student.dart';

abstract class StudentsBmiCalculator {
  List<Student> calculateBmiAndReturnStudentList() {
    var studentsList = getStudentsData();
    studentsList = doStudentsFiltering(studentsList);
    _calculateStudentsBmi(studentsList);
    return studentsList;
  }

  void _calculateStudentsBmi(List<Student> studentsList) {
    for (var student in studentsList) {
      student.bmi = _calculateBmi(student.height, student.weight);
    }
  }

  double _calculateBmi(double height, int weight) {
    return weight / math.pow(height, 2);
  }

  // Hook methods
  @protected
  List<Student> doStudentsFiltering(List<Student> studentsList) {
    return studentsList;
  }

  // Abstract methods
  @protected
  List<Student> getStudentsData();
}