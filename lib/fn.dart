import 'dart:convert';
import 'dart:typed_data';

import 'base.dart' as b;
import 'abstract.dart' as a;
import 'obj.dart' as o;

abstract class TdFunction extends b.TdBase {}

/// Returns the current authorization state; this is an offline request. For informational purposes only. Use updateAuthorizationState instead to maintain the current authorization state. Can be called before initialization
class GetAuthorizationState extends TdFunction {
  GetAuthorizationState();

  @override
  String toString() {
    var s = 'td::GetAuthorizationState(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getAuthorizationState',
  };

  factory GetAuthorizationState.fromJson(Map<String, dynamic> json) => GetAuthorizationState(
  );
}

/// Sets the parameters for TDLib initialization. Works only when the current authorization state is authorizationStateWaitTdlibParameters
class SetTdlibParameters extends TdFunction {
  /// Parameters for TDLib initialization
  final o.TdlibParameters? parameters;

  SetTdlibParameters({
    required this.parameters,
  });

  @override
  String toString() {
    var s = 'td::SetTdlibParameters(';

    // Params
    final params = <String>[];
    params.add(parameters.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setTdlibParameters',
    'parameters': parameters?.toJson(),
  };

  factory SetTdlibParameters.fromJson(Map<String, dynamic> json) => SetTdlibParameters(
    parameters: b.TdBase.fromJson(json['parameters']) as o.TdlibParameters?,
  );
}

/// Checks the database encryption key for correctness. Works only when the current authorization state is authorizationStateWaitEncryptionKey
class CheckDatabaseEncryptionKey extends TdFunction {
  /// Encryption key to check or set up
  final Uint8List encryptionKey;

  CheckDatabaseEncryptionKey({
    required this.encryptionKey,
  });

  @override
  String toString() {
    var s = 'td::CheckDatabaseEncryptionKey(';

    // Params
    final params = <String>[];
    params.add(encryptionKey.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkDatabaseEncryptionKey',
    'encryption_key': base64.encode(encryptionKey),
  };

  factory CheckDatabaseEncryptionKey.fromJson(Map<String, dynamic> json) => CheckDatabaseEncryptionKey(
    encryptionKey: json['encryption_key'] == null ? Uint8List(0) : base64.decode(json['encryption_key']),
  );
}

/// Sets the phone number of the user and sends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitPhoneNumber,
class SetAuthenticationPhoneNumber extends TdFunction {
  /// The phone number of the user, in international format
  final String phoneNumber;
  /// Settings for the authentication of the user's phone number; pass null to use default settings
  final o.PhoneNumberAuthenticationSettings? settings;

  SetAuthenticationPhoneNumber({
    required this.phoneNumber,
    required this.settings,
  });

  @override
  String toString() {
    var s = 'td::SetAuthenticationPhoneNumber(';

    // Params
    final params = <String>[];
    params.add(phoneNumber.toString());
    params.add(settings.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setAuthenticationPhoneNumber',
    'phone_number': phoneNumber,
    'settings': settings?.toJson(),
  };

  factory SetAuthenticationPhoneNumber.fromJson(Map<String, dynamic> json) => SetAuthenticationPhoneNumber(
    phoneNumber: (json['phone_number'] as String?) ?? '',
    settings: b.TdBase.fromJson(json['settings']) as o.PhoneNumberAuthenticationSettings?,
  );
}

/// Re-sends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitCode, the next_code_type of the result is not null and the server-specified timeout has passed
class ResendAuthenticationCode extends TdFunction {
  ResendAuthenticationCode();

  @override
  String toString() {
    var s = 'td::ResendAuthenticationCode(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'resendAuthenticationCode',
  };

  factory ResendAuthenticationCode.fromJson(Map<String, dynamic> json) => ResendAuthenticationCode(
  );
}

/// Checks the authentication code. Works only when the current authorization state is authorizationStateWaitCode
class CheckAuthenticationCode extends TdFunction {
  /// Authentication code to check
  final String code;

  CheckAuthenticationCode({
    required this.code,
  });

  @override
  String toString() {
    var s = 'td::CheckAuthenticationCode(';

    // Params
    final params = <String>[];
    params.add(code.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkAuthenticationCode',
    'code': code,
  };

  factory CheckAuthenticationCode.fromJson(Map<String, dynamic> json) => CheckAuthenticationCode(
    code: (json['code'] as String?) ?? '',
  );
}

/// Requests QR code authentication by scanning a QR code on another logged in device. Works only when the current authorization state is authorizationStateWaitPhoneNumber,
class RequestQrCodeAuthentication extends TdFunction {
  /// List of user identifiers of other users currently using the application
  final List<int> otherUserIds;

  RequestQrCodeAuthentication({
    required this.otherUserIds,
  });

  @override
  String toString() {
    var s = 'td::RequestQrCodeAuthentication(';

    // Params
    final params = <String>[];
    params.add(otherUserIds.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'requestQrCodeAuthentication',
    'other_user_ids': otherUserIds.map((_e1) => _e1).toList(growable: false),
  };

  factory RequestQrCodeAuthentication.fromJson(Map<String, dynamic> json) => RequestQrCodeAuthentication(
    otherUserIds: json['other_user_ids'] == null ? <int>[] : (json['other_user_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
  );
}

/// Finishes user registration. Works only when the current authorization state is authorizationStateWaitRegistration
class RegisterUser extends TdFunction {
  /// The first name of the user; 1-64 characters
  final String firstName;
  /// The last name of the user; 0-64 characters
  final String lastName;

  RegisterUser({
    required this.firstName,
    required this.lastName,
  });

  @override
  String toString() {
    var s = 'td::RegisterUser(';

    // Params
    final params = <String>[];
    params.add(firstName.toString());
    params.add(lastName.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'registerUser',
    'first_name': firstName,
    'last_name': lastName,
  };

  factory RegisterUser.fromJson(Map<String, dynamic> json) => RegisterUser(
    firstName: (json['first_name'] as String?) ?? '',
    lastName: (json['last_name'] as String?) ?? '',
  );
}

/// Checks the authentication password for correctness. Works only when the current authorization state is authorizationStateWaitPassword
class CheckAuthenticationPassword extends TdFunction {
  /// The password to check
  final String password;

  CheckAuthenticationPassword({
    required this.password,
  });

  @override
  String toString() {
    var s = 'td::CheckAuthenticationPassword(';

    // Params
    final params = <String>[];
    params.add(password.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkAuthenticationPassword',
    'password': password,
  };

  factory CheckAuthenticationPassword.fromJson(Map<String, dynamic> json) => CheckAuthenticationPassword(
    password: (json['password'] as String?) ?? '',
  );
}

/// Requests to send a password recovery code to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword
class RequestAuthenticationPasswordRecovery extends TdFunction {
  RequestAuthenticationPasswordRecovery();

  @override
  String toString() {
    var s = 'td::RequestAuthenticationPasswordRecovery(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'requestAuthenticationPasswordRecovery',
  };

  factory RequestAuthenticationPasswordRecovery.fromJson(Map<String, dynamic> json) => RequestAuthenticationPasswordRecovery(
  );
}

/// Checks whether a password recovery code sent to an email address is valid. Works only when the current authorization state is authorizationStateWaitPassword
class CheckAuthenticationPasswordRecoveryCode extends TdFunction {
  /// Recovery code to check
  final String recoveryCode;

  CheckAuthenticationPasswordRecoveryCode({
    required this.recoveryCode,
  });

  @override
  String toString() {
    var s = 'td::CheckAuthenticationPasswordRecoveryCode(';

    // Params
    final params = <String>[];
    params.add(recoveryCode.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkAuthenticationPasswordRecoveryCode',
    'recovery_code': recoveryCode,
  };

  factory CheckAuthenticationPasswordRecoveryCode.fromJson(Map<String, dynamic> json) => CheckAuthenticationPasswordRecoveryCode(
    recoveryCode: (json['recovery_code'] as String?) ?? '',
  );
}

/// Recovers the password with a password recovery code sent to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword
class RecoverAuthenticationPassword extends TdFunction {
  /// Recovery code to check
  final String recoveryCode;
  /// New password of the user; may be empty to remove the password
  final String newPassword;
  /// New password hint; may be empty
  final String newHint;

  RecoverAuthenticationPassword({
    required this.recoveryCode,
    required this.newPassword,
    required this.newHint,
  });

  @override
  String toString() {
    var s = 'td::RecoverAuthenticationPassword(';

    // Params
    final params = <String>[];
    params.add(recoveryCode.toString());
    params.add(newPassword.toString());
    params.add(newHint.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'recoverAuthenticationPassword',
    'recovery_code': recoveryCode,
    'new_password': newPassword,
    'new_hint': newHint,
  };

  factory RecoverAuthenticationPassword.fromJson(Map<String, dynamic> json) => RecoverAuthenticationPassword(
    recoveryCode: (json['recovery_code'] as String?) ?? '',
    newPassword: (json['new_password'] as String?) ?? '',
    newHint: (json['new_hint'] as String?) ?? '',
  );
}

/// Checks the authentication token of a bot; to log in as a bot. Works only when the current authorization state is authorizationStateWaitPhoneNumber. Can be used instead of setAuthenticationPhoneNumber and checkAuthenticationCode to log in
class CheckAuthenticationBotToken extends TdFunction {
  /// The bot token
  final String token;

  CheckAuthenticationBotToken({
    required this.token,
  });

  @override
  String toString() {
    var s = 'td::CheckAuthenticationBotToken(';

    // Params
    final params = <String>[];
    params.add(token.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkAuthenticationBotToken',
    'token': token,
  };

  factory CheckAuthenticationBotToken.fromJson(Map<String, dynamic> json) => CheckAuthenticationBotToken(
    token: (json['token'] as String?) ?? '',
  );
}

/// Closes the TDLib instance after a proper logout. Requires an available network connection. All local data will be destroyed. After the logout completes, updateAuthorizationState with authorizationStateClosed will be sent
class LogOut extends TdFunction {
  LogOut();

  @override
  String toString() {
    var s = 'td::LogOut(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'logOut',
  };

  factory LogOut.fromJson(Map<String, dynamic> json) => LogOut(
  );
}

/// Closes the TDLib instance. All databases will be flushed to disk and properly closed. After the close completes, updateAuthorizationState with authorizationStateClosed will be sent. Can be called before initialization
class Close extends TdFunction {
  Close();

  @override
  String toString() {
    var s = 'td::Close(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'close',
  };

  factory Close.fromJson(Map<String, dynamic> json) => Close(
  );
}

/// Closes the TDLib instance, destroying all local data without a proper logout. The current user session will remain in the list of all active sessions. All local data will be destroyed. After the destruction completes updateAuthorizationState with authorizationStateClosed will be sent. Can be called before authorization
class Destroy extends TdFunction {
  Destroy();

  @override
  String toString() {
    var s = 'td::Destroy(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'destroy',
  };

  factory Destroy.fromJson(Map<String, dynamic> json) => Destroy(
  );
}

/// Confirms QR code authentication on another device. Returns created session on success
class ConfirmQrCodeAuthentication extends TdFunction {
  /// A link from a QR code. The link must be scanned by the in-app camera
  final String link;

  ConfirmQrCodeAuthentication({
    required this.link,
  });

  @override
  String toString() {
    var s = 'td::ConfirmQrCodeAuthentication(';

    // Params
    final params = <String>[];
    params.add(link.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'confirmQrCodeAuthentication',
    'link': link,
  };

  factory ConfirmQrCodeAuthentication.fromJson(Map<String, dynamic> json) => ConfirmQrCodeAuthentication(
    link: (json['link'] as String?) ?? '',
  );
}

/// Returns all updates needed to restore current TDLib state, i.e. all actual UpdateAuthorizationState/UpdateUser/UpdateNewChat and others. This is especially useful if TDLib is run in a separate process. Can be called before initialization
class GetCurrentState extends TdFunction {
  GetCurrentState();

  @override
  String toString() {
    var s = 'td::GetCurrentState(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getCurrentState',
  };

  factory GetCurrentState.fromJson(Map<String, dynamic> json) => GetCurrentState(
  );
}

/// Changes the database encryption key. Usually the encryption key is never changed and is stored in some OS keychain
class SetDatabaseEncryptionKey extends TdFunction {
  /// New encryption key
  final Uint8List newEncryptionKey;

  SetDatabaseEncryptionKey({
    required this.newEncryptionKey,
  });

  @override
  String toString() {
    var s = 'td::SetDatabaseEncryptionKey(';

    // Params
    final params = <String>[];
    params.add(newEncryptionKey.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setDatabaseEncryptionKey',
    'new_encryption_key': base64.encode(newEncryptionKey),
  };

  factory SetDatabaseEncryptionKey.fromJson(Map<String, dynamic> json) => SetDatabaseEncryptionKey(
    newEncryptionKey: json['new_encryption_key'] == null ? Uint8List(0) : base64.decode(json['new_encryption_key']),
  );
}

/// Returns the current state of 2-step verification
class GetPasswordState extends TdFunction {
  GetPasswordState();

  @override
  String toString() {
    var s = 'td::GetPasswordState(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getPasswordState',
  };

  factory GetPasswordState.fromJson(Map<String, dynamic> json) => GetPasswordState(
  );
}

/// Changes the password for the current user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed
class SetPassword extends TdFunction {
  /// Previous password of the user
  final String oldPassword;
  /// New password of the user; may be empty to remove the password
  final String newPassword;
  /// New password hint; may be empty
  final String newHint;
  /// Pass true if the recovery email address must be changed
  final bool setRecoveryEmailAddress;
  /// New recovery email address; may be empty
  final String newRecoveryEmailAddress;

  SetPassword({
    required this.oldPassword,
    required this.newPassword,
    required this.newHint,
    required this.setRecoveryEmailAddress,
    required this.newRecoveryEmailAddress,
  });

  @override
  String toString() {
    var s = 'td::SetPassword(';

    // Params
    final params = <String>[];
    params.add(oldPassword.toString());
    params.add(newPassword.toString());
    params.add(newHint.toString());
    params.add(setRecoveryEmailAddress.toString());
    params.add(newRecoveryEmailAddress.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setPassword',
    'old_password': oldPassword,
    'new_password': newPassword,
    'new_hint': newHint,
    'set_recovery_email_address': setRecoveryEmailAddress,
    'new_recovery_email_address': newRecoveryEmailAddress,
  };

  factory SetPassword.fromJson(Map<String, dynamic> json) => SetPassword(
    oldPassword: (json['old_password'] as String?) ?? '',
    newPassword: (json['new_password'] as String?) ?? '',
    newHint: (json['new_hint'] as String?) ?? '',
    setRecoveryEmailAddress: (json['set_recovery_email_address'] as bool?) ?? false,
    newRecoveryEmailAddress: (json['new_recovery_email_address'] as String?) ?? '',
  );
}

/// Returns a 2-step verification recovery email address that was previously set up. This method can be used to verify a password provided by the user
class GetRecoveryEmailAddress extends TdFunction {
  /// The password for the current user
  final String password;

  GetRecoveryEmailAddress({
    required this.password,
  });

  @override
  String toString() {
    var s = 'td::GetRecoveryEmailAddress(';

    // Params
    final params = <String>[];
    params.add(password.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getRecoveryEmailAddress',
    'password': password,
  };

  factory GetRecoveryEmailAddress.fromJson(Map<String, dynamic> json) => GetRecoveryEmailAddress(
    password: (json['password'] as String?) ?? '',
  );
}

/// Changes the 2-step verification recovery email address of the user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed.
class SetRecoveryEmailAddress extends TdFunction {
  /// Password of the current user
  final String password;
  /// New recovery email address
  final String newRecoveryEmailAddress;

  SetRecoveryEmailAddress({
    required this.password,
    required this.newRecoveryEmailAddress,
  });

  @override
  String toString() {
    var s = 'td::SetRecoveryEmailAddress(';

    // Params
    final params = <String>[];
    params.add(password.toString());
    params.add(newRecoveryEmailAddress.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setRecoveryEmailAddress',
    'password': password,
    'new_recovery_email_address': newRecoveryEmailAddress,
  };

  factory SetRecoveryEmailAddress.fromJson(Map<String, dynamic> json) => SetRecoveryEmailAddress(
    password: (json['password'] as String?) ?? '',
    newRecoveryEmailAddress: (json['new_recovery_email_address'] as String?) ?? '',
  );
}

/// Checks the 2-step verification recovery email address verification code
class CheckRecoveryEmailAddressCode extends TdFunction {
  /// Verification code to check
  final String code;

  CheckRecoveryEmailAddressCode({
    required this.code,
  });

  @override
  String toString() {
    var s = 'td::CheckRecoveryEmailAddressCode(';

    // Params
    final params = <String>[];
    params.add(code.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkRecoveryEmailAddressCode',
    'code': code,
  };

  factory CheckRecoveryEmailAddressCode.fromJson(Map<String, dynamic> json) => CheckRecoveryEmailAddressCode(
    code: (json['code'] as String?) ?? '',
  );
}

/// Resends the 2-step verification recovery email address verification code
class ResendRecoveryEmailAddressCode extends TdFunction {
  ResendRecoveryEmailAddressCode();

  @override
  String toString() {
    var s = 'td::ResendRecoveryEmailAddressCode(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'resendRecoveryEmailAddressCode',
  };

  factory ResendRecoveryEmailAddressCode.fromJson(Map<String, dynamic> json) => ResendRecoveryEmailAddressCode(
  );
}

/// Requests to send a 2-step verification password recovery code to an email address that was previously set up
class RequestPasswordRecovery extends TdFunction {
  RequestPasswordRecovery();

  @override
  String toString() {
    var s = 'td::RequestPasswordRecovery(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'requestPasswordRecovery',
  };

  factory RequestPasswordRecovery.fromJson(Map<String, dynamic> json) => RequestPasswordRecovery(
  );
}

/// Checks whether a 2-step verification password recovery code sent to an email address is valid
class CheckPasswordRecoveryCode extends TdFunction {
  /// Recovery code to check
  final String recoveryCode;

  CheckPasswordRecoveryCode({
    required this.recoveryCode,
  });

  @override
  String toString() {
    var s = 'td::CheckPasswordRecoveryCode(';

    // Params
    final params = <String>[];
    params.add(recoveryCode.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkPasswordRecoveryCode',
    'recovery_code': recoveryCode,
  };

  factory CheckPasswordRecoveryCode.fromJson(Map<String, dynamic> json) => CheckPasswordRecoveryCode(
    recoveryCode: (json['recovery_code'] as String?) ?? '',
  );
}

/// Recovers the 2-step verification password using a recovery code sent to an email address that was previously set up
class RecoverPassword extends TdFunction {
  /// Recovery code to check
  final String recoveryCode;
  /// New password of the user; may be empty to remove the password
  final String newPassword;
  /// New password hint; may be empty
  final String newHint;

  RecoverPassword({
    required this.recoveryCode,
    required this.newPassword,
    required this.newHint,
  });

  @override
  String toString() {
    var s = 'td::RecoverPassword(';

    // Params
    final params = <String>[];
    params.add(recoveryCode.toString());
    params.add(newPassword.toString());
    params.add(newHint.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'recoverPassword',
    'recovery_code': recoveryCode,
    'new_password': newPassword,
    'new_hint': newHint,
  };

  factory RecoverPassword.fromJson(Map<String, dynamic> json) => RecoverPassword(
    recoveryCode: (json['recovery_code'] as String?) ?? '',
    newPassword: (json['new_password'] as String?) ?? '',
    newHint: (json['new_hint'] as String?) ?? '',
  );
}

/// Removes 2-step verification password without previous password and access to recovery email address. The password can't be reset immediately and the request needs to be repeated after the specified time
class ResetPassword extends TdFunction {
  ResetPassword();

  @override
  String toString() {
    var s = 'td::ResetPassword(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'resetPassword',
  };

  factory ResetPassword.fromJson(Map<String, dynamic> json) => ResetPassword(
  );
}

/// Cancels reset of 2-step verification password. The method can be called if passwordState.pending_reset_date > 0
class CancelPasswordReset extends TdFunction {
  CancelPasswordReset();

  @override
  String toString() {
    var s = 'td::CancelPasswordReset(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'cancelPasswordReset',
  };

  factory CancelPasswordReset.fromJson(Map<String, dynamic> json) => CancelPasswordReset(
  );
}

/// Creates a new temporary password for processing payments
class CreateTemporaryPassword extends TdFunction {
  /// Persistent user password
  final String password;
  /// Time during which the temporary password will be valid, in seconds; must be between 60 and 86400
  final int validFor;

  CreateTemporaryPassword({
    required this.password,
    required this.validFor,
  });

  @override
  String toString() {
    var s = 'td::CreateTemporaryPassword(';

    // Params
    final params = <String>[];
    params.add(password.toString());
    params.add(validFor.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'createTemporaryPassword',
    'password': password,
    'valid_for': validFor,
  };

  factory CreateTemporaryPassword.fromJson(Map<String, dynamic> json) => CreateTemporaryPassword(
    password: (json['password'] as String?) ?? '',
    validFor: (json['valid_for'] as int?) ?? 0,
  );
}

/// Returns information about the current temporary password
class GetTemporaryPasswordState extends TdFunction {
  GetTemporaryPasswordState();

  @override
  String toString() {
    var s = 'td::GetTemporaryPasswordState(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getTemporaryPasswordState',
  };

  factory GetTemporaryPasswordState.fromJson(Map<String, dynamic> json) => GetTemporaryPasswordState(
  );
}

/// Returns the current user
class GetMe extends TdFunction {
  GetMe();

  @override
  String toString() {
    var s = 'td::GetMe(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMe',
  };

  factory GetMe.fromJson(Map<String, dynamic> json) => GetMe(
  );
}

/// Returns information about a user by their identifier. This is an offline request if the current user is not a bot
class GetUser extends TdFunction {
  /// User identifier
  final int userId;

  GetUser({
    required this.userId,
  });

  @override
  String toString() {
    var s = 'td::GetUser(';

    // Params
    final params = <String>[];
    params.add(userId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getUser',
    'user_id': userId,
  };

  factory GetUser.fromJson(Map<String, dynamic> json) => GetUser(
    userId: (json['user_id'] as int?) ?? 0,
  );
}

/// Returns full information about a user by their identifier
class GetUserFullInfo extends TdFunction {
  /// User identifier
  final int userId;

  GetUserFullInfo({
    required this.userId,
  });

  @override
  String toString() {
    var s = 'td::GetUserFullInfo(';

    // Params
    final params = <String>[];
    params.add(userId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getUserFullInfo',
    'user_id': userId,
  };

  factory GetUserFullInfo.fromJson(Map<String, dynamic> json) => GetUserFullInfo(
    userId: (json['user_id'] as int?) ?? 0,
  );
}

/// Returns information about a basic group by its identifier. This is an offline request if the current user is not a bot
class GetBasicGroup extends TdFunction {
  /// Basic group identifier
  final int basicGroupId;

  GetBasicGroup({
    required this.basicGroupId,
  });

  @override
  String toString() {
    var s = 'td::GetBasicGroup(';

    // Params
    final params = <String>[];
    params.add(basicGroupId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getBasicGroup',
    'basic_group_id': basicGroupId,
  };

  factory GetBasicGroup.fromJson(Map<String, dynamic> json) => GetBasicGroup(
    basicGroupId: (json['basic_group_id'] as int?) ?? 0,
  );
}

/// Returns full information about a basic group by its identifier
class GetBasicGroupFullInfo extends TdFunction {
  /// Basic group identifier
  final int basicGroupId;

  GetBasicGroupFullInfo({
    required this.basicGroupId,
  });

  @override
  String toString() {
    var s = 'td::GetBasicGroupFullInfo(';

    // Params
    final params = <String>[];
    params.add(basicGroupId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getBasicGroupFullInfo',
    'basic_group_id': basicGroupId,
  };

  factory GetBasicGroupFullInfo.fromJson(Map<String, dynamic> json) => GetBasicGroupFullInfo(
    basicGroupId: (json['basic_group_id'] as int?) ?? 0,
  );
}

/// Returns information about a supergroup or a channel by its identifier. This is an offline request if the current user is not a bot
class GetSupergroup extends TdFunction {
  /// Supergroup or channel identifier
  final int supergroupId;

  GetSupergroup({
    required this.supergroupId,
  });

  @override
  String toString() {
    var s = 'td::GetSupergroup(';

    // Params
    final params = <String>[];
    params.add(supergroupId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getSupergroup',
    'supergroup_id': supergroupId,
  };

  factory GetSupergroup.fromJson(Map<String, dynamic> json) => GetSupergroup(
    supergroupId: (json['supergroup_id'] as int?) ?? 0,
  );
}

/// Returns full information about a supergroup or a channel by its identifier, cached for up to 1 minute
class GetSupergroupFullInfo extends TdFunction {
  /// Supergroup or channel identifier
  final int supergroupId;

  GetSupergroupFullInfo({
    required this.supergroupId,
  });

  @override
  String toString() {
    var s = 'td::GetSupergroupFullInfo(';

    // Params
    final params = <String>[];
    params.add(supergroupId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getSupergroupFullInfo',
    'supergroup_id': supergroupId,
  };

  factory GetSupergroupFullInfo.fromJson(Map<String, dynamic> json) => GetSupergroupFullInfo(
    supergroupId: (json['supergroup_id'] as int?) ?? 0,
  );
}

/// Returns information about a secret chat by its identifier. This is an offline request
class GetSecretChat extends TdFunction {
  /// Secret chat identifier
  final int secretChatId;

  GetSecretChat({
    required this.secretChatId,
  });

  @override
  String toString() {
    var s = 'td::GetSecretChat(';

    // Params
    final params = <String>[];
    params.add(secretChatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getSecretChat',
    'secret_chat_id': secretChatId,
  };

  factory GetSecretChat.fromJson(Map<String, dynamic> json) => GetSecretChat(
    secretChatId: (json['secret_chat_id'] as int?) ?? 0,
  );
}

/// Returns information about a chat by its identifier, this is an offline request if the current user is not a bot
class GetChat extends TdFunction {
  /// Chat identifier
  final int chatId;

  GetChat({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::GetChat(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChat',
    'chat_id': chatId,
  };

  factory GetChat.fromJson(Map<String, dynamic> json) => GetChat(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Returns information about a message
class GetMessage extends TdFunction {
  /// Identifier of the chat the message belongs to
  final int chatId;
  /// Identifier of the message to get
  final int messageId;

  GetMessage({
    required this.chatId,
    required this.messageId,
  });

  @override
  String toString() {
    var s = 'td::GetMessage(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMessage',
    'chat_id': chatId,
    'message_id': messageId,
  };

  factory GetMessage.fromJson(Map<String, dynamic> json) => GetMessage(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
  );
}

/// Returns information about a message, if it is available locally without sending network request. This is an offline request
class GetMessageLocally extends TdFunction {
  /// Identifier of the chat the message belongs to
  final int chatId;
  /// Identifier of the message to get
  final int messageId;

  GetMessageLocally({
    required this.chatId,
    required this.messageId,
  });

  @override
  String toString() {
    var s = 'td::GetMessageLocally(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMessageLocally',
    'chat_id': chatId,
    'message_id': messageId,
  };

  factory GetMessageLocally.fromJson(Map<String, dynamic> json) => GetMessageLocally(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
  );
}

/// Returns information about a message that is replied by a given message. Also returns the pinned message, the game message, and the invoice message for messages of the types messagePinMessage, messageGameScore, and messagePaymentSuccessful respectively
class GetRepliedMessage extends TdFunction {
  /// Identifier of the chat the message belongs to
  final int chatId;
  /// Identifier of the reply message
  final int messageId;

  GetRepliedMessage({
    required this.chatId,
    required this.messageId,
  });

  @override
  String toString() {
    var s = 'td::GetRepliedMessage(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getRepliedMessage',
    'chat_id': chatId,
    'message_id': messageId,
  };

  factory GetRepliedMessage.fromJson(Map<String, dynamic> json) => GetRepliedMessage(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
  );
}

/// Returns information about a newest pinned message in the chat
class GetChatPinnedMessage extends TdFunction {
  /// Identifier of the chat the message belongs to
  final int chatId;

  GetChatPinnedMessage({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::GetChatPinnedMessage(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatPinnedMessage',
    'chat_id': chatId,
  };

  factory GetChatPinnedMessage.fromJson(Map<String, dynamic> json) => GetChatPinnedMessage(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Returns information about a message with the callback button that originated a callback query; for bots only
class GetCallbackQueryMessage extends TdFunction {
  /// Identifier of the chat the message belongs to
  final int chatId;
  /// Message identifier
  final int messageId;
  /// Identifier of the callback query
  final int callbackQueryId;

  GetCallbackQueryMessage({
    required this.chatId,
    required this.messageId,
    required this.callbackQueryId,
  });

  @override
  String toString() {
    var s = 'td::GetCallbackQueryMessage(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(callbackQueryId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getCallbackQueryMessage',
    'chat_id': chatId,
    'message_id': messageId,
    'callback_query_id': callbackQueryId.toString(),
  };

  factory GetCallbackQueryMessage.fromJson(Map<String, dynamic> json) => GetCallbackQueryMessage(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    callbackQueryId: int.parse(json['callback_query_id'] ?? '0'),
  );
}

/// Returns information about messages. If a message is not found, returns null on the corresponding position of the result
class GetMessages extends TdFunction {
  /// Identifier of the chat the messages belong to
  final int chatId;
  /// Identifiers of the messages to get
  final List<int> messageIds;

  GetMessages({
    required this.chatId,
    required this.messageIds,
  });

  @override
  String toString() {
    var s = 'td::GetMessages(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageIds.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMessages',
    'chat_id': chatId,
    'message_ids': messageIds.map((_e1) => _e1).toList(growable: false),
  };

  factory GetMessages.fromJson(Map<String, dynamic> json) => GetMessages(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageIds: json['message_ids'] == null ? <int>[] : (json['message_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
  );
}

/// Returns information about a message thread. Can be used only if message.can_get_message_thread == true
class GetMessageThread extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Identifier of the message
  final int messageId;

  GetMessageThread({
    required this.chatId,
    required this.messageId,
  });

  @override
  String toString() {
    var s = 'td::GetMessageThread(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMessageThread',
    'chat_id': chatId,
    'message_id': messageId,
  };

  factory GetMessageThread.fromJson(Map<String, dynamic> json) => GetMessageThread(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
  );
}

/// Returns viewers of a recent outgoing message in a basic group or a supergroup chat. For video notes and voice notes only users, opened content of the message, are returned. The method can be called if message.can_get_viewers == true
class GetMessageViewers extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Identifier of the message
  final int messageId;

  GetMessageViewers({
    required this.chatId,
    required this.messageId,
  });

  @override
  String toString() {
    var s = 'td::GetMessageViewers(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMessageViewers',
    'chat_id': chatId,
    'message_id': messageId,
  };

  factory GetMessageViewers.fromJson(Map<String, dynamic> json) => GetMessageViewers(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
  );
}

/// Returns information about a file; this is an offline request
class GetFile extends TdFunction {
  /// Identifier of the file to get
  final int fileId;

  GetFile({
    required this.fileId,
  });

  @override
  String toString() {
    var s = 'td::GetFile(';

    // Params
    final params = <String>[];
    params.add(fileId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getFile',
    'file_id': fileId,
  };

  factory GetFile.fromJson(Map<String, dynamic> json) => GetFile(
    fileId: (json['file_id'] as int?) ?? 0,
  );
}

/// Returns information about a file by its remote ID; this is an offline request. Can be used to register a URL as a file for further uploading, or sending as a message. Even the request succeeds, the file can be used only if it is still accessible to the user.
class GetRemoteFile extends TdFunction {
  /// Remote identifier of the file to get
  final String remoteFileId;
  /// File type; pass null if unknown
  final a.FileType? fileType;

  GetRemoteFile({
    required this.remoteFileId,
    required this.fileType,
  });

  @override
  String toString() {
    var s = 'td::GetRemoteFile(';

    // Params
    final params = <String>[];
    params.add(remoteFileId.toString());
    params.add(fileType.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getRemoteFile',
    'remote_file_id': remoteFileId,
    'file_type': fileType?.toJson(),
  };

  factory GetRemoteFile.fromJson(Map<String, dynamic> json) => GetRemoteFile(
    remoteFileId: (json['remote_file_id'] as String?) ?? '',
    fileType: b.TdBase.fromJson(json['file_type']) as a.FileType?,
  );
}

/// Loads more chats from a chat list. The loaded chats and their positions in the chat list will be sent through updates. Chats are sorted by the pair (chat.position.order, chat.id) in descending order. Returns a 404 error if all chats have been loaded
class LoadChats extends TdFunction {
  /// The chat list in which to load chats; pass null to load chats from the main chat list
  final a.ChatList? chatList;
  /// The maximum number of chats to be loaded. For optimal performance, the number of loaded chats is chosen by TDLib and can be smaller than the specified limit, even if the end of the list is not reached
  final int limit;

  LoadChats({
    required this.chatList,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::LoadChats(';

    // Params
    final params = <String>[];
    params.add(chatList.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'loadChats',
    'chat_list': chatList?.toJson(),
    'limit': limit,
  };

  factory LoadChats.fromJson(Map<String, dynamic> json) => LoadChats(
    chatList: b.TdBase.fromJson(json['chat_list']) as a.ChatList?,
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Returns an ordered list of chats from the beginning of a chat list. For informational purposes only. Use loadChats and updates processing instead to maintain chat lists in a consistent state
class GetChats extends TdFunction {
  /// The chat list in which to return chats; pass null to get chats from the main chat list
  final a.ChatList? chatList;
  /// The maximum number of chats to be returned
  final int limit;

  GetChats({
    required this.chatList,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetChats(';

    // Params
    final params = <String>[];
    params.add(chatList.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChats',
    'chat_list': chatList?.toJson(),
    'limit': limit,
  };

  factory GetChats.fromJson(Map<String, dynamic> json) => GetChats(
    chatList: b.TdBase.fromJson(json['chat_list']) as a.ChatList?,
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Searches a public chat by its username. Currently, only private chats, supergroups and channels can be public. Returns the chat if found; otherwise an error is returned
class SearchPublicChat extends TdFunction {
  /// Username to be resolved
  final String username;

  SearchPublicChat({
    required this.username,
  });

  @override
  String toString() {
    var s = 'td::SearchPublicChat(';

    // Params
    final params = <String>[];
    params.add(username.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchPublicChat',
    'username': username,
  };

  factory SearchPublicChat.fromJson(Map<String, dynamic> json) => SearchPublicChat(
    username: (json['username'] as String?) ?? '',
  );
}

/// Searches public chats by looking for specified query in their username and title. Currently, only private chats, supergroups and channels can be public. Returns a meaningful number of results.
class SearchPublicChats extends TdFunction {
  /// Query to search for
  final String query;

  SearchPublicChats({
    required this.query,
  });

  @override
  String toString() {
    var s = 'td::SearchPublicChats(';

    // Params
    final params = <String>[];
    params.add(query.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchPublicChats',
    'query': query,
  };

  factory SearchPublicChats.fromJson(Map<String, dynamic> json) => SearchPublicChats(
    query: (json['query'] as String?) ?? '',
  );
}

/// Searches for the specified query in the title and username of already known chats, this is an offline request. Returns chats in the order seen in the main chat list
class SearchChats extends TdFunction {
  /// Query to search for. If the query is empty, returns up to 50 recently found chats
  final String query;
  /// The maximum number of chats to be returned
  final int limit;

  SearchChats({
    required this.query,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::SearchChats(';

    // Params
    final params = <String>[];
    params.add(query.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchChats',
    'query': query,
    'limit': limit,
  };

  factory SearchChats.fromJson(Map<String, dynamic> json) => SearchChats(
    query: (json['query'] as String?) ?? '',
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Searches for the specified query in the title and username of already known chats via request to the server. Returns chats in the order seen in the main chat list
class SearchChatsOnServer extends TdFunction {
  /// Query to search for
  final String query;
  /// The maximum number of chats to be returned
  final int limit;

  SearchChatsOnServer({
    required this.query,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::SearchChatsOnServer(';

    // Params
    final params = <String>[];
    params.add(query.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchChatsOnServer',
    'query': query,
    'limit': limit,
  };

  factory SearchChatsOnServer.fromJson(Map<String, dynamic> json) => SearchChatsOnServer(
    query: (json['query'] as String?) ?? '',
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Returns a list of users and location-based supergroups nearby. The list of users nearby will be updated for 60 seconds after the request by the updates updateUsersNearby. The request must be sent again every 25 seconds with adjusted location to not miss new chats
class SearchChatsNearby extends TdFunction {
  /// Current user location
  final o.Location? location;

  SearchChatsNearby({
    required this.location,
  });

  @override
  String toString() {
    var s = 'td::SearchChatsNearby(';

    // Params
    final params = <String>[];
    params.add(location.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchChatsNearby',
    'location': location?.toJson(),
  };

  factory SearchChatsNearby.fromJson(Map<String, dynamic> json) => SearchChatsNearby(
    location: b.TdBase.fromJson(json['location']) as o.Location?,
  );
}

/// Returns a list of frequently used chats. Supported only if the chat info database is enabled
class GetTopChats extends TdFunction {
  /// Category of chats to be returned
  final a.TopChatCategory? category;
  /// The maximum number of chats to be returned; up to 30
  final int limit;

  GetTopChats({
    required this.category,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetTopChats(';

    // Params
    final params = <String>[];
    params.add(category.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getTopChats',
    'category': category?.toJson(),
    'limit': limit,
  };

  factory GetTopChats.fromJson(Map<String, dynamic> json) => GetTopChats(
    category: b.TdBase.fromJson(json['category']) as a.TopChatCategory?,
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Removes a chat from the list of frequently used chats. Supported only if the chat info database is enabled
class RemoveTopChat extends TdFunction {
  /// Category of frequently used chats
  final a.TopChatCategory? category;
  /// Chat identifier
  final int chatId;

  RemoveTopChat({
    required this.category,
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::RemoveTopChat(';

    // Params
    final params = <String>[];
    params.add(category.toString());
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'removeTopChat',
    'category': category?.toJson(),
    'chat_id': chatId,
  };

  factory RemoveTopChat.fromJson(Map<String, dynamic> json) => RemoveTopChat(
    category: b.TdBase.fromJson(json['category']) as a.TopChatCategory?,
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Adds a chat to the list of recently found chats. The chat is added to the beginning of the list. If the chat is already in the list, it will be removed from the list first
class AddRecentlyFoundChat extends TdFunction {
  /// Identifier of the chat to add
  final int chatId;

  AddRecentlyFoundChat({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::AddRecentlyFoundChat(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'addRecentlyFoundChat',
    'chat_id': chatId,
  };

  factory AddRecentlyFoundChat.fromJson(Map<String, dynamic> json) => AddRecentlyFoundChat(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Removes a chat from the list of recently found chats
class RemoveRecentlyFoundChat extends TdFunction {
  /// Identifier of the chat to be removed
  final int chatId;

  RemoveRecentlyFoundChat({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::RemoveRecentlyFoundChat(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'removeRecentlyFoundChat',
    'chat_id': chatId,
  };

  factory RemoveRecentlyFoundChat.fromJson(Map<String, dynamic> json) => RemoveRecentlyFoundChat(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Clears the list of recently found chats
class ClearRecentlyFoundChats extends TdFunction {
  ClearRecentlyFoundChats();

  @override
  String toString() {
    var s = 'td::ClearRecentlyFoundChats(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'clearRecentlyFoundChats',
  };

  factory ClearRecentlyFoundChats.fromJson(Map<String, dynamic> json) => ClearRecentlyFoundChats(
  );
}

/// Returns recently opened chats, this is an offline request. Returns chats in the order of last opening
class GetRecentlyOpenedChats extends TdFunction {
  /// The maximum number of chats to be returned
  final int limit;

  GetRecentlyOpenedChats({
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetRecentlyOpenedChats(';

    // Params
    final params = <String>[];
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getRecentlyOpenedChats',
    'limit': limit,
  };

  factory GetRecentlyOpenedChats.fromJson(Map<String, dynamic> json) => GetRecentlyOpenedChats(
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Checks whether a username can be set for a chat
class CheckChatUsername extends TdFunction {
  /// Chat identifier; must be identifier of a supergroup chat, or a channel chat, or a private chat with self, or zero if the chat is being created
  final int chatId;
  /// Username to be checked
  final String username;

  CheckChatUsername({
    required this.chatId,
    required this.username,
  });

  @override
  String toString() {
    var s = 'td::CheckChatUsername(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(username.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkChatUsername',
    'chat_id': chatId,
    'username': username,
  };

  factory CheckChatUsername.fromJson(Map<String, dynamic> json) => CheckChatUsername(
    chatId: (json['chat_id'] as int?) ?? 0,
    username: (json['username'] as String?) ?? '',
  );
}

/// Returns a list of public chats of the specified type, owned by the user
class GetCreatedPublicChats extends TdFunction {
  /// Type of the public chats to return
  final a.PublicChatType? type;

  GetCreatedPublicChats({
    required this.type,
  });

  @override
  String toString() {
    var s = 'td::GetCreatedPublicChats(';

    // Params
    final params = <String>[];
    params.add(type.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getCreatedPublicChats',
    'type': type?.toJson(),
  };

  factory GetCreatedPublicChats.fromJson(Map<String, dynamic> json) => GetCreatedPublicChats(
    type: b.TdBase.fromJson(json['type']) as a.PublicChatType?,
  );
}

/// Checks whether the maximum number of owned public chats has been reached. Returns corresponding error if the limit was reached
class CheckCreatedPublicChatsLimit extends TdFunction {
  /// Type of the public chats, for which to check the limit
  final a.PublicChatType? type;

  CheckCreatedPublicChatsLimit({
    required this.type,
  });

  @override
  String toString() {
    var s = 'td::CheckCreatedPublicChatsLimit(';

    // Params
    final params = <String>[];
    params.add(type.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkCreatedPublicChatsLimit',
    'type': type?.toJson(),
  };

  factory CheckCreatedPublicChatsLimit.fromJson(Map<String, dynamic> json) => CheckCreatedPublicChatsLimit(
    type: b.TdBase.fromJson(json['type']) as a.PublicChatType?,
  );
}

/// Returns a list of basic group and supergroup chats, which can be used as a discussion group for a channel. Returned basic group chats must be first upgraded to supergroups before they can be set as a discussion group. To set a returned supergroup as a discussion group, access to its old messages must be enabled using toggleSupergroupIsAllHistoryAvailable first
class GetSuitableDiscussionChats extends TdFunction {
  GetSuitableDiscussionChats();

  @override
  String toString() {
    var s = 'td::GetSuitableDiscussionChats(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getSuitableDiscussionChats',
  };

  factory GetSuitableDiscussionChats.fromJson(Map<String, dynamic> json) => GetSuitableDiscussionChats(
  );
}

/// Returns a list of recently inactive supergroups and channels. Can be used when user reaches limit on the number of joined supergroups and channels and receives CHANNELS_TOO_MUCH error
class GetInactiveSupergroupChats extends TdFunction {
  GetInactiveSupergroupChats();

  @override
  String toString() {
    var s = 'td::GetInactiveSupergroupChats(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getInactiveSupergroupChats',
  };

  factory GetInactiveSupergroupChats.fromJson(Map<String, dynamic> json) => GetInactiveSupergroupChats(
  );
}

/// Returns a list of common group chats with a given user. Chats are sorted by their type and creation date
class GetGroupsInCommon extends TdFunction {
  /// User identifier
  final int userId;
  /// Chat identifier starting from which to return chats; use 0 for the first request
  final int offsetChatId;
  /// The maximum number of chats to be returned; up to 100
  final int limit;

  GetGroupsInCommon({
    required this.userId,
    required this.offsetChatId,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetGroupsInCommon(';

    // Params
    final params = <String>[];
    params.add(userId.toString());
    params.add(offsetChatId.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getGroupsInCommon',
    'user_id': userId,
    'offset_chat_id': offsetChatId,
    'limit': limit,
  };

  factory GetGroupsInCommon.fromJson(Map<String, dynamic> json) => GetGroupsInCommon(
    userId: (json['user_id'] as int?) ?? 0,
    offsetChatId: (json['offset_chat_id'] as int?) ?? 0,
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Returns messages in a chat. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id).
class GetChatHistory extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
  final int fromMessageId;
  /// Specify 0 to get results from exactly the from_message_id or a negative offset up to 99 to get additionally some newer messages
  final int offset;
  /// The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;
  /// If true, returns only messages that are available locally without sending network requests
  final bool onlyLocal;

  GetChatHistory({
    required this.chatId,
    required this.fromMessageId,
    required this.offset,
    required this.limit,
    required this.onlyLocal,
  });

  @override
  String toString() {
    var s = 'td::GetChatHistory(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(fromMessageId.toString());
    params.add(offset.toString());
    params.add(limit.toString());
    params.add(onlyLocal.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatHistory',
    'chat_id': chatId,
    'from_message_id': fromMessageId,
    'offset': offset,
    'limit': limit,
    'only_local': onlyLocal,
  };

  factory GetChatHistory.fromJson(Map<String, dynamic> json) => GetChatHistory(
    chatId: (json['chat_id'] as int?) ?? 0,
    fromMessageId: (json['from_message_id'] as int?) ?? 0,
    offset: (json['offset'] as int?) ?? 0,
    limit: (json['limit'] as int?) ?? 0,
    onlyLocal: (json['only_local'] as bool?) ?? false,
  );
}

/// Returns messages in a message thread of a message. Can be used only if message.can_get_message_thread == true. Message thread of a channel message is in the channel's linked supergroup.
class GetMessageThreadHistory extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Message identifier, which thread history needs to be returned
  final int messageId;
  /// Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
  final int fromMessageId;
  /// Specify 0 to get results from exactly the from_message_id or a negative offset up to 99 to get additionally some newer messages
  final int offset;
  /// The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  GetMessageThreadHistory({
    required this.chatId,
    required this.messageId,
    required this.fromMessageId,
    required this.offset,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetMessageThreadHistory(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(fromMessageId.toString());
    params.add(offset.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMessageThreadHistory',
    'chat_id': chatId,
    'message_id': messageId,
    'from_message_id': fromMessageId,
    'offset': offset,
    'limit': limit,
  };

  factory GetMessageThreadHistory.fromJson(Map<String, dynamic> json) => GetMessageThreadHistory(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    fromMessageId: (json['from_message_id'] as int?) ?? 0,
    offset: (json['offset'] as int?) ?? 0,
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Deletes all messages in the chat. Use chat.can_be_deleted_only_for_self and chat.can_be_deleted_for_all_users fields to find whether and how the method can be applied to the chat
class DeleteChatHistory extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Pass true if the chat needs to be removed from the chat list
  final bool removeFromChatList;
  /// Pass true to try to delete chat history for all users
  final bool revoke;

  DeleteChatHistory({
    required this.chatId,
    required this.removeFromChatList,
    required this.revoke,
  });

  @override
  String toString() {
    var s = 'td::DeleteChatHistory(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(removeFromChatList.toString());
    params.add(revoke.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteChatHistory',
    'chat_id': chatId,
    'remove_from_chat_list': removeFromChatList,
    'revoke': revoke,
  };

  factory DeleteChatHistory.fromJson(Map<String, dynamic> json) => DeleteChatHistory(
    chatId: (json['chat_id'] as int?) ?? 0,
    removeFromChatList: (json['remove_from_chat_list'] as bool?) ?? false,
    revoke: (json['revoke'] as bool?) ?? false,
  );
}

/// Deletes a chat along with all messages in the corresponding chat for all chat members; requires owner privileges. For group chats this will release the username and remove all members. Chats with more than 1000 members can't be deleted using this method
class DeleteChat extends TdFunction {
  /// Chat identifier
  final int chatId;

  DeleteChat({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::DeleteChat(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteChat',
    'chat_id': chatId,
  };

  factory DeleteChat.fromJson(Map<String, dynamic> json) => DeleteChat(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Searches for messages with given words in the chat. Returns the results in reverse chronological order, i.e. in order of decreasing message_id. Cannot be used in secret chats with a non-empty query
class SearchChatMessages extends TdFunction {
  /// Identifier of the chat in which to search messages
  final int chatId;
  /// Query to search for
  final String query;
  /// Identifier of the sender of messages to search for; pass null to search for messages from any sender. Not supported in secret chats
  final a.MessageSender? senderId;
  /// Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
  final int fromMessageId;
  /// Specify 0 to get results from exactly the from_message_id or a negative offset to get the specified message and some newer messages
  final int offset;
  /// The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than -offset. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;
  /// Additional filter for messages to search; pass null to search for all messages
  final a.SearchMessagesFilter? filter;
  /// If not 0, only messages in the specified thread will be returned; supergroups only
  final int messageThreadId;

  SearchChatMessages({
    required this.chatId,
    required this.query,
    required this.senderId,
    required this.fromMessageId,
    required this.offset,
    required this.limit,
    required this.filter,
    required this.messageThreadId,
  });

  @override
  String toString() {
    var s = 'td::SearchChatMessages(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(query.toString());
    params.add(senderId.toString());
    params.add(fromMessageId.toString());
    params.add(offset.toString());
    params.add(limit.toString());
    params.add(filter.toString());
    params.add(messageThreadId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchChatMessages',
    'chat_id': chatId,
    'query': query,
    'sender_id': senderId?.toJson(),
    'from_message_id': fromMessageId,
    'offset': offset,
    'limit': limit,
    'filter': filter?.toJson(),
    'message_thread_id': messageThreadId,
  };

  factory SearchChatMessages.fromJson(Map<String, dynamic> json) => SearchChatMessages(
    chatId: (json['chat_id'] as int?) ?? 0,
    query: (json['query'] as String?) ?? '',
    senderId: b.TdBase.fromJson(json['sender_id']) as a.MessageSender?,
    fromMessageId: (json['from_message_id'] as int?) ?? 0,
    offset: (json['offset'] as int?) ?? 0,
    limit: (json['limit'] as int?) ?? 0,
    filter: b.TdBase.fromJson(json['filter']) as a.SearchMessagesFilter?,
    messageThreadId: (json['message_thread_id'] as int?) ?? 0,
  );
}

/// Searches for messages in all chats except secret chats. Returns the results in reverse chronological order (i.e., in order of decreasing (date, chat_id, message_id)).
class SearchMessages extends TdFunction {
  /// Chat list in which to search messages; pass null to search in all chats regardless of their chat list. Only Main and Archive chat lists are supported
  final a.ChatList? chatList;
  /// Query to search for
  final String query;
  /// The date of the message starting from which the results need to be fetched. Use 0 or any date in the future to get results from the last message
  final int offsetDate;
  /// The chat identifier of the last found message, or 0 for the first request
  final int offsetChatId;
  /// The message identifier of the last found message, or 0 for the first request
  final int offsetMessageId;
  /// The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;
  /// Additional filter for messages to search; pass null to search for all messages. Filters searchMessagesFilterMention, searchMessagesFilterUnreadMention, searchMessagesFilterFailedToSend and searchMessagesFilterPinned are unsupported in this function
  final a.SearchMessagesFilter? filter;
  /// If not 0, the minimum date of the messages to return
  final int minDate;
  /// If not 0, the maximum date of the messages to return
  final int maxDate;

  SearchMessages({
    required this.chatList,
    required this.query,
    required this.offsetDate,
    required this.offsetChatId,
    required this.offsetMessageId,
    required this.limit,
    required this.filter,
    required this.minDate,
    required this.maxDate,
  });

  @override
  String toString() {
    var s = 'td::SearchMessages(';

    // Params
    final params = <String>[];
    params.add(chatList.toString());
    params.add(query.toString());
    params.add(offsetDate.toString());
    params.add(offsetChatId.toString());
    params.add(offsetMessageId.toString());
    params.add(limit.toString());
    params.add(filter.toString());
    params.add(minDate.toString());
    params.add(maxDate.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessages',
    'chat_list': chatList?.toJson(),
    'query': query,
    'offset_date': offsetDate,
    'offset_chat_id': offsetChatId,
    'offset_message_id': offsetMessageId,
    'limit': limit,
    'filter': filter?.toJson(),
    'min_date': minDate,
    'max_date': maxDate,
  };

  factory SearchMessages.fromJson(Map<String, dynamic> json) => SearchMessages(
    chatList: b.TdBase.fromJson(json['chat_list']) as a.ChatList?,
    query: (json['query'] as String?) ?? '',
    offsetDate: (json['offset_date'] as int?) ?? 0,
    offsetChatId: (json['offset_chat_id'] as int?) ?? 0,
    offsetMessageId: (json['offset_message_id'] as int?) ?? 0,
    limit: (json['limit'] as int?) ?? 0,
    filter: b.TdBase.fromJson(json['filter']) as a.SearchMessagesFilter?,
    minDate: (json['min_date'] as int?) ?? 0,
    maxDate: (json['max_date'] as int?) ?? 0,
  );
}

/// Searches for messages in secret chats. Returns the results in reverse chronological order. For optimal performance, the number of returned messages is chosen by TDLib
class SearchSecretMessages extends TdFunction {
  /// Identifier of the chat in which to search. Specify 0 to search in all secret chats
  final int chatId;
  /// Query to search for. If empty, searchChatMessages must be used instead
  final String query;
  /// Offset of the first entry to return as received from the previous request; use empty string to get first chunk of results
  final String offset;
  /// The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;
  /// Additional filter for messages to search; pass null to search for all messages
  final a.SearchMessagesFilter? filter;

  SearchSecretMessages({
    required this.chatId,
    required this.query,
    required this.offset,
    required this.limit,
    required this.filter,
  });

  @override
  String toString() {
    var s = 'td::SearchSecretMessages(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(query.toString());
    params.add(offset.toString());
    params.add(limit.toString());
    params.add(filter.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchSecretMessages',
    'chat_id': chatId,
    'query': query,
    'offset': offset,
    'limit': limit,
    'filter': filter?.toJson(),
  };

  factory SearchSecretMessages.fromJson(Map<String, dynamic> json) => SearchSecretMessages(
    chatId: (json['chat_id'] as int?) ?? 0,
    query: (json['query'] as String?) ?? '',
    offset: (json['offset'] as String?) ?? '',
    limit: (json['limit'] as int?) ?? 0,
    filter: b.TdBase.fromJson(json['filter']) as a.SearchMessagesFilter?,
  );
}

/// Searches for call messages. Returns the results in reverse chronological order (i. e., in order of decreasing message_id). For optimal performance, the number of returned messages is chosen by TDLib
class SearchCallMessages extends TdFunction {
  /// Identifier of the message from which to search; use 0 to get results from the last message
  final int fromMessageId;
  /// The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;
  /// If true, returns only messages with missed/declined calls
  final bool onlyMissed;

  SearchCallMessages({
    required this.fromMessageId,
    required this.limit,
    required this.onlyMissed,
  });

  @override
  String toString() {
    var s = 'td::SearchCallMessages(';

    // Params
    final params = <String>[];
    params.add(fromMessageId.toString());
    params.add(limit.toString());
    params.add(onlyMissed.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchCallMessages',
    'from_message_id': fromMessageId,
    'limit': limit,
    'only_missed': onlyMissed,
  };

  factory SearchCallMessages.fromJson(Map<String, dynamic> json) => SearchCallMessages(
    fromMessageId: (json['from_message_id'] as int?) ?? 0,
    limit: (json['limit'] as int?) ?? 0,
    onlyMissed: (json['only_missed'] as bool?) ?? false,
  );
}

/// Deletes all call messages
class DeleteAllCallMessages extends TdFunction {
  /// Pass true to delete the messages for all users
  final bool revoke;

  DeleteAllCallMessages({
    required this.revoke,
  });

  @override
  String toString() {
    var s = 'td::DeleteAllCallMessages(';

    // Params
    final params = <String>[];
    params.add(revoke.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteAllCallMessages',
    'revoke': revoke,
  };

  factory DeleteAllCallMessages.fromJson(Map<String, dynamic> json) => DeleteAllCallMessages(
    revoke: (json['revoke'] as bool?) ?? false,
  );
}

/// Returns information about the recent locations of chat members that were sent to the chat. Returns up to 1 location message per user
class SearchChatRecentLocationMessages extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// The maximum number of messages to be returned
  final int limit;

  SearchChatRecentLocationMessages({
    required this.chatId,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::SearchChatRecentLocationMessages(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchChatRecentLocationMessages',
    'chat_id': chatId,
    'limit': limit,
  };

  factory SearchChatRecentLocationMessages.fromJson(Map<String, dynamic> json) => SearchChatRecentLocationMessages(
    chatId: (json['chat_id'] as int?) ?? 0,
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Returns all active live locations that need to be updated by the application. The list is persistent across application restarts only if the message database is used
class GetActiveLiveLocationMessages extends TdFunction {
  GetActiveLiveLocationMessages();

  @override
  String toString() {
    var s = 'td::GetActiveLiveLocationMessages(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getActiveLiveLocationMessages',
  };

  factory GetActiveLiveLocationMessages.fromJson(Map<String, dynamic> json) => GetActiveLiveLocationMessages(
  );
}

/// Returns the last message sent in a chat no later than the specified date
class GetChatMessageByDate extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Point in time (Unix timestamp) relative to which to search for messages
  final int date;

  GetChatMessageByDate({
    required this.chatId,
    required this.date,
  });

  @override
  String toString() {
    var s = 'td::GetChatMessageByDate(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(date.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatMessageByDate',
    'chat_id': chatId,
    'date': date,
  };

  factory GetChatMessageByDate.fromJson(Map<String, dynamic> json) => GetChatMessageByDate(
    chatId: (json['chat_id'] as int?) ?? 0,
    date: (json['date'] as int?) ?? 0,
  );
}

/// Returns sparse positions of messages of the specified type in the chat to be used for shared media scroll implementation. Returns the results in reverse chronological order (i.e., in order of decreasing message_id).
class GetChatSparseMessagePositions extends TdFunction {
  /// Identifier of the chat in which to return information about message positions
  final int chatId;
  /// Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention and searchMessagesFilterUnreadMention are unsupported in this function
  final a.SearchMessagesFilter? filter;
  /// The message identifier from which to return information about message positions
  final int fromMessageId;
  /// The expected number of message positions to be returned; 50-2000. A smaller number of positions can be returned, if there are not enough appropriate messages
  final int limit;

  GetChatSparseMessagePositions({
    required this.chatId,
    required this.filter,
    required this.fromMessageId,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetChatSparseMessagePositions(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(filter.toString());
    params.add(fromMessageId.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatSparseMessagePositions',
    'chat_id': chatId,
    'filter': filter?.toJson(),
    'from_message_id': fromMessageId,
    'limit': limit,
  };

  factory GetChatSparseMessagePositions.fromJson(Map<String, dynamic> json) => GetChatSparseMessagePositions(
    chatId: (json['chat_id'] as int?) ?? 0,
    filter: b.TdBase.fromJson(json['filter']) as a.SearchMessagesFilter?,
    fromMessageId: (json['from_message_id'] as int?) ?? 0,
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Returns information about the next messages of the specified type in the chat splitted by days. Returns the results in reverse chronological order. Can return partial result for the last returned day. Behavior of this method depends on the value of the option "utc_time_offset"
class GetChatMessageCalendar extends TdFunction {
  /// Identifier of the chat in which to return information about messages
  final int chatId;
  /// Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention and searchMessagesFilterUnreadMention are unsupported in this function
  final a.SearchMessagesFilter? filter;
  /// The message identifier from which to return information about messages; use 0 to get results from the last message
  final int fromMessageId;

  GetChatMessageCalendar({
    required this.chatId,
    required this.filter,
    required this.fromMessageId,
  });

  @override
  String toString() {
    var s = 'td::GetChatMessageCalendar(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(filter.toString());
    params.add(fromMessageId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatMessageCalendar',
    'chat_id': chatId,
    'filter': filter?.toJson(),
    'from_message_id': fromMessageId,
  };

  factory GetChatMessageCalendar.fromJson(Map<String, dynamic> json) => GetChatMessageCalendar(
    chatId: (json['chat_id'] as int?) ?? 0,
    filter: b.TdBase.fromJson(json['filter']) as a.SearchMessagesFilter?,
    fromMessageId: (json['from_message_id'] as int?) ?? 0,
  );
}

/// Returns approximate number of messages of the specified type in the chat
class GetChatMessageCount extends TdFunction {
  /// Identifier of the chat in which to count messages
  final int chatId;
  /// Filter for message content; searchMessagesFilterEmpty is unsupported in this function
  final a.SearchMessagesFilter? filter;
  /// If true, returns count that is available locally without sending network requests, returning -1 if the number of messages is unknown
  final bool returnLocal;

  GetChatMessageCount({
    required this.chatId,
    required this.filter,
    required this.returnLocal,
  });

  @override
  String toString() {
    var s = 'td::GetChatMessageCount(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(filter.toString());
    params.add(returnLocal.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatMessageCount',
    'chat_id': chatId,
    'filter': filter?.toJson(),
    'return_local': returnLocal,
  };

  factory GetChatMessageCount.fromJson(Map<String, dynamic> json) => GetChatMessageCount(
    chatId: (json['chat_id'] as int?) ?? 0,
    filter: b.TdBase.fromJson(json['filter']) as a.SearchMessagesFilter?,
    returnLocal: (json['return_local'] as bool?) ?? false,
  );
}

/// Returns all scheduled messages in a chat. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id)
class GetChatScheduledMessages extends TdFunction {
  /// Chat identifier
  final int chatId;

  GetChatScheduledMessages({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::GetChatScheduledMessages(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatScheduledMessages',
    'chat_id': chatId,
  };

  factory GetChatScheduledMessages.fromJson(Map<String, dynamic> json) => GetChatScheduledMessages(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Returns forwarded copies of a channel message to different public channels. For optimal performance, the number of returned messages is chosen by TDLib
class GetMessagePublicForwards extends TdFunction {
  /// Chat identifier of the message
  final int chatId;
  /// Message identifier
  final int messageId;
  /// Offset of the first entry to return as received from the previous request; use empty string to get first chunk of results
  final String offset;
  /// The maximum number of messages to be returned; must be positive and can't be greater than 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  GetMessagePublicForwards({
    required this.chatId,
    required this.messageId,
    required this.offset,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetMessagePublicForwards(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(offset.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMessagePublicForwards',
    'chat_id': chatId,
    'message_id': messageId,
    'offset': offset,
    'limit': limit,
  };

  factory GetMessagePublicForwards.fromJson(Map<String, dynamic> json) => GetMessagePublicForwards(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    offset: (json['offset'] as String?) ?? '',
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Returns sponsored messages to be shown in a chat; for channel chats only
class GetChatSponsoredMessages extends TdFunction {
  /// Identifier of the chat
  final int chatId;

  GetChatSponsoredMessages({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::GetChatSponsoredMessages(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatSponsoredMessages',
    'chat_id': chatId,
  };

  factory GetChatSponsoredMessages.fromJson(Map<String, dynamic> json) => GetChatSponsoredMessages(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Informs TDLib that a sponsored message was viewed by the user
class ViewSponsoredMessage extends TdFunction {
  /// Identifier of the chat with the sponsored message
  final int chatId;
  /// The identifier of the sponsored message being viewed
  final int sponsoredMessageId;

  ViewSponsoredMessage({
    required this.chatId,
    required this.sponsoredMessageId,
  });

  @override
  String toString() {
    var s = 'td::ViewSponsoredMessage(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(sponsoredMessageId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'viewSponsoredMessage',
    'chat_id': chatId,
    'sponsored_message_id': sponsoredMessageId,
  };

  factory ViewSponsoredMessage.fromJson(Map<String, dynamic> json) => ViewSponsoredMessage(
    chatId: (json['chat_id'] as int?) ?? 0,
    sponsoredMessageId: (json['sponsored_message_id'] as int?) ?? 0,
  );
}

/// Removes an active notification from notification list. Needs to be called only if the notification is removed by the current user
class RemoveNotification extends TdFunction {
  /// Identifier of notification group to which the notification belongs
  final int notificationGroupId;
  /// Identifier of removed notification
  final int notificationId;

  RemoveNotification({
    required this.notificationGroupId,
    required this.notificationId,
  });

  @override
  String toString() {
    var s = 'td::RemoveNotification(';

    // Params
    final params = <String>[];
    params.add(notificationGroupId.toString());
    params.add(notificationId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'removeNotification',
    'notification_group_id': notificationGroupId,
    'notification_id': notificationId,
  };

  factory RemoveNotification.fromJson(Map<String, dynamic> json) => RemoveNotification(
    notificationGroupId: (json['notification_group_id'] as int?) ?? 0,
    notificationId: (json['notification_id'] as int?) ?? 0,
  );
}

/// Removes a group of active notifications. Needs to be called only if the notification group is removed by the current user
class RemoveNotificationGroup extends TdFunction {
  /// Notification group identifier
  final int notificationGroupId;
  /// The maximum identifier of removed notifications
  final int maxNotificationId;

  RemoveNotificationGroup({
    required this.notificationGroupId,
    required this.maxNotificationId,
  });

  @override
  String toString() {
    var s = 'td::RemoveNotificationGroup(';

    // Params
    final params = <String>[];
    params.add(notificationGroupId.toString());
    params.add(maxNotificationId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'removeNotificationGroup',
    'notification_group_id': notificationGroupId,
    'max_notification_id': maxNotificationId,
  };

  factory RemoveNotificationGroup.fromJson(Map<String, dynamic> json) => RemoveNotificationGroup(
    notificationGroupId: (json['notification_group_id'] as int?) ?? 0,
    maxNotificationId: (json['max_notification_id'] as int?) ?? 0,
  );
}

/// Returns an HTTPS link to a message in a chat. Available only for already sent messages in supergroups and channels, or if message.can_get_media_timestamp_links and a media timestamp link is generated. This is an offline request
class GetMessageLink extends TdFunction {
  /// Identifier of the chat to which the message belongs
  final int chatId;
  /// Identifier of the message
  final int messageId;
  /// If not 0, timestamp from which the video/audio/video note/voice note playing must start, in seconds. The media can be in the message content or in its web page preview
  final int mediaTimestamp;
  /// Pass true to create a link for the whole media album
  final bool forAlbum;
  /// Pass true to create a link to the message as a channel post comment, or from a message thread
  final bool forComment;

  GetMessageLink({
    required this.chatId,
    required this.messageId,
    required this.mediaTimestamp,
    required this.forAlbum,
    required this.forComment,
  });

  @override
  String toString() {
    var s = 'td::GetMessageLink(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(mediaTimestamp.toString());
    params.add(forAlbum.toString());
    params.add(forComment.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMessageLink',
    'chat_id': chatId,
    'message_id': messageId,
    'media_timestamp': mediaTimestamp,
    'for_album': forAlbum,
    'for_comment': forComment,
  };

  factory GetMessageLink.fromJson(Map<String, dynamic> json) => GetMessageLink(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    mediaTimestamp: (json['media_timestamp'] as int?) ?? 0,
    forAlbum: (json['for_album'] as bool?) ?? false,
    forComment: (json['for_comment'] as bool?) ?? false,
  );
}

/// Returns an HTML code for embedding the message. Available only for messages in supergroups and channels with a username
class GetMessageEmbeddingCode extends TdFunction {
  /// Identifier of the chat to which the message belongs
  final int chatId;
  /// Identifier of the message
  final int messageId;
  /// Pass true to return an HTML code for embedding of the whole media album
  final bool forAlbum;

  GetMessageEmbeddingCode({
    required this.chatId,
    required this.messageId,
    required this.forAlbum,
  });

  @override
  String toString() {
    var s = 'td::GetMessageEmbeddingCode(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(forAlbum.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMessageEmbeddingCode',
    'chat_id': chatId,
    'message_id': messageId,
    'for_album': forAlbum,
  };

  factory GetMessageEmbeddingCode.fromJson(Map<String, dynamic> json) => GetMessageEmbeddingCode(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    forAlbum: (json['for_album'] as bool?) ?? false,
  );
}

/// Returns information about a public or private message link. Can be called for any internal link of the type internalLinkTypeMessage
class GetMessageLinkInfo extends TdFunction {
  /// The message link
  final String url;

  GetMessageLinkInfo({
    required this.url,
  });

  @override
  String toString() {
    var s = 'td::GetMessageLinkInfo(';

    // Params
    final params = <String>[];
    params.add(url.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMessageLinkInfo',
    'url': url,
  };

  factory GetMessageLinkInfo.fromJson(Map<String, dynamic> json) => GetMessageLinkInfo(
    url: (json['url'] as String?) ?? '',
  );
}

/// Returns list of message sender identifiers, which can be used to send messages in a chat
class GetChatAvailableMessageSenders extends TdFunction {
  /// Chat identifier
  final int chatId;

  GetChatAvailableMessageSenders({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::GetChatAvailableMessageSenders(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatAvailableMessageSenders',
    'chat_id': chatId,
  };

  factory GetChatAvailableMessageSenders.fromJson(Map<String, dynamic> json) => GetChatAvailableMessageSenders(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Changes default message sender that is chosen in a chat
class SetChatDefaultMessageSender extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// New default message sender in the chat
  final a.MessageSender? defaultMessageSenderId;

  SetChatDefaultMessageSender({
    required this.chatId,
    required this.defaultMessageSenderId,
  });

  @override
  String toString() {
    var s = 'td::SetChatDefaultMessageSender(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(defaultMessageSenderId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setChatDefaultMessageSender',
    'chat_id': chatId,
    'default_message_sender_id': defaultMessageSenderId?.toJson(),
  };

  factory SetChatDefaultMessageSender.fromJson(Map<String, dynamic> json) => SetChatDefaultMessageSender(
    chatId: (json['chat_id'] as int?) ?? 0,
    defaultMessageSenderId: b.TdBase.fromJson(json['default_message_sender_id']) as a.MessageSender?,
  );
}

/// Sends a message. Returns the sent message
class SendMessage extends TdFunction {
  /// Target chat
  final int chatId;
  /// If not 0, a message thread identifier in which the message will be sent
  final int messageThreadId;
  /// Identifier of the message to reply to or 0
  final int replyToMessageId;
  /// Options to be used to send the message; pass null to use default options
  final o.MessageSendOptions? options;
  /// Markup for replying to the message; pass null if none; for bots only
  final a.ReplyMarkup? replyMarkup;
  /// The content of the message to be sent
  final a.InputMessageContent? inputMessageContent;

  SendMessage({
    required this.chatId,
    required this.messageThreadId,
    required this.replyToMessageId,
    required this.options,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  String toString() {
    var s = 'td::SendMessage(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageThreadId.toString());
    params.add(replyToMessageId.toString());
    params.add(options.toString());
    params.add(replyMarkup.toString());
    params.add(inputMessageContent.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sendMessage',
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'reply_to_message_id': replyToMessageId,
    'options': options?.toJson(),
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
  };

  factory SendMessage.fromJson(Map<String, dynamic> json) => SendMessage(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageThreadId: (json['message_thread_id'] as int?) ?? 0,
    replyToMessageId: (json['reply_to_message_id'] as int?) ?? 0,
    options: b.TdBase.fromJson(json['options']) as o.MessageSendOptions?,
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup?,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent?,
  );
}

/// Sends 2-10 messages grouped together into an album. Currently, only audio, document, photo and video messages can be grouped into an album. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages
class SendMessageAlbum extends TdFunction {
  /// Target chat
  final int chatId;
  /// If not 0, a message thread identifier in which the messages will be sent
  final int messageThreadId;
  /// Identifier of a message to reply to or 0
  final int replyToMessageId;
  /// Options to be used to send the messages; pass null to use default options
  final o.MessageSendOptions? options;
  /// Contents of messages to be sent. At most 10 messages can be added to an album
  final List<a.InputMessageContent?> inputMessageContents;

  SendMessageAlbum({
    required this.chatId,
    required this.messageThreadId,
    required this.replyToMessageId,
    required this.options,
    required this.inputMessageContents,
  });

  @override
  String toString() {
    var s = 'td::SendMessageAlbum(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageThreadId.toString());
    params.add(replyToMessageId.toString());
    params.add(options.toString());
    params.add(inputMessageContents.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sendMessageAlbum',
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'reply_to_message_id': replyToMessageId,
    'options': options?.toJson(),
    'input_message_contents': inputMessageContents.map((_e1) => _e1?.toJson()).toList(growable: false),
  };

  factory SendMessageAlbum.fromJson(Map<String, dynamic> json) => SendMessageAlbum(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageThreadId: (json['message_thread_id'] as int?) ?? 0,
    replyToMessageId: (json['reply_to_message_id'] as int?) ?? 0,
    options: b.TdBase.fromJson(json['options']) as o.MessageSendOptions?,
    inputMessageContents: json['input_message_contents'] == null ? <a.InputMessageContent?>[] : (json['input_message_contents'] as List<dynamic>).map((e) => (b.TdBase.fromJson(e) as a.InputMessageContent?)).toList(growable: false),
  );
}

/// Invites a bot to a chat (if it is not yet a member) and sends it the /start command. Bots can't be invited to a private chat other than the chat with the bot. Bots can't be invited to channels (although they can be added as admins) and secret chats. Returns the sent message
class SendBotStartMessage extends TdFunction {
  /// Identifier of the bot
  final int botUserId;
  /// Identifier of the target chat
  final int chatId;
  /// A hidden parameter sent to the bot for deep linking purposes (https://core.telegram.org/bots#deep-linking)
  final String parameter;

  SendBotStartMessage({
    required this.botUserId,
    required this.chatId,
    required this.parameter,
  });

  @override
  String toString() {
    var s = 'td::SendBotStartMessage(';

    // Params
    final params = <String>[];
    params.add(botUserId.toString());
    params.add(chatId.toString());
    params.add(parameter.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sendBotStartMessage',
    'bot_user_id': botUserId,
    'chat_id': chatId,
    'parameter': parameter,
  };

  factory SendBotStartMessage.fromJson(Map<String, dynamic> json) => SendBotStartMessage(
    botUserId: (json['bot_user_id'] as int?) ?? 0,
    chatId: (json['chat_id'] as int?) ?? 0,
    parameter: (json['parameter'] as String?) ?? '',
  );
}

/// Sends the result of an inline query as a message. Returns the sent message. Always clears a chat draft message
class SendInlineQueryResultMessage extends TdFunction {
  /// Target chat
  final int chatId;
  /// If not 0, a message thread identifier in which the message will be sent
  final int messageThreadId;
  /// Identifier of a message to reply to or 0
  final int replyToMessageId;
  /// Options to be used to send the message; pass null to use default options
  final o.MessageSendOptions? options;
  /// Identifier of the inline query
  final int queryId;
  /// Identifier of the inline result
  final String resultId;
  /// If true, there will be no mention of a bot, via which the message is sent. Can be used only for bots GetOption("animation_search_bot_username"), GetOption("photo_search_bot_username") and GetOption("venue_search_bot_username")
  final bool hideViaBot;

  SendInlineQueryResultMessage({
    required this.chatId,
    required this.messageThreadId,
    required this.replyToMessageId,
    required this.options,
    required this.queryId,
    required this.resultId,
    required this.hideViaBot,
  });

  @override
  String toString() {
    var s = 'td::SendInlineQueryResultMessage(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageThreadId.toString());
    params.add(replyToMessageId.toString());
    params.add(options.toString());
    params.add(queryId.toString());
    params.add(resultId.toString());
    params.add(hideViaBot.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sendInlineQueryResultMessage',
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'reply_to_message_id': replyToMessageId,
    'options': options?.toJson(),
    'query_id': queryId.toString(),
    'result_id': resultId,
    'hide_via_bot': hideViaBot,
  };

  factory SendInlineQueryResultMessage.fromJson(Map<String, dynamic> json) => SendInlineQueryResultMessage(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageThreadId: (json['message_thread_id'] as int?) ?? 0,
    replyToMessageId: (json['reply_to_message_id'] as int?) ?? 0,
    options: b.TdBase.fromJson(json['options']) as o.MessageSendOptions?,
    queryId: int.parse(json['query_id'] ?? '0'),
    resultId: (json['result_id'] as String?) ?? '',
    hideViaBot: (json['hide_via_bot'] as bool?) ?? false,
  );
}

/// Forwards previously sent messages. Returns the forwarded messages in the same order as the message identifiers passed in message_ids. If a message can't be forwarded, null will be returned instead of the message
class ForwardMessages extends TdFunction {
  /// Identifier of the chat to which to forward messages
  final int chatId;
  /// Identifier of the chat from which to forward messages
  final int fromChatId;
  /// Identifiers of the messages to forward. Message identifiers must be in a strictly increasing order. At most 100 messages can be forwarded simultaneously
  final List<int> messageIds;
  /// Options to be used to send the messages; pass null to use default options
  final o.MessageSendOptions? options;
  /// If true, content of the messages will be copied without reference to the original sender. Always true if the messages are forwarded to a secret chat or are local
  final bool sendCopy;
  /// If true, media caption of message copies will be removed. Ignored if send_copy is false
  final bool removeCaption;
  /// If true, messages will not be forwarded and instead fake messages will be returned
  final bool onlyPreview;

  ForwardMessages({
    required this.chatId,
    required this.fromChatId,
    required this.messageIds,
    required this.options,
    required this.sendCopy,
    required this.removeCaption,
    required this.onlyPreview,
  });

  @override
  String toString() {
    var s = 'td::ForwardMessages(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(fromChatId.toString());
    params.add(messageIds.toString());
    params.add(options.toString());
    params.add(sendCopy.toString());
    params.add(removeCaption.toString());
    params.add(onlyPreview.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'forwardMessages',
    'chat_id': chatId,
    'from_chat_id': fromChatId,
    'message_ids': messageIds.map((_e1) => _e1).toList(growable: false),
    'options': options?.toJson(),
    'send_copy': sendCopy,
    'remove_caption': removeCaption,
    'only_preview': onlyPreview,
  };

  factory ForwardMessages.fromJson(Map<String, dynamic> json) => ForwardMessages(
    chatId: (json['chat_id'] as int?) ?? 0,
    fromChatId: (json['from_chat_id'] as int?) ?? 0,
    messageIds: json['message_ids'] == null ? <int>[] : (json['message_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
    options: b.TdBase.fromJson(json['options']) as o.MessageSendOptions?,
    sendCopy: (json['send_copy'] as bool?) ?? false,
    removeCaption: (json['remove_caption'] as bool?) ?? false,
    onlyPreview: (json['only_preview'] as bool?) ?? false,
  );
}

/// Resends messages which failed to send. Can be called only for messages for which messageSendingStateFailed.can_retry is true and after specified in messageSendingStateFailed.retry_after time passed.
class ResendMessages extends TdFunction {
  /// Identifier of the chat to send messages
  final int chatId;
  /// Identifiers of the messages to resend. Message identifiers must be in a strictly increasing order
  final List<int> messageIds;

  ResendMessages({
    required this.chatId,
    required this.messageIds,
  });

  @override
  String toString() {
    var s = 'td::ResendMessages(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageIds.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'resendMessages',
    'chat_id': chatId,
    'message_ids': messageIds.map((_e1) => _e1).toList(growable: false),
  };

  factory ResendMessages.fromJson(Map<String, dynamic> json) => ResendMessages(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageIds: json['message_ids'] == null ? <int>[] : (json['message_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
  );
}

/// Sends a notification about a screenshot taken in a chat. Supported only in private and secret chats
class SendChatScreenshotTakenNotification extends TdFunction {
  /// Chat identifier
  final int chatId;

  SendChatScreenshotTakenNotification({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::SendChatScreenshotTakenNotification(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sendChatScreenshotTakenNotification',
    'chat_id': chatId,
  };

  factory SendChatScreenshotTakenNotification.fromJson(Map<String, dynamic> json) => SendChatScreenshotTakenNotification(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Adds a local message to a chat. The message is persistent across application restarts only if the message database is used. Returns the added message
class AddLocalMessage extends TdFunction {
  /// Target chat
  final int chatId;
  /// Identifier of the sender of the message
  final a.MessageSender? senderId;
  /// Identifier of the message to reply to or 0
  final int replyToMessageId;
  /// Pass true to disable notification for the message
  final bool disableNotification;
  /// The content of the message to be added
  final a.InputMessageContent? inputMessageContent;

  AddLocalMessage({
    required this.chatId,
    required this.senderId,
    required this.replyToMessageId,
    required this.disableNotification,
    required this.inputMessageContent,
  });

  @override
  String toString() {
    var s = 'td::AddLocalMessage(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(senderId.toString());
    params.add(replyToMessageId.toString());
    params.add(disableNotification.toString());
    params.add(inputMessageContent.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'addLocalMessage',
    'chat_id': chatId,
    'sender_id': senderId?.toJson(),
    'reply_to_message_id': replyToMessageId,
    'disable_notification': disableNotification,
    'input_message_content': inputMessageContent?.toJson(),
  };

  factory AddLocalMessage.fromJson(Map<String, dynamic> json) => AddLocalMessage(
    chatId: (json['chat_id'] as int?) ?? 0,
    senderId: b.TdBase.fromJson(json['sender_id']) as a.MessageSender?,
    replyToMessageId: (json['reply_to_message_id'] as int?) ?? 0,
    disableNotification: (json['disable_notification'] as bool?) ?? false,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent?,
  );
}

/// Deletes messages
class DeleteMessages extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Identifiers of the messages to be deleted
  final List<int> messageIds;
  /// Pass true to try to delete messages for all chat members. Always true for supergroups, channels and secret chats
  final bool revoke;

  DeleteMessages({
    required this.chatId,
    required this.messageIds,
    required this.revoke,
  });

  @override
  String toString() {
    var s = 'td::DeleteMessages(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageIds.toString());
    params.add(revoke.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteMessages',
    'chat_id': chatId,
    'message_ids': messageIds.map((_e1) => _e1).toList(growable: false),
    'revoke': revoke,
  };

  factory DeleteMessages.fromJson(Map<String, dynamic> json) => DeleteMessages(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageIds: json['message_ids'] == null ? <int>[] : (json['message_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
    revoke: (json['revoke'] as bool?) ?? false,
  );
}

/// Deletes all messages sent by the specified message sender in a chat. Supported only for supergroups; requires can_delete_messages administrator privileges
class DeleteChatMessagesBySender extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Identifier of the sender of messages to delete
  final a.MessageSender? senderId;

  DeleteChatMessagesBySender({
    required this.chatId,
    required this.senderId,
  });

  @override
  String toString() {
    var s = 'td::DeleteChatMessagesBySender(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(senderId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteChatMessagesBySender',
    'chat_id': chatId,
    'sender_id': senderId?.toJson(),
  };

  factory DeleteChatMessagesBySender.fromJson(Map<String, dynamic> json) => DeleteChatMessagesBySender(
    chatId: (json['chat_id'] as int?) ?? 0,
    senderId: b.TdBase.fromJson(json['sender_id']) as a.MessageSender?,
  );
}

/// Deletes all messages between the specified dates in a chat. Supported only for private chats and basic groups. Messages sent in the last 30 seconds will not be deleted
class DeleteChatMessagesByDate extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// The minimum date of the messages to delete
  final int minDate;
  /// The maximum date of the messages to delete
  final int maxDate;
  /// Pass true to try to delete chat messages for all users; private chats only
  final bool revoke;

  DeleteChatMessagesByDate({
    required this.chatId,
    required this.minDate,
    required this.maxDate,
    required this.revoke,
  });

  @override
  String toString() {
    var s = 'td::DeleteChatMessagesByDate(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(minDate.toString());
    params.add(maxDate.toString());
    params.add(revoke.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteChatMessagesByDate',
    'chat_id': chatId,
    'min_date': minDate,
    'max_date': maxDate,
    'revoke': revoke,
  };

  factory DeleteChatMessagesByDate.fromJson(Map<String, dynamic> json) => DeleteChatMessagesByDate(
    chatId: (json['chat_id'] as int?) ?? 0,
    minDate: (json['min_date'] as int?) ?? 0,
    maxDate: (json['max_date'] as int?) ?? 0,
    revoke: (json['revoke'] as bool?) ?? false,
  );
}

/// Edits the text of a message (or a text of a game message). Returns the edited message after the edit is completed on the server side
class EditMessageText extends TdFunction {
  /// The chat the message belongs to
  final int chatId;
  /// Identifier of the message
  final int messageId;
  /// The new message reply markup; pass null if none; for bots only
  final a.ReplyMarkup? replyMarkup;
  /// New text content of the message. Must be of type inputMessageText
  final a.InputMessageContent? inputMessageContent;

  EditMessageText({
    required this.chatId,
    required this.messageId,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  String toString() {
    var s = 'td::EditMessageText(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(replyMarkup.toString());
    params.add(inputMessageContent.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'editMessageText',
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
  };

  factory EditMessageText.fromJson(Map<String, dynamic> json) => EditMessageText(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup?,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent?,
  );
}

/// Edits the message content of a live location. Messages can be edited for a limited period of time specified in the live location. Returns the edited message after the edit is completed on the server side
class EditMessageLiveLocation extends TdFunction {
  /// The chat the message belongs to
  final int chatId;
  /// Identifier of the message
  final int messageId;
  /// The new message reply markup; pass null if none; for bots only
  final a.ReplyMarkup? replyMarkup;
  /// New location content of the message; pass null to stop sharing the live location
  final o.Location? location;
  /// The new direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  final int heading;
  /// The new maximum distance for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled
  final int proximityAlertRadius;

  EditMessageLiveLocation({
    required this.chatId,
    required this.messageId,
    required this.replyMarkup,
    required this.location,
    required this.heading,
    required this.proximityAlertRadius,
  });

  @override
  String toString() {
    var s = 'td::EditMessageLiveLocation(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(replyMarkup.toString());
    params.add(location.toString());
    params.add(heading.toString());
    params.add(proximityAlertRadius.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'editMessageLiveLocation',
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup?.toJson(),
    'location': location?.toJson(),
    'heading': heading,
    'proximity_alert_radius': proximityAlertRadius,
  };

  factory EditMessageLiveLocation.fromJson(Map<String, dynamic> json) => EditMessageLiveLocation(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup?,
    location: b.TdBase.fromJson(json['location']) as o.Location?,
    heading: (json['heading'] as int?) ?? 0,
    proximityAlertRadius: (json['proximity_alert_radius'] as int?) ?? 0,
  );
}

/// Edits the content of a message with an animation, an audio, a document, a photo or a video, including message caption. If only the caption needs to be edited, use editMessageCaption instead.
class EditMessageMedia extends TdFunction {
  /// The chat the message belongs to
  final int chatId;
  /// Identifier of the message
  final int messageId;
  /// The new message reply markup; pass null if none; for bots only
  final a.ReplyMarkup? replyMarkup;
  /// New content of the message. Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto or inputMessageVideo
  final a.InputMessageContent? inputMessageContent;

  EditMessageMedia({
    required this.chatId,
    required this.messageId,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  String toString() {
    var s = 'td::EditMessageMedia(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(replyMarkup.toString());
    params.add(inputMessageContent.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'editMessageMedia',
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
  };

  factory EditMessageMedia.fromJson(Map<String, dynamic> json) => EditMessageMedia(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup?,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent?,
  );
}

/// Edits the message content caption. Returns the edited message after the edit is completed on the server side
class EditMessageCaption extends TdFunction {
  /// The chat the message belongs to
  final int chatId;
  /// Identifier of the message
  final int messageId;
  /// The new message reply markup; pass null if none; for bots only
  final a.ReplyMarkup? replyMarkup;
  /// New message content caption; 0-GetOption("message_caption_length_max") characters; pass null to remove caption
  final o.FormattedText? caption;

  EditMessageCaption({
    required this.chatId,
    required this.messageId,
    required this.replyMarkup,
    required this.caption,
  });

  @override
  String toString() {
    var s = 'td::EditMessageCaption(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(replyMarkup.toString());
    params.add(caption.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'editMessageCaption',
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup?.toJson(),
    'caption': caption?.toJson(),
  };

  factory EditMessageCaption.fromJson(Map<String, dynamic> json) => EditMessageCaption(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup?,
    caption: b.TdBase.fromJson(json['caption']) as o.FormattedText?,
  );
}

/// Edits the message reply markup; for bots only. Returns the edited message after the edit is completed on the server side
class EditMessageReplyMarkup extends TdFunction {
  /// The chat the message belongs to
  final int chatId;
  /// Identifier of the message
  final int messageId;
  /// The new message reply markup; pass null if none
  final a.ReplyMarkup? replyMarkup;

  EditMessageReplyMarkup({
    required this.chatId,
    required this.messageId,
    required this.replyMarkup,
  });

  @override
  String toString() {
    var s = 'td::EditMessageReplyMarkup(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(replyMarkup.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'editMessageReplyMarkup',
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup?.toJson(),
  };

  factory EditMessageReplyMarkup.fromJson(Map<String, dynamic> json) => EditMessageReplyMarkup(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup?,
  );
}

/// Edits the text of an inline text or game message sent via a bot; for bots only
class EditInlineMessageText extends TdFunction {
  /// Inline message identifier
  final String inlineMessageId;
  /// The new message reply markup; pass null if none
  final a.ReplyMarkup? replyMarkup;
  /// New text content of the message. Must be of type inputMessageText
  final a.InputMessageContent? inputMessageContent;

  EditInlineMessageText({
    required this.inlineMessageId,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  String toString() {
    var s = 'td::EditInlineMessageText(';

    // Params
    final params = <String>[];
    params.add(inlineMessageId.toString());
    params.add(replyMarkup.toString());
    params.add(inputMessageContent.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'editInlineMessageText',
    'inline_message_id': inlineMessageId,
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
  };

  factory EditInlineMessageText.fromJson(Map<String, dynamic> json) => EditInlineMessageText(
    inlineMessageId: (json['inline_message_id'] as String?) ?? '',
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup?,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent?,
  );
}

/// Edits the content of a live location in an inline message sent via a bot; for bots only
class EditInlineMessageLiveLocation extends TdFunction {
  /// Inline message identifier
  final String inlineMessageId;
  /// The new message reply markup; pass null if none
  final a.ReplyMarkup? replyMarkup;
  /// New location content of the message; pass null to stop sharing the live location
  final o.Location? location;
  /// The new direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  final int heading;
  /// The new maximum distance for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled
  final int proximityAlertRadius;

  EditInlineMessageLiveLocation({
    required this.inlineMessageId,
    required this.replyMarkup,
    required this.location,
    required this.heading,
    required this.proximityAlertRadius,
  });

  @override
  String toString() {
    var s = 'td::EditInlineMessageLiveLocation(';

    // Params
    final params = <String>[];
    params.add(inlineMessageId.toString());
    params.add(replyMarkup.toString());
    params.add(location.toString());
    params.add(heading.toString());
    params.add(proximityAlertRadius.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'editInlineMessageLiveLocation',
    'inline_message_id': inlineMessageId,
    'reply_markup': replyMarkup?.toJson(),
    'location': location?.toJson(),
    'heading': heading,
    'proximity_alert_radius': proximityAlertRadius,
  };

  factory EditInlineMessageLiveLocation.fromJson(Map<String, dynamic> json) => EditInlineMessageLiveLocation(
    inlineMessageId: (json['inline_message_id'] as String?) ?? '',
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup?,
    location: b.TdBase.fromJson(json['location']) as o.Location?,
    heading: (json['heading'] as int?) ?? 0,
    proximityAlertRadius: (json['proximity_alert_radius'] as int?) ?? 0,
  );
}

/// Edits the content of a message with an animation, an audio, a document, a photo or a video in an inline message sent via a bot; for bots only
class EditInlineMessageMedia extends TdFunction {
  /// Inline message identifier
  final String inlineMessageId;
  /// The new message reply markup; pass null if none; for bots only
  final a.ReplyMarkup? replyMarkup;
  /// New content of the message. Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto or inputMessageVideo
  final a.InputMessageContent? inputMessageContent;

  EditInlineMessageMedia({
    required this.inlineMessageId,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  String toString() {
    var s = 'td::EditInlineMessageMedia(';

    // Params
    final params = <String>[];
    params.add(inlineMessageId.toString());
    params.add(replyMarkup.toString());
    params.add(inputMessageContent.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'editInlineMessageMedia',
    'inline_message_id': inlineMessageId,
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
  };

  factory EditInlineMessageMedia.fromJson(Map<String, dynamic> json) => EditInlineMessageMedia(
    inlineMessageId: (json['inline_message_id'] as String?) ?? '',
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup?,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent?,
  );
}

/// Edits the caption of an inline message sent via a bot; for bots only
class EditInlineMessageCaption extends TdFunction {
  /// Inline message identifier
  final String inlineMessageId;
  /// The new message reply markup; pass null if none
  final a.ReplyMarkup? replyMarkup;
  /// New message content caption; pass null to remove caption; 0-GetOption("message_caption_length_max") characters
  final o.FormattedText? caption;

  EditInlineMessageCaption({
    required this.inlineMessageId,
    required this.replyMarkup,
    required this.caption,
  });

  @override
  String toString() {
    var s = 'td::EditInlineMessageCaption(';

    // Params
    final params = <String>[];
    params.add(inlineMessageId.toString());
    params.add(replyMarkup.toString());
    params.add(caption.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'editInlineMessageCaption',
    'inline_message_id': inlineMessageId,
    'reply_markup': replyMarkup?.toJson(),
    'caption': caption?.toJson(),
  };

  factory EditInlineMessageCaption.fromJson(Map<String, dynamic> json) => EditInlineMessageCaption(
    inlineMessageId: (json['inline_message_id'] as String?) ?? '',
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup?,
    caption: b.TdBase.fromJson(json['caption']) as o.FormattedText?,
  );
}

/// Edits the reply markup of an inline message sent via a bot; for bots only
class EditInlineMessageReplyMarkup extends TdFunction {
  /// Inline message identifier
  final String inlineMessageId;
  /// The new message reply markup; pass null if none
  final a.ReplyMarkup? replyMarkup;

  EditInlineMessageReplyMarkup({
    required this.inlineMessageId,
    required this.replyMarkup,
  });

  @override
  String toString() {
    var s = 'td::EditInlineMessageReplyMarkup(';

    // Params
    final params = <String>[];
    params.add(inlineMessageId.toString());
    params.add(replyMarkup.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'editInlineMessageReplyMarkup',
    'inline_message_id': inlineMessageId,
    'reply_markup': replyMarkup?.toJson(),
  };

  factory EditInlineMessageReplyMarkup.fromJson(Map<String, dynamic> json) => EditInlineMessageReplyMarkup(
    inlineMessageId: (json['inline_message_id'] as String?) ?? '',
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup?,
  );
}

/// Edits the time when a scheduled message will be sent. Scheduling state of all messages in the same album or forwarded together with the message will be also changed
class EditMessageSchedulingState extends TdFunction {
  /// The chat the message belongs to
  final int chatId;
  /// Identifier of the message
  final int messageId;
  /// The new message scheduling state; pass null to send the message immediately
  final a.MessageSchedulingState? schedulingState;

  EditMessageSchedulingState({
    required this.chatId,
    required this.messageId,
    required this.schedulingState,
  });

  @override
  String toString() {
    var s = 'td::EditMessageSchedulingState(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(schedulingState.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'editMessageSchedulingState',
    'chat_id': chatId,
    'message_id': messageId,
    'scheduling_state': schedulingState?.toJson(),
  };

  factory EditMessageSchedulingState.fromJson(Map<String, dynamic> json) => EditMessageSchedulingState(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    schedulingState: b.TdBase.fromJson(json['scheduling_state']) as a.MessageSchedulingState?,
  );
}

/// Returns all entities (mentions, hashtags, cashtags, bot commands, bank card numbers, URLs, and email addresses) contained in the text. Can be called synchronously
class GetTextEntities extends TdFunction {
  /// The text in which to look for entites
  final String text;

  GetTextEntities({
    required this.text,
  });

  @override
  String toString() {
    var s = 'td::GetTextEntities(';

    // Params
    final params = <String>[];
    params.add(text.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getTextEntities',
    'text': text,
  };

  factory GetTextEntities.fromJson(Map<String, dynamic> json) => GetTextEntities(
    text: (json['text'] as String?) ?? '',
  );
}

/// Parses Bold, Italic, Underline, Strikethrough, Code, Pre, PreCode, TextUrl and MentionName entities contained in the text. Can be called synchronously
class ParseTextEntities extends TdFunction {
  /// The text to parse
  final String text;
  /// Text parse mode
  final a.TextParseMode? parseMode;

  ParseTextEntities({
    required this.text,
    required this.parseMode,
  });

  @override
  String toString() {
    var s = 'td::ParseTextEntities(';

    // Params
    final params = <String>[];
    params.add(text.toString());
    params.add(parseMode.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'parseTextEntities',
    'text': text,
    'parse_mode': parseMode?.toJson(),
  };

  factory ParseTextEntities.fromJson(Map<String, dynamic> json) => ParseTextEntities(
    text: (json['text'] as String?) ?? '',
    parseMode: b.TdBase.fromJson(json['parse_mode']) as a.TextParseMode?,
  );
}

/// Parses Markdown entities in a human-friendly format, ignoring markup errors. Can be called synchronously
class ParseMarkdown extends TdFunction {
  /// The text to parse. For example, "__italic__ ~~strikethrough~~ **bold** `code` ```pre``` __[italic__ text_url](telegram.org) __italic**bold italic__bold**"
  final o.FormattedText? text;

  ParseMarkdown({
    required this.text,
  });

  @override
  String toString() {
    var s = 'td::ParseMarkdown(';

    // Params
    final params = <String>[];
    params.add(text.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'parseMarkdown',
    'text': text?.toJson(),
  };

  factory ParseMarkdown.fromJson(Map<String, dynamic> json) => ParseMarkdown(
    text: b.TdBase.fromJson(json['text']) as o.FormattedText?,
  );
}

/// Replaces text entities with Markdown formatting in a human-friendly format. Entities that can't be represented in Markdown unambiguously are kept as is. Can be called synchronously
class GetMarkdownText extends TdFunction {
  /// The text
  final o.FormattedText? text;

  GetMarkdownText({
    required this.text,
  });

  @override
  String toString() {
    var s = 'td::GetMarkdownText(';

    // Params
    final params = <String>[];
    params.add(text.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMarkdownText',
    'text': text?.toJson(),
  };

  factory GetMarkdownText.fromJson(Map<String, dynamic> json) => GetMarkdownText(
    text: b.TdBase.fromJson(json['text']) as o.FormattedText?,
  );
}

/// Returns the MIME type of a file, guessed by its extension. Returns an empty string on failure. Can be called synchronously
class GetFileMimeType extends TdFunction {
  /// The name of the file or path to the file
  final String fileName;

  GetFileMimeType({
    required this.fileName,
  });

  @override
  String toString() {
    var s = 'td::GetFileMimeType(';

    // Params
    final params = <String>[];
    params.add(fileName.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getFileMimeType',
    'file_name': fileName,
  };

  factory GetFileMimeType.fromJson(Map<String, dynamic> json) => GetFileMimeType(
    fileName: (json['file_name'] as String?) ?? '',
  );
}

/// Returns the extension of a file, guessed by its MIME type. Returns an empty string on failure. Can be called synchronously
class GetFileExtension extends TdFunction {
  /// The MIME type of the file
  final String mimeType;

  GetFileExtension({
    required this.mimeType,
  });

  @override
  String toString() {
    var s = 'td::GetFileExtension(';

    // Params
    final params = <String>[];
    params.add(mimeType.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getFileExtension',
    'mime_type': mimeType,
  };

  factory GetFileExtension.fromJson(Map<String, dynamic> json) => GetFileExtension(
    mimeType: (json['mime_type'] as String?) ?? '',
  );
}

/// Removes potentially dangerous characters from the name of a file. The encoding of the file name is supposed to be UTF-8. Returns an empty string on failure. Can be called synchronously
class CleanFileName extends TdFunction {
  /// File name or path to the file
  final String fileName;

  CleanFileName({
    required this.fileName,
  });

  @override
  String toString() {
    var s = 'td::CleanFileName(';

    // Params
    final params = <String>[];
    params.add(fileName.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'cleanFileName',
    'file_name': fileName,
  };

  factory CleanFileName.fromJson(Map<String, dynamic> json) => CleanFileName(
    fileName: (json['file_name'] as String?) ?? '',
  );
}

/// Returns a string stored in the local database from the specified localization target and language pack by its key. Returns a 404 error if the string is not found. Can be called synchronously
class GetLanguagePackString extends TdFunction {
  /// Path to the language pack database in which strings are stored
  final String languagePackDatabasePath;
  /// Localization target to which the language pack belongs
  final String localizationTarget;
  /// Language pack identifier
  final String languagePackId;
  /// Language pack key of the string to be returned
  final String key;

  GetLanguagePackString({
    required this.languagePackDatabasePath,
    required this.localizationTarget,
    required this.languagePackId,
    required this.key,
  });

  @override
  String toString() {
    var s = 'td::GetLanguagePackString(';

    // Params
    final params = <String>[];
    params.add(languagePackDatabasePath.toString());
    params.add(localizationTarget.toString());
    params.add(languagePackId.toString());
    params.add(key.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getLanguagePackString',
    'language_pack_database_path': languagePackDatabasePath,
    'localization_target': localizationTarget,
    'language_pack_id': languagePackId,
    'key': key,
  };

  factory GetLanguagePackString.fromJson(Map<String, dynamic> json) => GetLanguagePackString(
    languagePackDatabasePath: (json['language_pack_database_path'] as String?) ?? '',
    localizationTarget: (json['localization_target'] as String?) ?? '',
    languagePackId: (json['language_pack_id'] as String?) ?? '',
    key: (json['key'] as String?) ?? '',
  );
}

/// Converts a JSON-serialized string to corresponding JsonValue object. Can be called synchronously
class GetJsonValue extends TdFunction {
  /// The JSON-serialized string
  final String json;

  GetJsonValue({
    required this.json,
  });

  @override
  String toString() {
    var s = 'td::GetJsonValue(';

    // Params
    final params = <String>[];
    params.add(json.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getJsonValue',
    'json': json,
  };

  factory GetJsonValue.fromJson(Map<String, dynamic> json) => GetJsonValue(
    json: (json['json'] as String?) ?? '',
  );
}

/// Converts a JsonValue object to corresponding JSON-serialized string. Can be called synchronously
class GetJsonString extends TdFunction {
  /// The JsonValue object
  final a.JsonValue? jsonValue;

  GetJsonString({
    required this.jsonValue,
  });

  @override
  String toString() {
    var s = 'td::GetJsonString(';

    // Params
    final params = <String>[];
    params.add(jsonValue.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getJsonString',
    'json_value': jsonValue?.toJson(),
  };

  factory GetJsonString.fromJson(Map<String, dynamic> json) => GetJsonString(
    jsonValue: b.TdBase.fromJson(json['json_value']) as a.JsonValue?,
  );
}

/// Changes the user answer to a poll. A poll in quiz mode can be answered only once
class SetPollAnswer extends TdFunction {
  /// Identifier of the chat to which the poll belongs
  final int chatId;
  /// Identifier of the message containing the poll
  final int messageId;
  /// 0-based identifiers of answer options, chosen by the user. User can choose more than 1 answer option only is the poll allows multiple answers
  final List<int> optionIds;

  SetPollAnswer({
    required this.chatId,
    required this.messageId,
    required this.optionIds,
  });

  @override
  String toString() {
    var s = 'td::SetPollAnswer(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(optionIds.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setPollAnswer',
    'chat_id': chatId,
    'message_id': messageId,
    'option_ids': optionIds.map((_e1) => _e1).toList(growable: false),
  };

  factory SetPollAnswer.fromJson(Map<String, dynamic> json) => SetPollAnswer(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    optionIds: json['option_ids'] == null ? <int>[] : (json['option_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
  );
}

/// Returns users voted for the specified option in a non-anonymous polls. For optimal performance, the number of returned users is chosen by TDLib
class GetPollVoters extends TdFunction {
  /// Identifier of the chat to which the poll belongs
  final int chatId;
  /// Identifier of the message containing the poll
  final int messageId;
  /// 0-based identifier of the answer option
  final int optionId;
  /// Number of users to skip in the result; must be non-negative
  final int offset;
  /// The maximum number of users to be returned; must be positive and can't be greater than 50. For optimal performance, the number of returned users is chosen by TDLib and can be smaller than the specified limit, even if the end of the voter list has not been reached
  final int limit;

  GetPollVoters({
    required this.chatId,
    required this.messageId,
    required this.optionId,
    required this.offset,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetPollVoters(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(optionId.toString());
    params.add(offset.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getPollVoters',
    'chat_id': chatId,
    'message_id': messageId,
    'option_id': optionId,
    'offset': offset,
    'limit': limit,
  };

  factory GetPollVoters.fromJson(Map<String, dynamic> json) => GetPollVoters(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    optionId: (json['option_id'] as int?) ?? 0,
    offset: (json['offset'] as int?) ?? 0,
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Stops a poll. A poll in a message can be stopped when the message has can_be_edited flag set
class StopPoll extends TdFunction {
  /// Identifier of the chat to which the poll belongs
  final int chatId;
  /// Identifier of the message containing the poll
  final int messageId;
  /// The new message reply markup; pass null if none; for bots only
  final a.ReplyMarkup? replyMarkup;

  StopPoll({
    required this.chatId,
    required this.messageId,
    required this.replyMarkup,
  });

  @override
  String toString() {
    var s = 'td::StopPoll(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(replyMarkup.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'stopPoll',
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup?.toJson(),
  };

  factory StopPoll.fromJson(Map<String, dynamic> json) => StopPoll(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup?,
  );
}

/// Hides a suggested action
class HideSuggestedAction extends TdFunction {
  /// Suggested action to hide
  final a.SuggestedAction? action;

  HideSuggestedAction({
    required this.action,
  });

  @override
  String toString() {
    var s = 'td::HideSuggestedAction(';

    // Params
    final params = <String>[];
    params.add(action.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'hideSuggestedAction',
    'action': action?.toJson(),
  };

  factory HideSuggestedAction.fromJson(Map<String, dynamic> json) => HideSuggestedAction(
    action: b.TdBase.fromJson(json['action']) as a.SuggestedAction?,
  );
}

/// Returns information about a button of type inlineKeyboardButtonTypeLoginUrl. The method needs to be called when the user presses the button
class GetLoginUrlInfo extends TdFunction {
  /// Chat identifier of the message with the button
  final int chatId;
  /// Message identifier of the message with the button
  final int messageId;
  /// Button identifier
  final int buttonId;

  GetLoginUrlInfo({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
  });

  @override
  String toString() {
    var s = 'td::GetLoginUrlInfo(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(buttonId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getLoginUrlInfo',
    'chat_id': chatId,
    'message_id': messageId,
    'button_id': buttonId,
  };

  factory GetLoginUrlInfo.fromJson(Map<String, dynamic> json) => GetLoginUrlInfo(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    buttonId: (json['button_id'] as int?) ?? 0,
  );
}

/// Returns an HTTP URL which can be used to automatically authorize the user on a website after clicking an inline button of type inlineKeyboardButtonTypeLoginUrl.
class GetLoginUrl extends TdFunction {
  /// Chat identifier of the message with the button
  final int chatId;
  /// Message identifier of the message with the button
  final int messageId;
  /// Button identifier
  final int buttonId;
  /// True, if the user allowed the bot to send them messages
  final bool allowWriteAccess;

  GetLoginUrl({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
    required this.allowWriteAccess,
  });

  @override
  String toString() {
    var s = 'td::GetLoginUrl(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(buttonId.toString());
    params.add(allowWriteAccess.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getLoginUrl',
    'chat_id': chatId,
    'message_id': messageId,
    'button_id': buttonId,
    'allow_write_access': allowWriteAccess,
  };

  factory GetLoginUrl.fromJson(Map<String, dynamic> json) => GetLoginUrl(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    buttonId: (json['button_id'] as int?) ?? 0,
    allowWriteAccess: (json['allow_write_access'] as bool?) ?? false,
  );
}

/// Sends an inline query to a bot and returns its results. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires
class GetInlineQueryResults extends TdFunction {
  /// The identifier of the target bot
  final int botUserId;
  /// Identifier of the chat where the query was sent
  final int chatId;
  /// Location of the user; pass null if unknown or the bot doesn't need user's location
  final o.Location? userLocation;
  /// Text of the query
  final String query;
  /// Offset of the first entry to return
  final String offset;

  GetInlineQueryResults({
    required this.botUserId,
    required this.chatId,
    required this.userLocation,
    required this.query,
    required this.offset,
  });

  @override
  String toString() {
    var s = 'td::GetInlineQueryResults(';

    // Params
    final params = <String>[];
    params.add(botUserId.toString());
    params.add(chatId.toString());
    params.add(userLocation.toString());
    params.add(query.toString());
    params.add(offset.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getInlineQueryResults',
    'bot_user_id': botUserId,
    'chat_id': chatId,
    'user_location': userLocation?.toJson(),
    'query': query,
    'offset': offset,
  };

  factory GetInlineQueryResults.fromJson(Map<String, dynamic> json) => GetInlineQueryResults(
    botUserId: (json['bot_user_id'] as int?) ?? 0,
    chatId: (json['chat_id'] as int?) ?? 0,
    userLocation: b.TdBase.fromJson(json['user_location']) as o.Location?,
    query: (json['query'] as String?) ?? '',
    offset: (json['offset'] as String?) ?? '',
  );
}

/// Sets the result of an inline query; for bots only
class AnswerInlineQuery extends TdFunction {
  /// Identifier of the inline query
  final int inlineQueryId;
  /// True, if the result of the query can be cached for the specified user
  final bool isPersonal;
  /// The results of the query
  final List<a.InputInlineQueryResult?> results;
  /// Allowed time to cache the results of the query, in seconds
  final int cacheTime;
  /// Offset for the next inline query; pass an empty string if there are no more results
  final String nextOffset;
  /// If non-empty, this text must be shown on the button that opens a private chat with the bot and sends a start message to the bot with the parameter switch_pm_parameter
  final String switchPmText;
  /// The parameter for the bot start message
  final String switchPmParameter;

  AnswerInlineQuery({
    required this.inlineQueryId,
    required this.isPersonal,
    required this.results,
    required this.cacheTime,
    required this.nextOffset,
    required this.switchPmText,
    required this.switchPmParameter,
  });

  @override
  String toString() {
    var s = 'td::AnswerInlineQuery(';

    // Params
    final params = <String>[];
    params.add(inlineQueryId.toString());
    params.add(isPersonal.toString());
    params.add(results.toString());
    params.add(cacheTime.toString());
    params.add(nextOffset.toString());
    params.add(switchPmText.toString());
    params.add(switchPmParameter.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'answerInlineQuery',
    'inline_query_id': inlineQueryId.toString(),
    'is_personal': isPersonal,
    'results': results.map((_e1) => _e1?.toJson()).toList(growable: false),
    'cache_time': cacheTime,
    'next_offset': nextOffset,
    'switch_pm_text': switchPmText,
    'switch_pm_parameter': switchPmParameter,
  };

  factory AnswerInlineQuery.fromJson(Map<String, dynamic> json) => AnswerInlineQuery(
    inlineQueryId: int.parse(json['inline_query_id'] ?? '0'),
    isPersonal: (json['is_personal'] as bool?) ?? false,
    results: json['results'] == null ? <a.InputInlineQueryResult?>[] : (json['results'] as List<dynamic>).map((e) => (b.TdBase.fromJson(e) as a.InputInlineQueryResult?)).toList(growable: false),
    cacheTime: (json['cache_time'] as int?) ?? 0,
    nextOffset: (json['next_offset'] as String?) ?? '',
    switchPmText: (json['switch_pm_text'] as String?) ?? '',
    switchPmParameter: (json['switch_pm_parameter'] as String?) ?? '',
  );
}

/// Sends a callback query to a bot and returns an answer. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires
class GetCallbackQueryAnswer extends TdFunction {
  /// Identifier of the chat with the message
  final int chatId;
  /// Identifier of the message from which the query originated
  final int messageId;
  /// Query payload
  final a.CallbackQueryPayload? payload;

  GetCallbackQueryAnswer({
    required this.chatId,
    required this.messageId,
    required this.payload,
  });

  @override
  String toString() {
    var s = 'td::GetCallbackQueryAnswer(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(payload.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getCallbackQueryAnswer',
    'chat_id': chatId,
    'message_id': messageId,
    'payload': payload?.toJson(),
  };

  factory GetCallbackQueryAnswer.fromJson(Map<String, dynamic> json) => GetCallbackQueryAnswer(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    payload: b.TdBase.fromJson(json['payload']) as a.CallbackQueryPayload?,
  );
}

/// Sets the result of a callback query; for bots only
class AnswerCallbackQuery extends TdFunction {
  /// Identifier of the callback query
  final int callbackQueryId;
  /// Text of the answer
  final String text;
  /// If true, an alert must be shown to the user instead of a toast notification
  final bool showAlert;
  /// URL to be opened
  final String url;
  /// Time during which the result of the query can be cached, in seconds
  final int cacheTime;

  AnswerCallbackQuery({
    required this.callbackQueryId,
    required this.text,
    required this.showAlert,
    required this.url,
    required this.cacheTime,
  });

  @override
  String toString() {
    var s = 'td::AnswerCallbackQuery(';

    // Params
    final params = <String>[];
    params.add(callbackQueryId.toString());
    params.add(text.toString());
    params.add(showAlert.toString());
    params.add(url.toString());
    params.add(cacheTime.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'answerCallbackQuery',
    'callback_query_id': callbackQueryId.toString(),
    'text': text,
    'show_alert': showAlert,
    'url': url,
    'cache_time': cacheTime,
  };

  factory AnswerCallbackQuery.fromJson(Map<String, dynamic> json) => AnswerCallbackQuery(
    callbackQueryId: int.parse(json['callback_query_id'] ?? '0'),
    text: (json['text'] as String?) ?? '',
    showAlert: (json['show_alert'] as bool?) ?? false,
    url: (json['url'] as String?) ?? '',
    cacheTime: (json['cache_time'] as int?) ?? 0,
  );
}

/// Sets the result of a shipping query; for bots only
class AnswerShippingQuery extends TdFunction {
  /// Identifier of the shipping query
  final int shippingQueryId;
  /// Available shipping options
  final List<o.ShippingOption?> shippingOptions;
  /// An error message, empty on success
  final String errorMessage;

  AnswerShippingQuery({
    required this.shippingQueryId,
    required this.shippingOptions,
    required this.errorMessage,
  });

  @override
  String toString() {
    var s = 'td::AnswerShippingQuery(';

    // Params
    final params = <String>[];
    params.add(shippingQueryId.toString());
    params.add(shippingOptions.toString());
    params.add(errorMessage.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'answerShippingQuery',
    'shipping_query_id': shippingQueryId.toString(),
    'shipping_options': shippingOptions.map((_e1) => _e1?.toJson()).toList(growable: false),
    'error_message': errorMessage,
  };

  factory AnswerShippingQuery.fromJson(Map<String, dynamic> json) => AnswerShippingQuery(
    shippingQueryId: int.parse(json['shipping_query_id'] ?? '0'),
    shippingOptions: json['shipping_options'] == null ? <o.ShippingOption?>[] : (json['shipping_options'] as List<dynamic>).map((e) => (b.TdBase.fromJson(e) as o.ShippingOption?)).toList(growable: false),
    errorMessage: (json['error_message'] as String?) ?? '',
  );
}

/// Sets the result of a pre-checkout query; for bots only
class AnswerPreCheckoutQuery extends TdFunction {
  /// Identifier of the pre-checkout query
  final int preCheckoutQueryId;
  /// An error message, empty on success
  final String errorMessage;

  AnswerPreCheckoutQuery({
    required this.preCheckoutQueryId,
    required this.errorMessage,
  });

  @override
  String toString() {
    var s = 'td::AnswerPreCheckoutQuery(';

    // Params
    final params = <String>[];
    params.add(preCheckoutQueryId.toString());
    params.add(errorMessage.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'answerPreCheckoutQuery',
    'pre_checkout_query_id': preCheckoutQueryId.toString(),
    'error_message': errorMessage,
  };

  factory AnswerPreCheckoutQuery.fromJson(Map<String, dynamic> json) => AnswerPreCheckoutQuery(
    preCheckoutQueryId: int.parse(json['pre_checkout_query_id'] ?? '0'),
    errorMessage: (json['error_message'] as String?) ?? '',
  );
}

/// Updates the game score of the specified user in the game; for bots only
class SetGameScore extends TdFunction {
  /// The chat to which the message with the game belongs
  final int chatId;
  /// Identifier of the message
  final int messageId;
  /// True, if the message needs to be edited
  final bool editMessage;
  /// User identifier
  final int userId;
  /// The new score
  final int score;
  /// Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table
  final bool force;

  SetGameScore({
    required this.chatId,
    required this.messageId,
    required this.editMessage,
    required this.userId,
    required this.score,
    required this.force,
  });

  @override
  String toString() {
    var s = 'td::SetGameScore(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(editMessage.toString());
    params.add(userId.toString());
    params.add(score.toString());
    params.add(force.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setGameScore',
    'chat_id': chatId,
    'message_id': messageId,
    'edit_message': editMessage,
    'user_id': userId,
    'score': score,
    'force': force,
  };

  factory SetGameScore.fromJson(Map<String, dynamic> json) => SetGameScore(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    editMessage: (json['edit_message'] as bool?) ?? false,
    userId: (json['user_id'] as int?) ?? 0,
    score: (json['score'] as int?) ?? 0,
    force: (json['force'] as bool?) ?? false,
  );
}

/// Updates the game score of the specified user in a game; for bots only
class SetInlineGameScore extends TdFunction {
  /// Inline message identifier
  final String inlineMessageId;
  /// True, if the message needs to be edited
  final bool editMessage;
  /// User identifier
  final int userId;
  /// The new score
  final int score;
  /// Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table
  final bool force;

  SetInlineGameScore({
    required this.inlineMessageId,
    required this.editMessage,
    required this.userId,
    required this.score,
    required this.force,
  });

  @override
  String toString() {
    var s = 'td::SetInlineGameScore(';

    // Params
    final params = <String>[];
    params.add(inlineMessageId.toString());
    params.add(editMessage.toString());
    params.add(userId.toString());
    params.add(score.toString());
    params.add(force.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setInlineGameScore',
    'inline_message_id': inlineMessageId,
    'edit_message': editMessage,
    'user_id': userId,
    'score': score,
    'force': force,
  };

  factory SetInlineGameScore.fromJson(Map<String, dynamic> json) => SetInlineGameScore(
    inlineMessageId: (json['inline_message_id'] as String?) ?? '',
    editMessage: (json['edit_message'] as bool?) ?? false,
    userId: (json['user_id'] as int?) ?? 0,
    score: (json['score'] as int?) ?? 0,
    force: (json['force'] as bool?) ?? false,
  );
}

/// Returns the high scores for a game and some part of the high score table in the range of the specified user; for bots only
class GetGameHighScores extends TdFunction {
  /// The chat that contains the message with the game
  final int chatId;
  /// Identifier of the message
  final int messageId;
  /// User identifier
  final int userId;

  GetGameHighScores({
    required this.chatId,
    required this.messageId,
    required this.userId,
  });

  @override
  String toString() {
    var s = 'td::GetGameHighScores(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(userId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getGameHighScores',
    'chat_id': chatId,
    'message_id': messageId,
    'user_id': userId,
  };

  factory GetGameHighScores.fromJson(Map<String, dynamic> json) => GetGameHighScores(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    userId: (json['user_id'] as int?) ?? 0,
  );
}

/// Returns game high scores and some part of the high score table in the range of the specified user; for bots only
class GetInlineGameHighScores extends TdFunction {
  /// Inline message identifier
  final String inlineMessageId;
  /// User identifier
  final int userId;

  GetInlineGameHighScores({
    required this.inlineMessageId,
    required this.userId,
  });

  @override
  String toString() {
    var s = 'td::GetInlineGameHighScores(';

    // Params
    final params = <String>[];
    params.add(inlineMessageId.toString());
    params.add(userId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getInlineGameHighScores',
    'inline_message_id': inlineMessageId,
    'user_id': userId,
  };

  factory GetInlineGameHighScores.fromJson(Map<String, dynamic> json) => GetInlineGameHighScores(
    inlineMessageId: (json['inline_message_id'] as String?) ?? '',
    userId: (json['user_id'] as int?) ?? 0,
  );
}

/// Deletes the default reply markup from a chat. Must be called after a one-time keyboard or a ForceReply reply markup has been used. UpdateChatReplyMarkup will be sent if the reply markup is changed
class DeleteChatReplyMarkup extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// The message identifier of the used keyboard
  final int messageId;

  DeleteChatReplyMarkup({
    required this.chatId,
    required this.messageId,
  });

  @override
  String toString() {
    var s = 'td::DeleteChatReplyMarkup(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteChatReplyMarkup',
    'chat_id': chatId,
    'message_id': messageId,
  };

  factory DeleteChatReplyMarkup.fromJson(Map<String, dynamic> json) => DeleteChatReplyMarkup(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
  );
}

/// Sends a notification about user activity in a chat
class SendChatAction extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// If not 0, a message thread identifier in which the action was performed
  final int messageThreadId;
  /// The action description; pass null to cancel the currently active action
  final a.ChatAction? action;

  SendChatAction({
    required this.chatId,
    required this.messageThreadId,
    required this.action,
  });

  @override
  String toString() {
    var s = 'td::SendChatAction(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageThreadId.toString());
    params.add(action.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sendChatAction',
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'action': action?.toJson(),
  };

  factory SendChatAction.fromJson(Map<String, dynamic> json) => SendChatAction(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageThreadId: (json['message_thread_id'] as int?) ?? 0,
    action: b.TdBase.fromJson(json['action']) as a.ChatAction?,
  );
}

/// Informs TDLib that the chat is opened by the user. Many useful activities depend on the chat being opened or closed (e.g., in supergroups and channels all updates are received only for opened chats)
class OpenChat extends TdFunction {
  /// Chat identifier
  final int chatId;

  OpenChat({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::OpenChat(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'openChat',
    'chat_id': chatId,
  };

  factory OpenChat.fromJson(Map<String, dynamic> json) => OpenChat(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Informs TDLib that the chat is closed by the user. Many useful activities depend on the chat being opened or closed
class CloseChat extends TdFunction {
  /// Chat identifier
  final int chatId;

  CloseChat({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::CloseChat(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'closeChat',
    'chat_id': chatId,
  };

  factory CloseChat.fromJson(Map<String, dynamic> json) => CloseChat(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Informs TDLib that messages are being viewed by the user. Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels)
class ViewMessages extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// If not 0, a message thread identifier in which the messages are being viewed
  final int messageThreadId;
  /// The identifiers of the messages being viewed
  final List<int> messageIds;
  /// True, if messages in closed chats must be marked as read by the request
  final bool forceRead;

  ViewMessages({
    required this.chatId,
    required this.messageThreadId,
    required this.messageIds,
    required this.forceRead,
  });

  @override
  String toString() {
    var s = 'td::ViewMessages(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageThreadId.toString());
    params.add(messageIds.toString());
    params.add(forceRead.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'viewMessages',
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'message_ids': messageIds.map((_e1) => _e1).toList(growable: false),
    'force_read': forceRead,
  };

  factory ViewMessages.fromJson(Map<String, dynamic> json) => ViewMessages(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageThreadId: (json['message_thread_id'] as int?) ?? 0,
    messageIds: json['message_ids'] == null ? <int>[] : (json['message_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
    forceRead: (json['force_read'] as bool?) ?? false,
  );
}

/// Informs TDLib that the message content has been opened (e.g., the user has opened a photo, video, document, location or venue, or has listened to an audio file or voice note message). An updateMessageContentOpened update will be generated if something has changed
class OpenMessageContent extends TdFunction {
  /// Chat identifier of the message
  final int chatId;
  /// Identifier of the message with the opened content
  final int messageId;

  OpenMessageContent({
    required this.chatId,
    required this.messageId,
  });

  @override
  String toString() {
    var s = 'td::OpenMessageContent(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'openMessageContent',
    'chat_id': chatId,
    'message_id': messageId,
  };

  factory OpenMessageContent.fromJson(Map<String, dynamic> json) => OpenMessageContent(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
  );
}

/// Informs TDLib that a message with an animated emoji was clicked by the user. Returns a big animated sticker to be played or a 404 error if usual animation needs to be played
class ClickAnimatedEmojiMessage extends TdFunction {
  /// Chat identifier of the message
  final int chatId;
  /// Identifier of the clicked message
  final int messageId;

  ClickAnimatedEmojiMessage({
    required this.chatId,
    required this.messageId,
  });

  @override
  String toString() {
    var s = 'td::ClickAnimatedEmojiMessage(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'clickAnimatedEmojiMessage',
    'chat_id': chatId,
    'message_id': messageId,
  };

  factory ClickAnimatedEmojiMessage.fromJson(Map<String, dynamic> json) => ClickAnimatedEmojiMessage(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
  );
}

/// Returns information about the type of an internal link. Returns a 404 error if the link is not internal. Can be called before authorization
class GetInternalLinkType extends TdFunction {
  /// The link
  final String link;

  GetInternalLinkType({
    required this.link,
  });

  @override
  String toString() {
    var s = 'td::GetInternalLinkType(';

    // Params
    final params = <String>[];
    params.add(link.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getInternalLinkType',
    'link': link,
  };

  factory GetInternalLinkType.fromJson(Map<String, dynamic> json) => GetInternalLinkType(
    link: (json['link'] as String?) ?? '',
  );
}

/// Returns information about an action to be done when the current user clicks an external link. Don't use this method for links from secret chats if web page preview is disabled in secret chats
class GetExternalLinkInfo extends TdFunction {
  /// The link
  final String link;

  GetExternalLinkInfo({
    required this.link,
  });

  @override
  String toString() {
    var s = 'td::GetExternalLinkInfo(';

    // Params
    final params = <String>[];
    params.add(link.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getExternalLinkInfo',
    'link': link,
  };

  factory GetExternalLinkInfo.fromJson(Map<String, dynamic> json) => GetExternalLinkInfo(
    link: (json['link'] as String?) ?? '',
  );
}

/// Returns an HTTP URL which can be used to automatically authorize the current user on a website after clicking an HTTP link. Use the method getExternalLinkInfo to find whether a prior user confirmation is needed
class GetExternalLink extends TdFunction {
  /// The HTTP link
  final String link;
  /// True, if the current user allowed the bot, returned in getExternalLinkInfo, to send them messages
  final bool allowWriteAccess;

  GetExternalLink({
    required this.link,
    required this.allowWriteAccess,
  });

  @override
  String toString() {
    var s = 'td::GetExternalLink(';

    // Params
    final params = <String>[];
    params.add(link.toString());
    params.add(allowWriteAccess.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getExternalLink',
    'link': link,
    'allow_write_access': allowWriteAccess,
  };

  factory GetExternalLink.fromJson(Map<String, dynamic> json) => GetExternalLink(
    link: (json['link'] as String?) ?? '',
    allowWriteAccess: (json['allow_write_access'] as bool?) ?? false,
  );
}

/// Marks all mentions in a chat as read
class ReadAllChatMentions extends TdFunction {
  /// Chat identifier
  final int chatId;

  ReadAllChatMentions({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::ReadAllChatMentions(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'readAllChatMentions',
    'chat_id': chatId,
  };

  factory ReadAllChatMentions.fromJson(Map<String, dynamic> json) => ReadAllChatMentions(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Returns an existing chat corresponding to a given user
class CreatePrivateChat extends TdFunction {
  /// User identifier
  final int userId;
  /// If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
  final bool force;

  CreatePrivateChat({
    required this.userId,
    required this.force,
  });

  @override
  String toString() {
    var s = 'td::CreatePrivateChat(';

    // Params
    final params = <String>[];
    params.add(userId.toString());
    params.add(force.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'createPrivateChat',
    'user_id': userId,
    'force': force,
  };

  factory CreatePrivateChat.fromJson(Map<String, dynamic> json) => CreatePrivateChat(
    userId: (json['user_id'] as int?) ?? 0,
    force: (json['force'] as bool?) ?? false,
  );
}

/// Returns an existing chat corresponding to a known basic group
class CreateBasicGroupChat extends TdFunction {
  /// Basic group identifier
  final int basicGroupId;
  /// If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
  final bool force;

  CreateBasicGroupChat({
    required this.basicGroupId,
    required this.force,
  });

  @override
  String toString() {
    var s = 'td::CreateBasicGroupChat(';

    // Params
    final params = <String>[];
    params.add(basicGroupId.toString());
    params.add(force.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'createBasicGroupChat',
    'basic_group_id': basicGroupId,
    'force': force,
  };

  factory CreateBasicGroupChat.fromJson(Map<String, dynamic> json) => CreateBasicGroupChat(
    basicGroupId: (json['basic_group_id'] as int?) ?? 0,
    force: (json['force'] as bool?) ?? false,
  );
}

/// Returns an existing chat corresponding to a known supergroup or channel
class CreateSupergroupChat extends TdFunction {
  /// Supergroup or channel identifier
  final int supergroupId;
  /// If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
  final bool force;

  CreateSupergroupChat({
    required this.supergroupId,
    required this.force,
  });

  @override
  String toString() {
    var s = 'td::CreateSupergroupChat(';

    // Params
    final params = <String>[];
    params.add(supergroupId.toString());
    params.add(force.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'createSupergroupChat',
    'supergroup_id': supergroupId,
    'force': force,
  };

  factory CreateSupergroupChat.fromJson(Map<String, dynamic> json) => CreateSupergroupChat(
    supergroupId: (json['supergroup_id'] as int?) ?? 0,
    force: (json['force'] as bool?) ?? false,
  );
}

/// Returns an existing chat corresponding to a known secret chat
class CreateSecretChat extends TdFunction {
  /// Secret chat identifier
  final int secretChatId;

  CreateSecretChat({
    required this.secretChatId,
  });

  @override
  String toString() {
    var s = 'td::CreateSecretChat(';

    // Params
    final params = <String>[];
    params.add(secretChatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'createSecretChat',
    'secret_chat_id': secretChatId,
  };

  factory CreateSecretChat.fromJson(Map<String, dynamic> json) => CreateSecretChat(
    secretChatId: (json['secret_chat_id'] as int?) ?? 0,
  );
}

/// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns the newly created chat
class CreateNewBasicGroupChat extends TdFunction {
  /// Identifiers of users to be added to the basic group
  final List<int> userIds;
  /// Title of the new basic group; 1-128 characters
  final String title;

  CreateNewBasicGroupChat({
    required this.userIds,
    required this.title,
  });

  @override
  String toString() {
    var s = 'td::CreateNewBasicGroupChat(';

    // Params
    final params = <String>[];
    params.add(userIds.toString());
    params.add(title.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'createNewBasicGroupChat',
    'user_ids': userIds.map((_e1) => _e1).toList(growable: false),
    'title': title,
  };

  factory CreateNewBasicGroupChat.fromJson(Map<String, dynamic> json) => CreateNewBasicGroupChat(
    userIds: json['user_ids'] == null ? <int>[] : (json['user_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
    title: (json['title'] as String?) ?? '',
  );
}

/// Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate. Returns the newly created chat
class CreateNewSupergroupChat extends TdFunction {
  /// Title of the new chat; 1-128 characters
  final String title;
  /// True, if a channel chat needs to be created
  final bool isChannel;
  /// Chat description; 0-255 characters
  final String description;
  /// Chat location if a location-based supergroup is being created; pass null to create an ordinary supergroup chat
  final o.ChatLocation? location;
  /// True, if the supergroup is created for importing messages using importMessage
  final bool forImport;

  CreateNewSupergroupChat({
    required this.title,
    required this.isChannel,
    required this.description,
    required this.location,
    required this.forImport,
  });

  @override
  String toString() {
    var s = 'td::CreateNewSupergroupChat(';

    // Params
    final params = <String>[];
    params.add(title.toString());
    params.add(isChannel.toString());
    params.add(description.toString());
    params.add(location.toString());
    params.add(forImport.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'createNewSupergroupChat',
    'title': title,
    'is_channel': isChannel,
    'description': description,
    'location': location?.toJson(),
    'for_import': forImport,
  };

  factory CreateNewSupergroupChat.fromJson(Map<String, dynamic> json) => CreateNewSupergroupChat(
    title: (json['title'] as String?) ?? '',
    isChannel: (json['is_channel'] as bool?) ?? false,
    description: (json['description'] as String?) ?? '',
    location: b.TdBase.fromJson(json['location']) as o.ChatLocation?,
    forImport: (json['for_import'] as bool?) ?? false,
  );
}

/// Creates a new secret chat. Returns the newly created chat
class CreateNewSecretChat extends TdFunction {
  /// Identifier of the target user
  final int userId;

  CreateNewSecretChat({
    required this.userId,
  });

  @override
  String toString() {
    var s = 'td::CreateNewSecretChat(';

    // Params
    final params = <String>[];
    params.add(userId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'createNewSecretChat',
    'user_id': userId,
  };

  factory CreateNewSecretChat.fromJson(Map<String, dynamic> json) => CreateNewSecretChat(
    userId: (json['user_id'] as int?) ?? 0,
  );
}

/// Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires creator privileges. Deactivates the original basic group
class UpgradeBasicGroupChatToSupergroupChat extends TdFunction {
  /// Identifier of the chat to upgrade
  final int chatId;

  UpgradeBasicGroupChatToSupergroupChat({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::UpgradeBasicGroupChatToSupergroupChat(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'upgradeBasicGroupChatToSupergroupChat',
    'chat_id': chatId,
  };

  factory UpgradeBasicGroupChatToSupergroupChat.fromJson(Map<String, dynamic> json) => UpgradeBasicGroupChatToSupergroupChat(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Returns chat lists to which the chat can be added. This is an offline request
class GetChatListsToAddChat extends TdFunction {
  /// Chat identifier
  final int chatId;

  GetChatListsToAddChat({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::GetChatListsToAddChat(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatListsToAddChat',
    'chat_id': chatId,
  };

  factory GetChatListsToAddChat.fromJson(Map<String, dynamic> json) => GetChatListsToAddChat(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Adds a chat to a chat list. A chat can't be simultaneously in Main and Archive chat lists, so it is automatically removed from another one if needed
class AddChatToList extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// The chat list. Use getChatListsToAddChat to get suitable chat lists
  final a.ChatList? chatList;

  AddChatToList({
    required this.chatId,
    required this.chatList,
  });

  @override
  String toString() {
    var s = 'td::AddChatToList(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(chatList.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'addChatToList',
    'chat_id': chatId,
    'chat_list': chatList?.toJson(),
  };

  factory AddChatToList.fromJson(Map<String, dynamic> json) => AddChatToList(
    chatId: (json['chat_id'] as int?) ?? 0,
    chatList: b.TdBase.fromJson(json['chat_list']) as a.ChatList?,
  );
}

/// Returns information about a chat filter by its identifier
class GetChatFilter extends TdFunction {
  /// Chat filter identifier
  final int chatFilterId;

  GetChatFilter({
    required this.chatFilterId,
  });

  @override
  String toString() {
    var s = 'td::GetChatFilter(';

    // Params
    final params = <String>[];
    params.add(chatFilterId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatFilter',
    'chat_filter_id': chatFilterId,
  };

  factory GetChatFilter.fromJson(Map<String, dynamic> json) => GetChatFilter(
    chatFilterId: (json['chat_filter_id'] as int?) ?? 0,
  );
}

/// Creates new chat filter. Returns information about the created chat filter
class CreateChatFilter extends TdFunction {
  /// Chat filter
  final o.ChatFilter? filter;

  CreateChatFilter({
    required this.filter,
  });

  @override
  String toString() {
    var s = 'td::CreateChatFilter(';

    // Params
    final params = <String>[];
    params.add(filter.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'createChatFilter',
    'filter': filter?.toJson(),
  };

  factory CreateChatFilter.fromJson(Map<String, dynamic> json) => CreateChatFilter(
    filter: b.TdBase.fromJson(json['filter']) as o.ChatFilter?,
  );
}

/// Edits existing chat filter. Returns information about the edited chat filter
class EditChatFilter extends TdFunction {
  /// Chat filter identifier
  final int chatFilterId;
  /// The edited chat filter
  final o.ChatFilter? filter;

  EditChatFilter({
    required this.chatFilterId,
    required this.filter,
  });

  @override
  String toString() {
    var s = 'td::EditChatFilter(';

    // Params
    final params = <String>[];
    params.add(chatFilterId.toString());
    params.add(filter.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'editChatFilter',
    'chat_filter_id': chatFilterId,
    'filter': filter?.toJson(),
  };

  factory EditChatFilter.fromJson(Map<String, dynamic> json) => EditChatFilter(
    chatFilterId: (json['chat_filter_id'] as int?) ?? 0,
    filter: b.TdBase.fromJson(json['filter']) as o.ChatFilter?,
  );
}

/// Deletes existing chat filter
class DeleteChatFilter extends TdFunction {
  /// Chat filter identifier
  final int chatFilterId;

  DeleteChatFilter({
    required this.chatFilterId,
  });

  @override
  String toString() {
    var s = 'td::DeleteChatFilter(';

    // Params
    final params = <String>[];
    params.add(chatFilterId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteChatFilter',
    'chat_filter_id': chatFilterId,
  };

  factory DeleteChatFilter.fromJson(Map<String, dynamic> json) => DeleteChatFilter(
    chatFilterId: (json['chat_filter_id'] as int?) ?? 0,
  );
}

/// Changes the order of chat filters
class ReorderChatFilters extends TdFunction {
  /// Identifiers of chat filters in the new correct order
  final List<int> chatFilterIds;

  ReorderChatFilters({
    required this.chatFilterIds,
  });

  @override
  String toString() {
    var s = 'td::ReorderChatFilters(';

    // Params
    final params = <String>[];
    params.add(chatFilterIds.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'reorderChatFilters',
    'chat_filter_ids': chatFilterIds.map((_e1) => _e1).toList(growable: false),
  };

  factory ReorderChatFilters.fromJson(Map<String, dynamic> json) => ReorderChatFilters(
    chatFilterIds: json['chat_filter_ids'] == null ? <int>[] : (json['chat_filter_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
  );
}

/// Returns recommended chat filters for the current user
class GetRecommendedChatFilters extends TdFunction {
  GetRecommendedChatFilters();

  @override
  String toString() {
    var s = 'td::GetRecommendedChatFilters(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getRecommendedChatFilters',
  };

  factory GetRecommendedChatFilters.fromJson(Map<String, dynamic> json) => GetRecommendedChatFilters(
  );
}

/// Returns default icon name for a filter. Can be called synchronously
class GetChatFilterDefaultIconName extends TdFunction {
  /// Chat filter
  final o.ChatFilter? filter;

  GetChatFilterDefaultIconName({
    required this.filter,
  });

  @override
  String toString() {
    var s = 'td::GetChatFilterDefaultIconName(';

    // Params
    final params = <String>[];
    params.add(filter.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatFilterDefaultIconName',
    'filter': filter?.toJson(),
  };

  factory GetChatFilterDefaultIconName.fromJson(Map<String, dynamic> json) => GetChatFilterDefaultIconName(
    filter: b.TdBase.fromJson(json['filter']) as o.ChatFilter?,
  );
}

/// Changes the chat title. Supported only for basic groups, supergroups and channels. Requires can_change_info administrator right
class SetChatTitle extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// New title of the chat; 1-128 characters
  final String title;

  SetChatTitle({
    required this.chatId,
    required this.title,
  });

  @override
  String toString() {
    var s = 'td::SetChatTitle(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(title.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setChatTitle',
    'chat_id': chatId,
    'title': title,
  };

  factory SetChatTitle.fromJson(Map<String, dynamic> json) => SetChatTitle(
    chatId: (json['chat_id'] as int?) ?? 0,
    title: (json['title'] as String?) ?? '',
  );
}

/// Changes the photo of a chat. Supported only for basic groups, supergroups and channels. Requires can_change_info administrator right
class SetChatPhoto extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// New chat photo; pass null to delete the chat photo
  final a.InputChatPhoto? photo;

  SetChatPhoto({
    required this.chatId,
    required this.photo,
  });

  @override
  String toString() {
    var s = 'td::SetChatPhoto(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(photo.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setChatPhoto',
    'chat_id': chatId,
    'photo': photo?.toJson(),
  };

  factory SetChatPhoto.fromJson(Map<String, dynamic> json) => SetChatPhoto(
    chatId: (json['chat_id'] as int?) ?? 0,
    photo: b.TdBase.fromJson(json['photo']) as a.InputChatPhoto?,
  );
}

/// Changes the message TTL setting (sets a new self-destruct timer) in a chat. Requires can_delete_messages administrator right in basic groups, supergroups and channels
class SetChatMessageTtlSetting extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// New TTL value, in seconds; must be one of 0, 86400, 7 * 86400, or 31 * 86400 unless the chat is secret
  final int ttl;

  SetChatMessageTtlSetting({
    required this.chatId,
    required this.ttl,
  });

  @override
  String toString() {
    var s = 'td::SetChatMessageTtlSetting(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(ttl.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setChatMessageTtlSetting',
    'chat_id': chatId,
    'ttl': ttl,
  };

  factory SetChatMessageTtlSetting.fromJson(Map<String, dynamic> json) => SetChatMessageTtlSetting(
    chatId: (json['chat_id'] as int?) ?? 0,
    ttl: (json['ttl'] as int?) ?? 0,
  );
}

/// Changes the chat members permissions. Supported only for basic groups and supergroups. Requires can_restrict_members administrator right
class SetChatPermissions extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// New non-administrator members permissions in the chat
  final o.ChatPermissions? permissions;

  SetChatPermissions({
    required this.chatId,
    required this.permissions,
  });

  @override
  String toString() {
    var s = 'td::SetChatPermissions(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(permissions.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setChatPermissions',
    'chat_id': chatId,
    'permissions': permissions?.toJson(),
  };

  factory SetChatPermissions.fromJson(Map<String, dynamic> json) => SetChatPermissions(
    chatId: (json['chat_id'] as int?) ?? 0,
    permissions: b.TdBase.fromJson(json['permissions']) as o.ChatPermissions?,
  );
}

/// Changes the chat theme. Supported only in private and secret chats
class SetChatTheme extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Name of the new chat theme; pass an empty string to return the default theme
  final String themeName;

  SetChatTheme({
    required this.chatId,
    required this.themeName,
  });

  @override
  String toString() {
    var s = 'td::SetChatTheme(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(themeName.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setChatTheme',
    'chat_id': chatId,
    'theme_name': themeName,
  };

  factory SetChatTheme.fromJson(Map<String, dynamic> json) => SetChatTheme(
    chatId: (json['chat_id'] as int?) ?? 0,
    themeName: (json['theme_name'] as String?) ?? '',
  );
}

/// Changes the draft message in a chat
class SetChatDraftMessage extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// If not 0, a message thread identifier in which the draft was changed
  final int messageThreadId;
  /// New draft message; pass null to remove the draft
  final o.DraftMessage? draftMessage;

  SetChatDraftMessage({
    required this.chatId,
    required this.messageThreadId,
    required this.draftMessage,
  });

  @override
  String toString() {
    var s = 'td::SetChatDraftMessage(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageThreadId.toString());
    params.add(draftMessage.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setChatDraftMessage',
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'draft_message': draftMessage?.toJson(),
  };

  factory SetChatDraftMessage.fromJson(Map<String, dynamic> json) => SetChatDraftMessage(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageThreadId: (json['message_thread_id'] as int?) ?? 0,
    draftMessage: b.TdBase.fromJson(json['draft_message']) as o.DraftMessage?,
  );
}

/// Changes the notification settings of a chat. Notification settings of a chat with the current user (Saved Messages) can't be changed
class SetChatNotificationSettings extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// New notification settings for the chat. If the chat is muted for more than 1 week, it is considered to be muted forever
  final o.ChatNotificationSettings? notificationSettings;

  SetChatNotificationSettings({
    required this.chatId,
    required this.notificationSettings,
  });

  @override
  String toString() {
    var s = 'td::SetChatNotificationSettings(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(notificationSettings.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setChatNotificationSettings',
    'chat_id': chatId,
    'notification_settings': notificationSettings?.toJson(),
  };

  factory SetChatNotificationSettings.fromJson(Map<String, dynamic> json) => SetChatNotificationSettings(
    chatId: (json['chat_id'] as int?) ?? 0,
    notificationSettings: b.TdBase.fromJson(json['notification_settings']) as o.ChatNotificationSettings?,
  );
}

/// Changes the ability of users to save, forward, or copy chat content. Supported only for basic groups, supergroups and channels. Requires owner privileges
class ToggleChatHasProtectedContent extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// True, if chat content can't be saved locally, forwarded, or copied
  final bool hasProtectedContent;

  ToggleChatHasProtectedContent({
    required this.chatId,
    required this.hasProtectedContent,
  });

  @override
  String toString() {
    var s = 'td::ToggleChatHasProtectedContent(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(hasProtectedContent.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleChatHasProtectedContent',
    'chat_id': chatId,
    'has_protected_content': hasProtectedContent,
  };

  factory ToggleChatHasProtectedContent.fromJson(Map<String, dynamic> json) => ToggleChatHasProtectedContent(
    chatId: (json['chat_id'] as int?) ?? 0,
    hasProtectedContent: (json['has_protected_content'] as bool?) ?? false,
  );
}

/// Changes the marked as unread state of a chat
class ToggleChatIsMarkedAsUnread extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// New value of is_marked_as_unread
  final bool isMarkedAsUnread;

  ToggleChatIsMarkedAsUnread({
    required this.chatId,
    required this.isMarkedAsUnread,
  });

  @override
  String toString() {
    var s = 'td::ToggleChatIsMarkedAsUnread(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(isMarkedAsUnread.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleChatIsMarkedAsUnread',
    'chat_id': chatId,
    'is_marked_as_unread': isMarkedAsUnread,
  };

  factory ToggleChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json) => ToggleChatIsMarkedAsUnread(
    chatId: (json['chat_id'] as int?) ?? 0,
    isMarkedAsUnread: (json['is_marked_as_unread'] as bool?) ?? false,
  );
}

/// Changes the value of the default disable_notification parameter, used when a message is sent to a chat
class ToggleChatDefaultDisableNotification extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// New value of default_disable_notification
  final bool defaultDisableNotification;

  ToggleChatDefaultDisableNotification({
    required this.chatId,
    required this.defaultDisableNotification,
  });

  @override
  String toString() {
    var s = 'td::ToggleChatDefaultDisableNotification(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(defaultDisableNotification.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleChatDefaultDisableNotification',
    'chat_id': chatId,
    'default_disable_notification': defaultDisableNotification,
  };

  factory ToggleChatDefaultDisableNotification.fromJson(Map<String, dynamic> json) => ToggleChatDefaultDisableNotification(
    chatId: (json['chat_id'] as int?) ?? 0,
    defaultDisableNotification: (json['default_disable_notification'] as bool?) ?? false,
  );
}

/// Changes application-specific data associated with a chat
class SetChatClientData extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// New value of client_data
  final String clientData;

  SetChatClientData({
    required this.chatId,
    required this.clientData,
  });

  @override
  String toString() {
    var s = 'td::SetChatClientData(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(clientData.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setChatClientData',
    'chat_id': chatId,
    'client_data': clientData,
  };

  factory SetChatClientData.fromJson(Map<String, dynamic> json) => SetChatClientData(
    chatId: (json['chat_id'] as int?) ?? 0,
    clientData: (json['client_data'] as String?) ?? '',
  );
}

/// Changes information about a chat. Available for basic groups, supergroups, and channels. Requires can_change_info administrator right
class SetChatDescription extends TdFunction {
  /// Identifier of the chat
  final int chatId;
  /// New chat description; 0-255 characters
  final String description;

  SetChatDescription({
    required this.chatId,
    required this.description,
  });

  @override
  String toString() {
    var s = 'td::SetChatDescription(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(description.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setChatDescription',
    'chat_id': chatId,
    'description': description,
  };

  factory SetChatDescription.fromJson(Map<String, dynamic> json) => SetChatDescription(
    chatId: (json['chat_id'] as int?) ?? 0,
    description: (json['description'] as String?) ?? '',
  );
}

/// Changes the discussion group of a channel chat; requires can_change_info administrator right in the channel if it is specified
class SetChatDiscussionGroup extends TdFunction {
  /// Identifier of the channel chat. Pass 0 to remove a link from the supergroup passed in the second argument to a linked channel chat (requires can_pin_messages rights in the supergroup)
  final int chatId;
  /// Identifier of a new channel's discussion group. Use 0 to remove the discussion group.
  final int discussionChatId;

  SetChatDiscussionGroup({
    required this.chatId,
    required this.discussionChatId,
  });

  @override
  String toString() {
    var s = 'td::SetChatDiscussionGroup(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(discussionChatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setChatDiscussionGroup',
    'chat_id': chatId,
    'discussion_chat_id': discussionChatId,
  };

  factory SetChatDiscussionGroup.fromJson(Map<String, dynamic> json) => SetChatDiscussionGroup(
    chatId: (json['chat_id'] as int?) ?? 0,
    discussionChatId: (json['discussion_chat_id'] as int?) ?? 0,
  );
}

/// Changes the location of a chat. Available only for some location-based supergroups, use supergroupFullInfo.can_set_location to check whether the method is allowed to use
class SetChatLocation extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// New location for the chat; must be valid and not null
  final o.ChatLocation? location;

  SetChatLocation({
    required this.chatId,
    required this.location,
  });

  @override
  String toString() {
    var s = 'td::SetChatLocation(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(location.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setChatLocation',
    'chat_id': chatId,
    'location': location?.toJson(),
  };

  factory SetChatLocation.fromJson(Map<String, dynamic> json) => SetChatLocation(
    chatId: (json['chat_id'] as int?) ?? 0,
    location: b.TdBase.fromJson(json['location']) as o.ChatLocation?,
  );
}

/// Changes the slow mode delay of a chat. Available only for supergroups; requires can_restrict_members rights
class SetChatSlowModeDelay extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// New slow mode delay for the chat, in seconds; must be one of 0, 10, 30, 60, 300, 900, 3600
  final int slowModeDelay;

  SetChatSlowModeDelay({
    required this.chatId,
    required this.slowModeDelay,
  });

  @override
  String toString() {
    var s = 'td::SetChatSlowModeDelay(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(slowModeDelay.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setChatSlowModeDelay',
    'chat_id': chatId,
    'slow_mode_delay': slowModeDelay,
  };

  factory SetChatSlowModeDelay.fromJson(Map<String, dynamic> json) => SetChatSlowModeDelay(
    chatId: (json['chat_id'] as int?) ?? 0,
    slowModeDelay: (json['slow_mode_delay'] as int?) ?? 0,
  );
}

/// Pins a message in a chat; requires can_pin_messages rights or can_edit_messages rights in the channel
class PinChatMessage extends TdFunction {
  /// Identifier of the chat
  final int chatId;
  /// Identifier of the new pinned message
  final int messageId;
  /// True, if there must be no notification about the pinned message. Notifications are always disabled in channels and private chats
  final bool disableNotification;
  /// True, if the message needs to be pinned for one side only; private chats only
  final bool onlyForSelf;

  PinChatMessage({
    required this.chatId,
    required this.messageId,
    required this.disableNotification,
    required this.onlyForSelf,
  });

  @override
  String toString() {
    var s = 'td::PinChatMessage(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(disableNotification.toString());
    params.add(onlyForSelf.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pinChatMessage',
    'chat_id': chatId,
    'message_id': messageId,
    'disable_notification': disableNotification,
    'only_for_self': onlyForSelf,
  };

  factory PinChatMessage.fromJson(Map<String, dynamic> json) => PinChatMessage(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    disableNotification: (json['disable_notification'] as bool?) ?? false,
    onlyForSelf: (json['only_for_self'] as bool?) ?? false,
  );
}

/// Removes a pinned message from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in the channel
class UnpinChatMessage extends TdFunction {
  /// Identifier of the chat
  final int chatId;
  /// Identifier of the removed pinned message
  final int messageId;

  UnpinChatMessage({
    required this.chatId,
    required this.messageId,
  });

  @override
  String toString() {
    var s = 'td::UnpinChatMessage(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'unpinChatMessage',
    'chat_id': chatId,
    'message_id': messageId,
  };

  factory UnpinChatMessage.fromJson(Map<String, dynamic> json) => UnpinChatMessage(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
  );
}

/// Removes all pinned messages from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in the channel
class UnpinAllChatMessages extends TdFunction {
  /// Identifier of the chat
  final int chatId;

  UnpinAllChatMessages({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::UnpinAllChatMessages(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'unpinAllChatMessages',
    'chat_id': chatId,
  };

  factory UnpinAllChatMessages.fromJson(Map<String, dynamic> json) => UnpinAllChatMessages(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Adds the current user as a new member to a chat. Private and secret chats can't be joined using this method
class JoinChat extends TdFunction {
  /// Chat identifier
  final int chatId;

  JoinChat({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::JoinChat(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'joinChat',
    'chat_id': chatId,
  };

  factory JoinChat.fromJson(Map<String, dynamic> json) => JoinChat(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Removes the current user from chat members. Private and secret chats can't be left using this method
class LeaveChat extends TdFunction {
  /// Chat identifier
  final int chatId;

  LeaveChat({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::LeaveChat(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'leaveChat',
    'chat_id': chatId,
  };

  factory LeaveChat.fromJson(Map<String, dynamic> json) => LeaveChat(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Adds a new member to a chat. Members can't be added to private or secret chats
class AddChatMember extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Identifier of the user
  final int userId;
  /// The number of earlier messages from the chat to be forwarded to the new member; up to 100. Ignored for supergroups and channels, or if the added user is a bot
  final int forwardLimit;

  AddChatMember({
    required this.chatId,
    required this.userId,
    required this.forwardLimit,
  });

  @override
  String toString() {
    var s = 'td::AddChatMember(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(userId.toString());
    params.add(forwardLimit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'addChatMember',
    'chat_id': chatId,
    'user_id': userId,
    'forward_limit': forwardLimit,
  };

  factory AddChatMember.fromJson(Map<String, dynamic> json) => AddChatMember(
    chatId: (json['chat_id'] as int?) ?? 0,
    userId: (json['user_id'] as int?) ?? 0,
    forwardLimit: (json['forward_limit'] as int?) ?? 0,
  );
}

/// Adds multiple new members to a chat. Currently, this method is only available for supergroups and channels. This method can't be used to join a chat. Members can't be added to a channel if it has more than 200 members
class AddChatMembers extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Identifiers of the users to be added to the chat. The maximum number of added users is 20 for supergroups and 100 for channels
  final List<int> userIds;

  AddChatMembers({
    required this.chatId,
    required this.userIds,
  });

  @override
  String toString() {
    var s = 'td::AddChatMembers(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(userIds.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'addChatMembers',
    'chat_id': chatId,
    'user_ids': userIds.map((_e1) => _e1).toList(growable: false),
  };

  factory AddChatMembers.fromJson(Map<String, dynamic> json) => AddChatMembers(
    chatId: (json['chat_id'] as int?) ?? 0,
    userIds: json['user_ids'] == null ? <int>[] : (json['user_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
  );
}

/// Changes the status of a chat member, needs appropriate privileges. This function is currently not suitable for transferring chat ownership; use transferChatOwnership instead. Use addChatMember or banChatMember if some additional parameters needs to be passed
class SetChatMemberStatus extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Member identifier. Chats can be only banned and unbanned in supergroups and channels
  final a.MessageSender? memberId;
  /// The new status of the member in the chat
  final a.ChatMemberStatus? status;

  SetChatMemberStatus({
    required this.chatId,
    required this.memberId,
    required this.status,
  });

  @override
  String toString() {
    var s = 'td::SetChatMemberStatus(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(memberId.toString());
    params.add(status.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setChatMemberStatus',
    'chat_id': chatId,
    'member_id': memberId?.toJson(),
    'status': status?.toJson(),
  };

  factory SetChatMemberStatus.fromJson(Map<String, dynamic> json) => SetChatMemberStatus(
    chatId: (json['chat_id'] as int?) ?? 0,
    memberId: b.TdBase.fromJson(json['member_id']) as a.MessageSender?,
    status: b.TdBase.fromJson(json['status']) as a.ChatMemberStatus?,
  );
}

/// Bans a member in a chat. Members can't be banned in private or secret chats. In supergroups and channels, the user will not be able to return to the group on their own using invite links, etc., unless unbanned first
class BanChatMember extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Member identifier
  final a.MessageSender? memberId;
  /// Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever. Ignored in basic groups and if a chat is banned
  final int bannedUntilDate;
  /// Pass true to delete all messages in the chat for the user that is being removed. Always true for supergroups and channels
  final bool revokeMessages;

  BanChatMember({
    required this.chatId,
    required this.memberId,
    required this.bannedUntilDate,
    required this.revokeMessages,
  });

  @override
  String toString() {
    var s = 'td::BanChatMember(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(memberId.toString());
    params.add(bannedUntilDate.toString());
    params.add(revokeMessages.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'banChatMember',
    'chat_id': chatId,
    'member_id': memberId?.toJson(),
    'banned_until_date': bannedUntilDate,
    'revoke_messages': revokeMessages,
  };

  factory BanChatMember.fromJson(Map<String, dynamic> json) => BanChatMember(
    chatId: (json['chat_id'] as int?) ?? 0,
    memberId: b.TdBase.fromJson(json['member_id']) as a.MessageSender?,
    bannedUntilDate: (json['banned_until_date'] as int?) ?? 0,
    revokeMessages: (json['revoke_messages'] as bool?) ?? false,
  );
}

/// Checks whether the current session can be used to transfer a chat ownership to another user
class CanTransferOwnership extends TdFunction {
  CanTransferOwnership();

  @override
  String toString() {
    var s = 'td::CanTransferOwnership(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'canTransferOwnership',
  };

  factory CanTransferOwnership.fromJson(Map<String, dynamic> json) => CanTransferOwnership(
  );
}

/// Changes the owner of a chat. The current user must be a current owner of the chat. Use the method canTransferOwnership to check whether the ownership can be transferred from the current session. Available only for supergroups and channel chats
class TransferChatOwnership extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Identifier of the user to which transfer the ownership. The ownership can't be transferred to a bot or to a deleted user
  final int userId;
  /// The password of the current user
  final String password;

  TransferChatOwnership({
    required this.chatId,
    required this.userId,
    required this.password,
  });

  @override
  String toString() {
    var s = 'td::TransferChatOwnership(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(userId.toString());
    params.add(password.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'transferChatOwnership',
    'chat_id': chatId,
    'user_id': userId,
    'password': password,
  };

  factory TransferChatOwnership.fromJson(Map<String, dynamic> json) => TransferChatOwnership(
    chatId: (json['chat_id'] as int?) ?? 0,
    userId: (json['user_id'] as int?) ?? 0,
    password: (json['password'] as String?) ?? '',
  );
}

/// Returns information about a single member of a chat
class GetChatMember extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Member identifier
  final a.MessageSender? memberId;

  GetChatMember({
    required this.chatId,
    required this.memberId,
  });

  @override
  String toString() {
    var s = 'td::GetChatMember(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(memberId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatMember',
    'chat_id': chatId,
    'member_id': memberId?.toJson(),
  };

  factory GetChatMember.fromJson(Map<String, dynamic> json) => GetChatMember(
    chatId: (json['chat_id'] as int?) ?? 0,
    memberId: b.TdBase.fromJson(json['member_id']) as a.MessageSender?,
  );
}

/// Searches for a specified query in the first name, last name and username of the members of a specified chat. Requires administrator rights in channels
class SearchChatMembers extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Query to search for
  final String query;
  /// The maximum number of users to be returned; up to 200
  final int limit;
  /// The type of users to search for; pass null to search among all chat members
  final a.ChatMembersFilter? filter;

  SearchChatMembers({
    required this.chatId,
    required this.query,
    required this.limit,
    required this.filter,
  });

  @override
  String toString() {
    var s = 'td::SearchChatMembers(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(query.toString());
    params.add(limit.toString());
    params.add(filter.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchChatMembers',
    'chat_id': chatId,
    'query': query,
    'limit': limit,
    'filter': filter?.toJson(),
  };

  factory SearchChatMembers.fromJson(Map<String, dynamic> json) => SearchChatMembers(
    chatId: (json['chat_id'] as int?) ?? 0,
    query: (json['query'] as String?) ?? '',
    limit: (json['limit'] as int?) ?? 0,
    filter: b.TdBase.fromJson(json['filter']) as a.ChatMembersFilter?,
  );
}

/// Returns a list of administrators of the chat with their custom titles
class GetChatAdministrators extends TdFunction {
  /// Chat identifier
  final int chatId;

  GetChatAdministrators({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::GetChatAdministrators(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatAdministrators',
    'chat_id': chatId,
  };

  factory GetChatAdministrators.fromJson(Map<String, dynamic> json) => GetChatAdministrators(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Clears draft messages in all chats
class ClearAllDraftMessages extends TdFunction {
  /// If true, local draft messages in secret chats will not be cleared
  final bool excludeSecretChats;

  ClearAllDraftMessages({
    required this.excludeSecretChats,
  });

  @override
  String toString() {
    var s = 'td::ClearAllDraftMessages(';

    // Params
    final params = <String>[];
    params.add(excludeSecretChats.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'clearAllDraftMessages',
    'exclude_secret_chats': excludeSecretChats,
  };

  factory ClearAllDraftMessages.fromJson(Map<String, dynamic> json) => ClearAllDraftMessages(
    excludeSecretChats: (json['exclude_secret_chats'] as bool?) ?? false,
  );
}

/// Returns list of chats with non-default notification settings
class GetChatNotificationSettingsExceptions extends TdFunction {
  /// If specified, only chats from the scope will be returned; pass null to return chats from all scopes
  final a.NotificationSettingsScope? scope;
  /// If true, also chats with non-default sound will be returned
  final bool compareSound;

  GetChatNotificationSettingsExceptions({
    required this.scope,
    required this.compareSound,
  });

  @override
  String toString() {
    var s = 'td::GetChatNotificationSettingsExceptions(';

    // Params
    final params = <String>[];
    params.add(scope.toString());
    params.add(compareSound.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatNotificationSettingsExceptions',
    'scope': scope?.toJson(),
    'compare_sound': compareSound,
  };

  factory GetChatNotificationSettingsExceptions.fromJson(Map<String, dynamic> json) => GetChatNotificationSettingsExceptions(
    scope: b.TdBase.fromJson(json['scope']) as a.NotificationSettingsScope?,
    compareSound: (json['compare_sound'] as bool?) ?? false,
  );
}

/// Returns the notification settings for chats of a given type
class GetScopeNotificationSettings extends TdFunction {
  /// Types of chats for which to return the notification settings information
  final a.NotificationSettingsScope? scope;

  GetScopeNotificationSettings({
    required this.scope,
  });

  @override
  String toString() {
    var s = 'td::GetScopeNotificationSettings(';

    // Params
    final params = <String>[];
    params.add(scope.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getScopeNotificationSettings',
    'scope': scope?.toJson(),
  };

  factory GetScopeNotificationSettings.fromJson(Map<String, dynamic> json) => GetScopeNotificationSettings(
    scope: b.TdBase.fromJson(json['scope']) as a.NotificationSettingsScope?,
  );
}

/// Changes notification settings for chats of a given type
class SetScopeNotificationSettings extends TdFunction {
  /// Types of chats for which to change the notification settings
  final a.NotificationSettingsScope? scope;
  /// The new notification settings for the given scope
  final o.ScopeNotificationSettings? notificationSettings;

  SetScopeNotificationSettings({
    required this.scope,
    required this.notificationSettings,
  });

  @override
  String toString() {
    var s = 'td::SetScopeNotificationSettings(';

    // Params
    final params = <String>[];
    params.add(scope.toString());
    params.add(notificationSettings.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setScopeNotificationSettings',
    'scope': scope?.toJson(),
    'notification_settings': notificationSettings?.toJson(),
  };

  factory SetScopeNotificationSettings.fromJson(Map<String, dynamic> json) => SetScopeNotificationSettings(
    scope: b.TdBase.fromJson(json['scope']) as a.NotificationSettingsScope?,
    notificationSettings: b.TdBase.fromJson(json['notification_settings']) as o.ScopeNotificationSettings?,
  );
}

/// Resets all notification settings to their default values. By default, all chats are unmuted, the sound is set to "default" and message previews are shown
class ResetAllNotificationSettings extends TdFunction {
  ResetAllNotificationSettings();

  @override
  String toString() {
    var s = 'td::ResetAllNotificationSettings(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'resetAllNotificationSettings',
  };

  factory ResetAllNotificationSettings.fromJson(Map<String, dynamic> json) => ResetAllNotificationSettings(
  );
}

/// Changes the pinned state of a chat. There can be up to GetOption("pinned_chat_count_max")/GetOption("pinned_archived_chat_count_max") pinned non-secret chats and the same number of secret chats in the main/arhive chat list
class ToggleChatIsPinned extends TdFunction {
  /// Chat list in which to change the pinned state of the chat
  final a.ChatList? chatList;
  /// Chat identifier
  final int chatId;
  /// True, if the chat is pinned
  final bool isPinned;

  ToggleChatIsPinned({
    required this.chatList,
    required this.chatId,
    required this.isPinned,
  });

  @override
  String toString() {
    var s = 'td::ToggleChatIsPinned(';

    // Params
    final params = <String>[];
    params.add(chatList.toString());
    params.add(chatId.toString());
    params.add(isPinned.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleChatIsPinned',
    'chat_list': chatList?.toJson(),
    'chat_id': chatId,
    'is_pinned': isPinned,
  };

  factory ToggleChatIsPinned.fromJson(Map<String, dynamic> json) => ToggleChatIsPinned(
    chatList: b.TdBase.fromJson(json['chat_list']) as a.ChatList?,
    chatId: (json['chat_id'] as int?) ?? 0,
    isPinned: (json['is_pinned'] as bool?) ?? false,
  );
}

/// Changes the order of pinned chats
class SetPinnedChats extends TdFunction {
  /// Chat list in which to change the order of pinned chats
  final a.ChatList? chatList;
  /// The new list of pinned chats
  final List<int> chatIds;

  SetPinnedChats({
    required this.chatList,
    required this.chatIds,
  });

  @override
  String toString() {
    var s = 'td::SetPinnedChats(';

    // Params
    final params = <String>[];
    params.add(chatList.toString());
    params.add(chatIds.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setPinnedChats',
    'chat_list': chatList?.toJson(),
    'chat_ids': chatIds.map((_e1) => _e1).toList(growable: false),
  };

  factory SetPinnedChats.fromJson(Map<String, dynamic> json) => SetPinnedChats(
    chatList: b.TdBase.fromJson(json['chat_list']) as a.ChatList?,
    chatIds: json['chat_ids'] == null ? <int>[] : (json['chat_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
  );
}

/// Downloads a file from the cloud. Download progress and completion of the download will be notified through updateFile updates
class DownloadFile extends TdFunction {
  /// Identifier of the file to download
  final int fileId;
  /// Priority of the download (1-32). The higher the priority, the earlier the file will be downloaded. If the priorities of two files are equal, then the last one for which downloadFile was called will be downloaded first
  final int priority;
  /// The starting position from which the file needs to be downloaded
  final int offset;
  /// Number of bytes which need to be downloaded starting from the "offset" position before the download will automatically be canceled; use 0 to download without a limit
  final int limit;
  /// If false, this request returns file state just after the download has been started. If true, this request returns file state only after
  final bool synchronous;

  DownloadFile({
    required this.fileId,
    required this.priority,
    required this.offset,
    required this.limit,
    required this.synchronous,
  });

  @override
  String toString() {
    var s = 'td::DownloadFile(';

    // Params
    final params = <String>[];
    params.add(fileId.toString());
    params.add(priority.toString());
    params.add(offset.toString());
    params.add(limit.toString());
    params.add(synchronous.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'downloadFile',
    'file_id': fileId,
    'priority': priority,
    'offset': offset,
    'limit': limit,
    'synchronous': synchronous,
  };

  factory DownloadFile.fromJson(Map<String, dynamic> json) => DownloadFile(
    fileId: (json['file_id'] as int?) ?? 0,
    priority: (json['priority'] as int?) ?? 0,
    offset: (json['offset'] as int?) ?? 0,
    limit: (json['limit'] as int?) ?? 0,
    synchronous: (json['synchronous'] as bool?) ?? false,
  );
}

/// Returns file downloaded prefix size from a given offset, in bytes
class GetFileDownloadedPrefixSize extends TdFunction {
  /// Identifier of the file
  final int fileId;
  /// Offset from which downloaded prefix size needs to be calculated
  final int offset;

  GetFileDownloadedPrefixSize({
    required this.fileId,
    required this.offset,
  });

  @override
  String toString() {
    var s = 'td::GetFileDownloadedPrefixSize(';

    // Params
    final params = <String>[];
    params.add(fileId.toString());
    params.add(offset.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getFileDownloadedPrefixSize',
    'file_id': fileId,
    'offset': offset,
  };

  factory GetFileDownloadedPrefixSize.fromJson(Map<String, dynamic> json) => GetFileDownloadedPrefixSize(
    fileId: (json['file_id'] as int?) ?? 0,
    offset: (json['offset'] as int?) ?? 0,
  );
}

/// Stops the downloading of a file. If a file has already been downloaded, does nothing
class CancelDownloadFile extends TdFunction {
  /// Identifier of a file to stop downloading
  final int fileId;
  /// Pass true to stop downloading only if it hasn't been started, i.e. request hasn't been sent to server
  final bool onlyIfPending;

  CancelDownloadFile({
    required this.fileId,
    required this.onlyIfPending,
  });

  @override
  String toString() {
    var s = 'td::CancelDownloadFile(';

    // Params
    final params = <String>[];
    params.add(fileId.toString());
    params.add(onlyIfPending.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'cancelDownloadFile',
    'file_id': fileId,
    'only_if_pending': onlyIfPending,
  };

  factory CancelDownloadFile.fromJson(Map<String, dynamic> json) => CancelDownloadFile(
    fileId: (json['file_id'] as int?) ?? 0,
    onlyIfPending: (json['only_if_pending'] as bool?) ?? false,
  );
}

/// Returns suggested name for saving a file in a given directory
class GetSuggestedFileName extends TdFunction {
  /// Identifier of the file
  final int fileId;
  /// Directory in which the file is supposed to be saved
  final String directory;

  GetSuggestedFileName({
    required this.fileId,
    required this.directory,
  });

  @override
  String toString() {
    var s = 'td::GetSuggestedFileName(';

    // Params
    final params = <String>[];
    params.add(fileId.toString());
    params.add(directory.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getSuggestedFileName',
    'file_id': fileId,
    'directory': directory,
  };

  factory GetSuggestedFileName.fromJson(Map<String, dynamic> json) => GetSuggestedFileName(
    fileId: (json['file_id'] as int?) ?? 0,
    directory: (json['directory'] as String?) ?? '',
  );
}

/// Asynchronously uploads a file to the cloud without sending it in a message. updateFile will be used to notify about upload progress and successful completion of the upload. The file will not have a persistent remote identifier until it will be sent in a message
class UploadFile extends TdFunction {
  /// File to upload
  final a.InputFile? file;
  /// File type; pass null if unknown
  final a.FileType? fileType;
  /// Priority of the upload (1-32). The higher the priority, the earlier the file will be uploaded. If the priorities of two files are equal, then the first one for which uploadFile was called will be uploaded first
  final int priority;

  UploadFile({
    required this.file,
    required this.fileType,
    required this.priority,
  });

  @override
  String toString() {
    var s = 'td::UploadFile(';

    // Params
    final params = <String>[];
    params.add(file.toString());
    params.add(fileType.toString());
    params.add(priority.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'uploadFile',
    'file': file?.toJson(),
    'file_type': fileType?.toJson(),
    'priority': priority,
  };

  factory UploadFile.fromJson(Map<String, dynamic> json) => UploadFile(
    file: b.TdBase.fromJson(json['file']) as a.InputFile?,
    fileType: b.TdBase.fromJson(json['file_type']) as a.FileType?,
    priority: (json['priority'] as int?) ?? 0,
  );
}

/// Stops the uploading of a file. Supported only for files uploaded by using uploadFile. For other files the behavior is undefined
class CancelUploadFile extends TdFunction {
  /// Identifier of the file to stop uploading
  final int fileId;

  CancelUploadFile({
    required this.fileId,
  });

  @override
  String toString() {
    var s = 'td::CancelUploadFile(';

    // Params
    final params = <String>[];
    params.add(fileId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'cancelUploadFile',
    'file_id': fileId,
  };

  factory CancelUploadFile.fromJson(Map<String, dynamic> json) => CancelUploadFile(
    fileId: (json['file_id'] as int?) ?? 0,
  );
}

/// Writes a part of a generated file. This method is intended to be used only if the application has no direct access to TDLib's file system, because it is usually slower than a direct write to the destination file
class WriteGeneratedFilePart extends TdFunction {
  /// The identifier of the generation process
  final int generationId;
  /// The offset from which to write the data to the file
  final int offset;
  /// The data to write
  final Uint8List data;

  WriteGeneratedFilePart({
    required this.generationId,
    required this.offset,
    required this.data,
  });

  @override
  String toString() {
    var s = 'td::WriteGeneratedFilePart(';

    // Params
    final params = <String>[];
    params.add(generationId.toString());
    params.add(offset.toString());
    params.add(data.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'writeGeneratedFilePart',
    'generation_id': generationId.toString(),
    'offset': offset,
    'data': base64.encode(data),
  };

  factory WriteGeneratedFilePart.fromJson(Map<String, dynamic> json) => WriteGeneratedFilePart(
    generationId: int.parse(json['generation_id'] ?? '0'),
    offset: (json['offset'] as int?) ?? 0,
    data: json['data'] == null ? Uint8List(0) : base64.decode(json['data']),
  );
}

/// Informs TDLib on a file generation progress
class SetFileGenerationProgress extends TdFunction {
  /// The identifier of the generation process
  final int generationId;
  /// Expected size of the generated file, in bytes; 0 if unknown
  final int expectedSize;
  /// The number of bytes already generated
  final int localPrefixSize;

  SetFileGenerationProgress({
    required this.generationId,
    required this.expectedSize,
    required this.localPrefixSize,
  });

  @override
  String toString() {
    var s = 'td::SetFileGenerationProgress(';

    // Params
    final params = <String>[];
    params.add(generationId.toString());
    params.add(expectedSize.toString());
    params.add(localPrefixSize.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setFileGenerationProgress',
    'generation_id': generationId.toString(),
    'expected_size': expectedSize,
    'local_prefix_size': localPrefixSize,
  };

  factory SetFileGenerationProgress.fromJson(Map<String, dynamic> json) => SetFileGenerationProgress(
    generationId: int.parse(json['generation_id'] ?? '0'),
    expectedSize: (json['expected_size'] as int?) ?? 0,
    localPrefixSize: (json['local_prefix_size'] as int?) ?? 0,
  );
}

/// Finishes the file generation
class FinishFileGeneration extends TdFunction {
  /// The identifier of the generation process
  final int generationId;
  /// If passed, the file generation has failed and must be terminated; pass null if the file generation succeeded
  final o.Error? error;

  FinishFileGeneration({
    required this.generationId,
    required this.error,
  });

  @override
  String toString() {
    var s = 'td::FinishFileGeneration(';

    // Params
    final params = <String>[];
    params.add(generationId.toString());
    params.add(error.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'finishFileGeneration',
    'generation_id': generationId.toString(),
    'error': error?.toJson(),
  };

  factory FinishFileGeneration.fromJson(Map<String, dynamic> json) => FinishFileGeneration(
    generationId: int.parse(json['generation_id'] ?? '0'),
    error: b.TdBase.fromJson(json['error']) as o.Error?,
  );
}

/// Reads a part of a file from the TDLib file cache and returns read bytes. This method is intended to be used only if the application has no direct access to TDLib's file system, because it is usually slower than a direct read from the file
class ReadFilePart extends TdFunction {
  /// Identifier of the file. The file must be located in the TDLib file cache
  final int fileId;
  /// The offset from which to read the file
  final int offset;
  /// Number of bytes to read. An error will be returned if there are not enough bytes available in the file from the specified position. Pass 0 to read all available data from the specified position
  final int count;

  ReadFilePart({
    required this.fileId,
    required this.offset,
    required this.count,
  });

  @override
  String toString() {
    var s = 'td::ReadFilePart(';

    // Params
    final params = <String>[];
    params.add(fileId.toString());
    params.add(offset.toString());
    params.add(count.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'readFilePart',
    'file_id': fileId,
    'offset': offset,
    'count': count,
  };

  factory ReadFilePart.fromJson(Map<String, dynamic> json) => ReadFilePart(
    fileId: (json['file_id'] as int?) ?? 0,
    offset: (json['offset'] as int?) ?? 0,
    count: (json['count'] as int?) ?? 0,
  );
}

/// Deletes a file from the TDLib file cache
class DeleteFile extends TdFunction {
  /// Identifier of the file to delete
  final int fileId;

  DeleteFile({
    required this.fileId,
  });

  @override
  String toString() {
    var s = 'td::DeleteFile(';

    // Params
    final params = <String>[];
    params.add(fileId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteFile',
    'file_id': fileId,
  };

  factory DeleteFile.fromJson(Map<String, dynamic> json) => DeleteFile(
    fileId: (json['file_id'] as int?) ?? 0,
  );
}

/// Returns information about a file with messages exported from another app
class GetMessageFileType extends TdFunction {
  /// Beginning of the message file; up to 100 first lines
  final String messageFileHead;

  GetMessageFileType({
    required this.messageFileHead,
  });

  @override
  String toString() {
    var s = 'td::GetMessageFileType(';

    // Params
    final params = <String>[];
    params.add(messageFileHead.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMessageFileType',
    'message_file_head': messageFileHead,
  };

  factory GetMessageFileType.fromJson(Map<String, dynamic> json) => GetMessageFileType(
    messageFileHead: (json['message_file_head'] as String?) ?? '',
  );
}

/// Returns a confirmation text to be shown to the user before starting message import
class GetMessageImportConfirmationText extends TdFunction {
  /// Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info administrator right
  final int chatId;

  GetMessageImportConfirmationText({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::GetMessageImportConfirmationText(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMessageImportConfirmationText',
    'chat_id': chatId,
  };

  factory GetMessageImportConfirmationText.fromJson(Map<String, dynamic> json) => GetMessageImportConfirmationText(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Imports messages exported from another app
class ImportMessages extends TdFunction {
  /// Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info administrator right
  final int chatId;
  /// File with messages to import. Only inputFileLocal and inputFileGenerated are supported. The file must not be previously uploaded
  final a.InputFile? messageFile;
  /// Files used in the imported messages. Only inputFileLocal and inputFileGenerated are supported. The files must not be previously uploaded
  final List<a.InputFile?> attachedFiles;

  ImportMessages({
    required this.chatId,
    required this.messageFile,
    required this.attachedFiles,
  });

  @override
  String toString() {
    var s = 'td::ImportMessages(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageFile.toString());
    params.add(attachedFiles.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'importMessages',
    'chat_id': chatId,
    'message_file': messageFile?.toJson(),
    'attached_files': attachedFiles.map((_e1) => _e1?.toJson()).toList(growable: false),
  };

  factory ImportMessages.fromJson(Map<String, dynamic> json) => ImportMessages(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageFile: b.TdBase.fromJson(json['message_file']) as a.InputFile?,
    attachedFiles: json['attached_files'] == null ? <a.InputFile?>[] : (json['attached_files'] as List<dynamic>).map((e) => (b.TdBase.fromJson(e) as a.InputFile?)).toList(growable: false),
  );
}

/// Replaces current primary invite link for a chat with a new primary invite link. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right
class ReplacePrimaryChatInviteLink extends TdFunction {
  /// Chat identifier
  final int chatId;

  ReplacePrimaryChatInviteLink({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::ReplacePrimaryChatInviteLink(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'replacePrimaryChatInviteLink',
    'chat_id': chatId,
  };

  factory ReplacePrimaryChatInviteLink.fromJson(Map<String, dynamic> json) => ReplacePrimaryChatInviteLink(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Creates a new invite link for a chat. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right in the chat
class CreateChatInviteLink extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Invite link name; 0-32 characters
  final String name;
  /// Point in time (Unix timestamp) when the link will expire; pass 0 if never
  final int expireDate;
  /// The maximum number of chat members that can join the chat by the link simultaneously; 0-99999; pass 0 if not limited
  final int memberLimit;
  /// True, if the link only creates join request. If true, member_limit must not be specified
  final bool createsJoinRequest;

  CreateChatInviteLink({
    required this.chatId,
    required this.name,
    required this.expireDate,
    required this.memberLimit,
    required this.createsJoinRequest,
  });

  @override
  String toString() {
    var s = 'td::CreateChatInviteLink(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(name.toString());
    params.add(expireDate.toString());
    params.add(memberLimit.toString());
    params.add(createsJoinRequest.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'createChatInviteLink',
    'chat_id': chatId,
    'name': name,
    'expire_date': expireDate,
    'member_limit': memberLimit,
    'creates_join_request': createsJoinRequest,
  };

  factory CreateChatInviteLink.fromJson(Map<String, dynamic> json) => CreateChatInviteLink(
    chatId: (json['chat_id'] as int?) ?? 0,
    name: (json['name'] as String?) ?? '',
    expireDate: (json['expire_date'] as int?) ?? 0,
    memberLimit: (json['member_limit'] as int?) ?? 0,
    createsJoinRequest: (json['creates_join_request'] as bool?) ?? false,
  );
}

/// Edits a non-primary invite link for a chat. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
class EditChatInviteLink extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Invite link to be edited
  final String inviteLink;
  /// Invite link name; 0-32 characters
  final String name;
  /// Point in time (Unix timestamp) when the link will expire; pass 0 if never
  final int expireDate;
  /// The maximum number of chat members that can join the chat by the link simultaneously; 0-99999; pass 0 if not limited
  final int memberLimit;
  /// True, if the link only creates join request. If true, member_limit must not be specified
  final bool createsJoinRequest;

  EditChatInviteLink({
    required this.chatId,
    required this.inviteLink,
    required this.name,
    required this.expireDate,
    required this.memberLimit,
    required this.createsJoinRequest,
  });

  @override
  String toString() {
    var s = 'td::EditChatInviteLink(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(inviteLink.toString());
    params.add(name.toString());
    params.add(expireDate.toString());
    params.add(memberLimit.toString());
    params.add(createsJoinRequest.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'editChatInviteLink',
    'chat_id': chatId,
    'invite_link': inviteLink,
    'name': name,
    'expire_date': expireDate,
    'member_limit': memberLimit,
    'creates_join_request': createsJoinRequest,
  };

  factory EditChatInviteLink.fromJson(Map<String, dynamic> json) => EditChatInviteLink(
    chatId: (json['chat_id'] as int?) ?? 0,
    inviteLink: (json['invite_link'] as String?) ?? '',
    name: (json['name'] as String?) ?? '',
    expireDate: (json['expire_date'] as int?) ?? 0,
    memberLimit: (json['member_limit'] as int?) ?? 0,
    createsJoinRequest: (json['creates_join_request'] as bool?) ?? false,
  );
}

/// Returns information about an invite link. Requires administrator privileges and can_invite_users right in the chat to get own links and owner privileges to get other links
class GetChatInviteLink extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Invite link to get
  final String inviteLink;

  GetChatInviteLink({
    required this.chatId,
    required this.inviteLink,
  });

  @override
  String toString() {
    var s = 'td::GetChatInviteLink(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(inviteLink.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatInviteLink',
    'chat_id': chatId,
    'invite_link': inviteLink,
  };

  factory GetChatInviteLink.fromJson(Map<String, dynamic> json) => GetChatInviteLink(
    chatId: (json['chat_id'] as int?) ?? 0,
    inviteLink: (json['invite_link'] as String?) ?? '',
  );
}

/// Returns list of chat administrators with number of their invite links. Requires owner privileges in the chat
class GetChatInviteLinkCounts extends TdFunction {
  /// Chat identifier
  final int chatId;

  GetChatInviteLinkCounts({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::GetChatInviteLinkCounts(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatInviteLinkCounts',
    'chat_id': chatId,
  };

  factory GetChatInviteLinkCounts.fromJson(Map<String, dynamic> json) => GetChatInviteLinkCounts(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Returns invite links for a chat created by specified administrator. Requires administrator privileges and can_invite_users right in the chat to get own links and owner privileges to get other links
class GetChatInviteLinks extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// User identifier of a chat administrator. Must be an identifier of the current user for non-owner
  final int creatorUserId;
  /// Pass true if revoked links needs to be returned instead of active or expired
  final bool isRevoked;
  /// Creation date of an invite link starting after which to return invite links; use 0 to get results from the beginning
  final int offsetDate;
  /// Invite link starting after which to return invite links; use empty string to get results from the beginning
  final String offsetInviteLink;
  /// The maximum number of invite links to return; up to 100
  final int limit;

  GetChatInviteLinks({
    required this.chatId,
    required this.creatorUserId,
    required this.isRevoked,
    required this.offsetDate,
    required this.offsetInviteLink,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetChatInviteLinks(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(creatorUserId.toString());
    params.add(isRevoked.toString());
    params.add(offsetDate.toString());
    params.add(offsetInviteLink.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatInviteLinks',
    'chat_id': chatId,
    'creator_user_id': creatorUserId,
    'is_revoked': isRevoked,
    'offset_date': offsetDate,
    'offset_invite_link': offsetInviteLink,
    'limit': limit,
  };

  factory GetChatInviteLinks.fromJson(Map<String, dynamic> json) => GetChatInviteLinks(
    chatId: (json['chat_id'] as int?) ?? 0,
    creatorUserId: (json['creator_user_id'] as int?) ?? 0,
    isRevoked: (json['is_revoked'] as bool?) ?? false,
    offsetDate: (json['offset_date'] as int?) ?? 0,
    offsetInviteLink: (json['offset_invite_link'] as String?) ?? '',
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Returns chat members joined a chat by an invite link. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
class GetChatInviteLinkMembers extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Invite link for which to return chat members
  final String inviteLink;
  /// A chat member from which to return next chat members; pass null to get results from the beginning
  final o.ChatInviteLinkMember? offsetMember;
  /// The maximum number of chat members to return; up to 100
  final int limit;

  GetChatInviteLinkMembers({
    required this.chatId,
    required this.inviteLink,
    required this.offsetMember,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetChatInviteLinkMembers(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(inviteLink.toString());
    params.add(offsetMember.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatInviteLinkMembers',
    'chat_id': chatId,
    'invite_link': inviteLink,
    'offset_member': offsetMember?.toJson(),
    'limit': limit,
  };

  factory GetChatInviteLinkMembers.fromJson(Map<String, dynamic> json) => GetChatInviteLinkMembers(
    chatId: (json['chat_id'] as int?) ?? 0,
    inviteLink: (json['invite_link'] as String?) ?? '',
    offsetMember: b.TdBase.fromJson(json['offset_member']) as o.ChatInviteLinkMember?,
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Revokes invite link for a chat. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links.
class RevokeChatInviteLink extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Invite link to be revoked
  final String inviteLink;

  RevokeChatInviteLink({
    required this.chatId,
    required this.inviteLink,
  });

  @override
  String toString() {
    var s = 'td::RevokeChatInviteLink(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(inviteLink.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'revokeChatInviteLink',
    'chat_id': chatId,
    'invite_link': inviteLink,
  };

  factory RevokeChatInviteLink.fromJson(Map<String, dynamic> json) => RevokeChatInviteLink(
    chatId: (json['chat_id'] as int?) ?? 0,
    inviteLink: (json['invite_link'] as String?) ?? '',
  );
}

/// Deletes revoked chat invite links. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
class DeleteRevokedChatInviteLink extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Invite link to revoke
  final String inviteLink;

  DeleteRevokedChatInviteLink({
    required this.chatId,
    required this.inviteLink,
  });

  @override
  String toString() {
    var s = 'td::DeleteRevokedChatInviteLink(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(inviteLink.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteRevokedChatInviteLink',
    'chat_id': chatId,
    'invite_link': inviteLink,
  };

  factory DeleteRevokedChatInviteLink.fromJson(Map<String, dynamic> json) => DeleteRevokedChatInviteLink(
    chatId: (json['chat_id'] as int?) ?? 0,
    inviteLink: (json['invite_link'] as String?) ?? '',
  );
}

/// Deletes all revoked chat invite links created by a given chat administrator. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
class DeleteAllRevokedChatInviteLinks extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// User identifier of a chat administrator, which links will be deleted. Must be an identifier of the current user for non-owner
  final int creatorUserId;

  DeleteAllRevokedChatInviteLinks({
    required this.chatId,
    required this.creatorUserId,
  });

  @override
  String toString() {
    var s = 'td::DeleteAllRevokedChatInviteLinks(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(creatorUserId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteAllRevokedChatInviteLinks',
    'chat_id': chatId,
    'creator_user_id': creatorUserId,
  };

  factory DeleteAllRevokedChatInviteLinks.fromJson(Map<String, dynamic> json) => DeleteAllRevokedChatInviteLinks(
    chatId: (json['chat_id'] as int?) ?? 0,
    creatorUserId: (json['creator_user_id'] as int?) ?? 0,
  );
}

/// Checks the validity of an invite link for a chat and returns information about the corresponding chat
class CheckChatInviteLink extends TdFunction {
  /// Invite link to be checked
  final String inviteLink;

  CheckChatInviteLink({
    required this.inviteLink,
  });

  @override
  String toString() {
    var s = 'td::CheckChatInviteLink(';

    // Params
    final params = <String>[];
    params.add(inviteLink.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkChatInviteLink',
    'invite_link': inviteLink,
  };

  factory CheckChatInviteLink.fromJson(Map<String, dynamic> json) => CheckChatInviteLink(
    inviteLink: (json['invite_link'] as String?) ?? '',
  );
}

/// Uses an invite link to add the current user to the chat if possible
class JoinChatByInviteLink extends TdFunction {
  /// Invite link to use
  final String inviteLink;

  JoinChatByInviteLink({
    required this.inviteLink,
  });

  @override
  String toString() {
    var s = 'td::JoinChatByInviteLink(';

    // Params
    final params = <String>[];
    params.add(inviteLink.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'joinChatByInviteLink',
    'invite_link': inviteLink,
  };

  factory JoinChatByInviteLink.fromJson(Map<String, dynamic> json) => JoinChatByInviteLink(
    inviteLink: (json['invite_link'] as String?) ?? '',
  );
}

/// Returns pending join requests in a chat
class GetChatJoinRequests extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Invite link for which to return join requests. If empty, all join requests will be returned. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
  final String inviteLink;
  /// A query to search for in the first names, last names and usernames of the users to return
  final String query;
  /// A chat join request from which to return next requests; pass null to get results from the beginning
  final o.ChatJoinRequest? offsetRequest;
  /// The maximum number of chat join requests to return
  final int limit;

  GetChatJoinRequests({
    required this.chatId,
    required this.inviteLink,
    required this.query,
    required this.offsetRequest,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetChatJoinRequests(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(inviteLink.toString());
    params.add(query.toString());
    params.add(offsetRequest.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatJoinRequests',
    'chat_id': chatId,
    'invite_link': inviteLink,
    'query': query,
    'offset_request': offsetRequest?.toJson(),
    'limit': limit,
  };

  factory GetChatJoinRequests.fromJson(Map<String, dynamic> json) => GetChatJoinRequests(
    chatId: (json['chat_id'] as int?) ?? 0,
    inviteLink: (json['invite_link'] as String?) ?? '',
    query: (json['query'] as String?) ?? '',
    offsetRequest: b.TdBase.fromJson(json['offset_request']) as o.ChatJoinRequest?,
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Handles a pending join request in a chat
class ProcessChatJoinRequest extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Identifier of the user that sent the request
  final int userId;
  /// True, if the request is approved. Otherwise the request is declived
  final bool approve;

  ProcessChatJoinRequest({
    required this.chatId,
    required this.userId,
    required this.approve,
  });

  @override
  String toString() {
    var s = 'td::ProcessChatJoinRequest(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(userId.toString());
    params.add(approve.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'processChatJoinRequest',
    'chat_id': chatId,
    'user_id': userId,
    'approve': approve,
  };

  factory ProcessChatJoinRequest.fromJson(Map<String, dynamic> json) => ProcessChatJoinRequest(
    chatId: (json['chat_id'] as int?) ?? 0,
    userId: (json['user_id'] as int?) ?? 0,
    approve: (json['approve'] as bool?) ?? false,
  );
}

/// Handles all pending join requests for a given link in a chat
class ProcessChatJoinRequests extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Invite link for which to process join requests. If empty, all join requests will be processed. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
  final String inviteLink;
  /// True, if the requests are approved. Otherwise the requests are declived
  final bool approve;

  ProcessChatJoinRequests({
    required this.chatId,
    required this.inviteLink,
    required this.approve,
  });

  @override
  String toString() {
    var s = 'td::ProcessChatJoinRequests(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(inviteLink.toString());
    params.add(approve.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'processChatJoinRequests',
    'chat_id': chatId,
    'invite_link': inviteLink,
    'approve': approve,
  };

  factory ProcessChatJoinRequests.fromJson(Map<String, dynamic> json) => ProcessChatJoinRequests(
    chatId: (json['chat_id'] as int?) ?? 0,
    inviteLink: (json['invite_link'] as String?) ?? '',
    approve: (json['approve'] as bool?) ?? false,
  );
}

/// Creates a new call
class CreateCall extends TdFunction {
  /// Identifier of the user to be called
  final int userId;
  /// The call protocols supported by the application
  final o.CallProtocol? protocol;
  /// True, if a video call needs to be created
  final bool isVideo;

  CreateCall({
    required this.userId,
    required this.protocol,
    required this.isVideo,
  });

  @override
  String toString() {
    var s = 'td::CreateCall(';

    // Params
    final params = <String>[];
    params.add(userId.toString());
    params.add(protocol.toString());
    params.add(isVideo.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'createCall',
    'user_id': userId,
    'protocol': protocol?.toJson(),
    'is_video': isVideo,
  };

  factory CreateCall.fromJson(Map<String, dynamic> json) => CreateCall(
    userId: (json['user_id'] as int?) ?? 0,
    protocol: b.TdBase.fromJson(json['protocol']) as o.CallProtocol?,
    isVideo: (json['is_video'] as bool?) ?? false,
  );
}

/// Accepts an incoming call
class AcceptCall extends TdFunction {
  /// Call identifier
  final int callId;
  /// The call protocols supported by the application
  final o.CallProtocol? protocol;

  AcceptCall({
    required this.callId,
    required this.protocol,
  });

  @override
  String toString() {
    var s = 'td::AcceptCall(';

    // Params
    final params = <String>[];
    params.add(callId.toString());
    params.add(protocol.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'acceptCall',
    'call_id': callId,
    'protocol': protocol?.toJson(),
  };

  factory AcceptCall.fromJson(Map<String, dynamic> json) => AcceptCall(
    callId: (json['call_id'] as int?) ?? 0,
    protocol: b.TdBase.fromJson(json['protocol']) as o.CallProtocol?,
  );
}

/// Sends call signaling data
class SendCallSignalingData extends TdFunction {
  /// Call identifier
  final int callId;
  /// The data
  final Uint8List data;

  SendCallSignalingData({
    required this.callId,
    required this.data,
  });

  @override
  String toString() {
    var s = 'td::SendCallSignalingData(';

    // Params
    final params = <String>[];
    params.add(callId.toString());
    params.add(data.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sendCallSignalingData',
    'call_id': callId,
    'data': base64.encode(data),
  };

  factory SendCallSignalingData.fromJson(Map<String, dynamic> json) => SendCallSignalingData(
    callId: (json['call_id'] as int?) ?? 0,
    data: json['data'] == null ? Uint8List(0) : base64.decode(json['data']),
  );
}

/// Discards a call
class DiscardCall extends TdFunction {
  /// Call identifier
  final int callId;
  /// True, if the user was disconnected
  final bool isDisconnected;
  /// The call duration, in seconds
  final int duration;
  /// True, if the call was a video call
  final bool isVideo;
  /// Identifier of the connection used during the call
  final int connectionId;

  DiscardCall({
    required this.callId,
    required this.isDisconnected,
    required this.duration,
    required this.isVideo,
    required this.connectionId,
  });

  @override
  String toString() {
    var s = 'td::DiscardCall(';

    // Params
    final params = <String>[];
    params.add(callId.toString());
    params.add(isDisconnected.toString());
    params.add(duration.toString());
    params.add(isVideo.toString());
    params.add(connectionId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'discardCall',
    'call_id': callId,
    'is_disconnected': isDisconnected,
    'duration': duration,
    'is_video': isVideo,
    'connection_id': connectionId.toString(),
  };

  factory DiscardCall.fromJson(Map<String, dynamic> json) => DiscardCall(
    callId: (json['call_id'] as int?) ?? 0,
    isDisconnected: (json['is_disconnected'] as bool?) ?? false,
    duration: (json['duration'] as int?) ?? 0,
    isVideo: (json['is_video'] as bool?) ?? false,
    connectionId: int.parse(json['connection_id'] ?? '0'),
  );
}

/// Sends a call rating
class SendCallRating extends TdFunction {
  /// Call identifier
  final int callId;
  /// Call rating; 1-5
  final int rating;
  /// An optional user comment if the rating is less than 5
  final String comment;
  /// List of the exact types of problems with the call, specified by the user
  final List<a.CallProblem?> problems;

  SendCallRating({
    required this.callId,
    required this.rating,
    required this.comment,
    required this.problems,
  });

  @override
  String toString() {
    var s = 'td::SendCallRating(';

    // Params
    final params = <String>[];
    params.add(callId.toString());
    params.add(rating.toString());
    params.add(comment.toString());
    params.add(problems.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sendCallRating',
    'call_id': callId,
    'rating': rating,
    'comment': comment,
    'problems': problems.map((_e1) => _e1?.toJson()).toList(growable: false),
  };

  factory SendCallRating.fromJson(Map<String, dynamic> json) => SendCallRating(
    callId: (json['call_id'] as int?) ?? 0,
    rating: (json['rating'] as int?) ?? 0,
    comment: (json['comment'] as String?) ?? '',
    problems: json['problems'] == null ? <a.CallProblem?>[] : (json['problems'] as List<dynamic>).map((e) => (b.TdBase.fromJson(e) as a.CallProblem?)).toList(growable: false),
  );
}

/// Sends debug information for a call
class SendCallDebugInformation extends TdFunction {
  /// Call identifier
  final int callId;
  /// Debug information in application-specific format
  final String debugInformation;

  SendCallDebugInformation({
    required this.callId,
    required this.debugInformation,
  });

  @override
  String toString() {
    var s = 'td::SendCallDebugInformation(';

    // Params
    final params = <String>[];
    params.add(callId.toString());
    params.add(debugInformation.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sendCallDebugInformation',
    'call_id': callId,
    'debug_information': debugInformation,
  };

  factory SendCallDebugInformation.fromJson(Map<String, dynamic> json) => SendCallDebugInformation(
    callId: (json['call_id'] as int?) ?? 0,
    debugInformation: (json['debug_information'] as String?) ?? '',
  );
}

/// Returns list of participant identifiers, which can be used to join video chats in a chat
class GetVideoChatAvailableParticipants extends TdFunction {
  /// Chat identifier
  final int chatId;

  GetVideoChatAvailableParticipants({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::GetVideoChatAvailableParticipants(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getVideoChatAvailableParticipants',
    'chat_id': chatId,
  };

  factory GetVideoChatAvailableParticipants.fromJson(Map<String, dynamic> json) => GetVideoChatAvailableParticipants(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Changes default participant identifier, which can be used to join video chats in a chat
class SetVideoChatDefaultParticipant extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Default group call participant identifier to join the video chats
  final a.MessageSender? defaultParticipantId;

  SetVideoChatDefaultParticipant({
    required this.chatId,
    required this.defaultParticipantId,
  });

  @override
  String toString() {
    var s = 'td::SetVideoChatDefaultParticipant(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(defaultParticipantId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setVideoChatDefaultParticipant',
    'chat_id': chatId,
    'default_participant_id': defaultParticipantId?.toJson(),
  };

  factory SetVideoChatDefaultParticipant.fromJson(Map<String, dynamic> json) => SetVideoChatDefaultParticipant(
    chatId: (json['chat_id'] as int?) ?? 0,
    defaultParticipantId: b.TdBase.fromJson(json['default_participant_id']) as a.MessageSender?,
  );
}

/// Creates a video chat (a group call bound to a chat). Available only for basic groups, supergroups and channels; requires can_manage_video_chats rights
class CreateVideoChat extends TdFunction {
  /// Chat identifier, in which the video chat will be created
  final int chatId;
  /// Group call title; if empty, chat title will be used
  final String title;
  /// Point in time (Unix timestamp) when the group call is supposed to be started by an administrator; 0 to start the video chat immediately. The date must be at least 10 seconds and at most 8 days in the future
  final int startDate;

  CreateVideoChat({
    required this.chatId,
    required this.title,
    required this.startDate,
  });

  @override
  String toString() {
    var s = 'td::CreateVideoChat(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(title.toString());
    params.add(startDate.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'createVideoChat',
    'chat_id': chatId,
    'title': title,
    'start_date': startDate,
  };

  factory CreateVideoChat.fromJson(Map<String, dynamic> json) => CreateVideoChat(
    chatId: (json['chat_id'] as int?) ?? 0,
    title: (json['title'] as String?) ?? '',
    startDate: (json['start_date'] as int?) ?? 0,
  );
}

/// Returns information about a group call
class GetGroupCall extends TdFunction {
  /// Group call identifier
  final int groupCallId;

  GetGroupCall({
    required this.groupCallId,
  });

  @override
  String toString() {
    var s = 'td::GetGroupCall(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getGroupCall',
    'group_call_id': groupCallId,
  };

  factory GetGroupCall.fromJson(Map<String, dynamic> json) => GetGroupCall(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
  );
}

/// Starts a scheduled group call
class StartScheduledGroupCall extends TdFunction {
  /// Group call identifier
  final int groupCallId;

  StartScheduledGroupCall({
    required this.groupCallId,
  });

  @override
  String toString() {
    var s = 'td::StartScheduledGroupCall(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'startScheduledGroupCall',
    'group_call_id': groupCallId,
  };

  factory StartScheduledGroupCall.fromJson(Map<String, dynamic> json) => StartScheduledGroupCall(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
  );
}

/// Toggles whether the current user will receive a notification when the group call will start; scheduled group calls only
class ToggleGroupCallEnabledStartNotification extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// New value of the enabled_start_notification setting
  final bool enabledStartNotification;

  ToggleGroupCallEnabledStartNotification({
    required this.groupCallId,
    required this.enabledStartNotification,
  });

  @override
  String toString() {
    var s = 'td::ToggleGroupCallEnabledStartNotification(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(enabledStartNotification.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleGroupCallEnabledStartNotification',
    'group_call_id': groupCallId,
    'enabled_start_notification': enabledStartNotification,
  };

  factory ToggleGroupCallEnabledStartNotification.fromJson(Map<String, dynamic> json) => ToggleGroupCallEnabledStartNotification(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    enabledStartNotification: (json['enabled_start_notification'] as bool?) ?? false,
  );
}

/// Joins an active group call. Returns join response payload for tgcalls
class JoinGroupCall extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// Identifier of a group call participant, which will be used to join the call; pass null to join as self; video chats only
  final a.MessageSender? participantId;
  /// Caller audio channel synchronization source identifier; received from tgcalls
  final int audioSourceId;
  /// Group call join payload; received from tgcalls
  final String payload;
  /// True, if the user's microphone is muted
  final bool isMuted;
  /// True, if the user's video is enabled
  final bool isMyVideoEnabled;
  /// If non-empty, invite hash to be used to join the group call without being muted by administrators
  final String inviteHash;

  JoinGroupCall({
    required this.groupCallId,
    required this.participantId,
    required this.audioSourceId,
    required this.payload,
    required this.isMuted,
    required this.isMyVideoEnabled,
    required this.inviteHash,
  });

  @override
  String toString() {
    var s = 'td::JoinGroupCall(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(participantId.toString());
    params.add(audioSourceId.toString());
    params.add(payload.toString());
    params.add(isMuted.toString());
    params.add(isMyVideoEnabled.toString());
    params.add(inviteHash.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'joinGroupCall',
    'group_call_id': groupCallId,
    'participant_id': participantId?.toJson(),
    'audio_source_id': audioSourceId,
    'payload': payload,
    'is_muted': isMuted,
    'is_my_video_enabled': isMyVideoEnabled,
    'invite_hash': inviteHash,
  };

  factory JoinGroupCall.fromJson(Map<String, dynamic> json) => JoinGroupCall(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    participantId: b.TdBase.fromJson(json['participant_id']) as a.MessageSender?,
    audioSourceId: (json['audio_source_id'] as int?) ?? 0,
    payload: (json['payload'] as String?) ?? '',
    isMuted: (json['is_muted'] as bool?) ?? false,
    isMyVideoEnabled: (json['is_my_video_enabled'] as bool?) ?? false,
    inviteHash: (json['invite_hash'] as String?) ?? '',
  );
}

/// Starts screen sharing in a joined group call. Returns join response payload for tgcalls
class StartGroupCallScreenSharing extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// Screen sharing audio channel synchronization source identifier; received from tgcalls
  final int audioSourceId;
  /// Group call join payload; received from tgcalls
  final String payload;

  StartGroupCallScreenSharing({
    required this.groupCallId,
    required this.audioSourceId,
    required this.payload,
  });

  @override
  String toString() {
    var s = 'td::StartGroupCallScreenSharing(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(audioSourceId.toString());
    params.add(payload.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'startGroupCallScreenSharing',
    'group_call_id': groupCallId,
    'audio_source_id': audioSourceId,
    'payload': payload,
  };

  factory StartGroupCallScreenSharing.fromJson(Map<String, dynamic> json) => StartGroupCallScreenSharing(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    audioSourceId: (json['audio_source_id'] as int?) ?? 0,
    payload: (json['payload'] as String?) ?? '',
  );
}

/// Pauses or unpauses screen sharing in a joined group call
class ToggleGroupCallScreenSharingIsPaused extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// True if screen sharing is paused
  final bool isPaused;

  ToggleGroupCallScreenSharingIsPaused({
    required this.groupCallId,
    required this.isPaused,
  });

  @override
  String toString() {
    var s = 'td::ToggleGroupCallScreenSharingIsPaused(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(isPaused.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleGroupCallScreenSharingIsPaused',
    'group_call_id': groupCallId,
    'is_paused': isPaused,
  };

  factory ToggleGroupCallScreenSharingIsPaused.fromJson(Map<String, dynamic> json) => ToggleGroupCallScreenSharingIsPaused(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    isPaused: (json['is_paused'] as bool?) ?? false,
  );
}

/// Ends screen sharing in a joined group call
class EndGroupCallScreenSharing extends TdFunction {
  /// Group call identifier
  final int groupCallId;

  EndGroupCallScreenSharing({
    required this.groupCallId,
  });

  @override
  String toString() {
    var s = 'td::EndGroupCallScreenSharing(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'endGroupCallScreenSharing',
    'group_call_id': groupCallId,
  };

  factory EndGroupCallScreenSharing.fromJson(Map<String, dynamic> json) => EndGroupCallScreenSharing(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
  );
}

/// Sets group call title. Requires groupCall.can_be_managed group call flag
class SetGroupCallTitle extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// New group call title; 1-64 characters
  final String title;

  SetGroupCallTitle({
    required this.groupCallId,
    required this.title,
  });

  @override
  String toString() {
    var s = 'td::SetGroupCallTitle(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(title.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setGroupCallTitle',
    'group_call_id': groupCallId,
    'title': title,
  };

  factory SetGroupCallTitle.fromJson(Map<String, dynamic> json) => SetGroupCallTitle(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    title: (json['title'] as String?) ?? '',
  );
}

/// Toggles whether new participants of a group call can be unmuted only by administrators of the group call. Requires groupCall.can_toggle_mute_new_participants group call flag
class ToggleGroupCallMuteNewParticipants extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// New value of the mute_new_participants setting
  final bool muteNewParticipants;

  ToggleGroupCallMuteNewParticipants({
    required this.groupCallId,
    required this.muteNewParticipants,
  });

  @override
  String toString() {
    var s = 'td::ToggleGroupCallMuteNewParticipants(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(muteNewParticipants.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleGroupCallMuteNewParticipants',
    'group_call_id': groupCallId,
    'mute_new_participants': muteNewParticipants,
  };

  factory ToggleGroupCallMuteNewParticipants.fromJson(Map<String, dynamic> json) => ToggleGroupCallMuteNewParticipants(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    muteNewParticipants: (json['mute_new_participants'] as bool?) ?? false,
  );
}

/// Invites users to an active group call. Sends a service message of type messageInviteToGroupCall for video chats
class InviteGroupCallParticipants extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// User identifiers. At most 10 users can be invited simultaneously
  final List<int> userIds;

  InviteGroupCallParticipants({
    required this.groupCallId,
    required this.userIds,
  });

  @override
  String toString() {
    var s = 'td::InviteGroupCallParticipants(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(userIds.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inviteGroupCallParticipants',
    'group_call_id': groupCallId,
    'user_ids': userIds.map((_e1) => _e1).toList(growable: false),
  };

  factory InviteGroupCallParticipants.fromJson(Map<String, dynamic> json) => InviteGroupCallParticipants(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    userIds: json['user_ids'] == null ? <int>[] : (json['user_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
  );
}

/// Returns invite link to a video chat in a public chat
class GetGroupCallInviteLink extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// Pass true if the invite link needs to contain an invite hash, passing which to joinGroupCall would allow the invited user to unmute themselves. Requires groupCall.can_be_managed group call flag
  final bool canSelfUnmute;

  GetGroupCallInviteLink({
    required this.groupCallId,
    required this.canSelfUnmute,
  });

  @override
  String toString() {
    var s = 'td::GetGroupCallInviteLink(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(canSelfUnmute.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getGroupCallInviteLink',
    'group_call_id': groupCallId,
    'can_self_unmute': canSelfUnmute,
  };

  factory GetGroupCallInviteLink.fromJson(Map<String, dynamic> json) => GetGroupCallInviteLink(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    canSelfUnmute: (json['can_self_unmute'] as bool?) ?? false,
  );
}

/// Revokes invite link for a group call. Requires groupCall.can_be_managed group call flag
class RevokeGroupCallInviteLink extends TdFunction {
  /// Group call identifier
  final int groupCallId;

  RevokeGroupCallInviteLink({
    required this.groupCallId,
  });

  @override
  String toString() {
    var s = 'td::RevokeGroupCallInviteLink(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'revokeGroupCallInviteLink',
    'group_call_id': groupCallId,
  };

  factory RevokeGroupCallInviteLink.fromJson(Map<String, dynamic> json) => RevokeGroupCallInviteLink(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
  );
}

/// Starts recording of an active group call. Requires groupCall.can_be_managed group call flag
class StartGroupCallRecording extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// Group call recording title; 0-64 characters
  final String title;
  /// Pass true to record a video file instead of an audio file
  final bool recordVideo;
  /// Pass true to use portrait orientation for video instead of landscape one
  final bool usePortraitOrientation;

  StartGroupCallRecording({
    required this.groupCallId,
    required this.title,
    required this.recordVideo,
    required this.usePortraitOrientation,
  });

  @override
  String toString() {
    var s = 'td::StartGroupCallRecording(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(title.toString());
    params.add(recordVideo.toString());
    params.add(usePortraitOrientation.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'startGroupCallRecording',
    'group_call_id': groupCallId,
    'title': title,
    'record_video': recordVideo,
    'use_portrait_orientation': usePortraitOrientation,
  };

  factory StartGroupCallRecording.fromJson(Map<String, dynamic> json) => StartGroupCallRecording(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    title: (json['title'] as String?) ?? '',
    recordVideo: (json['record_video'] as bool?) ?? false,
    usePortraitOrientation: (json['use_portrait_orientation'] as bool?) ?? false,
  );
}

/// Ends recording of an active group call. Requires groupCall.can_be_managed group call flag
class EndGroupCallRecording extends TdFunction {
  /// Group call identifier
  final int groupCallId;

  EndGroupCallRecording({
    required this.groupCallId,
  });

  @override
  String toString() {
    var s = 'td::EndGroupCallRecording(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'endGroupCallRecording',
    'group_call_id': groupCallId,
  };

  factory EndGroupCallRecording.fromJson(Map<String, dynamic> json) => EndGroupCallRecording(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
  );
}

/// Toggles whether current user's video is paused
class ToggleGroupCallIsMyVideoPaused extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// Pass true if the current user's video is paused
  final bool isMyVideoPaused;

  ToggleGroupCallIsMyVideoPaused({
    required this.groupCallId,
    required this.isMyVideoPaused,
  });

  @override
  String toString() {
    var s = 'td::ToggleGroupCallIsMyVideoPaused(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(isMyVideoPaused.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleGroupCallIsMyVideoPaused',
    'group_call_id': groupCallId,
    'is_my_video_paused': isMyVideoPaused,
  };

  factory ToggleGroupCallIsMyVideoPaused.fromJson(Map<String, dynamic> json) => ToggleGroupCallIsMyVideoPaused(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    isMyVideoPaused: (json['is_my_video_paused'] as bool?) ?? false,
  );
}

/// Toggles whether current user's video is enabled
class ToggleGroupCallIsMyVideoEnabled extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// Pass true if the current user's video is enabled
  final bool isMyVideoEnabled;

  ToggleGroupCallIsMyVideoEnabled({
    required this.groupCallId,
    required this.isMyVideoEnabled,
  });

  @override
  String toString() {
    var s = 'td::ToggleGroupCallIsMyVideoEnabled(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(isMyVideoEnabled.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleGroupCallIsMyVideoEnabled',
    'group_call_id': groupCallId,
    'is_my_video_enabled': isMyVideoEnabled,
  };

  factory ToggleGroupCallIsMyVideoEnabled.fromJson(Map<String, dynamic> json) => ToggleGroupCallIsMyVideoEnabled(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    isMyVideoEnabled: (json['is_my_video_enabled'] as bool?) ?? false,
  );
}

/// Informs TDLib that speaking state of a participant of an active group has changed
class SetGroupCallParticipantIsSpeaking extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// Group call participant's synchronization audio source identifier, or 0 for the current user
  final int audioSource;
  /// True, if the user is speaking
  final bool isSpeaking;

  SetGroupCallParticipantIsSpeaking({
    required this.groupCallId,
    required this.audioSource,
    required this.isSpeaking,
  });

  @override
  String toString() {
    var s = 'td::SetGroupCallParticipantIsSpeaking(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(audioSource.toString());
    params.add(isSpeaking.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setGroupCallParticipantIsSpeaking',
    'group_call_id': groupCallId,
    'audio_source': audioSource,
    'is_speaking': isSpeaking,
  };

  factory SetGroupCallParticipantIsSpeaking.fromJson(Map<String, dynamic> json) => SetGroupCallParticipantIsSpeaking(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    audioSource: (json['audio_source'] as int?) ?? 0,
    isSpeaking: (json['is_speaking'] as bool?) ?? false,
  );
}

/// Toggles whether a participant of an active group call is muted, unmuted, or allowed to unmute themselves
class ToggleGroupCallParticipantIsMuted extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// Participant identifier
  final a.MessageSender? participantId;
  /// Pass true if the user must be muted and false otherwise
  final bool isMuted;

  ToggleGroupCallParticipantIsMuted({
    required this.groupCallId,
    required this.participantId,
    required this.isMuted,
  });

  @override
  String toString() {
    var s = 'td::ToggleGroupCallParticipantIsMuted(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(participantId.toString());
    params.add(isMuted.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleGroupCallParticipantIsMuted',
    'group_call_id': groupCallId,
    'participant_id': participantId?.toJson(),
    'is_muted': isMuted,
  };

  factory ToggleGroupCallParticipantIsMuted.fromJson(Map<String, dynamic> json) => ToggleGroupCallParticipantIsMuted(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    participantId: b.TdBase.fromJson(json['participant_id']) as a.MessageSender?,
    isMuted: (json['is_muted'] as bool?) ?? false,
  );
}

/// Changes volume level of a participant of an active group call. If the current user can manage the group call, then the participant's volume level will be changed for all users with the default volume level
class SetGroupCallParticipantVolumeLevel extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// Participant identifier
  final a.MessageSender? participantId;
  /// New participant's volume level; 1-20000 in hundreds of percents
  final int volumeLevel;

  SetGroupCallParticipantVolumeLevel({
    required this.groupCallId,
    required this.participantId,
    required this.volumeLevel,
  });

  @override
  String toString() {
    var s = 'td::SetGroupCallParticipantVolumeLevel(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(participantId.toString());
    params.add(volumeLevel.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setGroupCallParticipantVolumeLevel',
    'group_call_id': groupCallId,
    'participant_id': participantId?.toJson(),
    'volume_level': volumeLevel,
  };

  factory SetGroupCallParticipantVolumeLevel.fromJson(Map<String, dynamic> json) => SetGroupCallParticipantVolumeLevel(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    participantId: b.TdBase.fromJson(json['participant_id']) as a.MessageSender?,
    volumeLevel: (json['volume_level'] as int?) ?? 0,
  );
}

/// Toggles whether a group call participant hand is rased
class ToggleGroupCallParticipantIsHandRaised extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// Participant identifier
  final a.MessageSender? participantId;
  /// Pass true if the user's hand needs to be raised. Only self hand can be raised. Requires groupCall.can_be_managed group call flag to lower other's hand
  final bool isHandRaised;

  ToggleGroupCallParticipantIsHandRaised({
    required this.groupCallId,
    required this.participantId,
    required this.isHandRaised,
  });

  @override
  String toString() {
    var s = 'td::ToggleGroupCallParticipantIsHandRaised(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(participantId.toString());
    params.add(isHandRaised.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleGroupCallParticipantIsHandRaised',
    'group_call_id': groupCallId,
    'participant_id': participantId?.toJson(),
    'is_hand_raised': isHandRaised,
  };

  factory ToggleGroupCallParticipantIsHandRaised.fromJson(Map<String, dynamic> json) => ToggleGroupCallParticipantIsHandRaised(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    participantId: b.TdBase.fromJson(json['participant_id']) as a.MessageSender?,
    isHandRaised: (json['is_hand_raised'] as bool?) ?? false,
  );
}

/// Loads more participants of a group call. The loaded participants will be received through updates. Use the field groupCall.loaded_all_participants to check whether all participants have already been loaded
class LoadGroupCallParticipants extends TdFunction {
  /// Group call identifier. The group call must be previously received through getGroupCall and must be joined or being joined
  final int groupCallId;
  /// The maximum number of participants to load; up to 100
  final int limit;

  LoadGroupCallParticipants({
    required this.groupCallId,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::LoadGroupCallParticipants(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'loadGroupCallParticipants',
    'group_call_id': groupCallId,
    'limit': limit,
  };

  factory LoadGroupCallParticipants.fromJson(Map<String, dynamic> json) => LoadGroupCallParticipants(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Leaves a group call
class LeaveGroupCall extends TdFunction {
  /// Group call identifier
  final int groupCallId;

  LeaveGroupCall({
    required this.groupCallId,
  });

  @override
  String toString() {
    var s = 'td::LeaveGroupCall(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'leaveGroupCall',
    'group_call_id': groupCallId,
  };

  factory LeaveGroupCall.fromJson(Map<String, dynamic> json) => LeaveGroupCall(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
  );
}

/// Discards a group call. Requires groupCall.can_be_managed
class DiscardGroupCall extends TdFunction {
  /// Group call identifier
  final int groupCallId;

  DiscardGroupCall({
    required this.groupCallId,
  });

  @override
  String toString() {
    var s = 'td::DiscardGroupCall(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'discardGroupCall',
    'group_call_id': groupCallId,
  };

  factory DiscardGroupCall.fromJson(Map<String, dynamic> json) => DiscardGroupCall(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
  );
}

/// Returns a file with a segment of a group call stream in a modified OGG format for audio or MPEG-4 format for video
class GetGroupCallStreamSegment extends TdFunction {
  /// Group call identifier
  final int groupCallId;
  /// Point in time when the stream segment begins; Unix timestamp in milliseconds
  final int timeOffset;
  /// Segment duration scale; 0-1. Segment's duration is 1000/(2**scale) milliseconds
  final int scale;
  /// Identifier of an audio/video channel to get as received from tgcalls
  final int channelId;
  /// Video quality as received from tgcalls; pass null to get the worst available quality
  final a.GroupCallVideoQuality? videoQuality;

  GetGroupCallStreamSegment({
    required this.groupCallId,
    required this.timeOffset,
    required this.scale,
    required this.channelId,
    required this.videoQuality,
  });

  @override
  String toString() {
    var s = 'td::GetGroupCallStreamSegment(';

    // Params
    final params = <String>[];
    params.add(groupCallId.toString());
    params.add(timeOffset.toString());
    params.add(scale.toString());
    params.add(channelId.toString());
    params.add(videoQuality.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getGroupCallStreamSegment',
    'group_call_id': groupCallId,
    'time_offset': timeOffset,
    'scale': scale,
    'channel_id': channelId,
    'video_quality': videoQuality?.toJson(),
  };

  factory GetGroupCallStreamSegment.fromJson(Map<String, dynamic> json) => GetGroupCallStreamSegment(
    groupCallId: (json['group_call_id'] as int?) ?? 0,
    timeOffset: (json['time_offset'] as int?) ?? 0,
    scale: (json['scale'] as int?) ?? 0,
    channelId: (json['channel_id'] as int?) ?? 0,
    videoQuality: b.TdBase.fromJson(json['video_quality']) as a.GroupCallVideoQuality?,
  );
}

/// Changes the block state of a message sender. Currently, only users and supergroup chats can be blocked
class ToggleMessageSenderIsBlocked extends TdFunction {
  /// Identifier of a message sender to block/unblock
  final a.MessageSender? senderId;
  /// New value of is_blocked
  final bool isBlocked;

  ToggleMessageSenderIsBlocked({
    required this.senderId,
    required this.isBlocked,
  });

  @override
  String toString() {
    var s = 'td::ToggleMessageSenderIsBlocked(';

    // Params
    final params = <String>[];
    params.add(senderId.toString());
    params.add(isBlocked.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleMessageSenderIsBlocked',
    'sender_id': senderId?.toJson(),
    'is_blocked': isBlocked,
  };

  factory ToggleMessageSenderIsBlocked.fromJson(Map<String, dynamic> json) => ToggleMessageSenderIsBlocked(
    senderId: b.TdBase.fromJson(json['sender_id']) as a.MessageSender?,
    isBlocked: (json['is_blocked'] as bool?) ?? false,
  );
}

/// Blocks an original sender of a message in the Replies chat
class BlockMessageSenderFromReplies extends TdFunction {
  /// The identifier of an incoming message in the Replies chat
  final int messageId;
  /// Pass true if the message must be deleted
  final bool deleteMessage;
  /// Pass true if all messages from the same sender must be deleted
  final bool deleteAllMessages;
  /// Pass true if the sender must be reported to the Telegram moderators
  final bool reportSpam;

  BlockMessageSenderFromReplies({
    required this.messageId,
    required this.deleteMessage,
    required this.deleteAllMessages,
    required this.reportSpam,
  });

  @override
  String toString() {
    var s = 'td::BlockMessageSenderFromReplies(';

    // Params
    final params = <String>[];
    params.add(messageId.toString());
    params.add(deleteMessage.toString());
    params.add(deleteAllMessages.toString());
    params.add(reportSpam.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'blockMessageSenderFromReplies',
    'message_id': messageId,
    'delete_message': deleteMessage,
    'delete_all_messages': deleteAllMessages,
    'report_spam': reportSpam,
  };

  factory BlockMessageSenderFromReplies.fromJson(Map<String, dynamic> json) => BlockMessageSenderFromReplies(
    messageId: (json['message_id'] as int?) ?? 0,
    deleteMessage: (json['delete_message'] as bool?) ?? false,
    deleteAllMessages: (json['delete_all_messages'] as bool?) ?? false,
    reportSpam: (json['report_spam'] as bool?) ?? false,
  );
}

/// Returns users and chats that were blocked by the current user
class GetBlockedMessageSenders extends TdFunction {
  /// Number of users and chats to skip in the result; must be non-negative
  final int offset;
  /// The maximum number of users and chats to return; up to 100
  final int limit;

  GetBlockedMessageSenders({
    required this.offset,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetBlockedMessageSenders(';

    // Params
    final params = <String>[];
    params.add(offset.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getBlockedMessageSenders',
    'offset': offset,
    'limit': limit,
  };

  factory GetBlockedMessageSenders.fromJson(Map<String, dynamic> json) => GetBlockedMessageSenders(
    offset: (json['offset'] as int?) ?? 0,
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Adds a user to the contact list or edits an existing contact by their user identifier
class AddContact extends TdFunction {
  /// The contact to add or edit; phone number can be empty and needs to be specified only if known, vCard is ignored
  final o.Contact? contact;
  /// True, if the new contact needs to be allowed to see current user's phone number. A corresponding rule to userPrivacySettingShowPhoneNumber will be added if needed. Use the field userFullInfo.need_phone_number_privacy_exception to check whether the current user needs to be asked to share their phone number
  final bool sharePhoneNumber;

  AddContact({
    required this.contact,
    required this.sharePhoneNumber,
  });

  @override
  String toString() {
    var s = 'td::AddContact(';

    // Params
    final params = <String>[];
    params.add(contact.toString());
    params.add(sharePhoneNumber.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'addContact',
    'contact': contact?.toJson(),
    'share_phone_number': sharePhoneNumber,
  };

  factory AddContact.fromJson(Map<String, dynamic> json) => AddContact(
    contact: b.TdBase.fromJson(json['contact']) as o.Contact?,
    sharePhoneNumber: (json['share_phone_number'] as bool?) ?? false,
  );
}

/// Adds new contacts or edits existing contacts by their phone numbers; contacts' user identifiers are ignored
class ImportContacts extends TdFunction {
  /// The list of contacts to import or edit; contacts' vCard are ignored and are not imported
  final List<o.Contact?> contacts;

  ImportContacts({
    required this.contacts,
  });

  @override
  String toString() {
    var s = 'td::ImportContacts(';

    // Params
    final params = <String>[];
    params.add(contacts.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'importContacts',
    'contacts': contacts.map((_e1) => _e1?.toJson()).toList(growable: false),
  };

  factory ImportContacts.fromJson(Map<String, dynamic> json) => ImportContacts(
    contacts: json['contacts'] == null ? <o.Contact?>[] : (json['contacts'] as List<dynamic>).map((e) => (b.TdBase.fromJson(e) as o.Contact?)).toList(growable: false),
  );
}

/// Returns all user contacts
class GetContacts extends TdFunction {
  GetContacts();

  @override
  String toString() {
    var s = 'td::GetContacts(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getContacts',
  };

  factory GetContacts.fromJson(Map<String, dynamic> json) => GetContacts(
  );
}

/// Searches for the specified query in the first names, last names and usernames of the known user contacts
class SearchContacts extends TdFunction {
  /// Query to search for; may be empty to return all contacts
  final String query;
  /// The maximum number of users to be returned
  final int limit;

  SearchContacts({
    required this.query,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::SearchContacts(';

    // Params
    final params = <String>[];
    params.add(query.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchContacts',
    'query': query,
    'limit': limit,
  };

  factory SearchContacts.fromJson(Map<String, dynamic> json) => SearchContacts(
    query: (json['query'] as String?) ?? '',
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Removes users from the contact list
class RemoveContacts extends TdFunction {
  /// Identifiers of users to be deleted
  final List<int> userIds;

  RemoveContacts({
    required this.userIds,
  });

  @override
  String toString() {
    var s = 'td::RemoveContacts(';

    // Params
    final params = <String>[];
    params.add(userIds.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'removeContacts',
    'user_ids': userIds.map((_e1) => _e1).toList(growable: false),
  };

  factory RemoveContacts.fromJson(Map<String, dynamic> json) => RemoveContacts(
    userIds: json['user_ids'] == null ? <int>[] : (json['user_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
  );
}

/// Returns the total number of imported contacts
class GetImportedContactCount extends TdFunction {
  GetImportedContactCount();

  @override
  String toString() {
    var s = 'td::GetImportedContactCount(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getImportedContactCount',
  };

  factory GetImportedContactCount.fromJson(Map<String, dynamic> json) => GetImportedContactCount(
  );
}

/// Changes imported contacts using the list of contacts saved on the device. Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts.
class ChangeImportedContacts extends TdFunction {
  /// The new list of contacts, contact's vCard are ignored and are not imported
  final List<o.Contact?> contacts;

  ChangeImportedContacts({
    required this.contacts,
  });

  @override
  String toString() {
    var s = 'td::ChangeImportedContacts(';

    // Params
    final params = <String>[];
    params.add(contacts.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'changeImportedContacts',
    'contacts': contacts.map((_e1) => _e1?.toJson()).toList(growable: false),
  };

  factory ChangeImportedContacts.fromJson(Map<String, dynamic> json) => ChangeImportedContacts(
    contacts: json['contacts'] == null ? <o.Contact?>[] : (json['contacts'] as List<dynamic>).map((e) => (b.TdBase.fromJson(e) as o.Contact?)).toList(growable: false),
  );
}

/// Clears all imported contacts, contact list remains unchanged
class ClearImportedContacts extends TdFunction {
  ClearImportedContacts();

  @override
  String toString() {
    var s = 'td::ClearImportedContacts(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'clearImportedContacts',
  };

  factory ClearImportedContacts.fromJson(Map<String, dynamic> json) => ClearImportedContacts(
  );
}

/// Shares the phone number of the current user with a mutual contact. Supposed to be called when the user clicks on chatActionBarSharePhoneNumber
class SharePhoneNumber extends TdFunction {
  /// Identifier of the user with whom to share the phone number. The user must be a mutual contact
  final int userId;

  SharePhoneNumber({
    required this.userId,
  });

  @override
  String toString() {
    var s = 'td::SharePhoneNumber(';

    // Params
    final params = <String>[];
    params.add(userId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sharePhoneNumber',
    'user_id': userId,
  };

  factory SharePhoneNumber.fromJson(Map<String, dynamic> json) => SharePhoneNumber(
    userId: (json['user_id'] as int?) ?? 0,
  );
}

/// Returns the profile photos of a user. The result of this query may be outdated: some photos might have been deleted already
class GetUserProfilePhotos extends TdFunction {
  /// User identifier
  final int userId;
  /// The number of photos to skip; must be non-negative
  final int offset;
  /// The maximum number of photos to be returned; up to 100
  final int limit;

  GetUserProfilePhotos({
    required this.userId,
    required this.offset,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetUserProfilePhotos(';

    // Params
    final params = <String>[];
    params.add(userId.toString());
    params.add(offset.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getUserProfilePhotos',
    'user_id': userId,
    'offset': offset,
    'limit': limit,
  };

  factory GetUserProfilePhotos.fromJson(Map<String, dynamic> json) => GetUserProfilePhotos(
    userId: (json['user_id'] as int?) ?? 0,
    offset: (json['offset'] as int?) ?? 0,
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Returns stickers from the installed sticker sets that correspond to a given emoji. If the emoji is non-empty, favorite and recently used stickers may also be returned
class GetStickers extends TdFunction {
  /// String representation of emoji. If empty, returns all known installed stickers
  final String emoji;
  /// The maximum number of stickers to be returned
  final int limit;

  GetStickers({
    required this.emoji,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetStickers(';

    // Params
    final params = <String>[];
    params.add(emoji.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getStickers',
    'emoji': emoji,
    'limit': limit,
  };

  factory GetStickers.fromJson(Map<String, dynamic> json) => GetStickers(
    emoji: (json['emoji'] as String?) ?? '',
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Searches for stickers from public sticker sets that correspond to a given emoji
class SearchStickers extends TdFunction {
  /// String representation of emoji; must be non-empty
  final String emoji;
  /// The maximum number of stickers to be returned
  final int limit;

  SearchStickers({
    required this.emoji,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::SearchStickers(';

    // Params
    final params = <String>[];
    params.add(emoji.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchStickers',
    'emoji': emoji,
    'limit': limit,
  };

  factory SearchStickers.fromJson(Map<String, dynamic> json) => SearchStickers(
    emoji: (json['emoji'] as String?) ?? '',
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Returns a list of installed sticker sets
class GetInstalledStickerSets extends TdFunction {
  /// Pass true to return mask sticker sets; pass false to return ordinary sticker sets
  final bool isMasks;

  GetInstalledStickerSets({
    required this.isMasks,
  });

  @override
  String toString() {
    var s = 'td::GetInstalledStickerSets(';

    // Params
    final params = <String>[];
    params.add(isMasks.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getInstalledStickerSets',
    'is_masks': isMasks,
  };

  factory GetInstalledStickerSets.fromJson(Map<String, dynamic> json) => GetInstalledStickerSets(
    isMasks: (json['is_masks'] as bool?) ?? false,
  );
}

/// Returns a list of archived sticker sets
class GetArchivedStickerSets extends TdFunction {
  /// Pass true to return mask stickers sets; pass false to return ordinary sticker sets
  final bool isMasks;
  /// Identifier of the sticker set from which to return the result
  final int offsetStickerSetId;
  /// The maximum number of sticker sets to return; up to 100
  final int limit;

  GetArchivedStickerSets({
    required this.isMasks,
    required this.offsetStickerSetId,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetArchivedStickerSets(';

    // Params
    final params = <String>[];
    params.add(isMasks.toString());
    params.add(offsetStickerSetId.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getArchivedStickerSets',
    'is_masks': isMasks,
    'offset_sticker_set_id': offsetStickerSetId.toString(),
    'limit': limit,
  };

  factory GetArchivedStickerSets.fromJson(Map<String, dynamic> json) => GetArchivedStickerSets(
    isMasks: (json['is_masks'] as bool?) ?? false,
    offsetStickerSetId: int.parse(json['offset_sticker_set_id'] ?? '0'),
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Returns a list of trending sticker sets. For optimal performance, the number of returned sticker sets is chosen by TDLib
class GetTrendingStickerSets extends TdFunction {
  /// The offset from which to return the sticker sets; must be non-negative
  final int offset;
  /// The maximum number of sticker sets to be returned; up to 100. For optimal performance, the number of returned sticker sets is chosen by TDLib and can be smaller than the specified limit, even if the end of the list has not been reached
  final int limit;

  GetTrendingStickerSets({
    required this.offset,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetTrendingStickerSets(';

    // Params
    final params = <String>[];
    params.add(offset.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getTrendingStickerSets',
    'offset': offset,
    'limit': limit,
  };

  factory GetTrendingStickerSets.fromJson(Map<String, dynamic> json) => GetTrendingStickerSets(
    offset: (json['offset'] as int?) ?? 0,
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Returns a list of sticker sets attached to a file. Currently, only photos and videos can have attached sticker sets
class GetAttachedStickerSets extends TdFunction {
  /// File identifier
  final int fileId;

  GetAttachedStickerSets({
    required this.fileId,
  });

  @override
  String toString() {
    var s = 'td::GetAttachedStickerSets(';

    // Params
    final params = <String>[];
    params.add(fileId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getAttachedStickerSets',
    'file_id': fileId,
  };

  factory GetAttachedStickerSets.fromJson(Map<String, dynamic> json) => GetAttachedStickerSets(
    fileId: (json['file_id'] as int?) ?? 0,
  );
}

/// Returns information about a sticker set by its identifier
class GetStickerSet extends TdFunction {
  /// Identifier of the sticker set
  final int setId;

  GetStickerSet({
    required this.setId,
  });

  @override
  String toString() {
    var s = 'td::GetStickerSet(';

    // Params
    final params = <String>[];
    params.add(setId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getStickerSet',
    'set_id': setId.toString(),
  };

  factory GetStickerSet.fromJson(Map<String, dynamic> json) => GetStickerSet(
    setId: int.parse(json['set_id'] ?? '0'),
  );
}

/// Searches for a sticker set by its name
class SearchStickerSet extends TdFunction {
  /// Name of the sticker set
  final String name;

  SearchStickerSet({
    required this.name,
  });

  @override
  String toString() {
    var s = 'td::SearchStickerSet(';

    // Params
    final params = <String>[];
    params.add(name.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchStickerSet',
    'name': name,
  };

  factory SearchStickerSet.fromJson(Map<String, dynamic> json) => SearchStickerSet(
    name: (json['name'] as String?) ?? '',
  );
}

/// Searches for installed sticker sets by looking for specified query in their title and name
class SearchInstalledStickerSets extends TdFunction {
  /// Pass true to return mask sticker sets; pass false to return ordinary sticker sets
  final bool isMasks;
  /// Query to search for
  final String query;
  /// The maximum number of sticker sets to return
  final int limit;

  SearchInstalledStickerSets({
    required this.isMasks,
    required this.query,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::SearchInstalledStickerSets(';

    // Params
    final params = <String>[];
    params.add(isMasks.toString());
    params.add(query.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchInstalledStickerSets',
    'is_masks': isMasks,
    'query': query,
    'limit': limit,
  };

  factory SearchInstalledStickerSets.fromJson(Map<String, dynamic> json) => SearchInstalledStickerSets(
    isMasks: (json['is_masks'] as bool?) ?? false,
    query: (json['query'] as String?) ?? '',
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Searches for ordinary sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results
class SearchStickerSets extends TdFunction {
  /// Query to search for
  final String query;

  SearchStickerSets({
    required this.query,
  });

  @override
  String toString() {
    var s = 'td::SearchStickerSets(';

    // Params
    final params = <String>[];
    params.add(query.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchStickerSets',
    'query': query,
  };

  factory SearchStickerSets.fromJson(Map<String, dynamic> json) => SearchStickerSets(
    query: (json['query'] as String?) ?? '',
  );
}

/// Installs/uninstalls or activates/archives a sticker set
class ChangeStickerSet extends TdFunction {
  /// Identifier of the sticker set
  final int setId;
  /// The new value of is_installed
  final bool isInstalled;
  /// The new value of is_archived. A sticker set can't be installed and archived simultaneously
  final bool isArchived;

  ChangeStickerSet({
    required this.setId,
    required this.isInstalled,
    required this.isArchived,
  });

  @override
  String toString() {
    var s = 'td::ChangeStickerSet(';

    // Params
    final params = <String>[];
    params.add(setId.toString());
    params.add(isInstalled.toString());
    params.add(isArchived.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'changeStickerSet',
    'set_id': setId.toString(),
    'is_installed': isInstalled,
    'is_archived': isArchived,
  };

  factory ChangeStickerSet.fromJson(Map<String, dynamic> json) => ChangeStickerSet(
    setId: int.parse(json['set_id'] ?? '0'),
    isInstalled: (json['is_installed'] as bool?) ?? false,
    isArchived: (json['is_archived'] as bool?) ?? false,
  );
}

/// Informs the server that some trending sticker sets have been viewed by the user
class ViewTrendingStickerSets extends TdFunction {
  /// Identifiers of viewed trending sticker sets
  final List<int> stickerSetIds;

  ViewTrendingStickerSets({
    required this.stickerSetIds,
  });

  @override
  String toString() {
    var s = 'td::ViewTrendingStickerSets(';

    // Params
    final params = <String>[];
    params.add(stickerSetIds.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'viewTrendingStickerSets',
    'sticker_set_ids': stickerSetIds.map((_e1) => _e1.toString()).toList(growable: false),
  };

  factory ViewTrendingStickerSets.fromJson(Map<String, dynamic> json) => ViewTrendingStickerSets(
    stickerSetIds: json['sticker_set_ids'] == null ? <int>[] : (json['sticker_set_ids'] as List<dynamic>).map((e) => (int.parse(e ?? '0'))).toList(growable: false),
  );
}

/// Changes the order of installed sticker sets
class ReorderInstalledStickerSets extends TdFunction {
  /// Pass true to change the order of mask sticker sets; pass false to change the order of ordinary sticker sets
  final bool isMasks;
  /// Identifiers of installed sticker sets in the new correct order
  final List<int> stickerSetIds;

  ReorderInstalledStickerSets({
    required this.isMasks,
    required this.stickerSetIds,
  });

  @override
  String toString() {
    var s = 'td::ReorderInstalledStickerSets(';

    // Params
    final params = <String>[];
    params.add(isMasks.toString());
    params.add(stickerSetIds.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'reorderInstalledStickerSets',
    'is_masks': isMasks,
    'sticker_set_ids': stickerSetIds.map((_e1) => _e1.toString()).toList(growable: false),
  };

  factory ReorderInstalledStickerSets.fromJson(Map<String, dynamic> json) => ReorderInstalledStickerSets(
    isMasks: (json['is_masks'] as bool?) ?? false,
    stickerSetIds: json['sticker_set_ids'] == null ? <int>[] : (json['sticker_set_ids'] as List<dynamic>).map((e) => (int.parse(e ?? '0'))).toList(growable: false),
  );
}

/// Returns a list of recently used stickers
class GetRecentStickers extends TdFunction {
  /// Pass true to return stickers and masks that were recently attached to photos or video files; pass false to return recently sent stickers
  final bool isAttached;

  GetRecentStickers({
    required this.isAttached,
  });

  @override
  String toString() {
    var s = 'td::GetRecentStickers(';

    // Params
    final params = <String>[];
    params.add(isAttached.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getRecentStickers',
    'is_attached': isAttached,
  };

  factory GetRecentStickers.fromJson(Map<String, dynamic> json) => GetRecentStickers(
    isAttached: (json['is_attached'] as bool?) ?? false,
  );
}

/// Manually adds a new sticker to the list of recently used stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first. Only stickers belonging to a sticker set can be added to this list
class AddRecentSticker extends TdFunction {
  /// Pass true to add the sticker to the list of stickers recently attached to photo or video files; pass false to add the sticker to the list of recently sent stickers
  final bool isAttached;
  /// Sticker file to add
  final a.InputFile? sticker;

  AddRecentSticker({
    required this.isAttached,
    required this.sticker,
  });

  @override
  String toString() {
    var s = 'td::AddRecentSticker(';

    // Params
    final params = <String>[];
    params.add(isAttached.toString());
    params.add(sticker.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'addRecentSticker',
    'is_attached': isAttached,
    'sticker': sticker?.toJson(),
  };

  factory AddRecentSticker.fromJson(Map<String, dynamic> json) => AddRecentSticker(
    isAttached: (json['is_attached'] as bool?) ?? false,
    sticker: b.TdBase.fromJson(json['sticker']) as a.InputFile?,
  );
}

/// Removes a sticker from the list of recently used stickers
class RemoveRecentSticker extends TdFunction {
  /// Pass true to remove the sticker from the list of stickers recently attached to photo or video files; pass false to remove the sticker from the list of recently sent stickers
  final bool isAttached;
  /// Sticker file to delete
  final a.InputFile? sticker;

  RemoveRecentSticker({
    required this.isAttached,
    required this.sticker,
  });

  @override
  String toString() {
    var s = 'td::RemoveRecentSticker(';

    // Params
    final params = <String>[];
    params.add(isAttached.toString());
    params.add(sticker.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'removeRecentSticker',
    'is_attached': isAttached,
    'sticker': sticker?.toJson(),
  };

  factory RemoveRecentSticker.fromJson(Map<String, dynamic> json) => RemoveRecentSticker(
    isAttached: (json['is_attached'] as bool?) ?? false,
    sticker: b.TdBase.fromJson(json['sticker']) as a.InputFile?,
  );
}

/// Clears the list of recently used stickers
class ClearRecentStickers extends TdFunction {
  /// Pass true to clear the list of stickers recently attached to photo or video files; pass false to clear the list of recently sent stickers
  final bool isAttached;

  ClearRecentStickers({
    required this.isAttached,
  });

  @override
  String toString() {
    var s = 'td::ClearRecentStickers(';

    // Params
    final params = <String>[];
    params.add(isAttached.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'clearRecentStickers',
    'is_attached': isAttached,
  };

  factory ClearRecentStickers.fromJson(Map<String, dynamic> json) => ClearRecentStickers(
    isAttached: (json['is_attached'] as bool?) ?? false,
  );
}

/// Returns favorite stickers
class GetFavoriteStickers extends TdFunction {
  GetFavoriteStickers();

  @override
  String toString() {
    var s = 'td::GetFavoriteStickers(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getFavoriteStickers',
  };

  factory GetFavoriteStickers.fromJson(Map<String, dynamic> json) => GetFavoriteStickers(
  );
}

/// Adds a new sticker to the list of favorite stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first. Only stickers belonging to a sticker set can be added to this list
class AddFavoriteSticker extends TdFunction {
  /// Sticker file to add
  final a.InputFile? sticker;

  AddFavoriteSticker({
    required this.sticker,
  });

  @override
  String toString() {
    var s = 'td::AddFavoriteSticker(';

    // Params
    final params = <String>[];
    params.add(sticker.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'addFavoriteSticker',
    'sticker': sticker?.toJson(),
  };

  factory AddFavoriteSticker.fromJson(Map<String, dynamic> json) => AddFavoriteSticker(
    sticker: b.TdBase.fromJson(json['sticker']) as a.InputFile?,
  );
}

/// Removes a sticker from the list of favorite stickers
class RemoveFavoriteSticker extends TdFunction {
  /// Sticker file to delete from the list
  final a.InputFile? sticker;

  RemoveFavoriteSticker({
    required this.sticker,
  });

  @override
  String toString() {
    var s = 'td::RemoveFavoriteSticker(';

    // Params
    final params = <String>[];
    params.add(sticker.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'removeFavoriteSticker',
    'sticker': sticker?.toJson(),
  };

  factory RemoveFavoriteSticker.fromJson(Map<String, dynamic> json) => RemoveFavoriteSticker(
    sticker: b.TdBase.fromJson(json['sticker']) as a.InputFile?,
  );
}

/// Returns emoji corresponding to a sticker. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object
class GetStickerEmojis extends TdFunction {
  /// Sticker file identifier
  final a.InputFile? sticker;

  GetStickerEmojis({
    required this.sticker,
  });

  @override
  String toString() {
    var s = 'td::GetStickerEmojis(';

    // Params
    final params = <String>[];
    params.add(sticker.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getStickerEmojis',
    'sticker': sticker?.toJson(),
  };

  factory GetStickerEmojis.fromJson(Map<String, dynamic> json) => GetStickerEmojis(
    sticker: b.TdBase.fromJson(json['sticker']) as a.InputFile?,
  );
}

/// Searches for emojis by keywords. Supported only if the file database is enabled
class SearchEmojis extends TdFunction {
  /// Text to search for
  final String text;
  /// True, if only emojis, which exactly match text needs to be returned
  final bool exactMatch;
  /// List of possible IETF language tags of the user's input language; may be empty if unknown
  final List<String> inputLanguageCodes;

  SearchEmojis({
    required this.text,
    required this.exactMatch,
    required this.inputLanguageCodes,
  });

  @override
  String toString() {
    var s = 'td::SearchEmojis(';

    // Params
    final params = <String>[];
    params.add(text.toString());
    params.add(exactMatch.toString());
    params.add(inputLanguageCodes.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchEmojis',
    'text': text,
    'exact_match': exactMatch,
    'input_language_codes': inputLanguageCodes.map((_e1) => _e1).toList(growable: false),
  };

  factory SearchEmojis.fromJson(Map<String, dynamic> json) => SearchEmojis(
    text: (json['text'] as String?) ?? '',
    exactMatch: (json['exact_match'] as bool?) ?? false,
    inputLanguageCodes: json['input_language_codes'] == null ? <String>[] : (json['input_language_codes'] as List<dynamic>).map((e) => ((e as String?) ?? '')).toList(growable: false),
  );
}

/// Returns an animated emoji corresponding to a given emoji. Returns a 404 error if the emoji has no animated emoji
class GetAnimatedEmoji extends TdFunction {
  /// The emoji
  final String emoji;

  GetAnimatedEmoji({
    required this.emoji,
  });

  @override
  String toString() {
    var s = 'td::GetAnimatedEmoji(';

    // Params
    final params = <String>[];
    params.add(emoji.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getAnimatedEmoji',
    'emoji': emoji,
  };

  factory GetAnimatedEmoji.fromJson(Map<String, dynamic> json) => GetAnimatedEmoji(
    emoji: (json['emoji'] as String?) ?? '',
  );
}

/// Returns an HTTP URL which can be used to automatically log in to the translation platform and suggest new emoji replacements. The URL will be valid for 30 seconds after generation
class GetEmojiSuggestionsUrl extends TdFunction {
  /// Language code for which the emoji replacements will be suggested
  final String languageCode;

  GetEmojiSuggestionsUrl({
    required this.languageCode,
  });

  @override
  String toString() {
    var s = 'td::GetEmojiSuggestionsUrl(';

    // Params
    final params = <String>[];
    params.add(languageCode.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getEmojiSuggestionsUrl',
    'language_code': languageCode,
  };

  factory GetEmojiSuggestionsUrl.fromJson(Map<String, dynamic> json) => GetEmojiSuggestionsUrl(
    languageCode: (json['language_code'] as String?) ?? '',
  );
}

/// Returns saved animations
class GetSavedAnimations extends TdFunction {
  GetSavedAnimations();

  @override
  String toString() {
    var s = 'td::GetSavedAnimations(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getSavedAnimations',
  };

  factory GetSavedAnimations.fromJson(Map<String, dynamic> json) => GetSavedAnimations(
  );
}

/// Manually adds a new animation to the list of saved animations. The new animation is added to the beginning of the list. If the animation was already in the list, it is removed first. Only non-secret video animations with MIME type "video/mp4" can be added to the list
class AddSavedAnimation extends TdFunction {
  /// The animation file to be added. Only animations known to the server (i.e., successfully sent via a message) can be added to the list
  final a.InputFile? animation;

  AddSavedAnimation({
    required this.animation,
  });

  @override
  String toString() {
    var s = 'td::AddSavedAnimation(';

    // Params
    final params = <String>[];
    params.add(animation.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'addSavedAnimation',
    'animation': animation?.toJson(),
  };

  factory AddSavedAnimation.fromJson(Map<String, dynamic> json) => AddSavedAnimation(
    animation: b.TdBase.fromJson(json['animation']) as a.InputFile?,
  );
}

/// Removes an animation from the list of saved animations
class RemoveSavedAnimation extends TdFunction {
  /// Animation file to be removed
  final a.InputFile? animation;

  RemoveSavedAnimation({
    required this.animation,
  });

  @override
  String toString() {
    var s = 'td::RemoveSavedAnimation(';

    // Params
    final params = <String>[];
    params.add(animation.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'removeSavedAnimation',
    'animation': animation?.toJson(),
  };

  factory RemoveSavedAnimation.fromJson(Map<String, dynamic> json) => RemoveSavedAnimation(
    animation: b.TdBase.fromJson(json['animation']) as a.InputFile?,
  );
}

/// Returns up to 20 recently used inline bots in the order of their last usage
class GetRecentInlineBots extends TdFunction {
  GetRecentInlineBots();

  @override
  String toString() {
    var s = 'td::GetRecentInlineBots(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getRecentInlineBots',
  };

  factory GetRecentInlineBots.fromJson(Map<String, dynamic> json) => GetRecentInlineBots(
  );
}

/// Searches for recently used hashtags by their prefix
class SearchHashtags extends TdFunction {
  /// Hashtag prefix to search for
  final String prefix;
  /// The maximum number of hashtags to be returned
  final int limit;

  SearchHashtags({
    required this.prefix,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::SearchHashtags(';

    // Params
    final params = <String>[];
    params.add(prefix.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchHashtags',
    'prefix': prefix,
    'limit': limit,
  };

  factory SearchHashtags.fromJson(Map<String, dynamic> json) => SearchHashtags(
    prefix: (json['prefix'] as String?) ?? '',
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Removes a hashtag from the list of recently used hashtags
class RemoveRecentHashtag extends TdFunction {
  /// Hashtag to delete
  final String hashtag;

  RemoveRecentHashtag({
    required this.hashtag,
  });

  @override
  String toString() {
    var s = 'td::RemoveRecentHashtag(';

    // Params
    final params = <String>[];
    params.add(hashtag.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'removeRecentHashtag',
    'hashtag': hashtag,
  };

  factory RemoveRecentHashtag.fromJson(Map<String, dynamic> json) => RemoveRecentHashtag(
    hashtag: (json['hashtag'] as String?) ?? '',
  );
}

/// Returns a web page preview by the text of the message. Do not call this function too often. Returns a 404 error if the web page has no preview
class GetWebPagePreview extends TdFunction {
  /// Message text with formatting
  final o.FormattedText? text;

  GetWebPagePreview({
    required this.text,
  });

  @override
  String toString() {
    var s = 'td::GetWebPagePreview(';

    // Params
    final params = <String>[];
    params.add(text.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getWebPagePreview',
    'text': text?.toJson(),
  };

  factory GetWebPagePreview.fromJson(Map<String, dynamic> json) => GetWebPagePreview(
    text: b.TdBase.fromJson(json['text']) as o.FormattedText?,
  );
}

/// Returns an instant view version of a web page if available. Returns a 404 error if the web page has no instant view page
class GetWebPageInstantView extends TdFunction {
  /// The web page URL
  final String url;
  /// If true, the full instant view for the web page will be returned
  final bool forceFull;

  GetWebPageInstantView({
    required this.url,
    required this.forceFull,
  });

  @override
  String toString() {
    var s = 'td::GetWebPageInstantView(';

    // Params
    final params = <String>[];
    params.add(url.toString());
    params.add(forceFull.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getWebPageInstantView',
    'url': url,
    'force_full': forceFull,
  };

  factory GetWebPageInstantView.fromJson(Map<String, dynamic> json) => GetWebPageInstantView(
    url: (json['url'] as String?) ?? '',
    forceFull: (json['force_full'] as bool?) ?? false,
  );
}

/// Changes a profile photo for the current user
class SetProfilePhoto extends TdFunction {
  /// Profile photo to set
  final a.InputChatPhoto? photo;

  SetProfilePhoto({
    required this.photo,
  });

  @override
  String toString() {
    var s = 'td::SetProfilePhoto(';

    // Params
    final params = <String>[];
    params.add(photo.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setProfilePhoto',
    'photo': photo?.toJson(),
  };

  factory SetProfilePhoto.fromJson(Map<String, dynamic> json) => SetProfilePhoto(
    photo: b.TdBase.fromJson(json['photo']) as a.InputChatPhoto?,
  );
}

/// Deletes a profile photo
class DeleteProfilePhoto extends TdFunction {
  /// Identifier of the profile photo to delete
  final int profilePhotoId;

  DeleteProfilePhoto({
    required this.profilePhotoId,
  });

  @override
  String toString() {
    var s = 'td::DeleteProfilePhoto(';

    // Params
    final params = <String>[];
    params.add(profilePhotoId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteProfilePhoto',
    'profile_photo_id': profilePhotoId.toString(),
  };

  factory DeleteProfilePhoto.fromJson(Map<String, dynamic> json) => DeleteProfilePhoto(
    profilePhotoId: int.parse(json['profile_photo_id'] ?? '0'),
  );
}

/// Changes the first and last name of the current user
class SetName extends TdFunction {
  /// The new value of the first name for the current user; 1-64 characters
  final String firstName;
  /// The new value of the optional last name for the current user; 0-64 characters
  final String lastName;

  SetName({
    required this.firstName,
    required this.lastName,
  });

  @override
  String toString() {
    var s = 'td::SetName(';

    // Params
    final params = <String>[];
    params.add(firstName.toString());
    params.add(lastName.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setName',
    'first_name': firstName,
    'last_name': lastName,
  };

  factory SetName.fromJson(Map<String, dynamic> json) => SetName(
    firstName: (json['first_name'] as String?) ?? '',
    lastName: (json['last_name'] as String?) ?? '',
  );
}

/// Changes the bio of the current user
class SetBio extends TdFunction {
  /// The new value of the user bio; 0-70 characters without line feeds
  final String bio;

  SetBio({
    required this.bio,
  });

  @override
  String toString() {
    var s = 'td::SetBio(';

    // Params
    final params = <String>[];
    params.add(bio.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setBio',
    'bio': bio,
  };

  factory SetBio.fromJson(Map<String, dynamic> json) => SetBio(
    bio: (json['bio'] as String?) ?? '',
  );
}

/// Changes the username of the current user
class SetUsername extends TdFunction {
  /// The new value of the username. Use an empty string to remove the username
  final String username;

  SetUsername({
    required this.username,
  });

  @override
  String toString() {
    var s = 'td::SetUsername(';

    // Params
    final params = <String>[];
    params.add(username.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setUsername',
    'username': username,
  };

  factory SetUsername.fromJson(Map<String, dynamic> json) => SetUsername(
    username: (json['username'] as String?) ?? '',
  );
}

/// Changes the location of the current user. Needs to be called if GetOption("is_location_visible") is true and location changes for more than 1 kilometer
class SetLocation extends TdFunction {
  /// The new location of the user
  final o.Location? location;

  SetLocation({
    required this.location,
  });

  @override
  String toString() {
    var s = 'td::SetLocation(';

    // Params
    final params = <String>[];
    params.add(location.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setLocation',
    'location': location?.toJson(),
  };

  factory SetLocation.fromJson(Map<String, dynamic> json) => SetLocation(
    location: b.TdBase.fromJson(json['location']) as o.Location?,
  );
}

/// Changes the phone number of the user and sends an authentication code to the user's new phone number. On success, returns information about the sent code
class ChangePhoneNumber extends TdFunction {
  /// The new phone number of the user in international format
  final String phoneNumber;
  /// Settings for the authentication of the user's phone number; pass null to use default settings
  final o.PhoneNumberAuthenticationSettings? settings;

  ChangePhoneNumber({
    required this.phoneNumber,
    required this.settings,
  });

  @override
  String toString() {
    var s = 'td::ChangePhoneNumber(';

    // Params
    final params = <String>[];
    params.add(phoneNumber.toString());
    params.add(settings.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'changePhoneNumber',
    'phone_number': phoneNumber,
    'settings': settings?.toJson(),
  };

  factory ChangePhoneNumber.fromJson(Map<String, dynamic> json) => ChangePhoneNumber(
    phoneNumber: (json['phone_number'] as String?) ?? '',
    settings: b.TdBase.fromJson(json['settings']) as o.PhoneNumberAuthenticationSettings?,
  );
}

/// Re-sends the authentication code sent to confirm a new phone number for the current user. Works only if the previously received authenticationCodeInfo next_code_type was not null and the server-specified timeout has passed
class ResendChangePhoneNumberCode extends TdFunction {
  ResendChangePhoneNumberCode();

  @override
  String toString() {
    var s = 'td::ResendChangePhoneNumberCode(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'resendChangePhoneNumberCode',
  };

  factory ResendChangePhoneNumberCode.fromJson(Map<String, dynamic> json) => ResendChangePhoneNumberCode(
  );
}

/// Checks the authentication code sent to confirm a new phone number of the user
class CheckChangePhoneNumberCode extends TdFunction {
  /// Authentication code to check
  final String code;

  CheckChangePhoneNumberCode({
    required this.code,
  });

  @override
  String toString() {
    var s = 'td::CheckChangePhoneNumberCode(';

    // Params
    final params = <String>[];
    params.add(code.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkChangePhoneNumberCode',
    'code': code,
  };

  factory CheckChangePhoneNumberCode.fromJson(Map<String, dynamic> json) => CheckChangePhoneNumberCode(
    code: (json['code'] as String?) ?? '',
  );
}

/// Sets the list of commands supported by the bot for the given user scope and language; for bots only
class SetCommands extends TdFunction {
  /// The scope to which the commands are relevant; pass null to change commands in the default bot command scope
  final a.BotCommandScope? scope;
  /// A two-letter ISO 639-1 country code. If empty, the commands will be applied to all users from the given scope, for which language there are no dedicated commands
  final String languageCode;
  /// List of the bot's commands
  final List<o.BotCommand?> commands;

  SetCommands({
    required this.scope,
    required this.languageCode,
    required this.commands,
  });

  @override
  String toString() {
    var s = 'td::SetCommands(';

    // Params
    final params = <String>[];
    params.add(scope.toString());
    params.add(languageCode.toString());
    params.add(commands.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setCommands',
    'scope': scope?.toJson(),
    'language_code': languageCode,
    'commands': commands.map((_e1) => _e1?.toJson()).toList(growable: false),
  };

  factory SetCommands.fromJson(Map<String, dynamic> json) => SetCommands(
    scope: b.TdBase.fromJson(json['scope']) as a.BotCommandScope?,
    languageCode: (json['language_code'] as String?) ?? '',
    commands: json['commands'] == null ? <o.BotCommand?>[] : (json['commands'] as List<dynamic>).map((e) => (b.TdBase.fromJson(e) as o.BotCommand?)).toList(growable: false),
  );
}

/// Deletes commands supported by the bot for the given user scope and language; for bots only
class DeleteCommands extends TdFunction {
  /// The scope to which the commands are relevant; pass null to delete commands in the default bot command scope
  final a.BotCommandScope? scope;
  /// A two-letter ISO 639-1 country code or an empty string
  final String languageCode;

  DeleteCommands({
    required this.scope,
    required this.languageCode,
  });

  @override
  String toString() {
    var s = 'td::DeleteCommands(';

    // Params
    final params = <String>[];
    params.add(scope.toString());
    params.add(languageCode.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteCommands',
    'scope': scope?.toJson(),
    'language_code': languageCode,
  };

  factory DeleteCommands.fromJson(Map<String, dynamic> json) => DeleteCommands(
    scope: b.TdBase.fromJson(json['scope']) as a.BotCommandScope?,
    languageCode: (json['language_code'] as String?) ?? '',
  );
}

/// Returns the list of commands supported by the bot for the given user scope and language; for bots only
class GetCommands extends TdFunction {
  /// The scope to which the commands are relevant; pass null to get commands in the default bot command scope
  final a.BotCommandScope? scope;
  /// A two-letter ISO 639-1 country code or an empty string
  final String languageCode;

  GetCommands({
    required this.scope,
    required this.languageCode,
  });

  @override
  String toString() {
    var s = 'td::GetCommands(';

    // Params
    final params = <String>[];
    params.add(scope.toString());
    params.add(languageCode.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getCommands',
    'scope': scope?.toJson(),
    'language_code': languageCode,
  };

  factory GetCommands.fromJson(Map<String, dynamic> json) => GetCommands(
    scope: b.TdBase.fromJson(json['scope']) as a.BotCommandScope?,
    languageCode: (json['language_code'] as String?) ?? '',
  );
}

/// Returns all active sessions of the current user
class GetActiveSessions extends TdFunction {
  GetActiveSessions();

  @override
  String toString() {
    var s = 'td::GetActiveSessions(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getActiveSessions',
  };

  factory GetActiveSessions.fromJson(Map<String, dynamic> json) => GetActiveSessions(
  );
}

/// Terminates a session of the current user
class TerminateSession extends TdFunction {
  /// Session identifier
  final int sessionId;

  TerminateSession({
    required this.sessionId,
  });

  @override
  String toString() {
    var s = 'td::TerminateSession(';

    // Params
    final params = <String>[];
    params.add(sessionId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'terminateSession',
    'session_id': sessionId.toString(),
  };

  factory TerminateSession.fromJson(Map<String, dynamic> json) => TerminateSession(
    sessionId: int.parse(json['session_id'] ?? '0'),
  );
}

/// Terminates all other sessions of the current user
class TerminateAllOtherSessions extends TdFunction {
  TerminateAllOtherSessions();

  @override
  String toString() {
    var s = 'td::TerminateAllOtherSessions(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'terminateAllOtherSessions',
  };

  factory TerminateAllOtherSessions.fromJson(Map<String, dynamic> json) => TerminateAllOtherSessions(
  );
}

/// Toggles whether a session can accept incoming calls
class ToggleSessionCanAcceptCalls extends TdFunction {
  /// Session identifier
  final int sessionId;
  /// True, if incoming calls can be accepted by the session
  final bool canAcceptCalls;

  ToggleSessionCanAcceptCalls({
    required this.sessionId,
    required this.canAcceptCalls,
  });

  @override
  String toString() {
    var s = 'td::ToggleSessionCanAcceptCalls(';

    // Params
    final params = <String>[];
    params.add(sessionId.toString());
    params.add(canAcceptCalls.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleSessionCanAcceptCalls',
    'session_id': sessionId.toString(),
    'can_accept_calls': canAcceptCalls,
  };

  factory ToggleSessionCanAcceptCalls.fromJson(Map<String, dynamic> json) => ToggleSessionCanAcceptCalls(
    sessionId: int.parse(json['session_id'] ?? '0'),
    canAcceptCalls: (json['can_accept_calls'] as bool?) ?? false,
  );
}

/// Toggles whether a session can accept incoming secret chats
class ToggleSessionCanAcceptSecretChats extends TdFunction {
  /// Session identifier
  final int sessionId;
  /// True, if incoming secret chats can be accepted by the session
  final bool canAcceptSecretChats;

  ToggleSessionCanAcceptSecretChats({
    required this.sessionId,
    required this.canAcceptSecretChats,
  });

  @override
  String toString() {
    var s = 'td::ToggleSessionCanAcceptSecretChats(';

    // Params
    final params = <String>[];
    params.add(sessionId.toString());
    params.add(canAcceptSecretChats.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleSessionCanAcceptSecretChats',
    'session_id': sessionId.toString(),
    'can_accept_secret_chats': canAcceptSecretChats,
  };

  factory ToggleSessionCanAcceptSecretChats.fromJson(Map<String, dynamic> json) => ToggleSessionCanAcceptSecretChats(
    sessionId: int.parse(json['session_id'] ?? '0'),
    canAcceptSecretChats: (json['can_accept_secret_chats'] as bool?) ?? false,
  );
}

/// Changes the period of inactivity after which sessions will automatically be terminated
class SetInactiveSessionTtl extends TdFunction {
  /// New number of days of inactivity before sessions will be automatically terminated; 1-366 days
  final int inactiveSessionTtlDays;

  SetInactiveSessionTtl({
    required this.inactiveSessionTtlDays,
  });

  @override
  String toString() {
    var s = 'td::SetInactiveSessionTtl(';

    // Params
    final params = <String>[];
    params.add(inactiveSessionTtlDays.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setInactiveSessionTtl',
    'inactive_session_ttl_days': inactiveSessionTtlDays,
  };

  factory SetInactiveSessionTtl.fromJson(Map<String, dynamic> json) => SetInactiveSessionTtl(
    inactiveSessionTtlDays: (json['inactive_session_ttl_days'] as int?) ?? 0,
  );
}

/// Returns all website where the current user used Telegram to log in
class GetConnectedWebsites extends TdFunction {
  GetConnectedWebsites();

  @override
  String toString() {
    var s = 'td::GetConnectedWebsites(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getConnectedWebsites',
  };

  factory GetConnectedWebsites.fromJson(Map<String, dynamic> json) => GetConnectedWebsites(
  );
}

/// Disconnects website from the current user's Telegram account
class DisconnectWebsite extends TdFunction {
  /// Website identifier
  final int websiteId;

  DisconnectWebsite({
    required this.websiteId,
  });

  @override
  String toString() {
    var s = 'td::DisconnectWebsite(';

    // Params
    final params = <String>[];
    params.add(websiteId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'disconnectWebsite',
    'website_id': websiteId.toString(),
  };

  factory DisconnectWebsite.fromJson(Map<String, dynamic> json) => DisconnectWebsite(
    websiteId: int.parse(json['website_id'] ?? '0'),
  );
}

/// Disconnects all websites from the current user's Telegram account
class DisconnectAllWebsites extends TdFunction {
  DisconnectAllWebsites();

  @override
  String toString() {
    var s = 'td::DisconnectAllWebsites(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'disconnectAllWebsites',
  };

  factory DisconnectAllWebsites.fromJson(Map<String, dynamic> json) => DisconnectAllWebsites(
  );
}

/// Changes the username of a supergroup or channel, requires owner privileges in the supergroup or channel
class SetSupergroupUsername extends TdFunction {
  /// Identifier of the supergroup or channel
  final int supergroupId;
  /// New value of the username. Use an empty string to remove the username
  final String username;

  SetSupergroupUsername({
    required this.supergroupId,
    required this.username,
  });

  @override
  String toString() {
    var s = 'td::SetSupergroupUsername(';

    // Params
    final params = <String>[];
    params.add(supergroupId.toString());
    params.add(username.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setSupergroupUsername',
    'supergroup_id': supergroupId,
    'username': username,
  };

  factory SetSupergroupUsername.fromJson(Map<String, dynamic> json) => SetSupergroupUsername(
    supergroupId: (json['supergroup_id'] as int?) ?? 0,
    username: (json['username'] as String?) ?? '',
  );
}

/// Changes the sticker set of a supergroup; requires can_change_info administrator right
class SetSupergroupStickerSet extends TdFunction {
  /// Identifier of the supergroup
  final int supergroupId;
  /// New value of the supergroup sticker set identifier. Use 0 to remove the supergroup sticker set
  final int stickerSetId;

  SetSupergroupStickerSet({
    required this.supergroupId,
    required this.stickerSetId,
  });

  @override
  String toString() {
    var s = 'td::SetSupergroupStickerSet(';

    // Params
    final params = <String>[];
    params.add(supergroupId.toString());
    params.add(stickerSetId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setSupergroupStickerSet',
    'supergroup_id': supergroupId,
    'sticker_set_id': stickerSetId.toString(),
  };

  factory SetSupergroupStickerSet.fromJson(Map<String, dynamic> json) => SetSupergroupStickerSet(
    supergroupId: (json['supergroup_id'] as int?) ?? 0,
    stickerSetId: int.parse(json['sticker_set_id'] ?? '0'),
  );
}

/// Toggles whether sender signature is added to sent messages in a channel; requires can_change_info administrator right
class ToggleSupergroupSignMessages extends TdFunction {
  /// Identifier of the channel
  final int supergroupId;
  /// New value of sign_messages
  final bool signMessages;

  ToggleSupergroupSignMessages({
    required this.supergroupId,
    required this.signMessages,
  });

  @override
  String toString() {
    var s = 'td::ToggleSupergroupSignMessages(';

    // Params
    final params = <String>[];
    params.add(supergroupId.toString());
    params.add(signMessages.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleSupergroupSignMessages',
    'supergroup_id': supergroupId,
    'sign_messages': signMessages,
  };

  factory ToggleSupergroupSignMessages.fromJson(Map<String, dynamic> json) => ToggleSupergroupSignMessages(
    supergroupId: (json['supergroup_id'] as int?) ?? 0,
    signMessages: (json['sign_messages'] as bool?) ?? false,
  );
}

/// Toggles whether the message history of a supergroup is available to new members; requires can_change_info administrator right
class ToggleSupergroupIsAllHistoryAvailable extends TdFunction {
  /// The identifier of the supergroup
  final int supergroupId;
  /// The new value of is_all_history_available
  final bool isAllHistoryAvailable;

  ToggleSupergroupIsAllHistoryAvailable({
    required this.supergroupId,
    required this.isAllHistoryAvailable,
  });

  @override
  String toString() {
    var s = 'td::ToggleSupergroupIsAllHistoryAvailable(';

    // Params
    final params = <String>[];
    params.add(supergroupId.toString());
    params.add(isAllHistoryAvailable.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleSupergroupIsAllHistoryAvailable',
    'supergroup_id': supergroupId,
    'is_all_history_available': isAllHistoryAvailable,
  };

  factory ToggleSupergroupIsAllHistoryAvailable.fromJson(Map<String, dynamic> json) => ToggleSupergroupIsAllHistoryAvailable(
    supergroupId: (json['supergroup_id'] as int?) ?? 0,
    isAllHistoryAvailable: (json['is_all_history_available'] as bool?) ?? false,
  );
}

/// Upgrades supergroup to a broadcast group; requires owner privileges in the supergroup
class ToggleSupergroupIsBroadcastGroup extends TdFunction {
  /// Identifier of the supergroup
  final int supergroupId;

  ToggleSupergroupIsBroadcastGroup({
    required this.supergroupId,
  });

  @override
  String toString() {
    var s = 'td::ToggleSupergroupIsBroadcastGroup(';

    // Params
    final params = <String>[];
    params.add(supergroupId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'toggleSupergroupIsBroadcastGroup',
    'supergroup_id': supergroupId,
  };

  factory ToggleSupergroupIsBroadcastGroup.fromJson(Map<String, dynamic> json) => ToggleSupergroupIsBroadcastGroup(
    supergroupId: (json['supergroup_id'] as int?) ?? 0,
  );
}

/// Reports messages in a supergroup as spam; requires administrator rights in the supergroup
class ReportSupergroupSpam extends TdFunction {
  /// Supergroup identifier
  final int supergroupId;
  /// Identifiers of messages to report
  final List<int> messageIds;

  ReportSupergroupSpam({
    required this.supergroupId,
    required this.messageIds,
  });

  @override
  String toString() {
    var s = 'td::ReportSupergroupSpam(';

    // Params
    final params = <String>[];
    params.add(supergroupId.toString());
    params.add(messageIds.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'reportSupergroupSpam',
    'supergroup_id': supergroupId,
    'message_ids': messageIds.map((_e1) => _e1).toList(growable: false),
  };

  factory ReportSupergroupSpam.fromJson(Map<String, dynamic> json) => ReportSupergroupSpam(
    supergroupId: (json['supergroup_id'] as int?) ?? 0,
    messageIds: json['message_ids'] == null ? <int>[] : (json['message_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
  );
}

/// Returns information about members or banned users in a supergroup or channel. Can be used only if supergroupFullInfo.can_get_members == true; additionally, administrator privileges may be required for some filters
class GetSupergroupMembers extends TdFunction {
  /// Identifier of the supergroup or channel
  final int supergroupId;
  /// The type of users to return; pass null to use supergroupMembersFilterRecent
  final a.SupergroupMembersFilter? filter;
  /// Number of users to skip
  final int offset;
  /// The maximum number of users be returned; up to 200
  final int limit;

  GetSupergroupMembers({
    required this.supergroupId,
    required this.filter,
    required this.offset,
    required this.limit,
  });

  @override
  String toString() {
    var s = 'td::GetSupergroupMembers(';

    // Params
    final params = <String>[];
    params.add(supergroupId.toString());
    params.add(filter.toString());
    params.add(offset.toString());
    params.add(limit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getSupergroupMembers',
    'supergroup_id': supergroupId,
    'filter': filter?.toJson(),
    'offset': offset,
    'limit': limit,
  };

  factory GetSupergroupMembers.fromJson(Map<String, dynamic> json) => GetSupergroupMembers(
    supergroupId: (json['supergroup_id'] as int?) ?? 0,
    filter: b.TdBase.fromJson(json['filter']) as a.SupergroupMembersFilter?,
    offset: (json['offset'] as int?) ?? 0,
    limit: (json['limit'] as int?) ?? 0,
  );
}

/// Closes a secret chat, effectively transferring its state to secretChatStateClosed
class CloseSecretChat extends TdFunction {
  /// Secret chat identifier
  final int secretChatId;

  CloseSecretChat({
    required this.secretChatId,
  });

  @override
  String toString() {
    var s = 'td::CloseSecretChat(';

    // Params
    final params = <String>[];
    params.add(secretChatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'closeSecretChat',
    'secret_chat_id': secretChatId,
  };

  factory CloseSecretChat.fromJson(Map<String, dynamic> json) => CloseSecretChat(
    secretChatId: (json['secret_chat_id'] as int?) ?? 0,
  );
}

/// Returns a list of service actions taken by chat members and administrators in the last 48 hours. Available only for supergroups and channels. Requires administrator rights. Returns results in reverse chronological order (i. e., in order of decreasing event_id)
class GetChatEventLog extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Search query by which to filter events
  final String query;
  /// Identifier of an event from which to return results. Use 0 to get results from the latest events
  final int fromEventId;
  /// The maximum number of events to return; up to 100
  final int limit;
  /// The types of events to return; pass null to get chat events of all types
  final o.ChatEventLogFilters? filters;
  /// User identifiers by which to filter events. By default, events relating to all users will be returned
  final List<int> userIds;

  GetChatEventLog({
    required this.chatId,
    required this.query,
    required this.fromEventId,
    required this.limit,
    required this.filters,
    required this.userIds,
  });

  @override
  String toString() {
    var s = 'td::GetChatEventLog(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(query.toString());
    params.add(fromEventId.toString());
    params.add(limit.toString());
    params.add(filters.toString());
    params.add(userIds.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatEventLog',
    'chat_id': chatId,
    'query': query,
    'from_event_id': fromEventId.toString(),
    'limit': limit,
    'filters': filters?.toJson(),
    'user_ids': userIds.map((_e1) => _e1).toList(growable: false),
  };

  factory GetChatEventLog.fromJson(Map<String, dynamic> json) => GetChatEventLog(
    chatId: (json['chat_id'] as int?) ?? 0,
    query: (json['query'] as String?) ?? '',
    fromEventId: int.parse(json['from_event_id'] ?? '0'),
    limit: (json['limit'] as int?) ?? 0,
    filters: b.TdBase.fromJson(json['filters']) as o.ChatEventLogFilters?,
    userIds: json['user_ids'] == null ? <int>[] : (json['user_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
  );
}

/// Returns an invoice payment form. This method must be called when the user presses inlineKeyboardButtonBuy
class GetPaymentForm extends TdFunction {
  /// Chat identifier of the Invoice message
  final int chatId;
  /// Message identifier
  final int messageId;
  /// Preferred payment form theme; pass null to use the default theme
  final o.PaymentFormTheme? theme;

  GetPaymentForm({
    required this.chatId,
    required this.messageId,
    required this.theme,
  });

  @override
  String toString() {
    var s = 'td::GetPaymentForm(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(theme.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getPaymentForm',
    'chat_id': chatId,
    'message_id': messageId,
    'theme': theme?.toJson(),
  };

  factory GetPaymentForm.fromJson(Map<String, dynamic> json) => GetPaymentForm(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    theme: b.TdBase.fromJson(json['theme']) as o.PaymentFormTheme?,
  );
}

/// Validates the order information provided by a user and returns the available shipping options for a flexible invoice
class ValidateOrderInfo extends TdFunction {
  /// Chat identifier of the Invoice message
  final int chatId;
  /// Message identifier
  final int messageId;
  /// The order information, provided by the user; pass null if empty
  final o.OrderInfo? orderInfo;
  /// True, if the order information can be saved
  final bool allowSave;

  ValidateOrderInfo({
    required this.chatId,
    required this.messageId,
    required this.orderInfo,
    required this.allowSave,
  });

  @override
  String toString() {
    var s = 'td::ValidateOrderInfo(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(orderInfo.toString());
    params.add(allowSave.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'validateOrderInfo',
    'chat_id': chatId,
    'message_id': messageId,
    'order_info': orderInfo?.toJson(),
    'allow_save': allowSave,
  };

  factory ValidateOrderInfo.fromJson(Map<String, dynamic> json) => ValidateOrderInfo(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    orderInfo: b.TdBase.fromJson(json['order_info']) as o.OrderInfo?,
    allowSave: (json['allow_save'] as bool?) ?? false,
  );
}

/// Sends a filled-out payment form to the bot for final verification
class SendPaymentForm extends TdFunction {
  /// Chat identifier of the Invoice message
  final int chatId;
  /// Message identifier
  final int messageId;
  /// Payment form identifier returned by getPaymentForm
  final int paymentFormId;
  /// Identifier returned by validateOrderInfo, or an empty string
  final String orderInfoId;
  /// Identifier of a chosen shipping option, if applicable
  final String shippingOptionId;
  /// The credentials chosen by user for payment
  final a.InputCredentials? credentials;
  /// Chosen by the user amount of tip in the smallest units of the currency
  final int tipAmount;

  SendPaymentForm({
    required this.chatId,
    required this.messageId,
    required this.paymentFormId,
    required this.orderInfoId,
    required this.shippingOptionId,
    required this.credentials,
    required this.tipAmount,
  });

  @override
  String toString() {
    var s = 'td::SendPaymentForm(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(paymentFormId.toString());
    params.add(orderInfoId.toString());
    params.add(shippingOptionId.toString());
    params.add(credentials.toString());
    params.add(tipAmount.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sendPaymentForm',
    'chat_id': chatId,
    'message_id': messageId,
    'payment_form_id': paymentFormId.toString(),
    'order_info_id': orderInfoId,
    'shipping_option_id': shippingOptionId,
    'credentials': credentials?.toJson(),
    'tip_amount': tipAmount,
  };

  factory SendPaymentForm.fromJson(Map<String, dynamic> json) => SendPaymentForm(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    paymentFormId: int.parse(json['payment_form_id'] ?? '0'),
    orderInfoId: (json['order_info_id'] as String?) ?? '',
    shippingOptionId: (json['shipping_option_id'] as String?) ?? '',
    credentials: b.TdBase.fromJson(json['credentials']) as a.InputCredentials?,
    tipAmount: (json['tip_amount'] as int?) ?? 0,
  );
}

/// Returns information about a successful payment
class GetPaymentReceipt extends TdFunction {
  /// Chat identifier of the PaymentSuccessful message
  final int chatId;
  /// Message identifier
  final int messageId;

  GetPaymentReceipt({
    required this.chatId,
    required this.messageId,
  });

  @override
  String toString() {
    var s = 'td::GetPaymentReceipt(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getPaymentReceipt',
    'chat_id': chatId,
    'message_id': messageId,
  };

  factory GetPaymentReceipt.fromJson(Map<String, dynamic> json) => GetPaymentReceipt(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
  );
}

/// Returns saved order info, if any
class GetSavedOrderInfo extends TdFunction {
  GetSavedOrderInfo();

  @override
  String toString() {
    var s = 'td::GetSavedOrderInfo(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getSavedOrderInfo',
  };

  factory GetSavedOrderInfo.fromJson(Map<String, dynamic> json) => GetSavedOrderInfo(
  );
}

/// Deletes saved order info
class DeleteSavedOrderInfo extends TdFunction {
  DeleteSavedOrderInfo();

  @override
  String toString() {
    var s = 'td::DeleteSavedOrderInfo(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteSavedOrderInfo',
  };

  factory DeleteSavedOrderInfo.fromJson(Map<String, dynamic> json) => DeleteSavedOrderInfo(
  );
}

/// Deletes saved credentials for all payment provider bots
class DeleteSavedCredentials extends TdFunction {
  DeleteSavedCredentials();

  @override
  String toString() {
    var s = 'td::DeleteSavedCredentials(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteSavedCredentials',
  };

  factory DeleteSavedCredentials.fromJson(Map<String, dynamic> json) => DeleteSavedCredentials(
  );
}

/// Returns a user that can be contacted to get support
class GetSupportUser extends TdFunction {
  GetSupportUser();

  @override
  String toString() {
    var s = 'td::GetSupportUser(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getSupportUser',
  };

  factory GetSupportUser.fromJson(Map<String, dynamic> json) => GetSupportUser(
  );
}

/// Returns backgrounds installed by the user
class GetBackgrounds extends TdFunction {
  /// True, if the backgrounds must be ordered for dark theme
  final bool forDarkTheme;

  GetBackgrounds({
    required this.forDarkTheme,
  });

  @override
  String toString() {
    var s = 'td::GetBackgrounds(';

    // Params
    final params = <String>[];
    params.add(forDarkTheme.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getBackgrounds',
    'for_dark_theme': forDarkTheme,
  };

  factory GetBackgrounds.fromJson(Map<String, dynamic> json) => GetBackgrounds(
    forDarkTheme: (json['for_dark_theme'] as bool?) ?? false,
  );
}

/// Constructs a persistent HTTP URL for a background
class GetBackgroundUrl extends TdFunction {
  /// Background name
  final String name;
  /// Background type
  final a.BackgroundType? type;

  GetBackgroundUrl({
    required this.name,
    required this.type,
  });

  @override
  String toString() {
    var s = 'td::GetBackgroundUrl(';

    // Params
    final params = <String>[];
    params.add(name.toString());
    params.add(type.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getBackgroundUrl',
    'name': name,
    'type': type?.toJson(),
  };

  factory GetBackgroundUrl.fromJson(Map<String, dynamic> json) => GetBackgroundUrl(
    name: (json['name'] as String?) ?? '',
    type: b.TdBase.fromJson(json['type']) as a.BackgroundType?,
  );
}

/// Searches for a background by its name
class SearchBackground extends TdFunction {
  /// The name of the background
  final String name;

  SearchBackground({
    required this.name,
  });

  @override
  String toString() {
    var s = 'td::SearchBackground(';

    // Params
    final params = <String>[];
    params.add(name.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchBackground',
    'name': name,
  };

  factory SearchBackground.fromJson(Map<String, dynamic> json) => SearchBackground(
    name: (json['name'] as String?) ?? '',
  );
}

/// Changes the background selected by the user; adds background to the list of installed backgrounds
class SetBackground extends TdFunction {
  /// The input background to use; pass null to create a new filled backgrounds or to remove the current background
  final a.InputBackground? background;
  /// Background type; pass null to use the default type of the remote background or to remove the current background
  final a.BackgroundType? type;
  /// True, if the background is chosen for dark theme
  final bool forDarkTheme;

  SetBackground({
    required this.background,
    required this.type,
    required this.forDarkTheme,
  });

  @override
  String toString() {
    var s = 'td::SetBackground(';

    // Params
    final params = <String>[];
    params.add(background.toString());
    params.add(type.toString());
    params.add(forDarkTheme.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setBackground',
    'background': background?.toJson(),
    'type': type?.toJson(),
    'for_dark_theme': forDarkTheme,
  };

  factory SetBackground.fromJson(Map<String, dynamic> json) => SetBackground(
    background: b.TdBase.fromJson(json['background']) as a.InputBackground?,
    type: b.TdBase.fromJson(json['type']) as a.BackgroundType?,
    forDarkTheme: (json['for_dark_theme'] as bool?) ?? false,
  );
}

/// Removes background from the list of installed backgrounds
class RemoveBackground extends TdFunction {
  /// The background identifier
  final int backgroundId;

  RemoveBackground({
    required this.backgroundId,
  });

  @override
  String toString() {
    var s = 'td::RemoveBackground(';

    // Params
    final params = <String>[];
    params.add(backgroundId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'removeBackground',
    'background_id': backgroundId.toString(),
  };

  factory RemoveBackground.fromJson(Map<String, dynamic> json) => RemoveBackground(
    backgroundId: int.parse(json['background_id'] ?? '0'),
  );
}

/// Resets list of installed backgrounds to its default value
class ResetBackgrounds extends TdFunction {
  ResetBackgrounds();

  @override
  String toString() {
    var s = 'td::ResetBackgrounds(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'resetBackgrounds',
  };

  factory ResetBackgrounds.fromJson(Map<String, dynamic> json) => ResetBackgrounds(
  );
}

/// Returns information about the current localization target. This is an offline request if only_local is true. Can be called before authorization
class GetLocalizationTargetInfo extends TdFunction {
  /// If true, returns only locally available information without sending network requests
  final bool onlyLocal;

  GetLocalizationTargetInfo({
    required this.onlyLocal,
  });

  @override
  String toString() {
    var s = 'td::GetLocalizationTargetInfo(';

    // Params
    final params = <String>[];
    params.add(onlyLocal.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getLocalizationTargetInfo',
    'only_local': onlyLocal,
  };

  factory GetLocalizationTargetInfo.fromJson(Map<String, dynamic> json) => GetLocalizationTargetInfo(
    onlyLocal: (json['only_local'] as bool?) ?? false,
  );
}

/// Returns information about a language pack. Returned language pack identifier may be different from a provided one. Can be called before authorization
class GetLanguagePackInfo extends TdFunction {
  /// Language pack identifier
  final String languagePackId;

  GetLanguagePackInfo({
    required this.languagePackId,
  });

  @override
  String toString() {
    var s = 'td::GetLanguagePackInfo(';

    // Params
    final params = <String>[];
    params.add(languagePackId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getLanguagePackInfo',
    'language_pack_id': languagePackId,
  };

  factory GetLanguagePackInfo.fromJson(Map<String, dynamic> json) => GetLanguagePackInfo(
    languagePackId: (json['language_pack_id'] as String?) ?? '',
  );
}

/// Returns strings from a language pack in the current localization target by their keys. Can be called before authorization
class GetLanguagePackStrings extends TdFunction {
  /// Language pack identifier of the strings to be returned
  final String languagePackId;
  /// Language pack keys of the strings to be returned; leave empty to request all available strings
  final List<String> keys;

  GetLanguagePackStrings({
    required this.languagePackId,
    required this.keys,
  });

  @override
  String toString() {
    var s = 'td::GetLanguagePackStrings(';

    // Params
    final params = <String>[];
    params.add(languagePackId.toString());
    params.add(keys.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getLanguagePackStrings',
    'language_pack_id': languagePackId,
    'keys': keys.map((_e1) => _e1).toList(growable: false),
  };

  factory GetLanguagePackStrings.fromJson(Map<String, dynamic> json) => GetLanguagePackStrings(
    languagePackId: (json['language_pack_id'] as String?) ?? '',
    keys: json['keys'] == null ? <String>[] : (json['keys'] as List<dynamic>).map((e) => ((e as String?) ?? '')).toList(growable: false),
  );
}

/// Fetches the latest versions of all strings from a language pack in the current localization target from the server. This method doesn't need to be called explicitly for the current used/base language packs. Can be called before authorization
class SynchronizeLanguagePack extends TdFunction {
  /// Language pack identifier
  final String languagePackId;

  SynchronizeLanguagePack({
    required this.languagePackId,
  });

  @override
  String toString() {
    var s = 'td::SynchronizeLanguagePack(';

    // Params
    final params = <String>[];
    params.add(languagePackId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'synchronizeLanguagePack',
    'language_pack_id': languagePackId,
  };

  factory SynchronizeLanguagePack.fromJson(Map<String, dynamic> json) => SynchronizeLanguagePack(
    languagePackId: (json['language_pack_id'] as String?) ?? '',
  );
}

/// Adds a custom server language pack to the list of installed language packs in current localization target. Can be called before authorization
class AddCustomServerLanguagePack extends TdFunction {
  /// Identifier of a language pack to be added; may be different from a name that is used in an "https://t.me/setlanguage/" link
  final String languagePackId;

  AddCustomServerLanguagePack({
    required this.languagePackId,
  });

  @override
  String toString() {
    var s = 'td::AddCustomServerLanguagePack(';

    // Params
    final params = <String>[];
    params.add(languagePackId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'addCustomServerLanguagePack',
    'language_pack_id': languagePackId,
  };

  factory AddCustomServerLanguagePack.fromJson(Map<String, dynamic> json) => AddCustomServerLanguagePack(
    languagePackId: (json['language_pack_id'] as String?) ?? '',
  );
}

/// Adds or changes a custom local language pack to the current localization target
class SetCustomLanguagePack extends TdFunction {
  /// Information about the language pack. Language pack ID must start with 'X', consist only of English letters, digits and hyphens, and must not exceed 64 characters. Can be called before authorization
  final o.LanguagePackInfo? info;
  /// Strings of the new language pack
  final List<o.LanguagePackString?> strings;

  SetCustomLanguagePack({
    required this.info,
    required this.strings,
  });

  @override
  String toString() {
    var s = 'td::SetCustomLanguagePack(';

    // Params
    final params = <String>[];
    params.add(info.toString());
    params.add(strings.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setCustomLanguagePack',
    'info': info?.toJson(),
    'strings': strings.map((_e1) => _e1?.toJson()).toList(growable: false),
  };

  factory SetCustomLanguagePack.fromJson(Map<String, dynamic> json) => SetCustomLanguagePack(
    info: b.TdBase.fromJson(json['info']) as o.LanguagePackInfo?,
    strings: json['strings'] == null ? <o.LanguagePackString?>[] : (json['strings'] as List<dynamic>).map((e) => (b.TdBase.fromJson(e) as o.LanguagePackString?)).toList(growable: false),
  );
}

/// Edits information about a custom local language pack in the current localization target. Can be called before authorization
class EditCustomLanguagePackInfo extends TdFunction {
  /// New information about the custom local language pack
  final o.LanguagePackInfo? info;

  EditCustomLanguagePackInfo({
    required this.info,
  });

  @override
  String toString() {
    var s = 'td::EditCustomLanguagePackInfo(';

    // Params
    final params = <String>[];
    params.add(info.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'editCustomLanguagePackInfo',
    'info': info?.toJson(),
  };

  factory EditCustomLanguagePackInfo.fromJson(Map<String, dynamic> json) => EditCustomLanguagePackInfo(
    info: b.TdBase.fromJson(json['info']) as o.LanguagePackInfo?,
  );
}

/// Adds, edits or deletes a string in a custom local language pack. Can be called before authorization
class SetCustomLanguagePackString extends TdFunction {
  /// Identifier of a previously added custom local language pack in the current localization target
  final String languagePackId;
  /// New language pack string
  final o.LanguagePackString? newString;

  SetCustomLanguagePackString({
    required this.languagePackId,
    required this.newString,
  });

  @override
  String toString() {
    var s = 'td::SetCustomLanguagePackString(';

    // Params
    final params = <String>[];
    params.add(languagePackId.toString());
    params.add(newString.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setCustomLanguagePackString',
    'language_pack_id': languagePackId,
    'new_string': newString?.toJson(),
  };

  factory SetCustomLanguagePackString.fromJson(Map<String, dynamic> json) => SetCustomLanguagePackString(
    languagePackId: (json['language_pack_id'] as String?) ?? '',
    newString: b.TdBase.fromJson(json['new_string']) as o.LanguagePackString?,
  );
}

/// Deletes all information about a language pack in the current localization target. The language pack which is currently in use (including base language pack) or is being synchronized can't be deleted. Can be called before authorization
class DeleteLanguagePack extends TdFunction {
  /// Identifier of the language pack to delete
  final String languagePackId;

  DeleteLanguagePack({
    required this.languagePackId,
  });

  @override
  String toString() {
    var s = 'td::DeleteLanguagePack(';

    // Params
    final params = <String>[];
    params.add(languagePackId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteLanguagePack',
    'language_pack_id': languagePackId,
  };

  factory DeleteLanguagePack.fromJson(Map<String, dynamic> json) => DeleteLanguagePack(
    languagePackId: (json['language_pack_id'] as String?) ?? '',
  );
}

/// Registers the currently used device for receiving push notifications. Returns a globally unique identifier of the push notification subscription
class RegisterDevice extends TdFunction {
  /// Device token
  final a.DeviceToken? deviceToken;
  /// List of user identifiers of other users currently using the application
  final List<int> otherUserIds;

  RegisterDevice({
    required this.deviceToken,
    required this.otherUserIds,
  });

  @override
  String toString() {
    var s = 'td::RegisterDevice(';

    // Params
    final params = <String>[];
    params.add(deviceToken.toString());
    params.add(otherUserIds.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'registerDevice',
    'device_token': deviceToken?.toJson(),
    'other_user_ids': otherUserIds.map((_e1) => _e1).toList(growable: false),
  };

  factory RegisterDevice.fromJson(Map<String, dynamic> json) => RegisterDevice(
    deviceToken: b.TdBase.fromJson(json['device_token']) as a.DeviceToken?,
    otherUserIds: json['other_user_ids'] == null ? <int>[] : (json['other_user_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
  );
}

/// Handles a push notification. Returns error with code 406 if the push notification is not supported and connection to the server is required to fetch new data. Can be called before authorization
class ProcessPushNotification extends TdFunction {
  /// JSON-encoded push notification payload with all fields sent by the server, and "google.sent_time" and "google.notification.sound" fields added
  final String payload;

  ProcessPushNotification({
    required this.payload,
  });

  @override
  String toString() {
    var s = 'td::ProcessPushNotification(';

    // Params
    final params = <String>[];
    params.add(payload.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'processPushNotification',
    'payload': payload,
  };

  factory ProcessPushNotification.fromJson(Map<String, dynamic> json) => ProcessPushNotification(
    payload: (json['payload'] as String?) ?? '',
  );
}

/// Returns a globally unique push notification subscription identifier for identification of an account, which has received a push notification. Can be called synchronously
class GetPushReceiverId extends TdFunction {
  /// JSON-encoded push notification payload
  final String payload;

  GetPushReceiverId({
    required this.payload,
  });

  @override
  String toString() {
    var s = 'td::GetPushReceiverId(';

    // Params
    final params = <String>[];
    params.add(payload.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getPushReceiverId',
    'payload': payload,
  };

  factory GetPushReceiverId.fromJson(Map<String, dynamic> json) => GetPushReceiverId(
    payload: (json['payload'] as String?) ?? '',
  );
}

/// Returns t.me URLs recently visited by a newly registered user
class GetRecentlyVisitedTMeUrls extends TdFunction {
  /// Google Play referrer to identify the user
  final String referrer;

  GetRecentlyVisitedTMeUrls({
    required this.referrer,
  });

  @override
  String toString() {
    var s = 'td::GetRecentlyVisitedTMeUrls(';

    // Params
    final params = <String>[];
    params.add(referrer.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getRecentlyVisitedTMeUrls',
    'referrer': referrer,
  };

  factory GetRecentlyVisitedTMeUrls.fromJson(Map<String, dynamic> json) => GetRecentlyVisitedTMeUrls(
    referrer: (json['referrer'] as String?) ?? '',
  );
}

/// Changes user privacy settings
class SetUserPrivacySettingRules extends TdFunction {
  /// The privacy setting
  final a.UserPrivacySetting? setting;
  /// The new privacy rules
  final o.UserPrivacySettingRules? rules;

  SetUserPrivacySettingRules({
    required this.setting,
    required this.rules,
  });

  @override
  String toString() {
    var s = 'td::SetUserPrivacySettingRules(';

    // Params
    final params = <String>[];
    params.add(setting.toString());
    params.add(rules.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setUserPrivacySettingRules',
    'setting': setting?.toJson(),
    'rules': rules?.toJson(),
  };

  factory SetUserPrivacySettingRules.fromJson(Map<String, dynamic> json) => SetUserPrivacySettingRules(
    setting: b.TdBase.fromJson(json['setting']) as a.UserPrivacySetting?,
    rules: b.TdBase.fromJson(json['rules']) as o.UserPrivacySettingRules?,
  );
}

/// Returns the current privacy settings
class GetUserPrivacySettingRules extends TdFunction {
  /// The privacy setting
  final a.UserPrivacySetting? setting;

  GetUserPrivacySettingRules({
    required this.setting,
  });

  @override
  String toString() {
    var s = 'td::GetUserPrivacySettingRules(';

    // Params
    final params = <String>[];
    params.add(setting.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getUserPrivacySettingRules',
    'setting': setting?.toJson(),
  };

  factory GetUserPrivacySettingRules.fromJson(Map<String, dynamic> json) => GetUserPrivacySettingRules(
    setting: b.TdBase.fromJson(json['setting']) as a.UserPrivacySetting?,
  );
}

/// Returns the value of an option by its name. (Check the list of available options on https://core.telegram.org/tdlib/options.) Can be called before authorization
class GetOption extends TdFunction {
  /// The name of the option
  final String name;

  GetOption({
    required this.name,
  });

  @override
  String toString() {
    var s = 'td::GetOption(';

    // Params
    final params = <String>[];
    params.add(name.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getOption',
    'name': name,
  };

  factory GetOption.fromJson(Map<String, dynamic> json) => GetOption(
    name: (json['name'] as String?) ?? '',
  );
}

/// Sets the value of an option. (Check the list of available options on https://core.telegram.org/tdlib/options.) Only writable options can be set. Can be called before authorization
class SetOption extends TdFunction {
  /// The name of the option
  final String name;
  /// The new value of the option; pass null to reset option value to a default value
  final a.OptionValue? value;

  SetOption({
    required this.name,
    required this.value,
  });

  @override
  String toString() {
    var s = 'td::SetOption(';

    // Params
    final params = <String>[];
    params.add(name.toString());
    params.add(value.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setOption',
    'name': name,
    'value': value?.toJson(),
  };

  factory SetOption.fromJson(Map<String, dynamic> json) => SetOption(
    name: (json['name'] as String?) ?? '',
    value: b.TdBase.fromJson(json['value']) as a.OptionValue?,
  );
}

/// Changes the period of inactivity after which the account of the current user will automatically be deleted
class SetAccountTtl extends TdFunction {
  /// New account TTL
  final o.AccountTtl? ttl;

  SetAccountTtl({
    required this.ttl,
  });

  @override
  String toString() {
    var s = 'td::SetAccountTtl(';

    // Params
    final params = <String>[];
    params.add(ttl.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setAccountTtl',
    'ttl': ttl?.toJson(),
  };

  factory SetAccountTtl.fromJson(Map<String, dynamic> json) => SetAccountTtl(
    ttl: b.TdBase.fromJson(json['ttl']) as o.AccountTtl?,
  );
}

/// Returns the period of inactivity after which the account of the current user will automatically be deleted
class GetAccountTtl extends TdFunction {
  GetAccountTtl();

  @override
  String toString() {
    var s = 'td::GetAccountTtl(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getAccountTtl',
  };

  factory GetAccountTtl.fromJson(Map<String, dynamic> json) => GetAccountTtl(
  );
}

/// Deletes the account of the current user, deleting all information associated with the user from the server. The phone number of the account can be used to create a new account. Can be called before authorization when the current authorization state is authorizationStateWaitPassword
class DeleteAccount extends TdFunction {
  /// The reason why the account was deleted; optional
  final String reason;

  DeleteAccount({
    required this.reason,
  });

  @override
  String toString() {
    var s = 'td::DeleteAccount(';

    // Params
    final params = <String>[];
    params.add(reason.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deleteAccount',
    'reason': reason,
  };

  factory DeleteAccount.fromJson(Map<String, dynamic> json) => DeleteAccount(
    reason: (json['reason'] as String?) ?? '',
  );
}

/// Removes a chat action bar without any other action
class RemoveChatActionBar extends TdFunction {
  /// Chat identifier
  final int chatId;

  RemoveChatActionBar({
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::RemoveChatActionBar(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'removeChatActionBar',
    'chat_id': chatId,
  };

  factory RemoveChatActionBar.fromJson(Map<String, dynamic> json) => RemoveChatActionBar(
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Reports a chat to the Telegram moderators. A chat can be reported only from the chat action bar, or if chat.can_be_reported
class ReportChat extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Identifiers of reported messages, if any
  final List<int> messageIds;
  /// The reason for reporting the chat
  final a.ChatReportReason? reason;
  /// Additional report details; 0-1024 characters
  final String text;

  ReportChat({
    required this.chatId,
    required this.messageIds,
    required this.reason,
    required this.text,
  });

  @override
  String toString() {
    var s = 'td::ReportChat(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageIds.toString());
    params.add(reason.toString());
    params.add(text.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'reportChat',
    'chat_id': chatId,
    'message_ids': messageIds.map((_e1) => _e1).toList(growable: false),
    'reason': reason?.toJson(),
    'text': text,
  };

  factory ReportChat.fromJson(Map<String, dynamic> json) => ReportChat(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageIds: json['message_ids'] == null ? <int>[] : (json['message_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
    reason: b.TdBase.fromJson(json['reason']) as a.ChatReportReason?,
    text: (json['text'] as String?) ?? '',
  );
}

/// Reports a chat photo to the Telegram moderators. A chat photo can be reported only if chat.can_be_reported
class ReportChatPhoto extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Identifier of the photo to report. Only full photos from chatPhoto can be reported
  final int fileId;
  /// The reason for reporting the chat photo
  final a.ChatReportReason? reason;
  /// Additional report details; 0-1024 characters
  final String text;

  ReportChatPhoto({
    required this.chatId,
    required this.fileId,
    required this.reason,
    required this.text,
  });

  @override
  String toString() {
    var s = 'td::ReportChatPhoto(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(fileId.toString());
    params.add(reason.toString());
    params.add(text.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'reportChatPhoto',
    'chat_id': chatId,
    'file_id': fileId,
    'reason': reason?.toJson(),
    'text': text,
  };

  factory ReportChatPhoto.fromJson(Map<String, dynamic> json) => ReportChatPhoto(
    chatId: (json['chat_id'] as int?) ?? 0,
    fileId: (json['file_id'] as int?) ?? 0,
    reason: b.TdBase.fromJson(json['reason']) as a.ChatReportReason?,
    text: (json['text'] as String?) ?? '',
  );
}

/// Returns detailed statistics about a chat. Currently, this method can be used only for supergroups and channels. Can be used only if supergroupFullInfo.can_get_statistics == true
class GetChatStatistics extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Pass true if a dark theme is used by the application
  final bool isDark;

  GetChatStatistics({
    required this.chatId,
    required this.isDark,
  });

  @override
  String toString() {
    var s = 'td::GetChatStatistics(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(isDark.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getChatStatistics',
    'chat_id': chatId,
    'is_dark': isDark,
  };

  factory GetChatStatistics.fromJson(Map<String, dynamic> json) => GetChatStatistics(
    chatId: (json['chat_id'] as int?) ?? 0,
    isDark: (json['is_dark'] as bool?) ?? false,
  );
}

/// Returns detailed statistics about a message. Can be used only if message.can_get_statistics == true
class GetMessageStatistics extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// Message identifier
  final int messageId;
  /// Pass true if a dark theme is used by the application
  final bool isDark;

  GetMessageStatistics({
    required this.chatId,
    required this.messageId,
    required this.isDark,
  });

  @override
  String toString() {
    var s = 'td::GetMessageStatistics(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(messageId.toString());
    params.add(isDark.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMessageStatistics',
    'chat_id': chatId,
    'message_id': messageId,
    'is_dark': isDark,
  };

  factory GetMessageStatistics.fromJson(Map<String, dynamic> json) => GetMessageStatistics(
    chatId: (json['chat_id'] as int?) ?? 0,
    messageId: (json['message_id'] as int?) ?? 0,
    isDark: (json['is_dark'] as bool?) ?? false,
  );
}

/// Loads an asynchronous or a zoomed in statistical graph
class GetStatisticalGraph extends TdFunction {
  /// Chat identifier
  final int chatId;
  /// The token for graph loading
  final String token;
  /// X-value for zoomed in graph or 0 otherwise
  final int x;

  GetStatisticalGraph({
    required this.chatId,
    required this.token,
    required this.x,
  });

  @override
  String toString() {
    var s = 'td::GetStatisticalGraph(';

    // Params
    final params = <String>[];
    params.add(chatId.toString());
    params.add(token.toString());
    params.add(x.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getStatisticalGraph',
    'chat_id': chatId,
    'token': token,
    'x': x,
  };

  factory GetStatisticalGraph.fromJson(Map<String, dynamic> json) => GetStatisticalGraph(
    chatId: (json['chat_id'] as int?) ?? 0,
    token: (json['token'] as String?) ?? '',
    x: (json['x'] as int?) ?? 0,
  );
}

/// Returns storage usage statistics. Can be called before authorization
class GetStorageStatistics extends TdFunction {
  /// The maximum number of chats with the largest storage usage for which separate statistics need to be returned. All other chats will be grouped in entries with chat_id == 0. If the chat info database is not used, the chat_limit is ignored and is always set to 0
  final int chatLimit;

  GetStorageStatistics({
    required this.chatLimit,
  });

  @override
  String toString() {
    var s = 'td::GetStorageStatistics(';

    // Params
    final params = <String>[];
    params.add(chatLimit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getStorageStatistics',
    'chat_limit': chatLimit,
  };

  factory GetStorageStatistics.fromJson(Map<String, dynamic> json) => GetStorageStatistics(
    chatLimit: (json['chat_limit'] as int?) ?? 0,
  );
}

/// Quickly returns approximate storage usage statistics. Can be called before authorization
class GetStorageStatisticsFast extends TdFunction {
  GetStorageStatisticsFast();

  @override
  String toString() {
    var s = 'td::GetStorageStatisticsFast(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getStorageStatisticsFast',
  };

  factory GetStorageStatisticsFast.fromJson(Map<String, dynamic> json) => GetStorageStatisticsFast(
  );
}

/// Returns database statistics
class GetDatabaseStatistics extends TdFunction {
  GetDatabaseStatistics();

  @override
  String toString() {
    var s = 'td::GetDatabaseStatistics(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getDatabaseStatistics',
  };

  factory GetDatabaseStatistics.fromJson(Map<String, dynamic> json) => GetDatabaseStatistics(
  );
}

/// Optimizes storage usage, i.e. deletes some files and returns new storage usage statistics. Secret thumbnails can't be deleted
class OptimizeStorage extends TdFunction {
  /// Limit on the total size of files after deletion, in bytes. Pass -1 to use the default limit
  final int size;
  /// Limit on the time that has passed since the last time a file was accessed (or creation time for some filesystems). Pass -1 to use the default limit
  final int ttl;
  /// Limit on the total count of files after deletion. Pass -1 to use the default limit
  final int count;
  /// The amount of time after the creation of a file during which it can't be deleted, in seconds. Pass -1 to use the default value
  final int immunityDelay;
  /// If non-empty, only files with the given types are considered. By default, all types except thumbnails, profile photos, stickers and wallpapers are deleted
  final List<a.FileType?> fileTypes;
  /// If non-empty, only files from the given chats are considered. Use 0 as chat identifier to delete files not belonging to any chat (e.g., profile photos)
  final List<int> chatIds;
  /// If non-empty, files from the given chats are excluded. Use 0 as chat identifier to exclude all files not belonging to any chat (e.g., profile photos)
  final List<int> excludeChatIds;
  /// Pass true if statistics about the files that were deleted must be returned instead of the whole storage usage statistics. Affects only returned statistics
  final bool returnDeletedFileStatistics;
  /// Same as in getStorageStatistics. Affects only returned statistics
  final int chatLimit;

  OptimizeStorage({
    required this.size,
    required this.ttl,
    required this.count,
    required this.immunityDelay,
    required this.fileTypes,
    required this.chatIds,
    required this.excludeChatIds,
    required this.returnDeletedFileStatistics,
    required this.chatLimit,
  });

  @override
  String toString() {
    var s = 'td::OptimizeStorage(';

    // Params
    final params = <String>[];
    params.add(size.toString());
    params.add(ttl.toString());
    params.add(count.toString());
    params.add(immunityDelay.toString());
    params.add(fileTypes.toString());
    params.add(chatIds.toString());
    params.add(excludeChatIds.toString());
    params.add(returnDeletedFileStatistics.toString());
    params.add(chatLimit.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'optimizeStorage',
    'size': size,
    'ttl': ttl,
    'count': count,
    'immunity_delay': immunityDelay,
    'file_types': fileTypes.map((_e1) => _e1?.toJson()).toList(growable: false),
    'chat_ids': chatIds.map((_e1) => _e1).toList(growable: false),
    'exclude_chat_ids': excludeChatIds.map((_e1) => _e1).toList(growable: false),
    'return_deleted_file_statistics': returnDeletedFileStatistics,
    'chat_limit': chatLimit,
  };

  factory OptimizeStorage.fromJson(Map<String, dynamic> json) => OptimizeStorage(
    size: (json['size'] as int?) ?? 0,
    ttl: (json['ttl'] as int?) ?? 0,
    count: (json['count'] as int?) ?? 0,
    immunityDelay: (json['immunity_delay'] as int?) ?? 0,
    fileTypes: json['file_types'] == null ? <a.FileType?>[] : (json['file_types'] as List<dynamic>).map((e) => (b.TdBase.fromJson(e) as a.FileType?)).toList(growable: false),
    chatIds: json['chat_ids'] == null ? <int>[] : (json['chat_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
    excludeChatIds: json['exclude_chat_ids'] == null ? <int>[] : (json['exclude_chat_ids'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
    returnDeletedFileStatistics: (json['return_deleted_file_statistics'] as bool?) ?? false,
    chatLimit: (json['chat_limit'] as int?) ?? 0,
  );
}

/// Sets the current network type. Can be called before authorization. Calling this method forces all network connections to reopen, mitigating the delay in switching between different networks, so it must be called whenever the network is changed, even if the network type remains the same.
class SetNetworkType extends TdFunction {
  /// The new network type; pass null to set network type to networkTypeOther
  final a.NetworkType? type;

  SetNetworkType({
    required this.type,
  });

  @override
  String toString() {
    var s = 'td::SetNetworkType(';

    // Params
    final params = <String>[];
    params.add(type.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setNetworkType',
    'type': type?.toJson(),
  };

  factory SetNetworkType.fromJson(Map<String, dynamic> json) => SetNetworkType(
    type: b.TdBase.fromJson(json['type']) as a.NetworkType?,
  );
}

/// Returns network data usage statistics. Can be called before authorization
class GetNetworkStatistics extends TdFunction {
  /// If true, returns only data for the current library launch
  final bool onlyCurrent;

  GetNetworkStatistics({
    required this.onlyCurrent,
  });

  @override
  String toString() {
    var s = 'td::GetNetworkStatistics(';

    // Params
    final params = <String>[];
    params.add(onlyCurrent.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getNetworkStatistics',
    'only_current': onlyCurrent,
  };

  factory GetNetworkStatistics.fromJson(Map<String, dynamic> json) => GetNetworkStatistics(
    onlyCurrent: (json['only_current'] as bool?) ?? false,
  );
}

/// Adds the specified data to data usage statistics. Can be called before authorization
class AddNetworkStatistics extends TdFunction {
  /// The network statistics entry with the data to be added to statistics
  final a.NetworkStatisticsEntry? entry;

  AddNetworkStatistics({
    required this.entry,
  });

  @override
  String toString() {
    var s = 'td::AddNetworkStatistics(';

    // Params
    final params = <String>[];
    params.add(entry.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'addNetworkStatistics',
    'entry': entry?.toJson(),
  };

  factory AddNetworkStatistics.fromJson(Map<String, dynamic> json) => AddNetworkStatistics(
    entry: b.TdBase.fromJson(json['entry']) as a.NetworkStatisticsEntry?,
  );
}

/// Resets all network data usage statistics to zero. Can be called before authorization
class ResetNetworkStatistics extends TdFunction {
  ResetNetworkStatistics();

  @override
  String toString() {
    var s = 'td::ResetNetworkStatistics(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'resetNetworkStatistics',
  };

  factory ResetNetworkStatistics.fromJson(Map<String, dynamic> json) => ResetNetworkStatistics(
  );
}

/// Returns auto-download settings presets for the current user
class GetAutoDownloadSettingsPresets extends TdFunction {
  GetAutoDownloadSettingsPresets();

  @override
  String toString() {
    var s = 'td::GetAutoDownloadSettingsPresets(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getAutoDownloadSettingsPresets',
  };

  factory GetAutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json) => GetAutoDownloadSettingsPresets(
  );
}

/// Sets auto-download settings
class SetAutoDownloadSettings extends TdFunction {
  /// New user auto-download settings
  final o.AutoDownloadSettings? settings;
  /// Type of the network for which the new settings are relevant
  final a.NetworkType? type;

  SetAutoDownloadSettings({
    required this.settings,
    required this.type,
  });

  @override
  String toString() {
    var s = 'td::SetAutoDownloadSettings(';

    // Params
    final params = <String>[];
    params.add(settings.toString());
    params.add(type.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setAutoDownloadSettings',
    'settings': settings?.toJson(),
    'type': type?.toJson(),
  };

  factory SetAutoDownloadSettings.fromJson(Map<String, dynamic> json) => SetAutoDownloadSettings(
    settings: b.TdBase.fromJson(json['settings']) as o.AutoDownloadSettings?,
    type: b.TdBase.fromJson(json['type']) as a.NetworkType?,
  );
}

/// Returns information about a bank card
class GetBankCardInfo extends TdFunction {
  /// The bank card number
  final String bankCardNumber;

  GetBankCardInfo({
    required this.bankCardNumber,
  });

  @override
  String toString() {
    var s = 'td::GetBankCardInfo(';

    // Params
    final params = <String>[];
    params.add(bankCardNumber.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getBankCardInfo',
    'bank_card_number': bankCardNumber,
  };

  factory GetBankCardInfo.fromJson(Map<String, dynamic> json) => GetBankCardInfo(
    bankCardNumber: (json['bank_card_number'] as String?) ?? '',
  );
}

/// Returns one of the available Telegram Passport elements
class GetPassportElement extends TdFunction {
  /// Telegram Passport element type
  final a.PassportElementType? type;
  /// Password of the current user
  final String password;

  GetPassportElement({
    required this.type,
    required this.password,
  });

  @override
  String toString() {
    var s = 'td::GetPassportElement(';

    // Params
    final params = <String>[];
    params.add(type.toString());
    params.add(password.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getPassportElement',
    'type': type?.toJson(),
    'password': password,
  };

  factory GetPassportElement.fromJson(Map<String, dynamic> json) => GetPassportElement(
    type: b.TdBase.fromJson(json['type']) as a.PassportElementType?,
    password: (json['password'] as String?) ?? '',
  );
}

/// Returns all available Telegram Passport elements
class GetAllPassportElements extends TdFunction {
  /// Password of the current user
  final String password;

  GetAllPassportElements({
    required this.password,
  });

  @override
  String toString() {
    var s = 'td::GetAllPassportElements(';

    // Params
    final params = <String>[];
    params.add(password.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getAllPassportElements',
    'password': password,
  };

  factory GetAllPassportElements.fromJson(Map<String, dynamic> json) => GetAllPassportElements(
    password: (json['password'] as String?) ?? '',
  );
}

/// Adds an element to the user's Telegram Passport. May return an error with a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if the chosen phone number or the chosen email address must be verified first
class SetPassportElement extends TdFunction {
  /// Input Telegram Passport element
  final a.InputPassportElement? element;
  /// Password of the current user
  final String password;

  SetPassportElement({
    required this.element,
    required this.password,
  });

  @override
  String toString() {
    var s = 'td::SetPassportElement(';

    // Params
    final params = <String>[];
    params.add(element.toString());
    params.add(password.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setPassportElement',
    'element': element?.toJson(),
    'password': password,
  };

  factory SetPassportElement.fromJson(Map<String, dynamic> json) => SetPassportElement(
    element: b.TdBase.fromJson(json['element']) as a.InputPassportElement?,
    password: (json['password'] as String?) ?? '',
  );
}

/// Deletes a Telegram Passport element
class DeletePassportElement extends TdFunction {
  /// Element type
  final a.PassportElementType? type;

  DeletePassportElement({
    required this.type,
  });

  @override
  String toString() {
    var s = 'td::DeletePassportElement(';

    // Params
    final params = <String>[];
    params.add(type.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deletePassportElement',
    'type': type?.toJson(),
  };

  factory DeletePassportElement.fromJson(Map<String, dynamic> json) => DeletePassportElement(
    type: b.TdBase.fromJson(json['type']) as a.PassportElementType?,
  );
}

/// Informs the user that some of the elements in their Telegram Passport contain errors; for bots only. The user will not be able to resend the elements, until the errors are fixed
class SetPassportElementErrors extends TdFunction {
  /// User identifier
  final int userId;
  /// The errors
  final List<o.InputPassportElementError?> errors;

  SetPassportElementErrors({
    required this.userId,
    required this.errors,
  });

  @override
  String toString() {
    var s = 'td::SetPassportElementErrors(';

    // Params
    final params = <String>[];
    params.add(userId.toString());
    params.add(errors.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setPassportElementErrors',
    'user_id': userId,
    'errors': errors.map((_e1) => _e1?.toJson()).toList(growable: false),
  };

  factory SetPassportElementErrors.fromJson(Map<String, dynamic> json) => SetPassportElementErrors(
    userId: (json['user_id'] as int?) ?? 0,
    errors: json['errors'] == null ? <o.InputPassportElementError?>[] : (json['errors'] as List<dynamic>).map((e) => (b.TdBase.fromJson(e) as o.InputPassportElementError?)).toList(growable: false),
  );
}

/// Returns an IETF language tag of the language preferred in the country, which must be used to fill native fields in Telegram Passport personal details. Returns a 404 error if unknown
class GetPreferredCountryLanguage extends TdFunction {
  /// A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;

  GetPreferredCountryLanguage({
    required this.countryCode,
  });

  @override
  String toString() {
    var s = 'td::GetPreferredCountryLanguage(';

    // Params
    final params = <String>[];
    params.add(countryCode.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getPreferredCountryLanguage',
    'country_code': countryCode,
  };

  factory GetPreferredCountryLanguage.fromJson(Map<String, dynamic> json) => GetPreferredCountryLanguage(
    countryCode: (json['country_code'] as String?) ?? '',
  );
}

/// Sends a code to verify a phone number to be added to a user's Telegram Passport
class SendPhoneNumberVerificationCode extends TdFunction {
  /// The phone number of the user, in international format
  final String phoneNumber;
  /// Settings for the authentication of the user's phone number; pass null to use default settings
  final o.PhoneNumberAuthenticationSettings? settings;

  SendPhoneNumberVerificationCode({
    required this.phoneNumber,
    required this.settings,
  });

  @override
  String toString() {
    var s = 'td::SendPhoneNumberVerificationCode(';

    // Params
    final params = <String>[];
    params.add(phoneNumber.toString());
    params.add(settings.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sendPhoneNumberVerificationCode',
    'phone_number': phoneNumber,
    'settings': settings?.toJson(),
  };

  factory SendPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json) => SendPhoneNumberVerificationCode(
    phoneNumber: (json['phone_number'] as String?) ?? '',
    settings: b.TdBase.fromJson(json['settings']) as o.PhoneNumberAuthenticationSettings?,
  );
}

/// Re-sends the code to verify a phone number to be added to a user's Telegram Passport
class ResendPhoneNumberVerificationCode extends TdFunction {
  ResendPhoneNumberVerificationCode();

  @override
  String toString() {
    var s = 'td::ResendPhoneNumberVerificationCode(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'resendPhoneNumberVerificationCode',
  };

  factory ResendPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json) => ResendPhoneNumberVerificationCode(
  );
}

/// Checks the phone number verification code for Telegram Passport
class CheckPhoneNumberVerificationCode extends TdFunction {
  /// Verification code to check
  final String code;

  CheckPhoneNumberVerificationCode({
    required this.code,
  });

  @override
  String toString() {
    var s = 'td::CheckPhoneNumberVerificationCode(';

    // Params
    final params = <String>[];
    params.add(code.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkPhoneNumberVerificationCode',
    'code': code,
  };

  factory CheckPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json) => CheckPhoneNumberVerificationCode(
    code: (json['code'] as String?) ?? '',
  );
}

/// Sends a code to verify an email address to be added to a user's Telegram Passport
class SendEmailAddressVerificationCode extends TdFunction {
  /// Email address
  final String emailAddress;

  SendEmailAddressVerificationCode({
    required this.emailAddress,
  });

  @override
  String toString() {
    var s = 'td::SendEmailAddressVerificationCode(';

    // Params
    final params = <String>[];
    params.add(emailAddress.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sendEmailAddressVerificationCode',
    'email_address': emailAddress,
  };

  factory SendEmailAddressVerificationCode.fromJson(Map<String, dynamic> json) => SendEmailAddressVerificationCode(
    emailAddress: (json['email_address'] as String?) ?? '',
  );
}

/// Re-sends the code to verify an email address to be added to a user's Telegram Passport
class ResendEmailAddressVerificationCode extends TdFunction {
  ResendEmailAddressVerificationCode();

  @override
  String toString() {
    var s = 'td::ResendEmailAddressVerificationCode(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'resendEmailAddressVerificationCode',
  };

  factory ResendEmailAddressVerificationCode.fromJson(Map<String, dynamic> json) => ResendEmailAddressVerificationCode(
  );
}

/// Checks the email address verification code for Telegram Passport
class CheckEmailAddressVerificationCode extends TdFunction {
  /// Verification code to check
  final String code;

  CheckEmailAddressVerificationCode({
    required this.code,
  });

  @override
  String toString() {
    var s = 'td::CheckEmailAddressVerificationCode(';

    // Params
    final params = <String>[];
    params.add(code.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkEmailAddressVerificationCode',
    'code': code,
  };

  factory CheckEmailAddressVerificationCode.fromJson(Map<String, dynamic> json) => CheckEmailAddressVerificationCode(
    code: (json['code'] as String?) ?? '',
  );
}

/// Returns a Telegram Passport authorization form for sharing data with a service
class GetPassportAuthorizationForm extends TdFunction {
  /// User identifier of the service's bot
  final int botUserId;
  /// Telegram Passport element types requested by the service
  final String scope;
  /// Service's public key
  final String publicKey;
  /// Unique request identifier provided by the service
  final String nonce;

  GetPassportAuthorizationForm({
    required this.botUserId,
    required this.scope,
    required this.publicKey,
    required this.nonce,
  });

  @override
  String toString() {
    var s = 'td::GetPassportAuthorizationForm(';

    // Params
    final params = <String>[];
    params.add(botUserId.toString());
    params.add(scope.toString());
    params.add(publicKey.toString());
    params.add(nonce.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getPassportAuthorizationForm',
    'bot_user_id': botUserId,
    'scope': scope,
    'public_key': publicKey,
    'nonce': nonce,
  };

  factory GetPassportAuthorizationForm.fromJson(Map<String, dynamic> json) => GetPassportAuthorizationForm(
    botUserId: (json['bot_user_id'] as int?) ?? 0,
    scope: (json['scope'] as String?) ?? '',
    publicKey: (json['public_key'] as String?) ?? '',
    nonce: (json['nonce'] as String?) ?? '',
  );
}

/// Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization form. Result can be received only once for each authorization form
class GetPassportAuthorizationFormAvailableElements extends TdFunction {
  /// Authorization form identifier
  final int autorizationFormId;
  /// Password of the current user
  final String password;

  GetPassportAuthorizationFormAvailableElements({
    required this.autorizationFormId,
    required this.password,
  });

  @override
  String toString() {
    var s = 'td::GetPassportAuthorizationFormAvailableElements(';

    // Params
    final params = <String>[];
    params.add(autorizationFormId.toString());
    params.add(password.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getPassportAuthorizationFormAvailableElements',
    'autorization_form_id': autorizationFormId,
    'password': password,
  };

  factory GetPassportAuthorizationFormAvailableElements.fromJson(Map<String, dynamic> json) => GetPassportAuthorizationFormAvailableElements(
    autorizationFormId: (json['autorization_form_id'] as int?) ?? 0,
    password: (json['password'] as String?) ?? '',
  );
}

/// Sends a Telegram Passport authorization form, effectively sharing data with the service. This method must be called after getPassportAuthorizationFormAvailableElements if some previously available elements are going to be reused
class SendPassportAuthorizationForm extends TdFunction {
  /// Authorization form identifier
  final int autorizationFormId;
  /// Types of Telegram Passport elements chosen by user to complete the authorization form
  final List<a.PassportElementType?> types;

  SendPassportAuthorizationForm({
    required this.autorizationFormId,
    required this.types,
  });

  @override
  String toString() {
    var s = 'td::SendPassportAuthorizationForm(';

    // Params
    final params = <String>[];
    params.add(autorizationFormId.toString());
    params.add(types.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sendPassportAuthorizationForm',
    'autorization_form_id': autorizationFormId,
    'types': types.map((_e1) => _e1?.toJson()).toList(growable: false),
  };

  factory SendPassportAuthorizationForm.fromJson(Map<String, dynamic> json) => SendPassportAuthorizationForm(
    autorizationFormId: (json['autorization_form_id'] as int?) ?? 0,
    types: json['types'] == null ? <a.PassportElementType?>[] : (json['types'] as List<dynamic>).map((e) => (b.TdBase.fromJson(e) as a.PassportElementType?)).toList(growable: false),
  );
}

/// Sends phone number confirmation code to handle links of the type internalLinkTypePhoneNumberConfirmation
class SendPhoneNumberConfirmationCode extends TdFunction {
  /// Hash value from the link
  final String hash;
  /// Phone number value from the link
  final String phoneNumber;
  /// Settings for the authentication of the user's phone number; pass null to use default settings
  final o.PhoneNumberAuthenticationSettings? settings;

  SendPhoneNumberConfirmationCode({
    required this.hash,
    required this.phoneNumber,
    required this.settings,
  });

  @override
  String toString() {
    var s = 'td::SendPhoneNumberConfirmationCode(';

    // Params
    final params = <String>[];
    params.add(hash.toString());
    params.add(phoneNumber.toString());
    params.add(settings.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sendPhoneNumberConfirmationCode',
    'hash': hash,
    'phone_number': phoneNumber,
    'settings': settings?.toJson(),
  };

  factory SendPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json) => SendPhoneNumberConfirmationCode(
    hash: (json['hash'] as String?) ?? '',
    phoneNumber: (json['phone_number'] as String?) ?? '',
    settings: b.TdBase.fromJson(json['settings']) as o.PhoneNumberAuthenticationSettings?,
  );
}

/// Resends phone number confirmation code
class ResendPhoneNumberConfirmationCode extends TdFunction {
  ResendPhoneNumberConfirmationCode();

  @override
  String toString() {
    var s = 'td::ResendPhoneNumberConfirmationCode(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'resendPhoneNumberConfirmationCode',
  };

  factory ResendPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json) => ResendPhoneNumberConfirmationCode(
  );
}

/// Checks phone number confirmation code
class CheckPhoneNumberConfirmationCode extends TdFunction {
  /// Confirmation code to check
  final String code;

  CheckPhoneNumberConfirmationCode({
    required this.code,
  });

  @override
  String toString() {
    var s = 'td::CheckPhoneNumberConfirmationCode(';

    // Params
    final params = <String>[];
    params.add(code.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkPhoneNumberConfirmationCode',
    'code': code,
  };

  factory CheckPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json) => CheckPhoneNumberConfirmationCode(
    code: (json['code'] as String?) ?? '',
  );
}

/// Informs the server about the number of pending bot updates if they haven't been processed for a long time; for bots only
class SetBotUpdatesStatus extends TdFunction {
  /// The number of pending updates
  final int pendingUpdateCount;
  /// The last error message
  final String errorMessage;

  SetBotUpdatesStatus({
    required this.pendingUpdateCount,
    required this.errorMessage,
  });

  @override
  String toString() {
    var s = 'td::SetBotUpdatesStatus(';

    // Params
    final params = <String>[];
    params.add(pendingUpdateCount.toString());
    params.add(errorMessage.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setBotUpdatesStatus',
    'pending_update_count': pendingUpdateCount,
    'error_message': errorMessage,
  };

  factory SetBotUpdatesStatus.fromJson(Map<String, dynamic> json) => SetBotUpdatesStatus(
    pendingUpdateCount: (json['pending_update_count'] as int?) ?? 0,
    errorMessage: (json['error_message'] as String?) ?? '',
  );
}

/// Uploads a file with a sticker; returns the uploaded file
class UploadStickerFile extends TdFunction {
  /// Sticker file owner; ignored for regular users
  final int userId;
  /// Sticker file to upload
  final a.InputSticker? sticker;

  UploadStickerFile({
    required this.userId,
    required this.sticker,
  });

  @override
  String toString() {
    var s = 'td::UploadStickerFile(';

    // Params
    final params = <String>[];
    params.add(userId.toString());
    params.add(sticker.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'uploadStickerFile',
    'user_id': userId,
    'sticker': sticker?.toJson(),
  };

  factory UploadStickerFile.fromJson(Map<String, dynamic> json) => UploadStickerFile(
    userId: (json['user_id'] as int?) ?? 0,
    sticker: b.TdBase.fromJson(json['sticker']) as a.InputSticker?,
  );
}

/// Returns a suggested name for a new sticker set with a given title
class GetSuggestedStickerSetName extends TdFunction {
  /// Sticker set title; 1-64 characters
  final String title;

  GetSuggestedStickerSetName({
    required this.title,
  });

  @override
  String toString() {
    var s = 'td::GetSuggestedStickerSetName(';

    // Params
    final params = <String>[];
    params.add(title.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getSuggestedStickerSetName',
    'title': title,
  };

  factory GetSuggestedStickerSetName.fromJson(Map<String, dynamic> json) => GetSuggestedStickerSetName(
    title: (json['title'] as String?) ?? '',
  );
}

/// Checks whether a name can be used for a new sticker set
class CheckStickerSetName extends TdFunction {
  /// Name to be checked
  final String name;

  CheckStickerSetName({
    required this.name,
  });

  @override
  String toString() {
    var s = 'td::CheckStickerSetName(';

    // Params
    final params = <String>[];
    params.add(name.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkStickerSetName',
    'name': name,
  };

  factory CheckStickerSetName.fromJson(Map<String, dynamic> json) => CheckStickerSetName(
    name: (json['name'] as String?) ?? '',
  );
}

/// Creates a new sticker set. Returns the newly created sticker set
class CreateNewStickerSet extends TdFunction {
  /// Sticker set owner; ignored for regular users
  final int userId;
  /// Sticker set title; 1-64 characters
  final String title;
  /// Sticker set name. Can contain only English letters, digits and underscores. Must end with *"_by_<bot username>"* (*<bot_username>* is case insensitive) for bots; 1-64 characters
  final String name;
  /// True, if stickers are masks. Animated stickers can't be masks
  final bool isMasks;
  /// List of stickers to be added to the set; must be non-empty. All stickers must be of the same type. For animated stickers, uploadStickerFile must be used before the sticker is shown
  final List<a.InputSticker?> stickers;
  /// Source of the sticker set; may be empty if unknown
  final String source;

  CreateNewStickerSet({
    required this.userId,
    required this.title,
    required this.name,
    required this.isMasks,
    required this.stickers,
    required this.source,
  });

  @override
  String toString() {
    var s = 'td::CreateNewStickerSet(';

    // Params
    final params = <String>[];
    params.add(userId.toString());
    params.add(title.toString());
    params.add(name.toString());
    params.add(isMasks.toString());
    params.add(stickers.toString());
    params.add(source.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'createNewStickerSet',
    'user_id': userId,
    'title': title,
    'name': name,
    'is_masks': isMasks,
    'stickers': stickers.map((_e1) => _e1?.toJson()).toList(growable: false),
    'source': source,
  };

  factory CreateNewStickerSet.fromJson(Map<String, dynamic> json) => CreateNewStickerSet(
    userId: (json['user_id'] as int?) ?? 0,
    title: (json['title'] as String?) ?? '',
    name: (json['name'] as String?) ?? '',
    isMasks: (json['is_masks'] as bool?) ?? false,
    stickers: json['stickers'] == null ? <a.InputSticker?>[] : (json['stickers'] as List<dynamic>).map((e) => (b.TdBase.fromJson(e) as a.InputSticker?)).toList(growable: false),
    source: (json['source'] as String?) ?? '',
  );
}

/// Adds a new sticker to a set; for bots only. Returns the sticker set
class AddStickerToSet extends TdFunction {
  /// Sticker set owner
  final int userId;
  /// Sticker set name
  final String name;
  /// Sticker to add to the set
  final a.InputSticker? sticker;

  AddStickerToSet({
    required this.userId,
    required this.name,
    required this.sticker,
  });

  @override
  String toString() {
    var s = 'td::AddStickerToSet(';

    // Params
    final params = <String>[];
    params.add(userId.toString());
    params.add(name.toString());
    params.add(sticker.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'addStickerToSet',
    'user_id': userId,
    'name': name,
    'sticker': sticker?.toJson(),
  };

  factory AddStickerToSet.fromJson(Map<String, dynamic> json) => AddStickerToSet(
    userId: (json['user_id'] as int?) ?? 0,
    name: (json['name'] as String?) ?? '',
    sticker: b.TdBase.fromJson(json['sticker']) as a.InputSticker?,
  );
}

/// Sets a sticker set thumbnail; for bots only. Returns the sticker set
class SetStickerSetThumbnail extends TdFunction {
  /// Sticker set owner
  final int userId;
  /// Sticker set name
  final String name;
  /// Thumbnail to set in PNG or TGS format; pass null to remove the sticker set thumbnail. Animated thumbnail must be set for animated sticker sets and only for them
  final a.InputFile? thumbnail;

  SetStickerSetThumbnail({
    required this.userId,
    required this.name,
    required this.thumbnail,
  });

  @override
  String toString() {
    var s = 'td::SetStickerSetThumbnail(';

    // Params
    final params = <String>[];
    params.add(userId.toString());
    params.add(name.toString());
    params.add(thumbnail.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setStickerSetThumbnail',
    'user_id': userId,
    'name': name,
    'thumbnail': thumbnail?.toJson(),
  };

  factory SetStickerSetThumbnail.fromJson(Map<String, dynamic> json) => SetStickerSetThumbnail(
    userId: (json['user_id'] as int?) ?? 0,
    name: (json['name'] as String?) ?? '',
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as a.InputFile?,
  );
}

/// Changes the position of a sticker in the set to which it belongs; for bots only. The sticker set must have been created by the bot
class SetStickerPositionInSet extends TdFunction {
  /// Sticker
  final a.InputFile? sticker;
  /// New position of the sticker in the set, zero-based
  final int position;

  SetStickerPositionInSet({
    required this.sticker,
    required this.position,
  });

  @override
  String toString() {
    var s = 'td::SetStickerPositionInSet(';

    // Params
    final params = <String>[];
    params.add(sticker.toString());
    params.add(position.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setStickerPositionInSet',
    'sticker': sticker?.toJson(),
    'position': position,
  };

  factory SetStickerPositionInSet.fromJson(Map<String, dynamic> json) => SetStickerPositionInSet(
    sticker: b.TdBase.fromJson(json['sticker']) as a.InputFile?,
    position: (json['position'] as int?) ?? 0,
  );
}

/// Removes a sticker from the set to which it belongs; for bots only. The sticker set must have been created by the bot
class RemoveStickerFromSet extends TdFunction {
  /// Sticker
  final a.InputFile? sticker;

  RemoveStickerFromSet({
    required this.sticker,
  });

  @override
  String toString() {
    var s = 'td::RemoveStickerFromSet(';

    // Params
    final params = <String>[];
    params.add(sticker.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'removeStickerFromSet',
    'sticker': sticker?.toJson(),
  };

  factory RemoveStickerFromSet.fromJson(Map<String, dynamic> json) => RemoveStickerFromSet(
    sticker: b.TdBase.fromJson(json['sticker']) as a.InputFile?,
  );
}

/// Returns information about a file with a map thumbnail in PNG format. Only map thumbnail files with size less than 1MB can be downloaded
class GetMapThumbnailFile extends TdFunction {
  /// Location of the map center
  final o.Location? location;
  /// Map zoom level; 13-20
  final int zoom;
  /// Map width in pixels before applying scale; 16-1024
  final int width;
  /// Map height in pixels before applying scale; 16-1024
  final int height;
  /// Map scale; 1-3
  final int scale;
  /// Identifier of a chat, in which the thumbnail will be shown. Use 0 if unknown
  final int chatId;

  GetMapThumbnailFile({
    required this.location,
    required this.zoom,
    required this.width,
    required this.height,
    required this.scale,
    required this.chatId,
  });

  @override
  String toString() {
    var s = 'td::GetMapThumbnailFile(';

    // Params
    final params = <String>[];
    params.add(location.toString());
    params.add(zoom.toString());
    params.add(width.toString());
    params.add(height.toString());
    params.add(scale.toString());
    params.add(chatId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getMapThumbnailFile',
    'location': location?.toJson(),
    'zoom': zoom,
    'width': width,
    'height': height,
    'scale': scale,
    'chat_id': chatId,
  };

  factory GetMapThumbnailFile.fromJson(Map<String, dynamic> json) => GetMapThumbnailFile(
    location: b.TdBase.fromJson(json['location']) as o.Location?,
    zoom: (json['zoom'] as int?) ?? 0,
    width: (json['width'] as int?) ?? 0,
    height: (json['height'] as int?) ?? 0,
    scale: (json['scale'] as int?) ?? 0,
    chatId: (json['chat_id'] as int?) ?? 0,
  );
}

/// Accepts Telegram terms of services
class AcceptTermsOfService extends TdFunction {
  /// Terms of service identifier
  final String termsOfServiceId;

  AcceptTermsOfService({
    required this.termsOfServiceId,
  });

  @override
  String toString() {
    var s = 'td::AcceptTermsOfService(';

    // Params
    final params = <String>[];
    params.add(termsOfServiceId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'acceptTermsOfService',
    'terms_of_service_id': termsOfServiceId,
  };

  factory AcceptTermsOfService.fromJson(Map<String, dynamic> json) => AcceptTermsOfService(
    termsOfServiceId: (json['terms_of_service_id'] as String?) ?? '',
  );
}

/// Sends a custom request; for bots only
class SendCustomRequest extends TdFunction {
  /// The method name
  final String method;
  /// JSON-serialized method parameters
  final String parameters;

  SendCustomRequest({
    required this.method,
    required this.parameters,
  });

  @override
  String toString() {
    var s = 'td::SendCustomRequest(';

    // Params
    final params = <String>[];
    params.add(method.toString());
    params.add(parameters.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sendCustomRequest',
    'method': method,
    'parameters': parameters,
  };

  factory SendCustomRequest.fromJson(Map<String, dynamic> json) => SendCustomRequest(
    method: (json['method'] as String?) ?? '',
    parameters: (json['parameters'] as String?) ?? '',
  );
}

/// Answers a custom query; for bots only
class AnswerCustomQuery extends TdFunction {
  /// Identifier of a custom query
  final int customQueryId;
  /// JSON-serialized answer to the query
  final String data;

  AnswerCustomQuery({
    required this.customQueryId,
    required this.data,
  });

  @override
  String toString() {
    var s = 'td::AnswerCustomQuery(';

    // Params
    final params = <String>[];
    params.add(customQueryId.toString());
    params.add(data.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'answerCustomQuery',
    'custom_query_id': customQueryId.toString(),
    'data': data,
  };

  factory AnswerCustomQuery.fromJson(Map<String, dynamic> json) => AnswerCustomQuery(
    customQueryId: int.parse(json['custom_query_id'] ?? '0'),
    data: (json['data'] as String?) ?? '',
  );
}

/// Succeeds after a specified amount of time has passed. Can be called before initialization
class SetAlarm extends TdFunction {
  /// Number of seconds before the function returns
  final double seconds;

  SetAlarm({
    required this.seconds,
  });

  @override
  String toString() {
    var s = 'td::SetAlarm(';

    // Params
    final params = <String>[];
    params.add(seconds.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setAlarm',
    'seconds': seconds,
  };

  factory SetAlarm.fromJson(Map<String, dynamic> json) => SetAlarm(
    seconds: (json['seconds'] as double?) ?? 0,
  );
}

/// Returns information about existing countries. Can be called before authorization
class GetCountries extends TdFunction {
  GetCountries();

  @override
  String toString() {
    var s = 'td::GetCountries(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getCountries',
  };

  factory GetCountries.fromJson(Map<String, dynamic> json) => GetCountries(
  );
}

/// Uses the current IP address to find the current country. Returns two-letter ISO 3166-1 alpha-2 country code. Can be called before authorization
class GetCountryCode extends TdFunction {
  GetCountryCode();

  @override
  String toString() {
    var s = 'td::GetCountryCode(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getCountryCode',
  };

  factory GetCountryCode.fromJson(Map<String, dynamic> json) => GetCountryCode(
  );
}

/// Returns information about a phone number by its prefix. Can be called before authorization
class GetPhoneNumberInfo extends TdFunction {
  /// The phone number prefix
  final String phoneNumberPrefix;

  GetPhoneNumberInfo({
    required this.phoneNumberPrefix,
  });

  @override
  String toString() {
    var s = 'td::GetPhoneNumberInfo(';

    // Params
    final params = <String>[];
    params.add(phoneNumberPrefix.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getPhoneNumberInfo',
    'phone_number_prefix': phoneNumberPrefix,
  };

  factory GetPhoneNumberInfo.fromJson(Map<String, dynamic> json) => GetPhoneNumberInfo(
    phoneNumberPrefix: (json['phone_number_prefix'] as String?) ?? '',
  );
}

/// Returns information about a phone number by its prefix synchronously. getCountries must be called at least once after changing localization to the specified language if properly localized country information is expected. Can be called synchronously
class GetPhoneNumberInfoSync extends TdFunction {
  /// A two-letter ISO 639-1 country code for country information localization
  final String languageCode;
  /// The phone number prefix
  final String phoneNumberPrefix;

  GetPhoneNumberInfoSync({
    required this.languageCode,
    required this.phoneNumberPrefix,
  });

  @override
  String toString() {
    var s = 'td::GetPhoneNumberInfoSync(';

    // Params
    final params = <String>[];
    params.add(languageCode.toString());
    params.add(phoneNumberPrefix.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getPhoneNumberInfoSync',
    'language_code': languageCode,
    'phone_number_prefix': phoneNumberPrefix,
  };

  factory GetPhoneNumberInfoSync.fromJson(Map<String, dynamic> json) => GetPhoneNumberInfoSync(
    languageCode: (json['language_code'] as String?) ?? '',
    phoneNumberPrefix: (json['phone_number_prefix'] as String?) ?? '',
  );
}

/// Returns the link for downloading official Telegram application to be used when the current user invites friends to Telegram
class GetApplicationDownloadLink extends TdFunction {
  GetApplicationDownloadLink();

  @override
  String toString() {
    var s = 'td::GetApplicationDownloadLink(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getApplicationDownloadLink',
  };

  factory GetApplicationDownloadLink.fromJson(Map<String, dynamic> json) => GetApplicationDownloadLink(
  );
}

/// Returns information about a tg:// deep link. Use "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for testing. Returns a 404 error for unknown links. Can be called before authorization
class GetDeepLinkInfo extends TdFunction {
  /// The link
  final String link;

  GetDeepLinkInfo({
    required this.link,
  });

  @override
  String toString() {
    var s = 'td::GetDeepLinkInfo(';

    // Params
    final params = <String>[];
    params.add(link.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getDeepLinkInfo',
    'link': link,
  };

  factory GetDeepLinkInfo.fromJson(Map<String, dynamic> json) => GetDeepLinkInfo(
    link: (json['link'] as String?) ?? '',
  );
}

/// Returns application config, provided by the server. Can be called before authorization
class GetApplicationConfig extends TdFunction {
  GetApplicationConfig();

  @override
  String toString() {
    var s = 'td::GetApplicationConfig(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getApplicationConfig',
  };

  factory GetApplicationConfig.fromJson(Map<String, dynamic> json) => GetApplicationConfig(
  );
}

/// Saves application log event on the server. Can be called before authorization
class SaveApplicationLogEvent extends TdFunction {
  /// Event type
  final String type;
  /// Optional chat identifier, associated with the event
  final int chatId;
  /// The log event data
  final a.JsonValue? data;

  SaveApplicationLogEvent({
    required this.type,
    required this.chatId,
    required this.data,
  });

  @override
  String toString() {
    var s = 'td::SaveApplicationLogEvent(';

    // Params
    final params = <String>[];
    params.add(type.toString());
    params.add(chatId.toString());
    params.add(data.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'saveApplicationLogEvent',
    'type': type,
    'chat_id': chatId,
    'data': data?.toJson(),
  };

  factory SaveApplicationLogEvent.fromJson(Map<String, dynamic> json) => SaveApplicationLogEvent(
    type: (json['type'] as String?) ?? '',
    chatId: (json['chat_id'] as int?) ?? 0,
    data: b.TdBase.fromJson(json['data']) as a.JsonValue?,
  );
}

/// Adds a proxy server for network requests. Can be called before authorization
class AddProxy extends TdFunction {
  /// Proxy server IP address
  final String server;
  /// Proxy server port
  final int port;
  /// True, if the proxy needs to be enabled
  final bool enable;
  /// Proxy type
  final a.ProxyType? type;

  AddProxy({
    required this.server,
    required this.port,
    required this.enable,
    required this.type,
  });

  @override
  String toString() {
    var s = 'td::AddProxy(';

    // Params
    final params = <String>[];
    params.add(server.toString());
    params.add(port.toString());
    params.add(enable.toString());
    params.add(type.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'addProxy',
    'server': server,
    'port': port,
    'enable': enable,
    'type': type?.toJson(),
  };

  factory AddProxy.fromJson(Map<String, dynamic> json) => AddProxy(
    server: (json['server'] as String?) ?? '',
    port: (json['port'] as int?) ?? 0,
    enable: (json['enable'] as bool?) ?? false,
    type: b.TdBase.fromJson(json['type']) as a.ProxyType?,
  );
}

/// Edits an existing proxy server for network requests. Can be called before authorization
class EditProxy extends TdFunction {
  /// Proxy identifier
  final int proxyId;
  /// Proxy server IP address
  final String server;
  /// Proxy server port
  final int port;
  /// True, if the proxy needs to be enabled
  final bool enable;
  /// Proxy type
  final a.ProxyType? type;

  EditProxy({
    required this.proxyId,
    required this.server,
    required this.port,
    required this.enable,
    required this.type,
  });

  @override
  String toString() {
    var s = 'td::EditProxy(';

    // Params
    final params = <String>[];
    params.add(proxyId.toString());
    params.add(server.toString());
    params.add(port.toString());
    params.add(enable.toString());
    params.add(type.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'editProxy',
    'proxy_id': proxyId,
    'server': server,
    'port': port,
    'enable': enable,
    'type': type?.toJson(),
  };

  factory EditProxy.fromJson(Map<String, dynamic> json) => EditProxy(
    proxyId: (json['proxy_id'] as int?) ?? 0,
    server: (json['server'] as String?) ?? '',
    port: (json['port'] as int?) ?? 0,
    enable: (json['enable'] as bool?) ?? false,
    type: b.TdBase.fromJson(json['type']) as a.ProxyType?,
  );
}

/// Enables a proxy. Only one proxy can be enabled at a time. Can be called before authorization
class EnableProxy extends TdFunction {
  /// Proxy identifier
  final int proxyId;

  EnableProxy({
    required this.proxyId,
  });

  @override
  String toString() {
    var s = 'td::EnableProxy(';

    // Params
    final params = <String>[];
    params.add(proxyId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'enableProxy',
    'proxy_id': proxyId,
  };

  factory EnableProxy.fromJson(Map<String, dynamic> json) => EnableProxy(
    proxyId: (json['proxy_id'] as int?) ?? 0,
  );
}

/// Disables the currently enabled proxy. Can be called before authorization
class DisableProxy extends TdFunction {
  DisableProxy();

  @override
  String toString() {
    var s = 'td::DisableProxy(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'disableProxy',
  };

  factory DisableProxy.fromJson(Map<String, dynamic> json) => DisableProxy(
  );
}

/// Removes a proxy server. Can be called before authorization
class RemoveProxy extends TdFunction {
  /// Proxy identifier
  final int proxyId;

  RemoveProxy({
    required this.proxyId,
  });

  @override
  String toString() {
    var s = 'td::RemoveProxy(';

    // Params
    final params = <String>[];
    params.add(proxyId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'removeProxy',
    'proxy_id': proxyId,
  };

  factory RemoveProxy.fromJson(Map<String, dynamic> json) => RemoveProxy(
    proxyId: (json['proxy_id'] as int?) ?? 0,
  );
}

/// Returns list of proxies that are currently set up. Can be called before authorization
class GetProxies extends TdFunction {
  GetProxies();

  @override
  String toString() {
    var s = 'td::GetProxies(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getProxies',
  };

  factory GetProxies.fromJson(Map<String, dynamic> json) => GetProxies(
  );
}

/// Returns an HTTPS link, which can be used to add a proxy. Available only for SOCKS5 and MTProto proxies. Can be called before authorization
class GetProxyLink extends TdFunction {
  /// Proxy identifier
  final int proxyId;

  GetProxyLink({
    required this.proxyId,
  });

  @override
  String toString() {
    var s = 'td::GetProxyLink(';

    // Params
    final params = <String>[];
    params.add(proxyId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getProxyLink',
    'proxy_id': proxyId,
  };

  factory GetProxyLink.fromJson(Map<String, dynamic> json) => GetProxyLink(
    proxyId: (json['proxy_id'] as int?) ?? 0,
  );
}

/// Computes time needed to receive a response from a Telegram server through a proxy. Can be called before authorization
class PingProxy extends TdFunction {
  /// Proxy identifier. Use 0 to ping a Telegram server without a proxy
  final int proxyId;

  PingProxy({
    required this.proxyId,
  });

  @override
  String toString() {
    var s = 'td::PingProxy(';

    // Params
    final params = <String>[];
    params.add(proxyId.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pingProxy',
    'proxy_id': proxyId,
  };

  factory PingProxy.fromJson(Map<String, dynamic> json) => PingProxy(
    proxyId: (json['proxy_id'] as int?) ?? 0,
  );
}

/// Sets new log stream for internal logging of TDLib. Can be called synchronously
class SetLogStream extends TdFunction {
  /// New log stream
  final a.LogStream? logStream;

  SetLogStream({
    required this.logStream,
  });

  @override
  String toString() {
    var s = 'td::SetLogStream(';

    // Params
    final params = <String>[];
    params.add(logStream.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setLogStream',
    'log_stream': logStream?.toJson(),
  };

  factory SetLogStream.fromJson(Map<String, dynamic> json) => SetLogStream(
    logStream: b.TdBase.fromJson(json['log_stream']) as a.LogStream?,
  );
}

/// Returns information about currently used log stream for internal logging of TDLib. Can be called synchronously
class GetLogStream extends TdFunction {
  GetLogStream();

  @override
  String toString() {
    var s = 'td::GetLogStream(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getLogStream',
  };

  factory GetLogStream.fromJson(Map<String, dynamic> json) => GetLogStream(
  );
}

/// Sets the verbosity level of the internal logging of TDLib. Can be called synchronously
class SetLogVerbosityLevel extends TdFunction {
  /// New value of the verbosity level for logging. Value 0 corresponds to fatal errors, value 1 corresponds to errors, value 2 corresponds to warnings and debug warnings, value 3 corresponds to informational, value 4 corresponds to debug, value 5 corresponds to verbose debug, value greater than 5 and up to 1023 can be used to enable even more logging
  final int newVerbosityLevel;

  SetLogVerbosityLevel({
    required this.newVerbosityLevel,
  });

  @override
  String toString() {
    var s = 'td::SetLogVerbosityLevel(';

    // Params
    final params = <String>[];
    params.add(newVerbosityLevel.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setLogVerbosityLevel',
    'new_verbosity_level': newVerbosityLevel,
  };

  factory SetLogVerbosityLevel.fromJson(Map<String, dynamic> json) => SetLogVerbosityLevel(
    newVerbosityLevel: (json['new_verbosity_level'] as int?) ?? 0,
  );
}

/// Returns current verbosity level of the internal logging of TDLib. Can be called synchronously
class GetLogVerbosityLevel extends TdFunction {
  GetLogVerbosityLevel();

  @override
  String toString() {
    var s = 'td::GetLogVerbosityLevel(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getLogVerbosityLevel',
  };

  factory GetLogVerbosityLevel.fromJson(Map<String, dynamic> json) => GetLogVerbosityLevel(
  );
}

/// Returns list of available TDLib internal log tags, for example, ["actor", "binlog", "connections", "notifications", "proxy"]. Can be called synchronously
class GetLogTags extends TdFunction {
  GetLogTags();

  @override
  String toString() {
    var s = 'td::GetLogTags(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getLogTags',
  };

  factory GetLogTags.fromJson(Map<String, dynamic> json) => GetLogTags(
  );
}

/// Sets the verbosity level for a specified TDLib internal log tag. Can be called synchronously
class SetLogTagVerbosityLevel extends TdFunction {
  /// Logging tag to change verbosity level
  final String tag;
  /// New verbosity level; 1-1024
  final int newVerbosityLevel;

  SetLogTagVerbosityLevel({
    required this.tag,
    required this.newVerbosityLevel,
  });

  @override
  String toString() {
    var s = 'td::SetLogTagVerbosityLevel(';

    // Params
    final params = <String>[];
    params.add(tag.toString());
    params.add(newVerbosityLevel.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'setLogTagVerbosityLevel',
    'tag': tag,
    'new_verbosity_level': newVerbosityLevel,
  };

  factory SetLogTagVerbosityLevel.fromJson(Map<String, dynamic> json) => SetLogTagVerbosityLevel(
    tag: (json['tag'] as String?) ?? '',
    newVerbosityLevel: (json['new_verbosity_level'] as int?) ?? 0,
  );
}

/// Returns current verbosity level for a specified TDLib internal log tag. Can be called synchronously
class GetLogTagVerbosityLevel extends TdFunction {
  /// Logging tag to change verbosity level
  final String tag;

  GetLogTagVerbosityLevel({
    required this.tag,
  });

  @override
  String toString() {
    var s = 'td::GetLogTagVerbosityLevel(';

    // Params
    final params = <String>[];
    params.add(tag.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'getLogTagVerbosityLevel',
    'tag': tag,
  };

  factory GetLogTagVerbosityLevel.fromJson(Map<String, dynamic> json) => GetLogTagVerbosityLevel(
    tag: (json['tag'] as String?) ?? '',
  );
}

/// Adds a message to TDLib internal log. Can be called synchronously
class AddLogMessage extends TdFunction {
  /// The minimum verbosity level needed for the message to be logged; 0-1023
  final int verbosityLevel;
  /// Text of a message to log
  final String text;

  AddLogMessage({
    required this.verbosityLevel,
    required this.text,
  });

  @override
  String toString() {
    var s = 'td::AddLogMessage(';

    // Params
    final params = <String>[];
    params.add(verbosityLevel.toString());
    params.add(text.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'addLogMessage',
    'verbosity_level': verbosityLevel,
    'text': text,
  };

  factory AddLogMessage.fromJson(Map<String, dynamic> json) => AddLogMessage(
    verbosityLevel: (json['verbosity_level'] as int?) ?? 0,
    text: (json['text'] as String?) ?? '',
  );
}

/// Does nothing; for testing only. This is an offline method. Can be called before authorization
class TestCallEmpty extends TdFunction {
  TestCallEmpty();

  @override
  String toString() {
    var s = 'td::TestCallEmpty(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testCallEmpty',
  };

  factory TestCallEmpty.fromJson(Map<String, dynamic> json) => TestCallEmpty(
  );
}

/// Returns the received string; for testing only. This is an offline method. Can be called before authorization
class TestCallString extends TdFunction {
  /// String to return
  final String x;

  TestCallString({
    required this.x,
  });

  @override
  String toString() {
    var s = 'td::TestCallString(';

    // Params
    final params = <String>[];
    params.add(x.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testCallString',
    'x': x,
  };

  factory TestCallString.fromJson(Map<String, dynamic> json) => TestCallString(
    x: (json['x'] as String?) ?? '',
  );
}

/// Returns the received bytes; for testing only. This is an offline method. Can be called before authorization
class TestCallBytes extends TdFunction {
  /// Bytes to return
  final Uint8List x;

  TestCallBytes({
    required this.x,
  });

  @override
  String toString() {
    var s = 'td::TestCallBytes(';

    // Params
    final params = <String>[];
    params.add(x.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testCallBytes',
    'x': base64.encode(x),
  };

  factory TestCallBytes.fromJson(Map<String, dynamic> json) => TestCallBytes(
    x: json['x'] == null ? Uint8List(0) : base64.decode(json['x']),
  );
}

/// Returns the received vector of numbers; for testing only. This is an offline method. Can be called before authorization
class TestCallVectorInt extends TdFunction {
  /// Vector of numbers to return
  final List<int> x;

  TestCallVectorInt({
    required this.x,
  });

  @override
  String toString() {
    var s = 'td::TestCallVectorInt(';

    // Params
    final params = <String>[];
    params.add(x.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testCallVectorInt',
    'x': x.map((_e1) => _e1).toList(growable: false),
  };

  factory TestCallVectorInt.fromJson(Map<String, dynamic> json) => TestCallVectorInt(
    x: json['x'] == null ? <int>[] : (json['x'] as List<dynamic>).map((e) => ((e as int?) ?? 0)).toList(growable: false),
  );
}

/// Returns the received vector of objects containing a number; for testing only. This is an offline method. Can be called before authorization
class TestCallVectorIntObject extends TdFunction {
  /// Vector of objects to return
  final List<o.TestInt?> x;

  TestCallVectorIntObject({
    required this.x,
  });

  @override
  String toString() {
    var s = 'td::TestCallVectorIntObject(';

    // Params
    final params = <String>[];
    params.add(x.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testCallVectorIntObject',
    'x': x.map((_e1) => _e1?.toJson()).toList(growable: false),
  };

  factory TestCallVectorIntObject.fromJson(Map<String, dynamic> json) => TestCallVectorIntObject(
    x: json['x'] == null ? <o.TestInt?>[] : (json['x'] as List<dynamic>).map((e) => (b.TdBase.fromJson(e) as o.TestInt?)).toList(growable: false),
  );
}

/// Returns the received vector of strings; for testing only. This is an offline method. Can be called before authorization
class TestCallVectorString extends TdFunction {
  /// Vector of strings to return
  final List<String> x;

  TestCallVectorString({
    required this.x,
  });

  @override
  String toString() {
    var s = 'td::TestCallVectorString(';

    // Params
    final params = <String>[];
    params.add(x.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testCallVectorString',
    'x': x.map((_e1) => _e1).toList(growable: false),
  };

  factory TestCallVectorString.fromJson(Map<String, dynamic> json) => TestCallVectorString(
    x: json['x'] == null ? <String>[] : (json['x'] as List<dynamic>).map((e) => ((e as String?) ?? '')).toList(growable: false),
  );
}

/// Returns the received vector of objects containing a string; for testing only. This is an offline method. Can be called before authorization
class TestCallVectorStringObject extends TdFunction {
  /// Vector of objects to return
  final List<o.TestString?> x;

  TestCallVectorStringObject({
    required this.x,
  });

  @override
  String toString() {
    var s = 'td::TestCallVectorStringObject(';

    // Params
    final params = <String>[];
    params.add(x.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testCallVectorStringObject',
    'x': x.map((_e1) => _e1?.toJson()).toList(growable: false),
  };

  factory TestCallVectorStringObject.fromJson(Map<String, dynamic> json) => TestCallVectorStringObject(
    x: json['x'] == null ? <o.TestString?>[] : (json['x'] as List<dynamic>).map((e) => (b.TdBase.fromJson(e) as o.TestString?)).toList(growable: false),
  );
}

/// Returns the squared received number; for testing only. This is an offline method. Can be called before authorization
class TestSquareInt extends TdFunction {
  /// Number to square
  final int x;

  TestSquareInt({
    required this.x,
  });

  @override
  String toString() {
    var s = 'td::TestSquareInt(';

    // Params
    final params = <String>[];
    params.add(x.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testSquareInt',
    'x': x,
  };

  factory TestSquareInt.fromJson(Map<String, dynamic> json) => TestSquareInt(
    x: (json['x'] as int?) ?? 0,
  );
}

/// Sends a simple network request to the Telegram servers; for testing only. Can be called before authorization
class TestNetwork extends TdFunction {
  TestNetwork();

  @override
  String toString() {
    var s = 'td::TestNetwork(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testNetwork',
  };

  factory TestNetwork.fromJson(Map<String, dynamic> json) => TestNetwork(
  );
}

/// Sends a simple network request to the Telegram servers via proxy; for testing only. Can be called before authorization
class TestProxy extends TdFunction {
  /// Proxy server IP address
  final String server;
  /// Proxy server port
  final int port;
  /// Proxy type
  final a.ProxyType? type;
  /// Identifier of a datacenter, with which to test connection
  final int dcId;
  /// The maximum overall timeout for the request
  final double timeout;

  TestProxy({
    required this.server,
    required this.port,
    required this.type,
    required this.dcId,
    required this.timeout,
  });

  @override
  String toString() {
    var s = 'td::TestProxy(';

    // Params
    final params = <String>[];
    params.add(server.toString());
    params.add(port.toString());
    params.add(type.toString());
    params.add(dcId.toString());
    params.add(timeout.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testProxy',
    'server': server,
    'port': port,
    'type': type?.toJson(),
    'dc_id': dcId,
    'timeout': timeout,
  };

  factory TestProxy.fromJson(Map<String, dynamic> json) => TestProxy(
    server: (json['server'] as String?) ?? '',
    port: (json['port'] as int?) ?? 0,
    type: b.TdBase.fromJson(json['type']) as a.ProxyType?,
    dcId: (json['dc_id'] as int?) ?? 0,
    timeout: (json['timeout'] as double?) ?? 0,
  );
}

/// Forces an updates.getDifference call to the Telegram servers; for testing only
class TestGetDifference extends TdFunction {
  TestGetDifference();

  @override
  String toString() {
    var s = 'td::TestGetDifference(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testGetDifference',
  };

  factory TestGetDifference.fromJson(Map<String, dynamic> json) => TestGetDifference(
  );
}

/// Does nothing and ensures that the Update object is used; for testing only. This is an offline method. Can be called before authorization
class TestUseUpdate extends TdFunction {
  TestUseUpdate();

  @override
  String toString() {
    var s = 'td::TestUseUpdate(';

    // Params
    final params = <String>[];
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testUseUpdate',
  };

  factory TestUseUpdate.fromJson(Map<String, dynamic> json) => TestUseUpdate(
  );
}

/// Returns the specified error and ensures that the Error object is used; for testing only. Can be called synchronously
class TestReturnError extends TdFunction {
  /// The error to be returned
  final o.Error? error;

  TestReturnError({
    required this.error,
  });

  @override
  String toString() {
    var s = 'td::TestReturnError(';

    // Params
    final params = <String>[];
    params.add(error.toString());
    s += params.join(', ');

    s += ')';

    return s;
  }
  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testReturnError',
    'error': error?.toJson(),
  };

  factory TestReturnError.fromJson(Map<String, dynamic> json) => TestReturnError(
    error: b.TdBase.fromJson(json['error']) as o.Error?,
  );
}

