class ContestModel {
  List<Contest>? data;

  ContestModel({this.data});

  ContestModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Contest>[];
      json['data'].forEach((v) {
        data!.add( new  Contest.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Contest {
  String? sId;
  String? prizepoal;
  String? entryfee;
  String? offer;
  int? totalspots;
  int? iV;

  Contest(
      {this.sId,
        this.prizepoal,
        this.entryfee,
        this.offer,
        this.totalspots,
        this.iV});

  Contest.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    prizepoal = json['prizepoal'];
    entryfee = json['entryfee'];
    offer = json['offer'];
    totalspots = json['totalspots'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['prizepoal'] = this.prizepoal;
    data['entryfee'] = this.entryfee;
    data['offer'] = this.offer;
    data['totalspots'] = this.totalspots;
    data['__v'] = this.iV;
    return data;
  }
}
