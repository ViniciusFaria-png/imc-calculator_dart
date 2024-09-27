
import 'package:imc_calculator/exception/nome_invalido_exception.dart';
import 'package:imc_calculator/models/console_utils.dart';
import 'package:imc_calculator/models/person.dart';

void execute () {
  print("IMC Calculator!");
  String name = ConsoleUtils.lerStringComTexto("Qual seu nome?");
  try{
    if(name.trim() == ""){
        throw NomeInvalidoException();
    }
  } catch(NomeInvalidoException){
    name= "Name";
    print(NomeInvalidoException);
  } catch(e) {
    print(e);
  }

  double? weight;
  double? height;
  try{
     weight = ConsoleUtils.lerDoubleComTexto("Qual seu peso em KGs:");
    if( weight! <= 0){
      throw ArgumentError("O peso deve ser maior que 0.");
    }
  } catch (e) {
    print("Erro ao ler o peso: $e");
    return;
  }

  try{
     height = ConsoleUtils.lerDoubleComTexto("Qual seu peso em KGs:");
    if( height! <= 0){
      throw ArgumentError("A altura deve ser maior que 0.");
    }
  } catch (e) {
    print("Erro ao ler a altura: $e");
    return;
  }

  var person = Person(name, weight, height);

  print(person);

}