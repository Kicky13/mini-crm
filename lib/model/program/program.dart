class Program {
  String bARIS;
  String cREATE_AT;
  String cREATE_BY;
  String dELETE_MARK;
  String dETAIL_PROGRAM;
  String eND_DATE;
  String iD_PROGRAM;
  String jUDUL_PROGRAM;
  String kODE_DISTRIBUTOR;
  String pIC_PROGRAM;
  String sTART_DATE;
  String uPDATE_AT;
  String uPDATE_BY;

  Program(
      {this.bARIS,
      this.cREATE_AT,
      this.cREATE_BY,
      this.dELETE_MARK,
      this.dETAIL_PROGRAM,
      this.eND_DATE,
      this.iD_PROGRAM,
      this.jUDUL_PROGRAM,
      this.kODE_DISTRIBUTOR,
      this.pIC_PROGRAM,
      this.sTART_DATE,
      this.uPDATE_AT,
      this.uPDATE_BY});

  factory Program.fromJson(Map<String, dynamic> json) {
    return Program(
      bARIS: json['BARIS'],
      cREATE_AT: json['CREATE_AT'],
      cREATE_BY: json['CREATE_BY'],
      dELETE_MARK: json['DELETE_MARK'],
      dETAIL_PROGRAM: json['DETAIL_PROGRAM'],
      eND_DATE: json['END_DATE'],
      iD_PROGRAM: json['ID_PROGRAM'],
      jUDUL_PROGRAM: json['JUDUL_PROGRAM'],
      kODE_DISTRIBUTOR: json['KODE_DISTRIBUTOR'],
      pIC_PROGRAM: json['PIC_PROGRAM'],
      sTART_DATE: json['START_DATE'],
      uPDATE_AT: json['UPDATE_AT'],
      uPDATE_BY: json['UPDATE_BY'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bARIS'] = this.bARIS;
    data['cREATE_AT'] = this.cREATE_AT;
    data['cREATE_BY'] = this.cREATE_BY;
    data['dELETE_MARK'] = this.dELETE_MARK;
    data['dETAIL_PROGRAM'] = this.dETAIL_PROGRAM;
    data['eND_DATE'] = this.eND_DATE;
    data['iD_PROGRAM'] = this.iD_PROGRAM;
    data['jUDUL_PROGRAM'] = this.jUDUL_PROGRAM;
    data['kODE_DISTRIBUTOR'] = this.kODE_DISTRIBUTOR;
    data['pIC_PROGRAM'] = this.pIC_PROGRAM;
    data['sTART_DATE'] = this.sTART_DATE;
    data['uPDATE_AT'] = this.uPDATE_AT;
    data['uPDATE_BY'] = this.uPDATE_BY;
    return data;
  }
}
