// class AllBowler {
//   List<Bowler>? data;
//
//   AllBowler({this.data});
//
//   AllBowler.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       data = <Bowler>[];
//       json['data'].forEach((v) {
//         data!.add(new Bowler.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Bowler {
//   String? sId;
//   String? playerName;
//   String? teamName;
//   double? credits;
//   int? points;
//   String? selBy;
//   int? iV;
//
//   Bowler(
//       {this.sId,
//         this.playerName,
//         this.teamName,
//         this.credits,
//         this.points,
//         this.selBy,
//         this.iV});
//
//   Bowler.fromJson(Map<String, dynamic> json) {
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
