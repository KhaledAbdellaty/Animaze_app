part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class LoginFailed extends AuthState {}

class AuthValiding extends AuthState {}

class ValidEmail extends AuthState {}

class ValidingEmail extends AuthState {}

class ValidPassword extends AuthState {}

class ValidingPassword extends AuthState {}

class ValidUserName extends AuthState {}

class ValidingUserName extends AuthState {}

class ShowPassword extends AuthState {}

