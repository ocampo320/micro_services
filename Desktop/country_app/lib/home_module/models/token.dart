class Token {
  String? authToken;

  Token({this.authToken});

  Token.fromJson(Map<String, dynamic> json) {
    authToken = json['auth_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['auth_token'] = this.authToken;
    return data;
  }
}
