class ResetPasswordResponse {
  // ...
  // A model is a more generic term and can represent structured data used within an application.
  // ...
  // fromJson
  // ...
  // toJson

  final String message;

  ResetPasswordResponse({
    required this.message,
  });

  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) {
    return ResetPasswordResponse(
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
    };
  }
}
