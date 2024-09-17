

import 'dart:convert';
import 'dart:io';

import 'package:imc_calculator/models/person.dart';

void execute () {
  print("IMC Calculator!");
  print("Qual seu nome?");
  String name = stdin.readLineSync(encoding: utf8) ?? "";
  print("Digite seu peso em KGs:");
  String input = stdin.readLineSync(encoding: utf8) ?? "";
  double weight = double.parse(input);
  print("Digite sua Altura em metros:");
  String input2 = stdin.readLineSync(encoding: utf8) ?? "";
  double height = double.parse(input2);

  var person = Person(name, weight, height);

  print(person);

}