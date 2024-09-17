

class Person {
  String _name = "";
  double _weight = 0.0;
  double _height = 0.0;

  Person(this._name, this._weight, this._height);


  void setName(String name){
    _name = name;
  }
  void setWeight(double weight){
    _weight = weight;
  }
  void setHeight(double height){
    _height = height;
  }

  String getName(){
    return _name;
  }
  
  double getWeight(){
    return _weight;
  }

  double getHeight(){
    return _height;
  }

  double imcCalculate(){
    double imc = _weight / (_height*_height);
    return imc.isNaN ? 0 : imc;
  } 


  @override
  String toString() {
    return {
      "Nome": _name,
      "Peso": _weight,
      "Altura": _height,
      "IMC": imcCalculate(),
    }.toString();
  }
}