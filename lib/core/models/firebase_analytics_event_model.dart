class FirebaseAnalyticsEventModel {
   String name;
  final Map<String, Object> parameters;
  
  FirebaseAnalyticsEventModel({
     this.name='user_action',
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'parameters': parameters,
    };
  }
}