//sp modeli

class ProcModel {
  String? procName;
  List<Parameters>? parameters;

  ProcModel({this.procName, this.parameters});

  ProcModel.fromJson(Map<String, dynamic> json) {
    procName = json['ProcName'];
    if (json['Parameters'] != null) {
      parameters = <Parameters>[];
      json['Parameters'].forEach((v) {
        parameters!.add(new Parameters.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ProcName'] = this.procName;
    if (this.parameters != null) {
      data['Parameters'] = this.parameters!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Parameters {
  String? name;
  String? value;

  Parameters({this.name, this.value});

  Parameters.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    value = json['Value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['Value'] = this.value;
    return data;
  }
}
