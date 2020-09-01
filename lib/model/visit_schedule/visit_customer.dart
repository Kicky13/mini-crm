class VisitCustomer {
  String ID_KUNJUNGAN_CUSTOMER;
  String ID_USER;
  String JENIS_USER;
  String NAMA_SALES;
  String ID_CUSTOMER;
  String NM_CUSTOMER;
  String TELP_CUSTOMER;
  String ALAMAT;
  String NAMA_PEMILIK;
  String CHECKIN_LATITUDE;
  String CHECKIN_LONGITUDE;
  String CHECKIN_TIME;
  String CHECKOUT_LATITUDE;
  String CHECKOUT_LONGITUDE;
  String CHECKOUT_TIME;
  String TGL_RENCANA_KUNJUNGAN;
  String SELESAI;
  String MULAI;
  String WAKTU_KUNJUNGAN;
  String JAM;
  String MENIT;
  String KETERANGAN;
  String SEQUENCE;
  String ORDER_SEMEN;
  String LONGITUDE;
  String LATITUDE;
  String ALASAN_KUNJUNGAN;

  VisitCustomer.fromJsonMap(Map<String, dynamic> map)
      : ID_KUNJUNGAN_CUSTOMER = map["ID_KUNJUNGAN_CUSTOMER"]?.toString(),
        ID_USER = map["ID_USER"]?.toString(),
        JENIS_USER = map["JENIS_USER"]?.toString(),
        NAMA_SALES = map["NAMA_SALES"]?.toString(),
        ID_CUSTOMER = map["ID_CUSTOMER"]?.toString(),
        NM_CUSTOMER = map["NM_CUSTOMER"]?.toString(),
        TELP_CUSTOMER = map["TELP_CUSTOMER"]?.toString(),
        ALAMAT = map["ALAMAT"]?.toString(),
        NAMA_PEMILIK = map["NAMA_PEMILIK"]?.toString(),
        CHECKIN_LATITUDE = map["CHECKIN_LATITUDE"]?.toString(),
        CHECKIN_LONGITUDE = map["CHECKIN_LONGITUDE"]?.toString(),
        CHECKIN_TIME = map["CHECKIN_TIME"]?.toString(),
        CHECKOUT_LATITUDE = map["CHECKOUT_LATITUDE"]?.toString(),
        CHECKOUT_LONGITUDE = map["CHECKOUT_LONGITUDE"]?.toString(),
        CHECKOUT_TIME = map["CHECKOUT_TIME"]?.toString(),
        TGL_RENCANA_KUNJUNGAN = map["TGL_RENCANA_KUNJUNGAN"]?.toString(),
        SELESAI = map["SELESAI"]?.toString(),
        MULAI = map["MULAI"]?.toString(),
        WAKTU_KUNJUNGAN = map["WAKTU_KUNJUNGAN"]?.toString(),
        JAM = map["JAM"]?.toString(),
        MENIT = map["MENIT"]?.toString(),
        KETERANGAN = map["KETERANGAN"]?.toString(),
        SEQUENCE = map["SEQUENCE"]?.toString(),
        ORDER_SEMEN = map["ORDER_SEMEN"]?.toString(),
        LONGITUDE = map["LONGITUDE"]?.toString(),
        LATITUDE = map["LATITUDE"]?.toString(),
        ALASAN_KUNJUNGAN = map["ALASAN_KUNJUNGAN"]?.toString();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID_KUNJUNGAN_CUSTOMER'] = ID_KUNJUNGAN_CUSTOMER;
    data['ID_USER'] = ID_USER;
    data['JENIS_USER'] = JENIS_USER;
    data['NAMA_SALES'] = NAMA_SALES;
    data['ID_CUSTOMER'] = ID_CUSTOMER;
    data['NM_CUSTOMER'] = NM_CUSTOMER;
    data['TELP_CUSTOMER'] = TELP_CUSTOMER;
    data['ALAMAT'] = ALAMAT;
    data['NAMA_PEMILIK'] = NAMA_PEMILIK;
    data['CHECKIN_LATITUDE'] = CHECKIN_LATITUDE;
    data['CHECKIN_LONGITUDE'] = CHECKIN_LONGITUDE;
    data['CHECKIN_TIME'] = CHECKIN_TIME;
    data['CHECKOUT_LATITUDE'] = CHECKOUT_LATITUDE;
    data['CHECKOUT_LONGITUDE'] = CHECKOUT_LONGITUDE;
    data['CHECKOUT_TIME'] = CHECKOUT_TIME;
    data['TGL_RENCANA_KUNJUNGAN'] = TGL_RENCANA_KUNJUNGAN;
    data['SELESAI'] = SELESAI;
    data['MULAI'] = MULAI;
    data['WAKTU_KUNJUNGAN'] = WAKTU_KUNJUNGAN;
    data['JAM'] = JAM;
    data['MENIT'] = MENIT;
    data['KETERANGAN'] = KETERANGAN;
    data['SEQUENCE'] = SEQUENCE;
    data['ORDER_SEMEN'] = ORDER_SEMEN;
    data['LONGITUDE'] = LONGITUDE;
    data['LATITUDE'] = LATITUDE;
    data['ALASAN_KUNJUNGAN'] = ALASAN_KUNJUNGAN;
    return data;
  }
}
