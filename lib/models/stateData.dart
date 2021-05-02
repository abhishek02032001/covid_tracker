class StateData{
  final String stateName;
  final int infected;
  final int recovered;
  final int death;

  StateData({this.stateName, this.infected, this.recovered, this.death});

  factory StateData.fromJson(Map<String, dynamic> data){
    return StateData(
      stateName: data['region'],
      infected: data['totalInfected'],
      recovered: data['recovered'],
      death: data['deceased'],
    );
  }

}