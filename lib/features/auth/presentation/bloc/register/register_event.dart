abstract class RegisterEvent {}

class RegisterButtonPressedEvent extends RegisterEvent {
  final String email;
  final String password;
  final String phoneNumber;
  final String name;
  RegisterButtonPressedEvent(
      {required this.email,
      required this.password,
      required this.phoneNumber,
      required this.name});
}
