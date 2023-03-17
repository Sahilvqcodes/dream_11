// class BatsMan {
//   List<Batsmans>? batsmans;
//   List<Allrounder>? allrounder;
//
//   BatsMan({this.batsmans, this.allrounder});
//
//   BatsMan.fromJson(Map<String, dynamic> json) {
//     if (json['batsmans'] != null) {
//       batsmans = <Batsmans>[];
//       json['batsmans'].forEach((v) {
//         batsmans!.add(new Batsmans.fromJson(v));
//       });
//     }
//     if (json['allrounder'] != null) {
//       allrounder = <Allrounder>[];
//       json['allrounder'].forEach((v) {
//         allrounder!.add(new Allrounder.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.batsmans != null) {
//       data['batsmans'] = this.batsmans!.map((v) => v.toJson()).toList();
//     }
//     if (this.allrounder != null) {
//       data['allrounder'] = this.allrounder!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Allrounder {
//   String? sId;
//   String? playerName;
//   String? teamName;
//   double? credits;
//   int? points;
//   String? selBy;
//   int? iV;
//
//   Allrounder(
//       {this.sId,
//         this.playerName,
//         this.teamName,
//         this.credits,
//         this.points,
//         this.selBy,
//         this.iV});
//
//   Allrounder.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     playerName = json['player_name'];
//     teamName = json['team_name'];
//     credits = json['credits'];
//     points = json['points'];
//     selBy = json['sel_by'];
//     iV = json['__v'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['_id'] = this.sId;
//     data['player_name'] = this.playerName;
//     data['team_name'] = this.teamName;
//     data['credits'] = this.credits;
//     data['points'] = this.points;
//     data['sel_by'] = this.selBy;
//     data['__v'] = this.iV;
//     return data;
//   }
// }
//
// class Batsmans {
//   String? sId;
//   String? playerName;
//   String? teamName;
//   double? credits;
//   int? points;
//   String? selBy;
//   int? iV;
//
//   Batsmans(
//       {this.sId,
//         this.playerName,
//         this.teamName,
//         this.credits,
//         this.points,
//         this.selBy,
//         this.iV});
//
//   Batsmans.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     playerName = json['player_name'];
//     teamName = json['team_name'];
//     credits = json['credits'];
//     points = json['points'];
//     selBy = json['sel_by'];
//     iV = json['__v'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['_id'] = this.sId;
//     data['player_name'] = this.playerName;
//     data['team_name'] = this.teamName;
//     data['credits'] = this.credits;
//     data['points'] = this.points;
//     data['sel_by'] = this.selBy;
//     data['__v'] = this.iV;
//     return data;
//   }
// }