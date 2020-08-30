class Customer {
  String bARIS;
  int iDCUSTOMER;
  String kODECUSTOMER;
  String nAMATOKO;
  String tELPTOKO;
  String aLAMAT;
  dynamic kODEPOS;
  String nAMAPEMILIK;
  String tELPPEMILIK;
  dynamic nOKTPPEMILIK;
  dynamic tGLLAHIR;
  String iDKECAMATAN;
  String nAMAKECAMATAN;
  int iDDISTRIK;
  String nAMADISTRIK;
  int iDAREA;
  String nAMAAREA;
  int iDPROVINSI;
  String nAMAPROVINSI;
  String rEGION;
  dynamic lONGITUDE;
  dynamic lATITUDE;
  dynamic kOORDINATLOCK;
  dynamic kAPASITASZAK;
  dynamic kAPASITASTON;
  dynamic kAPASITASJUAL;
  String kAPASITASTOKO;
  String sTATUSTOKO;
  String gROUPCUSTOMER;
  dynamic kETERANGAN;
  int iDDISTRIBUTOR;
  String nAMADISTRIBUTOR;
  // int nEEDSYNC;
  // int iSSHOWBIRTHDAY;
  // int nEEDSYNCLOCATION;
  // int iSDELETE;
  // int iSLOCAL;
  // int iSPROGRESS;

  Customer(
      {this.bARIS,
      this.iDCUSTOMER,
      this.kODECUSTOMER,
      this.nAMATOKO,
      this.tELPTOKO,
      this.aLAMAT,
      this.kODEPOS,
      this.nAMAPEMILIK,
      this.tELPPEMILIK,
      this.nOKTPPEMILIK,
      this.tGLLAHIR,
      this.iDKECAMATAN,
      this.nAMAKECAMATAN,
      this.iDDISTRIK,
      this.nAMADISTRIK,
      this.iDAREA,
      this.nAMAAREA,
      this.iDPROVINSI,
      this.nAMAPROVINSI,
      this.rEGION,
      this.lONGITUDE,
      this.lATITUDE,
      this.kOORDINATLOCK,
      this.kAPASITASZAK,
      this.kAPASITASTON,
      this.kAPASITASJUAL,
      this.kAPASITASTOKO,
      this.sTATUSTOKO,
      this.gROUPCUSTOMER,
      this.kETERANGAN,
      this.iDDISTRIBUTOR,
      this.nAMADISTRIBUTOR
      // this.nEEDSYNC,
      // this.iSDELETE,
      // this.iSSHOWBIRTHDAY,
      // this.iSLOCAL,
      // this.iSPROGRESS,
      // this.nEEDSYNCLOCATION
      });

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
        bARIS: json["BARIS"],
        iDCUSTOMER: json["ID_CUSTOMER"],
        kODECUSTOMER: json["KODE_CUSTOMER"],
        nAMATOKO: json["NAMA_TOKO"],
        tELPTOKO: json["TELP_TOKO"],
        aLAMAT: json["ALAMAT"],
        kODEPOS: json["KODE_POS"],
        nAMAPEMILIK: json["NAMA_PEMILIK"],
        tELPPEMILIK: json["TELP_PEMILIK"],
        nOKTPPEMILIK: json["NOKTP_PEMILIK"],
        tGLLAHIR: json["TGL_LAHIR"],
        iDKECAMATAN: json["ID_KECAMATAN"],
        nAMAKECAMATAN: json["NAMA_KECAMATAN"],
        iDDISTRIK: json["ID_DISTRIK"],
        nAMADISTRIK: json["NAMA_DISTRIK"],
        iDAREA: json["ID_AREA"],
        nAMAAREA: json["NAMA_AREA"],
        iDPROVINSI: json["ID_PROVINSI"],
        nAMAPROVINSI: json["NAMA_PROVINSI"],
        rEGION: json["REGION"],
        lONGITUDE: json["LONGITUDE"],
        lATITUDE: json["LATITUDE"],
        kOORDINATLOCK: json["KOORDINAT_LOCK"],
        kAPASITASZAK: json["KAPASITAS_ZAK"],
        kAPASITASTON: json["KAPASITAS_TON"],
        kAPASITASJUAL: json["KAPASITAS_JUAL"],
        kAPASITASTOKO: json["KAPASITAS_TOKO"],
        sTATUSTOKO: json["STATUS_TOKO"],
        gROUPCUSTOMER: json["GROUP_CUSTOMER"],
        kETERANGAN: json["KETERANGAN"],
        iDDISTRIBUTOR: json["ID_DISTRIBUTOR"],
        nAMADISTRIBUTOR: json["NAMA_DISTRIBUTOR"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["BARIS"] = this.bARIS;
    data["ID_CUSTOMER"] = this.iDCUSTOMER;
    data["KODE_CUSTOMER"] = this.kODECUSTOMER;
    data["NAMA_TOKO"] = this.nAMATOKO;
    data["TELP_TOKO"] = this.tELPTOKO;
    data["ALAMAT"] = this.aLAMAT;
    data["KODE_POS"] = this.kODEPOS;
    data["NAMA_PEMILIK"] = this.nAMAPEMILIK;
    data["TELP_PEMILIK"] = this.tELPPEMILIK;
    data["NOKTP_PEMILIK"] = this.nOKTPPEMILIK;
    data["TGL_LAHIR"] = this.tGLLAHIR;
    data["ID_KECAMATAN"] = this.iDKECAMATAN;
    data["NAMA_KECAMATAN"] = this.nAMAKECAMATAN;
    data["ID_DISTRIK"] = this.iDDISTRIK;
    data["NAMA_DISTRIK"] = this.nAMADISTRIK;
    data["ID_AREA"] = this.iDAREA;
    data["NAMA_AREA"] = this.nAMAAREA;
    data["ID_PROVINSI"] = this.iDPROVINSI;
    data["NAMA_PROVINSI"] = this.nAMAPROVINSI;
    data["REGION"] = this.rEGION;
    data["LONGITUDE"] = this.lONGITUDE;
    data["LATITUDE"] = this.lATITUDE;
    data["KOORDINAT_LOCK"] = this.kOORDINATLOCK;
    data["KAPASITAS_ZAK"] = this.kAPASITASZAK;
    data["KAPASITAS_TON"] = this.kAPASITASTON;
    data["KAPASITAS_JUAL"] = this.kAPASITASJUAL;
    data["KAPASITAS_TOKO"] = this.kAPASITASTOKO;
    data["STATUS_TOKO"] = this.sTATUSTOKO;
    data["GROUP_CUSTOMER"] = this.gROUPCUSTOMER;
    data["KETERANGAN"] = this.kETERANGAN;
    data["ID_DISTRIBUTOR"] = this.iDDISTRIBUTOR;
    data["NAMA_DISTRIBUTOR"] = this.nAMADISTRIBUTOR;
    return data;
  }
}
