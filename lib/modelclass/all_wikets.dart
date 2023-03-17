class AllWickets {
  List<NewZealandTeam>? newZealandTeam;
  List<AustraliaTeam>? australiaTeam;

  AllWickets({this.newZealandTeam, this.australiaTeam});

  AllWickets.fromJson(Map<String, dynamic> json) {
    if (json['New_Zealand_team'] != null) {
      newZealandTeam = <NewZealandTeam>[];
      json['New_Zealand_team'].forEach((v) {
        newZealandTeam!.add(new NewZealandTeam.fromJson(v));
      });
    }
    if (json['australia_team'] != null) {
      australiaTeam = <AustraliaTeam>[];
      json['australia_team'].forEach((v) {
        australiaTeam!.add(new AustraliaTeam.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.newZealandTeam != null) {
      data['New_Zealand_team'] =
          this.newZealandTeam!.map((v) => v.toJson()).toList();
    }
    if (this.australiaTeam != null) {
      data['australia_team'] =
          this.australiaTeam!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
class NewZealandTeam {
  List<Wicketkeepers>? wicketkeepers;
  List<Batsman>? batsman;
  List<Allrounder>? allrounder;
  List<Bowler>? bowler;

  NewZealandTeam(
      { this.wicketkeepers, this.batsman, this.allrounder, this.bowler });

  NewZealandTeam.fromJson(Map<String, dynamic> json) {
    if (json['wicketkeepers'] != null) {
      wicketkeepers = <Wicketkeepers>[];
      json['wicketkeepers'].forEach((v) {
        wicketkeepers!.add(new Wicketkeepers.fromJson(v));
      });
    }
    if (json['batsman'] != null) {
      batsman = <Batsman>[];
      json['batsman'].forEach((v) {
        batsman!.add(new Batsman.fromJson(v));
      });
    }
    if (json['allrounder'] != null) {
      allrounder = <Allrounder>[];
      json['allrounder'].forEach((v) {
        allrounder!.add(new Allrounder.fromJson(v));
      });
    }
    if (json['bowler'] != null) {
      bowler = <Bowler>[];
      json['bowler'].forEach((v) {
        bowler!.add(new Bowler.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.wicketkeepers != null) {
      data['wicketkeepers'] =
          this.wicketkeepers!.map((v) => v.toJson()).toList();
    }
    if (this.batsman != null) {
      data['batsman'] = this.batsman!.map((v) => v.toJson()).toList();
    }
    if (this.allrounder != null) {
      data['allrounder'] = this.allrounder!.map((v) => v.toJson()).toList();
    }
    if (this.bowler != null) {
      data['bowler'] = this.bowler!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Bowler {
  String? sId;
  String? playerName;
  String? shortTeamName;
  double? credits;
  int? points;
  String? selBy;
  int? iV;

  Bowler(
      {this.sId,
        this.playerName,
        this.shortTeamName,
        this.credits,
        this.points,
        this.selBy,
        this.iV});

  Bowler.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    playerName = json['player_name'];
    shortTeamName = json['short_team_name'];
    credits = json['credits'];
    points = json['points'];
    selBy = json['sel_by'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['player_name'] = this.playerName;
    data['short_team_name'] = this.shortTeamName;
    data['credits'] = this.credits;
    data['points'] = this.points;
    data['sel_by'] = this.selBy;
    data['__v'] = this.iV;
    return data;
  }
}

class Allrounder {
  String? sId;
  String? playerName;
  String? shortTeamName;
  double? credits;
  int? points;
  String? selBy;
  int? iV;

  Allrounder (
      {this.sId,
        this.playerName,
        this.shortTeamName,
        this.credits,
        this.points,
        this.selBy,
        this.iV});

  Allrounder .fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    playerName = json['player_name'];
    shortTeamName = json['short_team_name'];
    credits = json['credits'];
    points = json['points'];
    selBy = json['sel_by'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['player_name'] = this.playerName;
    data['short_team_name'] = this.shortTeamName;
    data['credits'] = this.credits;
    data['points'] = this.points;
    data['sel_by'] = this.selBy;
    data['__v'] = this.iV;
    return data;
  }
}

class Batsman {
  String? sId;
  String? playerName;
  String? shortTeamName;
  double? credits;
  int? points;
  String? selBy;
  int? iV;

  Batsman(
      {this.sId,
        this.playerName,
        this.shortTeamName,
        this.credits,
        this.points,
        this.selBy,
        this.iV});

  Batsman.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    playerName = json['player_name'];
    shortTeamName = json['short_team_name'];
    credits = json['credits'];
    points = json['points'];
    selBy = json['sel_by'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['player_name'] = this.playerName;
    data['short_team_name'] = this.shortTeamName;
    data['credits'] = this.credits;
    data['points'] = this.points;
    data['sel_by'] = this.selBy;
    data['__v'] = this.iV;
    return data;
  }
}

class Wicketkeepers {
  String? sId;
  String? playerName;
  String? shortTeamName;
  double? credits;
  int? points;
  String? selBy;
  int? iV;

  Wicketkeepers(
      {this.sId,
        this.playerName,
        this.shortTeamName,
        this.credits,
        this.points,
        this.selBy,
        this.iV});

  Wicketkeepers.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    playerName = json['player_name'];
    shortTeamName = json['short_team_name'];
    credits = json['credits'];
    points = json['points'];
    selBy = json['sel_by'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['player_name'] = this.playerName;
    data['short_team_name'] = this.shortTeamName;
    data['credits'] = this.credits;
    data['points'] = this.points;
    data['sel_by'] = this.selBy;
    data['__v'] = this.iV;
    return data;
  }
}

class AustraliaTeam {
  List<AusWicketKeepers>? ausWicketKeepers;
  List<AusBatsman>? ausBatsman;
  List<AusAllrounder>? ausAllrounder;
  List<AusBowler>? ausBowler;

  AustraliaTeam(
      {this.ausWicketKeepers,
        this.ausBatsman,
        this.ausAllrounder,
        this.ausBowler});

  AustraliaTeam.fromJson(Map<String, dynamic> json) {
    if (json['aus_wicket_Keepers'] != null) {
      ausWicketKeepers = <AusWicketKeepers>[];
      json['aus_wicket_Keepers'].forEach((v) {
        ausWicketKeepers!.add(new AusWicketKeepers.fromJson(v));
      });
    }
    if (json['aus_batsman'] != null) {
      ausBatsman = <AusBatsman>[];
      json['aus_batsman'].forEach((v) {
        ausBatsman!.add(new AusBatsman.fromJson(v));
      });
    }
    if (json['aus_allrounder'] != null) {
      ausAllrounder = <AusAllrounder>[];
      json['aus_allrounder'].forEach((v) {
        ausAllrounder!.add(new AusAllrounder.fromJson(v));
      });
    }
    if (json['aus_bowler'] != null) {
      ausBowler = <AusBowler>[];
      json['aus_bowler'].forEach((v) {
        ausBowler!.add(new AusBowler.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ausWicketKeepers != null) {
      data['aus_wicket_Keepers'] =
          this.ausWicketKeepers!.map((v) => v.toJson()).toList();
    }
    if (this.ausBatsman != null) {
      data['aus_batsman'] = this.ausBatsman!.map((v) => v.toJson()).toList();
    }
    if (this.ausAllrounder != null) {
      data['aus_allrounder'] =
          this.ausAllrounder!.map((v) => v.toJson()).toList();
    }
    if (this.ausBowler != null) {
      data['aus_bowler'] = this.ausBowler!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AusBowler {

  String? sId;
  String? playerName;
  String? shortTeamName;
  double? credits;
  int? points;
  String? selBy;
  int? iV;

  AusBowler  (
      {this.sId,
        this.playerName,
        this.shortTeamName,
        this.credits,
        this.points,
        this.selBy,
        this.iV});

  AusBowler .fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    playerName = json['player_name'];
    shortTeamName = json['short_team_name'];
    credits = json['credits'];
    points = json['points'];
    selBy = json['sel_by'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['player_name'] = this.playerName;
    data['short_team_name'] = this.shortTeamName;
    data['credits'] = this.credits;
    data['points'] = this.points;
    data['sel_by'] = this.selBy;
    data['__v'] = this.iV;
    return data;
  }

}

class AusAllrounder {

  String? sId;
  String? playerName;
  String? shortTeamName;
  double? credits;
  int? points;
  String? selBy;
  int? iV;

  AusAllrounder (
      {this.sId,
        this.playerName,
        this.shortTeamName,
        this.credits,
        this.points,
        this.selBy,
        this.iV});

  AusAllrounder .fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    playerName = json['player_name'];
    shortTeamName = json['short_team_name'];
    credits = json['credits'];
    points = json['points'];
    selBy = json['sel_by'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['player_name'] = this.playerName;
    data['short_team_name'] = this.shortTeamName;
    data['credits'] = this.credits;
    data['points'] = this.points;
    data['sel_by'] = this.selBy;
    data['__v'] = this.iV;
    return data;
  }

}

class AusBatsman {
  String? sId;
  String? playerName;
  String? shortTeamName;
  double? credits;
  int? points;
  String? selBy;
  int? iV;

  AusBatsman (
      {this.sId,
        this.playerName,
        this.shortTeamName,
        this.credits,
        this.points,
        this.selBy,
        this.iV});

  AusBatsman .fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    playerName = json['player_name'];
    shortTeamName = json['short_team_name'];
    credits = json['credits'];
    points = json['points'];
    selBy = json['sel_by'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['player_name'] = this.playerName;
    data['short_team_name'] = this.shortTeamName;
    data['credits'] = this.credits;
    data['points'] = this.points;
    data['sel_by'] = this.selBy;
    data['__v'] = this.iV;
    return data;
  }
}

class AusWicketKeepers {
  String? sId;
  String? playerName;
  String? shortTeamName;
  double? credits;
  int? points;
  String? selBy;
  int? iV;

  AusWicketKeepers (
      {this.sId,
        this.playerName,
        this.shortTeamName,
        this.credits,
        this.points,
        this.selBy,
        this.iV});

  AusWicketKeepers .fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    playerName = json['player_name'];
    shortTeamName = json['short_team_name'];
    credits = json['credits'];
    points = json['points'];
    selBy = json['sel_by'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['player_name'] = this.playerName;
    data['short_team_name'] = this.shortTeamName;
    data['credits'] = this.credits;
    data['points'] = this.points;
    data['sel_by'] = this.selBy;
    data['__v'] = this.iV;
    return data;
  }
}


