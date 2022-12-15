class funcionesbd{
  static String Nom="",
  Ap="",
  Correo="",
  Con="",
  ConfCon="";
  Usuario(String noM,String AP,String Crr, String Contra, String Confirmcon){
    Nom=noM;
    Ap=AP;
    Correo=Crr;
    Con=Contra;
    ConfCon=Confirmcon;
  }
  String getNombre(){
    return Nom;
  }
  String getApellidos(){
    return Ap;
  }
}