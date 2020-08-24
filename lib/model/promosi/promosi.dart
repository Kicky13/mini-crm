class Promosi {
    String iD_PROMOSI;
    String lABEL_FIELD;
    String pROMOSI;
    String tYPE_INPUT;

    Promosi({this.iD_PROMOSI, this.lABEL_FIELD, this.pROMOSI, this.tYPE_INPUT});

    factory Promosi.fromJson(Map<String, dynamic> json) {
        return Promosi(
            iD_PROMOSI: json['iD_PROMOSI'], 
            lABEL_FIELD: json['lABEL_FIELD'] != null ? json['lABEL_FIELD'] : null,
            pROMOSI: json['pROMOSI'], 
            tYPE_INPUT: json['tYPE_INPUT'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['iD_PROMOSI'] = this.iD_PROMOSI;
        data['pROMOSI'] = this.pROMOSI;
        data['tYPE_INPUT'] = this.tYPE_INPUT;
        if (this.lABEL_FIELD != null) {
            data['lABEL_FIELD'] = this.lABEL_FIELD;
        }
        return data;
    }
}