

class UserModel {
  List<Data>? data;
  String? message;

  UserModel({this.data, this.message});

  UserModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  String? sId;
  String? league;
  String? team1;
  String? team1ShortName;
  String? team2;
  String? team2ShortName;
  String? price;
  String? datetime;
  List<String>? joincontest;
  int? iV;
  List<String>? allrounder;
  List<String>? batsman;
  List<String>? wicketKeepers;
  List<String>? bowler;

  Data(
      {this.sId,
        this.league,
        this.team1,
        this.team1ShortName,
        this.team2,
        this.team2ShortName,
        this.price,
        this.datetime,
        this.joincontest,
        this.iV,
        this.allrounder,
        this.batsman,
        this.wicketKeepers,
        this.bowler});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    league = json['league'];
    team1 = json['team1'];
    team1ShortName = json['team1_short_name'];
    team2 = json['team2'];
    team2ShortName = json['team2_short_name'];
    price = json['price'];
    datetime = json['datetime'];
    joincontest = json['joincontest'].cast<String>();
    iV = json['__v'];
    allrounder = json['allrounder'].cast<String>();
    batsman = json['batsman'].cast<String>();
    wicketKeepers = json['wicket_Keepers'].cast<String>();
    bowler = json['bowler'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['league'] = this.league;
    data['team1'] = this.team1;
    data['team1_short_name'] = this.team1ShortName;
    data['team2'] = this.team2;
    data['team2_short_name'] = this.team2ShortName;
    data['price'] = this.price;
    data['datetime'] = this.datetime;
    data['joincontest'] = this.joincontest;
    data['__v'] = this.iV;
    data['allrounder'] = this.allrounder;
    data['batsman'] = this.batsman;
    data['wicket_Keepers'] = this.wicketKeepers;
    data['bowler'] = this.bowler;
    return data;
  }
}
