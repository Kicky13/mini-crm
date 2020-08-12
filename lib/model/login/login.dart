class Login {
    String token;

    Login({this.token});

    factory Login.fromJson(Map<String, dynamic> json) {
        return Login(
            token: json['token'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['token'] = this.token;
        return data;
    }
}