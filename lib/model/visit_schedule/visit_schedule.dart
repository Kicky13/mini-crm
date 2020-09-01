class VisitSchedule {
  final String ID_KUNJUNGAN_CUSTOMER;
  final String ID_USER;
  final String JENIS_USER;
  final String NAMA_SALES;
  final String ID_CUSTOMER;
  final String NM_CUSTOMER;
  final String TELP_CUSTOMER;
  final String ALAMAT;
  final String NAMA_PEMILIK;
  final String CHECKIN_LATITUDE;
  final String CHECKIN_LONGITUDE;
  final String CHECKIN_TIME;
  final String CHECKOUT_LATITUDE;
  final String CHECKOUT_LONGITUDE;
  final String CHECKOUT_TIME;
  final String TGL_RENCANA_KUNJUNGAN;
  final String SELESAI;
  final String MULAI;
  final String WAKTU_KUNJUNGAN;
  final String JAM;
  final String MENIT;
  final String KETERANGAN;
  final String SEQUENCE;
  final String ORDER_SEMEN;
  final String ALASAN_KUNJUNGAN;
  final bool needSync;
  final bool isDelete;
  final bool isLocal;
  final bool onUpdate;
  final bool isProgress;

  VisitSchedule(
      {this.ID_KUNJUNGAN_CUSTOMER,
      this.ID_USER,
      this.JENIS_USER,
      this.NAMA_SALES,
      this.ID_CUSTOMER,
      this.NM_CUSTOMER,
      this.TELP_CUSTOMER,
      this.ALAMAT,
      this.NAMA_PEMILIK,
      this.CHECKIN_LATITUDE,
      this.CHECKIN_LONGITUDE,
      this.CHECKIN_TIME,
      this.CHECKOUT_LATITUDE,
      this.CHECKOUT_LONGITUDE,
      this.CHECKOUT_TIME,
      this.TGL_RENCANA_KUNJUNGAN,
      this.SELESAI,
      this.MULAI,
      this.WAKTU_KUNJUNGAN,
      this.JAM,
      this.MENIT,
      this.KETERANGAN,
      this.SEQUENCE,
      this.ORDER_SEMEN,
      this.ALASAN_KUNJUNGAN,
      this.needSync = true,
      this.isDelete = false,
      this.isLocal = true,
      this.onUpdate = false,
      this.isProgress = false});

  VisitSchedule.fromJsonMap(Map<String, dynamic> map)
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
        ALASAN_KUNJUNGAN = map["ALASAN_KUNJUNGAN"]?.toString(),
        needSync = false,
        isDelete = false,
        isLocal = false,
        onUpdate = false,
        isProgress = false;

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
    data['ALASAN_KUNJUNGAN'] = ALASAN_KUNJUNGAN;
    return data;
  }
}
