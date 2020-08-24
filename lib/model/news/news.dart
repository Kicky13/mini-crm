class News {
  String aUTHOR;
  String cONTENT;
  String dISCRIPTION;
  String gUID;
  String iD_ARTIKEL;
  String lINK;
  String pUP_DATE;
  String tHUMBNAIL;
  String tITLE;

  News(
      {this.aUTHOR,
      this.cONTENT,
      this.dISCRIPTION,
      this.gUID,
      this.iD_ARTIKEL,
      this.lINK,
      this.pUP_DATE,
      this.tHUMBNAIL,
      this.tITLE});

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      aUTHOR: json['AUTHOR'] ?? "Data Kosong",
      cONTENT: json['CONTENT'] ?? "Data Kosong",
      dISCRIPTION: json['DISCRIPTION'] ?? "Data Kosong",
      gUID: json['GUID'] ?? "Data Kosong",
      iD_ARTIKEL: json['ID_ARTIKEL'] ?? "Data Kosong",
      lINK: json['LINK'] ?? "Data Kosong",
      pUP_DATE: json['PUP_DATE'] ?? "Data Kosong",
      tHUMBNAIL: json['THUMBNAIL'] ?? "Data Kosong",
      tITLE: json['TITLE'] ?? "Data Kosong",
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AUTHOR'] = this.aUTHOR;
    data['CONTENT'] = this.cONTENT;
    data['GUID'] = this.gUID;
    data['ID_ARTIKEL'] = this.iD_ARTIKEL;
    data['LINK'] = this.lINK;
    data['PUP_DATE'] = this.pUP_DATE;
    data['THUMBNAIL'] = this.tHUMBNAIL;
    data['TITLE'] = this.tITLE;
    data['DISCRIPTION'] = this.dISCRIPTION;
    return data;
  }
}
