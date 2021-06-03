import 'dart:convert';
import 'dart:typed_data';

import 'base.dart' as b;
import 'abstract.dart' as a;

/// An object of this type can be returned on every function call, in case of an error
class Error extends a.Error {
  /// Error code; subject to future changes. If the error code is 406, the error message must not be processed in any way and must not be displayed to the user
  final int code;
  /// Error message; subject to future changes
  final String message;

  Error({
    required this.code,
    required this.message,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'error',
    'code': code,
    'message': message,
  };

  factory Error.fromJson(Map<String, dynamic> json) => Error(
    code: json['code'],
    message: json['message'],
  );
}

/// An object of this type is returned on a successful function call for certain functions
class Ok extends a.Ok {
  Ok();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'ok',
  };

  factory Ok.fromJson(Map<String, dynamic> json) => Ok(
  );
}

/// Contains parameters for TDLib initialization
class TdlibParameters extends a.TdlibParameters {
  /// If set to true, the Telegram test environment will be used instead of the production environment
  final bool useTestDc;
  /// The path to the directory for the persistent database; if empty, the current working directory will be used
  final String databaseDirectory;
  /// The path to the directory for storing files; if empty, database_directory will be used
  final String filesDirectory;
  /// If set to true, information about downloaded and uploaded files will be saved between application restarts
  final bool useFileDatabase;
  /// If set to true, the library will maintain a cache of users, basic groups, supergroups, channels and secret chats. Implies use_file_database
  final bool useChatInfoDatabase;
  /// If set to true, the library will maintain a cache of chats and messages. Implies use_chat_info_database
  final bool useMessageDatabase;
  /// If set to true, support for secret chats will be enabled
  final bool useSecretChats;
  /// Application identifier for Telegram API access, which can be obtained at https://my.telegram.org
  final int apiId;
  /// Application identifier hash for Telegram API access, which can be obtained at https://my.telegram.org
  final String apiHash;
  /// IETF language tag of the user's operating system language; must be non-empty
  final String systemLanguageCode;
  /// Model of the device the application is being run on; must be non-empty
  final String deviceModel;
  /// Version of the operating system the application is being run on. If empty, the version is automatically detected by TDLib
  final String systemVersion;
  /// Application version; must be non-empty
  final String applicationVersion;
  /// If set to true, old files will automatically be deleted
  final bool enableStorageOptimizer;
  /// If set to true, original file names will be ignored. Otherwise, downloaded files will be saved under names as close as possible to the original name
  final bool ignoreFileNames;

  TdlibParameters({
    required this.useTestDc,
    required this.databaseDirectory,
    required this.filesDirectory,
    required this.useFileDatabase,
    required this.useChatInfoDatabase,
    required this.useMessageDatabase,
    required this.useSecretChats,
    required this.apiId,
    required this.apiHash,
    required this.systemLanguageCode,
    required this.deviceModel,
    required this.systemVersion,
    required this.applicationVersion,
    required this.enableStorageOptimizer,
    required this.ignoreFileNames,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'tdlibParameters',
    'use_test_dc': useTestDc,
    'database_directory': databaseDirectory,
    'files_directory': filesDirectory,
    'use_file_database': useFileDatabase,
    'use_chat_info_database': useChatInfoDatabase,
    'use_message_database': useMessageDatabase,
    'use_secret_chats': useSecretChats,
    'api_id': apiId,
    'api_hash': apiHash,
    'system_language_code': systemLanguageCode,
    'device_model': deviceModel,
    'system_version': systemVersion,
    'application_version': applicationVersion,
    'enable_storage_optimizer': enableStorageOptimizer,
    'ignore_file_names': ignoreFileNames,
  };

  factory TdlibParameters.fromJson(Map<String, dynamic> json) => TdlibParameters(
    useTestDc: json['use_test_dc'],
    databaseDirectory: json['database_directory'],
    filesDirectory: json['files_directory'],
    useFileDatabase: json['use_file_database'],
    useChatInfoDatabase: json['use_chat_info_database'],
    useMessageDatabase: json['use_message_database'],
    useSecretChats: json['use_secret_chats'],
    apiId: json['api_id'],
    apiHash: json['api_hash'],
    systemLanguageCode: json['system_language_code'],
    deviceModel: json['device_model'],
    systemVersion: json['system_version'],
    applicationVersion: json['application_version'],
    enableStorageOptimizer: json['enable_storage_optimizer'],
    ignoreFileNames: json['ignore_file_names'],
  );
}

/// An authentication code is delivered via a private Telegram message, which can be viewed from another active session
class AuthenticationCodeTypeTelegramMessage extends a.AuthenticationCodeType {
  /// Length of the code
  final int length;

  AuthenticationCodeTypeTelegramMessage({
    required this.length,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authenticationCodeTypeTelegramMessage',
    'length': length,
  };

  factory AuthenticationCodeTypeTelegramMessage.fromJson(Map<String, dynamic> json) => AuthenticationCodeTypeTelegramMessage(
    length: json['length'],
  );
}

/// An authentication code is delivered via an SMS message to the specified phone number
class AuthenticationCodeTypeSms extends a.AuthenticationCodeType {
  /// Length of the code
  final int length;

  AuthenticationCodeTypeSms({
    required this.length,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authenticationCodeTypeSms',
    'length': length,
  };

  factory AuthenticationCodeTypeSms.fromJson(Map<String, dynamic> json) => AuthenticationCodeTypeSms(
    length: json['length'],
  );
}

/// An authentication code is delivered via a phone call to the specified phone number
class AuthenticationCodeTypeCall extends a.AuthenticationCodeType {
  /// Length of the code
  final int length;

  AuthenticationCodeTypeCall({
    required this.length,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authenticationCodeTypeCall',
    'length': length,
  };

  factory AuthenticationCodeTypeCall.fromJson(Map<String, dynamic> json) => AuthenticationCodeTypeCall(
    length: json['length'],
  );
}

/// An authentication code is delivered by an immediately cancelled call to the specified phone number. The number from which the call was made is the code
class AuthenticationCodeTypeFlashCall extends a.AuthenticationCodeType {
  /// Pattern of the phone number from which the call will be made
  final String pattern;

  AuthenticationCodeTypeFlashCall({
    required this.pattern,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authenticationCodeTypeFlashCall',
    'pattern': pattern,
  };

  factory AuthenticationCodeTypeFlashCall.fromJson(Map<String, dynamic> json) => AuthenticationCodeTypeFlashCall(
    pattern: json['pattern'],
  );
}

/// Information about the authentication code that was sent
class AuthenticationCodeInfo extends a.AuthenticationCodeInfo {
  /// A phone number that is being authenticated
  final String phoneNumber;
  /// Describes the way the code was sent to the user
  final a.AuthenticationCodeType type;
  /// Describes the way the next code will be sent to the user; may be null
  final a.AuthenticationCodeType nextType;
  /// Timeout before the code should be re-sent, in seconds
  final int timeout;

  AuthenticationCodeInfo({
    required this.phoneNumber,
    required this.type,
    required this.nextType,
    required this.timeout,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authenticationCodeInfo',
    'phone_number': phoneNumber,
    'type': type,
    'next_type': nextType,
    'timeout': timeout,
  };

  factory AuthenticationCodeInfo.fromJson(Map<String, dynamic> json) => AuthenticationCodeInfo(
    phoneNumber: json['phone_number'],
    type: b.TdBase.fromJson(json['type']) as a.AuthenticationCodeType,
    nextType: b.TdBase.fromJson(json['next_type']) as a.AuthenticationCodeType,
    timeout: json['timeout'],
  );
}

/// Information about the email address authentication code that was sent
class EmailAddressAuthenticationCodeInfo extends a.EmailAddressAuthenticationCodeInfo {
  /// Pattern of the email address to which an authentication code was sent
  final String emailAddressPattern;
  /// Length of the code; 0 if unknown
  final int length;

  EmailAddressAuthenticationCodeInfo({
    required this.emailAddressPattern,
    required this.length,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'emailAddressAuthenticationCodeInfo',
    'email_address_pattern': emailAddressPattern,
    'length': length,
  };

  factory EmailAddressAuthenticationCodeInfo.fromJson(Map<String, dynamic> json) => EmailAddressAuthenticationCodeInfo(
    emailAddressPattern: json['email_address_pattern'],
    length: json['length'],
  );
}

/// Represents a part of the text that needs to be formatted in some unusual way
class TextEntity extends a.TextEntity {
  /// Offset of the entity, in UTF-16 code units
  final int offset;
  /// Length of the entity, in UTF-16 code units
  final int length;
  /// Type of the entity
  final a.TextEntityType type;

  TextEntity({
    required this.offset,
    required this.length,
    required this.type,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntity',
    'offset': offset,
    'length': length,
    'type': type,
  };

  factory TextEntity.fromJson(Map<String, dynamic> json) => TextEntity(
    offset: json['offset'],
    length: json['length'],
    type: b.TdBase.fromJson(json['type']) as a.TextEntityType,
  );
}

/// Contains a list of text entities
class TextEntities extends a.TextEntities {
  /// List of text entities
  final List<TextEntity> entities;

  TextEntities({
    required this.entities,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntities',
    'entities': entities,
  };

  factory TextEntities.fromJson(Map<String, dynamic> json) => TextEntities(
    entities: (json['entities'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as TextEntity).toList(growable: false),
  );
}

/// A text with some entities
class FormattedText extends a.FormattedText {
  /// The text
  final String text;
  /// Entities contained in the text. Entities can be nested, but must not mutually intersect with each other.
  final List<TextEntity> entities;

  FormattedText({
    required this.text,
    required this.entities,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'formattedText',
    'text': text,
    'entities': entities,
  };

  factory FormattedText.fromJson(Map<String, dynamic> json) => FormattedText(
    text: json['text'],
    entities: (json['entities'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as TextEntity).toList(growable: false),
  );
}

/// Contains Telegram terms of service
class TermsOfService extends a.TermsOfService {
  /// Text of the terms of service
  final FormattedText text;
  /// The minimum age of a user to be able to accept the terms; 0 if any
  final int minUserAge;
  /// True, if a blocking popup with terms of service must be shown to the user
  final bool showPopup;

  TermsOfService({
    required this.text,
    required this.minUserAge,
    required this.showPopup,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'termsOfService',
    'text': text,
    'min_user_age': minUserAge,
    'show_popup': showPopup,
  };

  factory TermsOfService.fromJson(Map<String, dynamic> json) => TermsOfService(
    text: b.TdBase.fromJson(json['text']) as FormattedText,
    minUserAge: json['min_user_age'],
    showPopup: json['show_popup'],
  );
}

/// TDLib needs TdlibParameters for initialization
class AuthorizationStateWaitTdlibParameters extends a.AuthorizationState {
  AuthorizationStateWaitTdlibParameters();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authorizationStateWaitTdlibParameters',
  };

  factory AuthorizationStateWaitTdlibParameters.fromJson(Map<String, dynamic> json) => AuthorizationStateWaitTdlibParameters(
  );
}

/// TDLib needs an encryption key to decrypt the local database
class AuthorizationStateWaitEncryptionKey extends a.AuthorizationState {
  /// True, if the database is currently encrypted
  final bool isEncrypted;

  AuthorizationStateWaitEncryptionKey({
    required this.isEncrypted,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authorizationStateWaitEncryptionKey',
    'is_encrypted': isEncrypted,
  };

  factory AuthorizationStateWaitEncryptionKey.fromJson(Map<String, dynamic> json) => AuthorizationStateWaitEncryptionKey(
    isEncrypted: json['is_encrypted'],
  );
}

/// TDLib needs the user's phone number to authorize. Call `setAuthenticationPhoneNumber` to provide the phone number, or use `requestQrCodeAuthentication`, or `checkAuthenticationBotToken` for other authentication options
class AuthorizationStateWaitPhoneNumber extends a.AuthorizationState {
  AuthorizationStateWaitPhoneNumber();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authorizationStateWaitPhoneNumber',
  };

  factory AuthorizationStateWaitPhoneNumber.fromJson(Map<String, dynamic> json) => AuthorizationStateWaitPhoneNumber(
  );
}

/// TDLib needs the user's authentication code to authorize
class AuthorizationStateWaitCode extends a.AuthorizationState {
  /// Information about the authorization code that was sent
  final AuthenticationCodeInfo codeInfo;

  AuthorizationStateWaitCode({
    required this.codeInfo,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authorizationStateWaitCode',
    'code_info': codeInfo,
  };

  factory AuthorizationStateWaitCode.fromJson(Map<String, dynamic> json) => AuthorizationStateWaitCode(
    codeInfo: b.TdBase.fromJson(json['code_info']) as AuthenticationCodeInfo,
  );
}

/// The user needs to confirm authorization on another logged in device by scanning a QR code with the provided link
class AuthorizationStateWaitOtherDeviceConfirmation extends a.AuthorizationState {
  /// A tg:// URL for the QR code. The link will be updated frequently
  final String link;

  AuthorizationStateWaitOtherDeviceConfirmation({
    required this.link,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authorizationStateWaitOtherDeviceConfirmation',
    'link': link,
  };

  factory AuthorizationStateWaitOtherDeviceConfirmation.fromJson(Map<String, dynamic> json) => AuthorizationStateWaitOtherDeviceConfirmation(
    link: json['link'],
  );
}

/// The user is unregistered and need to accept terms of service and enter their first name and last name to finish registration
class AuthorizationStateWaitRegistration extends a.AuthorizationState {
  /// Telegram terms of service
  final TermsOfService termsOfService;

  AuthorizationStateWaitRegistration({
    required this.termsOfService,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authorizationStateWaitRegistration',
    'terms_of_service': termsOfService,
  };

  factory AuthorizationStateWaitRegistration.fromJson(Map<String, dynamic> json) => AuthorizationStateWaitRegistration(
    termsOfService: b.TdBase.fromJson(json['terms_of_service']) as TermsOfService,
  );
}

/// The user has been authorized, but needs to enter a password to start using the application
class AuthorizationStateWaitPassword extends a.AuthorizationState {
  /// Hint for the password; may be empty
  final String passwordHint;
  /// True, if a recovery email address has been set up
  final bool hasRecoveryEmailAddress;
  /// Pattern of the email address to which the recovery email was sent; empty until a recovery email has been sent
  final String recoveryEmailAddressPattern;

  AuthorizationStateWaitPassword({
    required this.passwordHint,
    required this.hasRecoveryEmailAddress,
    required this.recoveryEmailAddressPattern,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authorizationStateWaitPassword',
    'password_hint': passwordHint,
    'has_recovery_email_address': hasRecoveryEmailAddress,
    'recovery_email_address_pattern': recoveryEmailAddressPattern,
  };

  factory AuthorizationStateWaitPassword.fromJson(Map<String, dynamic> json) => AuthorizationStateWaitPassword(
    passwordHint: json['password_hint'],
    hasRecoveryEmailAddress: json['has_recovery_email_address'],
    recoveryEmailAddressPattern: json['recovery_email_address_pattern'],
  );
}

/// The user has been successfully authorized. TDLib is now ready to answer queries
class AuthorizationStateReady extends a.AuthorizationState {
  AuthorizationStateReady();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authorizationStateReady',
  };

  factory AuthorizationStateReady.fromJson(Map<String, dynamic> json) => AuthorizationStateReady(
  );
}

/// The user is currently logging out
class AuthorizationStateLoggingOut extends a.AuthorizationState {
  AuthorizationStateLoggingOut();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authorizationStateLoggingOut',
  };

  factory AuthorizationStateLoggingOut.fromJson(Map<String, dynamic> json) => AuthorizationStateLoggingOut(
  );
}

/// TDLib is closing, all subsequent queries will be answered with the error 500. Note that closing TDLib can take a while. All resources will be freed only after authorizationStateClosed has been received
class AuthorizationStateClosing extends a.AuthorizationState {
  AuthorizationStateClosing();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authorizationStateClosing',
  };

  factory AuthorizationStateClosing.fromJson(Map<String, dynamic> json) => AuthorizationStateClosing(
  );
}

/// TDLib client is in its final state. All databases are closed and all resources are released. No other updates will be received after this. All queries will be responded to
class AuthorizationStateClosed extends a.AuthorizationState {
  AuthorizationStateClosed();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'authorizationStateClosed',
  };

  factory AuthorizationStateClosed.fromJson(Map<String, dynamic> json) => AuthorizationStateClosed(
  );
}

/// Represents the current state of 2-step verification
class PasswordState extends a.PasswordState {
  /// True, if a 2-step verification password is set
  final bool hasPassword;
  /// Hint for the password; may be empty
  final String passwordHint;
  /// True, if a recovery email is set
  final bool hasRecoveryEmailAddress;
  /// True, if some Telegram Passport elements were saved
  final bool hasPassportData;
  /// Information about the recovery email address to which the confirmation email was sent; may be null
  final EmailAddressAuthenticationCodeInfo recoveryEmailAddressCodeInfo;

  PasswordState({
    required this.hasPassword,
    required this.passwordHint,
    required this.hasRecoveryEmailAddress,
    required this.hasPassportData,
    required this.recoveryEmailAddressCodeInfo,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passwordState',
    'has_password': hasPassword,
    'password_hint': passwordHint,
    'has_recovery_email_address': hasRecoveryEmailAddress,
    'has_passport_data': hasPassportData,
    'recovery_email_address_code_info': recoveryEmailAddressCodeInfo,
  };

  factory PasswordState.fromJson(Map<String, dynamic> json) => PasswordState(
    hasPassword: json['has_password'],
    passwordHint: json['password_hint'],
    hasRecoveryEmailAddress: json['has_recovery_email_address'],
    hasPassportData: json['has_passport_data'],
    recoveryEmailAddressCodeInfo: b.TdBase.fromJson(json['recovery_email_address_code_info']) as EmailAddressAuthenticationCodeInfo,
  );
}

/// Contains information about the current recovery email address
class RecoveryEmailAddress extends a.RecoveryEmailAddress {
  /// Recovery email address
  final String recoveryEmailAddress;

  RecoveryEmailAddress({
    required this.recoveryEmailAddress,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'recoveryEmailAddress',
    'recovery_email_address': recoveryEmailAddress,
  };

  factory RecoveryEmailAddress.fromJson(Map<String, dynamic> json) => RecoveryEmailAddress(
    recoveryEmailAddress: json['recovery_email_address'],
  );
}

/// Returns information about the availability of a temporary password, which can be used for payments
class TemporaryPasswordState extends a.TemporaryPasswordState {
  /// True, if a temporary password is available
  final bool hasPassword;
  /// Time left before the temporary password expires, in seconds
  final int validFor;

  TemporaryPasswordState({
    required this.hasPassword,
    required this.validFor,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'temporaryPasswordState',
    'has_password': hasPassword,
    'valid_for': validFor,
  };

  factory TemporaryPasswordState.fromJson(Map<String, dynamic> json) => TemporaryPasswordState(
    hasPassword: json['has_password'],
    validFor: json['valid_for'],
  );
}

/// Represents a local file
class LocalFile extends a.LocalFile {
  /// Local path to the locally available file part; may be empty
  final String path;
  /// True, if it is possible to try to download or generate the file
  final bool canBeDownloaded;
  /// True, if the file can be deleted
  final bool canBeDeleted;
  /// True, if the file is currently being downloaded (or a local copy is being generated by some other means)
  final bool isDownloadingActive;
  /// True, if the local copy is fully available
  final bool isDownloadingCompleted;
  /// Download will be started from this offset. downloaded_prefix_size is calculated from this offset
  final int downloadOffset;
  /// If is_downloading_completed is false, then only some prefix of the file starting from download_offset is ready to be read. downloaded_prefix_size is the size of that prefix
  final int downloadedPrefixSize;
  /// Total downloaded file bytes. Should be used only for calculating download progress. The actual file size may be bigger, and some parts of it may contain garbage
  final int downloadedSize;

  LocalFile({
    required this.path,
    required this.canBeDownloaded,
    required this.canBeDeleted,
    required this.isDownloadingActive,
    required this.isDownloadingCompleted,
    required this.downloadOffset,
    required this.downloadedPrefixSize,
    required this.downloadedSize,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'localFile',
    'path': path,
    'can_be_downloaded': canBeDownloaded,
    'can_be_deleted': canBeDeleted,
    'is_downloading_active': isDownloadingActive,
    'is_downloading_completed': isDownloadingCompleted,
    'download_offset': downloadOffset,
    'downloaded_prefix_size': downloadedPrefixSize,
    'downloaded_size': downloadedSize,
  };

  factory LocalFile.fromJson(Map<String, dynamic> json) => LocalFile(
    path: json['path'],
    canBeDownloaded: json['can_be_downloaded'],
    canBeDeleted: json['can_be_deleted'],
    isDownloadingActive: json['is_downloading_active'],
    isDownloadingCompleted: json['is_downloading_completed'],
    downloadOffset: json['download_offset'],
    downloadedPrefixSize: json['downloaded_prefix_size'],
    downloadedSize: json['downloaded_size'],
  );
}

/// Represents a remote file
class RemoteFile extends a.RemoteFile {
  /// Remote file identifier; may be empty. Can be used by the current user across application restarts or even from other devices. Uniquely identifies a file, but a file can have a lot of different valid identifiers.
  final String id;
  /// Unique file identifier; may be empty if unknown. The unique file identifier which is the same for the same file even for different users and is persistent over time
  final String uniqueId;
  /// True, if the file is currently being uploaded (or a remote copy is being generated by some other means)
  final bool isUploadingActive;
  /// True, if a remote copy is fully available
  final bool isUploadingCompleted;
  /// Size of the remote available part of the file; 0 if unknown
  final int uploadedSize;

  RemoteFile({
    required this.id,
    required this.uniqueId,
    required this.isUploadingActive,
    required this.isUploadingCompleted,
    required this.uploadedSize,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'remoteFile',
    'id': id,
    'unique_id': uniqueId,
    'is_uploading_active': isUploadingActive,
    'is_uploading_completed': isUploadingCompleted,
    'uploaded_size': uploadedSize,
  };

  factory RemoteFile.fromJson(Map<String, dynamic> json) => RemoteFile(
    id: json['id'],
    uniqueId: json['unique_id'],
    isUploadingActive: json['is_uploading_active'],
    isUploadingCompleted: json['is_uploading_completed'],
    uploadedSize: json['uploaded_size'],
  );
}

/// Represents a file
class File extends a.File {
  /// Unique file identifier
  final int id;
  /// File size; 0 if unknown
  final int size;
  /// Expected file size in case the exact file size is unknown, but an approximate size is known. Can be used to show download/upload progress
  final int expectedSize;
  /// Information about the local copy of the file
  final LocalFile local;
  /// Information about the remote copy of the file
  final RemoteFile remote;

  File({
    required this.id,
    required this.size,
    required this.expectedSize,
    required this.local,
    required this.remote,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'file',
    'id': id,
    'size': size,
    'expected_size': expectedSize,
    'local': local,
    'remote': remote,
  };

  factory File.fromJson(Map<String, dynamic> json) => File(
    id: json['id'],
    size: json['size'],
    expectedSize: json['expected_size'],
    local: b.TdBase.fromJson(json['local']) as LocalFile,
    remote: b.TdBase.fromJson(json['remote']) as RemoteFile,
  );
}

/// A file defined by its unique ID
class InputFileId extends a.InputFile {
  /// Unique file identifier
  final int id;

  InputFileId({
    required this.id,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputFileId',
    'id': id,
  };

  factory InputFileId.fromJson(Map<String, dynamic> json) => InputFileId(
    id: json['id'],
  );
}

/// A file defined by its remote ID. The remote ID is guaranteed to be usable only if the corresponding file is still accessible to the user and known to TDLib.
class InputFileRemote extends a.InputFile {
  /// Remote file identifier
  final String id;

  InputFileRemote({
    required this.id,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputFileRemote',
    'id': id,
  };

  factory InputFileRemote.fromJson(Map<String, dynamic> json) => InputFileRemote(
    id: json['id'],
  );
}

/// A file defined by a local path
class InputFileLocal extends a.InputFile {
  /// Local path to the file
  final String path;

  InputFileLocal({
    required this.path,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputFileLocal',
    'path': path,
  };

  factory InputFileLocal.fromJson(Map<String, dynamic> json) => InputFileLocal(
    path: json['path'],
  );
}

/// A file generated by the application
class InputFileGenerated extends a.InputFile {
  /// Local path to a file from which the file is generated; may be empty if there is no such file
  final String originalPath;
  /// String specifying the conversion applied to the original file; should be persistent across application restarts. Conversions beginning with '#' are reserved for internal TDLib usage
  final String conversion;
  /// Expected size of the generated file; 0 if unknown
  final int expectedSize;

  InputFileGenerated({
    required this.originalPath,
    required this.conversion,
    required this.expectedSize,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputFileGenerated',
    'original_path': originalPath,
    'conversion': conversion,
    'expected_size': expectedSize,
  };

  factory InputFileGenerated.fromJson(Map<String, dynamic> json) => InputFileGenerated(
    originalPath: json['original_path'],
    conversion: json['conversion'],
    expectedSize: json['expected_size'],
  );
}

/// Describes an image in JPEG format
class PhotoSize extends a.PhotoSize {
  /// Image type (see https://core.telegram.org/constructor/photoSize)
  final String type;
  /// Information about the image file
  final File photo;
  /// Image width
  final int width;
  /// Image height
  final int height;
  /// Sizes of progressive JPEG file prefixes, which can be used to preliminarily show the image
  final List<int> progressiveSizes;

  PhotoSize({
    required this.type,
    required this.photo,
    required this.width,
    required this.height,
    required this.progressiveSizes,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'photoSize',
    'type': type,
    'photo': photo,
    'width': width,
    'height': height,
    'progressive_sizes': progressiveSizes,
  };

  factory PhotoSize.fromJson(Map<String, dynamic> json) => PhotoSize(
    type: json['type'],
    photo: b.TdBase.fromJson(json['photo']) as File,
    width: json['width'],
    height: json['height'],
    progressiveSizes: (json['progressive_sizes'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// Thumbnail image of a very poor quality and low resolution
class Minithumbnail extends a.Minithumbnail {
  /// Thumbnail width, usually doesn't exceed 40
  final int width;
  /// Thumbnail height, usually doesn't exceed 40
  final int height;
  /// The thumbnail in JPEG format
  final Uint8List data;

  Minithumbnail({
    required this.width,
    required this.height,
    required this.data,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'minithumbnail',
    'width': width,
    'height': height,
    'data': data,
  };

  factory Minithumbnail.fromJson(Map<String, dynamic> json) => Minithumbnail(
    width: json['width'],
    height: json['height'],
    data: base64.decode(json['data']),
  );
}

/// The thumbnail is in JPEG format
class ThumbnailFormatJpeg extends a.ThumbnailFormat {
  ThumbnailFormatJpeg();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'thumbnailFormatJpeg',
  };

  factory ThumbnailFormatJpeg.fromJson(Map<String, dynamic> json) => ThumbnailFormatJpeg(
  );
}

/// The thumbnail is in PNG format. It will be used only for background patterns
class ThumbnailFormatPng extends a.ThumbnailFormat {
  ThumbnailFormatPng();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'thumbnailFormatPng',
  };

  factory ThumbnailFormatPng.fromJson(Map<String, dynamic> json) => ThumbnailFormatPng(
  );
}

/// The thumbnail is in WEBP format. It will be used only for some stickers
class ThumbnailFormatWebp extends a.ThumbnailFormat {
  ThumbnailFormatWebp();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'thumbnailFormatWebp',
  };

  factory ThumbnailFormatWebp.fromJson(Map<String, dynamic> json) => ThumbnailFormatWebp(
  );
}

/// The thumbnail is in static GIF format. It will be used only for some bot inline results
class ThumbnailFormatGif extends a.ThumbnailFormat {
  ThumbnailFormatGif();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'thumbnailFormatGif',
  };

  factory ThumbnailFormatGif.fromJson(Map<String, dynamic> json) => ThumbnailFormatGif(
  );
}

/// The thumbnail is in TGS format. It will be used only for animated sticker sets
class ThumbnailFormatTgs extends a.ThumbnailFormat {
  ThumbnailFormatTgs();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'thumbnailFormatTgs',
  };

  factory ThumbnailFormatTgs.fromJson(Map<String, dynamic> json) => ThumbnailFormatTgs(
  );
}

/// The thumbnail is in MPEG4 format. It will be used only for some animations and videos
class ThumbnailFormatMpeg4 extends a.ThumbnailFormat {
  ThumbnailFormatMpeg4();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'thumbnailFormatMpeg4',
  };

  factory ThumbnailFormatMpeg4.fromJson(Map<String, dynamic> json) => ThumbnailFormatMpeg4(
  );
}

/// Represents a thumbnail
class Thumbnail extends a.Thumbnail {
  /// Thumbnail format
  final a.ThumbnailFormat format;
  /// Thumbnail width
  final int width;
  /// Thumbnail height
  final int height;
  /// The thumbnail
  final File file;

  Thumbnail({
    required this.format,
    required this.width,
    required this.height,
    required this.file,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'thumbnail',
    'format': format,
    'width': width,
    'height': height,
    'file': file,
  };

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
    format: b.TdBase.fromJson(json['format']) as a.ThumbnailFormat,
    width: json['width'],
    height: json['height'],
    file: b.TdBase.fromJson(json['file']) as File,
  );
}

/// A mask should be placed relatively to the forehead
class MaskPointForehead extends a.MaskPoint {
  MaskPointForehead();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'maskPointForehead',
  };

  factory MaskPointForehead.fromJson(Map<String, dynamic> json) => MaskPointForehead(
  );
}

/// A mask should be placed relatively to the eyes
class MaskPointEyes extends a.MaskPoint {
  MaskPointEyes();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'maskPointEyes',
  };

  factory MaskPointEyes.fromJson(Map<String, dynamic> json) => MaskPointEyes(
  );
}

/// A mask should be placed relatively to the mouth
class MaskPointMouth extends a.MaskPoint {
  MaskPointMouth();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'maskPointMouth',
  };

  factory MaskPointMouth.fromJson(Map<String, dynamic> json) => MaskPointMouth(
  );
}

/// A mask should be placed relatively to the chin
class MaskPointChin extends a.MaskPoint {
  MaskPointChin();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'maskPointChin',
  };

  factory MaskPointChin.fromJson(Map<String, dynamic> json) => MaskPointChin(
  );
}

/// Position on a photo where a mask should be placed
class MaskPosition extends a.MaskPosition {
  /// Part of the face, relative to which the mask should be placed
  final a.MaskPoint point;
  /// Shift by X-axis measured in widths of the mask scaled to the face size, from left to right. (For example, -1.0 will place the mask just to the left of the default mask position)
  final double xShift;
  /// Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom. (For example, 1.0 will place the mask just below the default mask position)
  final double yShift;
  /// Mask scaling coefficient. (For example, 2.0 means a doubled size)
  final double scale;

  MaskPosition({
    required this.point,
    required this.xShift,
    required this.yShift,
    required this.scale,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'maskPosition',
    'point': point,
    'x_shift': xShift,
    'y_shift': yShift,
    'scale': scale,
  };

  factory MaskPosition.fromJson(Map<String, dynamic> json) => MaskPosition(
    point: b.TdBase.fromJson(json['point']) as a.MaskPoint,
    xShift: json['x_shift'],
    yShift: json['y_shift'],
    scale: json['scale'],
  );
}

/// Represents a closed vector path. The path begins at the end point of the last command
class ClosedVectorPath extends a.ClosedVectorPath {
  /// List of vector path commands
  final List<a.VectorPathCommand> commands;

  ClosedVectorPath({
    required this.commands,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'closedVectorPath',
    'commands': commands,
  };

  factory ClosedVectorPath.fromJson(Map<String, dynamic> json) => ClosedVectorPath(
    commands: (json['commands'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.VectorPathCommand).toList(growable: false),
  );
}

/// Describes one answer option of a poll
class PollOption extends a.PollOption {
  /// Option text; 1-100 characters
  final String text;
  /// Number of voters for this option, available only for closed or voted polls
  final int voterCount;
  /// The percentage of votes for this option; 0-100
  final int votePercentage;
  /// True, if the option was chosen by the user
  final bool isChosen;
  /// True, if the option is being chosen by a pending setPollAnswer request
  final bool isBeingChosen;

  PollOption({
    required this.text,
    required this.voterCount,
    required this.votePercentage,
    required this.isChosen,
    required this.isBeingChosen,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pollOption',
    'text': text,
    'voter_count': voterCount,
    'vote_percentage': votePercentage,
    'is_chosen': isChosen,
    'is_being_chosen': isBeingChosen,
  };

  factory PollOption.fromJson(Map<String, dynamic> json) => PollOption(
    text: json['text'],
    voterCount: json['voter_count'],
    votePercentage: json['vote_percentage'],
    isChosen: json['is_chosen'],
    isBeingChosen: json['is_being_chosen'],
  );
}

/// A regular poll
class PollTypeRegular extends a.PollType {
  /// True, if multiple answer options can be chosen simultaneously
  final bool allowMultipleAnswers;

  PollTypeRegular({
    required this.allowMultipleAnswers,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pollTypeRegular',
    'allow_multiple_answers': allowMultipleAnswers,
  };

  factory PollTypeRegular.fromJson(Map<String, dynamic> json) => PollTypeRegular(
    allowMultipleAnswers: json['allow_multiple_answers'],
  );
}

/// A poll in quiz mode, which has exactly one correct answer option and can be answered only once
class PollTypeQuiz extends a.PollType {
  /// 0-based identifier of the correct answer option; -1 for a yet unanswered poll
  final int correctOptionId;
  /// Text that is shown when the user chooses an incorrect answer or taps on the lamp icon; 0-200 characters with at most 2 line feeds; empty for a yet unanswered poll
  final FormattedText explanation;

  PollTypeQuiz({
    required this.correctOptionId,
    required this.explanation,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pollTypeQuiz',
    'correct_option_id': correctOptionId,
    'explanation': explanation,
  };

  factory PollTypeQuiz.fromJson(Map<String, dynamic> json) => PollTypeQuiz(
    correctOptionId: json['correct_option_id'],
    explanation: b.TdBase.fromJson(json['explanation']) as FormattedText,
  );
}

/// Describes an animation file. The animation must be encoded in GIF or MPEG4 format
class Animation extends a.Animation {
  /// Duration of the animation, in seconds; as defined by the sender
  final int duration;
  /// Width of the animation
  final int width;
  /// Height of the animation
  final int height;
  /// Original name of the file; as defined by the sender
  final String fileName;
  /// MIME type of the file, usually "image/gif" or "video/mp4"
  final String mimeType;
  /// True, if stickers were added to the animation. The list of corresponding sticker set can be received using getAttachedStickerSets
  final bool hasStickers;
  /// Animation minithumbnail; may be null
  final Minithumbnail minithumbnail;
  /// Animation thumbnail in JPEG or MPEG4 format; may be null
  final Thumbnail thumbnail;
  /// File containing the animation
  final File animation;

  Animation({
    required this.duration,
    required this.width,
    required this.height,
    required this.fileName,
    required this.mimeType,
    required this.hasStickers,
    required this.minithumbnail,
    required this.thumbnail,
    required this.animation,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'animation',
    'duration': duration,
    'width': width,
    'height': height,
    'file_name': fileName,
    'mime_type': mimeType,
    'has_stickers': hasStickers,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'animation': animation,
  };

  factory Animation.fromJson(Map<String, dynamic> json) => Animation(
    duration: json['duration'],
    width: json['width'],
    height: json['height'],
    fileName: json['file_name'],
    mimeType: json['mime_type'],
    hasStickers: json['has_stickers'],
    minithumbnail: b.TdBase.fromJson(json['minithumbnail']) as Minithumbnail,
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as Thumbnail,
    animation: b.TdBase.fromJson(json['animation']) as File,
  );
}

/// Describes an audio file. Audio is usually in MP3 or M4A format
class Audio extends a.Audio {
  /// Duration of the audio, in seconds; as defined by the sender
  final int duration;
  /// Title of the audio; as defined by the sender
  final String title;
  /// Performer of the audio; as defined by the sender
  final String performer;
  /// Original name of the file; as defined by the sender
  final String fileName;
  /// The MIME type of the file; as defined by the sender
  final String mimeType;
  /// The minithumbnail of the album cover; may be null
  final Minithumbnail albumCoverMinithumbnail;
  /// The thumbnail of the album cover in JPEG format; as defined by the sender. The full size thumbnail should be extracted from the downloaded file; may be null
  final Thumbnail albumCoverThumbnail;
  /// File containing the audio
  final File audio;

  Audio({
    required this.duration,
    required this.title,
    required this.performer,
    required this.fileName,
    required this.mimeType,
    required this.albumCoverMinithumbnail,
    required this.albumCoverThumbnail,
    required this.audio,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'audio',
    'duration': duration,
    'title': title,
    'performer': performer,
    'file_name': fileName,
    'mime_type': mimeType,
    'album_cover_minithumbnail': albumCoverMinithumbnail,
    'album_cover_thumbnail': albumCoverThumbnail,
    'audio': audio,
  };

  factory Audio.fromJson(Map<String, dynamic> json) => Audio(
    duration: json['duration'],
    title: json['title'],
    performer: json['performer'],
    fileName: json['file_name'],
    mimeType: json['mime_type'],
    albumCoverMinithumbnail: b.TdBase.fromJson(json['album_cover_minithumbnail']) as Minithumbnail,
    albumCoverThumbnail: b.TdBase.fromJson(json['album_cover_thumbnail']) as Thumbnail,
    audio: b.TdBase.fromJson(json['audio']) as File,
  );
}

/// Describes a document of any type
class Document extends a.Document {
  /// Original name of the file; as defined by the sender
  final String fileName;
  /// MIME type of the file; as defined by the sender
  final String mimeType;
  /// Document minithumbnail; may be null
  final Minithumbnail minithumbnail;
  /// Document thumbnail in JPEG or PNG format (PNG will be used only for background patterns); as defined by the sender; may be null
  final Thumbnail thumbnail;
  /// File containing the document
  final File document;

  Document({
    required this.fileName,
    required this.mimeType,
    required this.minithumbnail,
    required this.thumbnail,
    required this.document,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'document',
    'file_name': fileName,
    'mime_type': mimeType,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'document': document,
  };

  factory Document.fromJson(Map<String, dynamic> json) => Document(
    fileName: json['file_name'],
    mimeType: json['mime_type'],
    minithumbnail: b.TdBase.fromJson(json['minithumbnail']) as Minithumbnail,
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as Thumbnail,
    document: b.TdBase.fromJson(json['document']) as File,
  );
}

/// Describes a photo
class Photo extends a.Photo {
  /// True, if stickers were added to the photo. The list of corresponding sticker sets can be received using getAttachedStickerSets
  final bool hasStickers;
  /// Photo minithumbnail; may be null
  final Minithumbnail minithumbnail;
  /// Available variants of the photo, in different sizes
  final List<PhotoSize> sizes;

  Photo({
    required this.hasStickers,
    required this.minithumbnail,
    required this.sizes,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'photo',
    'has_stickers': hasStickers,
    'minithumbnail': minithumbnail,
    'sizes': sizes,
  };

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
    hasStickers: json['has_stickers'],
    minithumbnail: b.TdBase.fromJson(json['minithumbnail']) as Minithumbnail,
    sizes: (json['sizes'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as PhotoSize).toList(growable: false),
  );
}

/// Describes a sticker
class Sticker extends a.Sticker {
  /// The identifier of the sticker set to which the sticker belongs; 0 if none
  final int setId;
  /// Sticker width; as defined by the sender
  final int width;
  /// Sticker height; as defined by the sender
  final int height;
  /// Emoji corresponding to the sticker
  final String emoji;
  /// True, if the sticker is an animated sticker in TGS format
  final bool isAnimated;
  /// True, if the sticker is a mask
  final bool isMask;
  /// Position where the mask should be placed; may be null
  final MaskPosition maskPosition;
  /// Sticker's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
  final List<ClosedVectorPath> outline;
  /// Sticker thumbnail in WEBP or JPEG format; may be null
  final Thumbnail thumbnail;
  /// File containing the sticker
  final File sticker;

  Sticker({
    required this.setId,
    required this.width,
    required this.height,
    required this.emoji,
    required this.isAnimated,
    required this.isMask,
    required this.maskPosition,
    required this.outline,
    required this.thumbnail,
    required this.sticker,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sticker',
    'set_id': setId,
    'width': width,
    'height': height,
    'emoji': emoji,
    'is_animated': isAnimated,
    'is_mask': isMask,
    'mask_position': maskPosition,
    'outline': outline,
    'thumbnail': thumbnail,
    'sticker': sticker,
  };

  factory Sticker.fromJson(Map<String, dynamic> json) => Sticker(
    setId: int.parse(json['set_id']),
    width: json['width'],
    height: json['height'],
    emoji: json['emoji'],
    isAnimated: json['is_animated'],
    isMask: json['is_mask'],
    maskPosition: b.TdBase.fromJson(json['mask_position']) as MaskPosition,
    outline: (json['outline'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ClosedVectorPath).toList(growable: false),
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as Thumbnail,
    sticker: b.TdBase.fromJson(json['sticker']) as File,
  );
}

/// Describes a video file
class Video extends a.Video {
  /// Duration of the video, in seconds; as defined by the sender
  final int duration;
  /// Video width; as defined by the sender
  final int width;
  /// Video height; as defined by the sender
  final int height;
  /// Original name of the file; as defined by the sender
  final String fileName;
  /// MIME type of the file; as defined by the sender
  final String mimeType;
  /// True, if stickers were added to the video. The list of corresponding sticker sets can be received using getAttachedStickerSets
  final bool hasStickers;
  /// True, if the video should be tried to be streamed
  final bool supportsStreaming;
  /// Video minithumbnail; may be null
  final Minithumbnail minithumbnail;
  /// Video thumbnail in JPEG or MPEG4 format; as defined by the sender; may be null
  final Thumbnail thumbnail;
  /// File containing the video
  final File video;

  Video({
    required this.duration,
    required this.width,
    required this.height,
    required this.fileName,
    required this.mimeType,
    required this.hasStickers,
    required this.supportsStreaming,
    required this.minithumbnail,
    required this.thumbnail,
    required this.video,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'video',
    'duration': duration,
    'width': width,
    'height': height,
    'file_name': fileName,
    'mime_type': mimeType,
    'has_stickers': hasStickers,
    'supports_streaming': supportsStreaming,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'video': video,
  };

  factory Video.fromJson(Map<String, dynamic> json) => Video(
    duration: json['duration'],
    width: json['width'],
    height: json['height'],
    fileName: json['file_name'],
    mimeType: json['mime_type'],
    hasStickers: json['has_stickers'],
    supportsStreaming: json['supports_streaming'],
    minithumbnail: b.TdBase.fromJson(json['minithumbnail']) as Minithumbnail,
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as Thumbnail,
    video: b.TdBase.fromJson(json['video']) as File,
  );
}

/// Describes a video note. The video must be equal in width and height, cropped to a circle, and stored in MPEG4 format
class VideoNote extends a.VideoNote {
  /// Duration of the video, in seconds; as defined by the sender
  final int duration;
  /// Video width and height; as defined by the sender
  final int length;
  /// Video minithumbnail; may be null
  final Minithumbnail minithumbnail;
  /// Video thumbnail in JPEG format; as defined by the sender; may be null
  final Thumbnail thumbnail;
  /// File containing the video
  final File video;

  VideoNote({
    required this.duration,
    required this.length,
    required this.minithumbnail,
    required this.thumbnail,
    required this.video,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'videoNote',
    'duration': duration,
    'length': length,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'video': video,
  };

  factory VideoNote.fromJson(Map<String, dynamic> json) => VideoNote(
    duration: json['duration'],
    length: json['length'],
    minithumbnail: b.TdBase.fromJson(json['minithumbnail']) as Minithumbnail,
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as Thumbnail,
    video: b.TdBase.fromJson(json['video']) as File,
  );
}

/// Describes a voice note. The voice note must be encoded with the Opus codec, and stored inside an OGG container. Voice notes can have only a single audio channel
class VoiceNote extends a.VoiceNote {
  /// Duration of the voice note, in seconds; as defined by the sender
  final int duration;
  /// A waveform representation of the voice note in 5-bit format
  final Uint8List waveform;
  /// MIME type of the file; as defined by the sender
  final String mimeType;
  /// File containing the voice note
  final File voice;

  VoiceNote({
    required this.duration,
    required this.waveform,
    required this.mimeType,
    required this.voice,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'voiceNote',
    'duration': duration,
    'waveform': waveform,
    'mime_type': mimeType,
    'voice': voice,
  };

  factory VoiceNote.fromJson(Map<String, dynamic> json) => VoiceNote(
    duration: json['duration'],
    waveform: base64.decode(json['waveform']),
    mimeType: json['mime_type'],
    voice: b.TdBase.fromJson(json['voice']) as File,
  );
}

/// Describes a user contact
class Contact extends a.Contact {
  /// Phone number of the user
  final String phoneNumber;
  /// First name of the user; 1-255 characters in length
  final String firstName;
  /// Last name of the user
  final String lastName;
  /// Additional data about the user in a form of vCard; 0-2048 bytes in length
  final String vcard;
  /// Identifier of the user, if known; otherwise 0
  final int userId;

  Contact({
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    required this.vcard,
    required this.userId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'contact',
    'phone_number': phoneNumber,
    'first_name': firstName,
    'last_name': lastName,
    'vcard': vcard,
    'user_id': userId,
  };

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
    phoneNumber: json['phone_number'],
    firstName: json['first_name'],
    lastName: json['last_name'],
    vcard: json['vcard'],
    userId: json['user_id'],
  );
}

/// Describes a location on planet Earth
class Location extends a.Location {
  /// Latitude of the location in degrees; as defined by the sender
  final double latitude;
  /// Longitude of the location, in degrees; as defined by the sender
  final double longitude;
  /// The estimated horizontal accuracy of the location, in meters; as defined by the sender. 0 if unknown
  final double horizontalAccuracy;

  Location({
    required this.latitude,
    required this.longitude,
    required this.horizontalAccuracy,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'location',
    'latitude': latitude,
    'longitude': longitude,
    'horizontal_accuracy': horizontalAccuracy,
  };

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    latitude: json['latitude'],
    longitude: json['longitude'],
    horizontalAccuracy: json['horizontal_accuracy'],
  );
}

/// Describes a venue
class Venue extends a.Venue {
  /// Venue location; as defined by the sender
  final Location location;
  /// Venue name; as defined by the sender
  final String title;
  /// Venue address; as defined by the sender
  final String address;
  /// Provider of the venue database; as defined by the sender. Currently only "foursquare" and "gplaces" (Google Places) need to be supported
  final String provider;
  /// Identifier of the venue in the provider database; as defined by the sender
  final String id;
  /// Type of the venue in the provider database; as defined by the sender
  final String type;

  Venue({
    required this.location,
    required this.title,
    required this.address,
    required this.provider,
    required this.id,
    required this.type,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'venue',
    'location': location,
    'title': title,
    'address': address,
    'provider': provider,
    'id': id,
    'type': type,
  };

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    location: b.TdBase.fromJson(json['location']) as Location,
    title: json['title'],
    address: json['address'],
    provider: json['provider'],
    id: json['id'],
    type: json['type'],
  );
}

/// Describes a game
class Game extends a.Game {
  /// Game ID
  final int id;
  /// Game short name. To share a game use the URL https://t.me/{bot_username}?game={game_short_name}
  final String shortName;
  /// Game title
  final String title;
  /// Game text, usually containing scoreboards for a game
  final FormattedText text;
  /// Game description
  final String description;
  /// Game photo
  final Photo photo;
  /// Game animation; may be null
  final Animation animation;

  Game({
    required this.id,
    required this.shortName,
    required this.title,
    required this.text,
    required this.description,
    required this.photo,
    required this.animation,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'game',
    'id': id,
    'short_name': shortName,
    'title': title,
    'text': text,
    'description': description,
    'photo': photo,
    'animation': animation,
  };

  factory Game.fromJson(Map<String, dynamic> json) => Game(
    id: int.parse(json['id']),
    shortName: json['short_name'],
    title: json['title'],
    text: b.TdBase.fromJson(json['text']) as FormattedText,
    description: json['description'],
    photo: b.TdBase.fromJson(json['photo']) as Photo,
    animation: b.TdBase.fromJson(json['animation']) as Animation,
  );
}

/// Describes a poll
class Poll extends a.Poll {
  /// Unique poll identifier
  final int id;
  /// Poll question; 1-300 characters
  final String question;
  /// List of poll answer options
  final List<PollOption> options;
  /// Total number of voters, participating in the poll
  final int totalVoterCount;
  /// User identifiers of recent voters, if the poll is non-anonymous
  final List<int> recentVoterUserIds;
  /// True, if the poll is anonymous
  final bool isAnonymous;
  /// Type of the poll
  final a.PollType type;
  /// Amount of time the poll will be active after creation, in seconds
  final int openPeriod;
  /// Point in time (Unix timestamp) when the poll will be automatically closed
  final int closeDate;
  /// True, if the poll is closed
  final bool isClosed;

  Poll({
    required this.id,
    required this.question,
    required this.options,
    required this.totalVoterCount,
    required this.recentVoterUserIds,
    required this.isAnonymous,
    required this.type,
    required this.openPeriod,
    required this.closeDate,
    required this.isClosed,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'poll',
    'id': id,
    'question': question,
    'options': options,
    'total_voter_count': totalVoterCount,
    'recent_voter_user_ids': recentVoterUserIds,
    'is_anonymous': isAnonymous,
    'type': type,
    'open_period': openPeriod,
    'close_date': closeDate,
    'is_closed': isClosed,
  };

  factory Poll.fromJson(Map<String, dynamic> json) => Poll(
    id: int.parse(json['id']),
    question: json['question'],
    options: (json['options'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as PollOption).toList(growable: false),
    totalVoterCount: json['total_voter_count'],
    recentVoterUserIds: (json['recent_voter_user_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
    isAnonymous: json['is_anonymous'],
    type: b.TdBase.fromJson(json['type']) as a.PollType,
    openPeriod: json['open_period'],
    closeDate: json['close_date'],
    isClosed: json['is_closed'],
  );
}

/// Describes a user profile photo
class ProfilePhoto extends a.ProfilePhoto {
  /// Photo identifier; 0 for an empty photo. Can be used to find a photo in a list of user profile photos
  final int id;
  /// A small (160x160) user profile photo. The file can be downloaded only before the photo is changed
  final File small;
  /// A big (640x640) user profile photo. The file can be downloaded only before the photo is changed
  final File big;
  /// User profile photo minithumbnail; may be null
  final Minithumbnail minithumbnail;
  /// True, if the photo has animated variant
  final bool hasAnimation;

  ProfilePhoto({
    required this.id,
    required this.small,
    required this.big,
    required this.minithumbnail,
    required this.hasAnimation,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'profilePhoto',
    'id': id,
    'small': small,
    'big': big,
    'minithumbnail': minithumbnail,
    'has_animation': hasAnimation,
  };

  factory ProfilePhoto.fromJson(Map<String, dynamic> json) => ProfilePhoto(
    id: int.parse(json['id']),
    small: b.TdBase.fromJson(json['small']) as File,
    big: b.TdBase.fromJson(json['big']) as File,
    minithumbnail: b.TdBase.fromJson(json['minithumbnail']) as Minithumbnail,
    hasAnimation: json['has_animation'],
  );
}

/// Contains basic information about the photo of a chat
class ChatPhotoInfo extends a.ChatPhotoInfo {
  /// A small (160x160) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed
  final File small;
  /// A big (640x640) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed
  final File big;
  /// Chat photo minithumbnail; may be null
  final Minithumbnail minithumbnail;
  /// True, if the photo has animated variant
  final bool hasAnimation;

  ChatPhotoInfo({
    required this.small,
    required this.big,
    required this.minithumbnail,
    required this.hasAnimation,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatPhotoInfo',
    'small': small,
    'big': big,
    'minithumbnail': minithumbnail,
    'has_animation': hasAnimation,
  };

  factory ChatPhotoInfo.fromJson(Map<String, dynamic> json) => ChatPhotoInfo(
    small: b.TdBase.fromJson(json['small']) as File,
    big: b.TdBase.fromJson(json['big']) as File,
    minithumbnail: b.TdBase.fromJson(json['minithumbnail']) as Minithumbnail,
    hasAnimation: json['has_animation'],
  );
}

/// A regular user
class UserTypeRegular extends a.UserType {
  UserTypeRegular();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userTypeRegular',
  };

  factory UserTypeRegular.fromJson(Map<String, dynamic> json) => UserTypeRegular(
  );
}

/// A deleted user or deleted bot. No information on the user besides the user identifier is available. It is not possible to perform any active actions on this type of user
class UserTypeDeleted extends a.UserType {
  UserTypeDeleted();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userTypeDeleted',
  };

  factory UserTypeDeleted.fromJson(Map<String, dynamic> json) => UserTypeDeleted(
  );
}

/// A bot (see https://core.telegram.org/bots)
class UserTypeBot extends a.UserType {
  /// True, if the bot can be invited to basic group and supergroup chats
  final bool canJoinGroups;
  /// True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages
  final bool canReadAllGroupMessages;
  /// True, if the bot supports inline queries
  final bool isInline;
  /// Placeholder for inline queries (displayed on the application input field)
  final String inlineQueryPlaceholder;
  /// True, if the location of the user should be sent with every inline query to this bot
  final bool needLocation;

  UserTypeBot({
    required this.canJoinGroups,
    required this.canReadAllGroupMessages,
    required this.isInline,
    required this.inlineQueryPlaceholder,
    required this.needLocation,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userTypeBot',
    'can_join_groups': canJoinGroups,
    'can_read_all_group_messages': canReadAllGroupMessages,
    'is_inline': isInline,
    'inline_query_placeholder': inlineQueryPlaceholder,
    'need_location': needLocation,
  };

  factory UserTypeBot.fromJson(Map<String, dynamic> json) => UserTypeBot(
    canJoinGroups: json['can_join_groups'],
    canReadAllGroupMessages: json['can_read_all_group_messages'],
    isInline: json['is_inline'],
    inlineQueryPlaceholder: json['inline_query_placeholder'],
    needLocation: json['need_location'],
  );
}

/// No information on the user besides the user identifier is available, yet this user has not been deleted. This object is extremely rare and must be handled like a deleted user. It is not possible to perform any actions on users of this type
class UserTypeUnknown extends a.UserType {
  UserTypeUnknown();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userTypeUnknown',
  };

  factory UserTypeUnknown.fromJson(Map<String, dynamic> json) => UserTypeUnknown(
  );
}

/// Represents a command supported by a bot
class BotCommand extends a.BotCommand {
  /// Text of the bot command
  final String command;
  /// Description of the bot command
  final String description;

  BotCommand({
    required this.command,
    required this.description,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'botCommand',
    'command': command,
    'description': description,
  };

  factory BotCommand.fromJson(Map<String, dynamic> json) => BotCommand(
    command: json['command'],
    description: json['description'],
  );
}

/// Provides information about a bot and its supported commands
class BotInfo extends a.BotInfo {
  /// Long description shown on the user info page
  final String description;
  /// A list of commands supported by the bot
  final List<BotCommand> commands;

  BotInfo({
    required this.description,
    required this.commands,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'botInfo',
    'description': description,
    'commands': commands,
  };

  factory BotInfo.fromJson(Map<String, dynamic> json) => BotInfo(
    description: json['description'],
    commands: (json['commands'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as BotCommand).toList(growable: false),
  );
}

/// Represents a location to which a chat is connected
class ChatLocation extends a.ChatLocation {
  /// The location
  final Location location;
  /// Location address; 1-64 characters, as defined by the chat owner
  final String address;

  ChatLocation({
    required this.location,
    required this.address,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatLocation',
    'location': location,
    'address': address,
  };

  factory ChatLocation.fromJson(Map<String, dynamic> json) => ChatLocation(
    location: b.TdBase.fromJson(json['location']) as Location,
    address: json['address'],
  );
}

/// Animated variant of a chat photo in MPEG4 format
class AnimatedChatPhoto extends a.AnimatedChatPhoto {
  /// Animation width and height
  final int length;
  /// Information about the animation file
  final File file;
  /// Timestamp of the frame, used as a static chat photo
  final double mainFrameTimestamp;

  AnimatedChatPhoto({
    required this.length,
    required this.file,
    required this.mainFrameTimestamp,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'animatedChatPhoto',
    'length': length,
    'file': file,
    'main_frame_timestamp': mainFrameTimestamp,
  };

  factory AnimatedChatPhoto.fromJson(Map<String, dynamic> json) => AnimatedChatPhoto(
    length: json['length'],
    file: b.TdBase.fromJson(json['file']) as File,
    mainFrameTimestamp: json['main_frame_timestamp'],
  );
}

/// Describes a chat or user profile photo
class ChatPhoto extends a.ChatPhoto {
  /// Unique photo identifier
  final int id;
  /// Point in time (Unix timestamp) when the photo has been added
  final int addedDate;
  /// Photo minithumbnail; may be null
  final Minithumbnail minithumbnail;
  /// Available variants of the photo in JPEG format, in different size
  final List<PhotoSize> sizes;
  /// Animated variant of the photo in MPEG4 format; may be null
  final AnimatedChatPhoto animation;

  ChatPhoto({
    required this.id,
    required this.addedDate,
    required this.minithumbnail,
    required this.sizes,
    required this.animation,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatPhoto',
    'id': id,
    'added_date': addedDate,
    'minithumbnail': minithumbnail,
    'sizes': sizes,
    'animation': animation,
  };

  factory ChatPhoto.fromJson(Map<String, dynamic> json) => ChatPhoto(
    id: int.parse(json['id']),
    addedDate: json['added_date'],
    minithumbnail: b.TdBase.fromJson(json['minithumbnail']) as Minithumbnail,
    sizes: (json['sizes'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as PhotoSize).toList(growable: false),
    animation: b.TdBase.fromJson(json['animation']) as AnimatedChatPhoto,
  );
}

/// Contains a list of chat or user profile photos
class ChatPhotos extends a.ChatPhotos {
  /// Total number of photos
  final int totalCount;
  /// List of photos
  final List<ChatPhoto> photos;

  ChatPhotos({
    required this.totalCount,
    required this.photos,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatPhotos',
    'total_count': totalCount,
    'photos': photos,
  };

  factory ChatPhotos.fromJson(Map<String, dynamic> json) => ChatPhotos(
    totalCount: json['total_count'],
    photos: (json['photos'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatPhoto).toList(growable: false),
  );
}

/// A previously used profile photo of the current user
class InputChatPhotoPrevious extends a.InputChatPhoto {
  /// Identifier of the current user's profile photo to reuse
  final int chatPhotoId;

  InputChatPhotoPrevious({
    required this.chatPhotoId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputChatPhotoPrevious',
    'chat_photo_id': chatPhotoId,
  };

  factory InputChatPhotoPrevious.fromJson(Map<String, dynamic> json) => InputChatPhotoPrevious(
    chatPhotoId: int.parse(json['chat_photo_id']),
  );
}

/// A static photo in JPEG format
class InputChatPhotoStatic extends a.InputChatPhoto {
  /// Photo to be set as profile photo. Only inputFileLocal and inputFileGenerated are allowed
  final a.InputFile photo;

  InputChatPhotoStatic({
    required this.photo,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputChatPhotoStatic',
    'photo': photo,
  };

  factory InputChatPhotoStatic.fromJson(Map<String, dynamic> json) => InputChatPhotoStatic(
    photo: b.TdBase.fromJson(json['photo']) as a.InputFile,
  );
}

/// An animation in MPEG4 format; must be square, at most 10 seconds long, have width between 160 and 800 and be at most 2MB in size
class InputChatPhotoAnimation extends a.InputChatPhoto {
  /// Animation to be set as profile photo. Only inputFileLocal and inputFileGenerated are allowed
  final a.InputFile animation;
  /// Timestamp of the frame, which will be used as static chat photo
  final double mainFrameTimestamp;

  InputChatPhotoAnimation({
    required this.animation,
    required this.mainFrameTimestamp,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputChatPhotoAnimation',
    'animation': animation,
    'main_frame_timestamp': mainFrameTimestamp,
  };

  factory InputChatPhotoAnimation.fromJson(Map<String, dynamic> json) => InputChatPhotoAnimation(
    animation: b.TdBase.fromJson(json['animation']) as a.InputFile,
    mainFrameTimestamp: json['main_frame_timestamp'],
  );
}

/// Represents a user
class User extends a.User {
  /// User identifier
  final int id;
  /// First name of the user
  final String firstName;
  /// Last name of the user
  final String lastName;
  /// Username of the user
  final String username;
  /// Phone number of the user
  final String phoneNumber;
  /// Current online status of the user
  final a.UserStatus status;
  /// Profile photo of the user; may be null
  final ProfilePhoto profilePhoto;
  /// The user is a contact of the current user
  final bool isContact;
  /// The user is a contact of the current user and the current user is a contact of the user
  final bool isMutualContact;
  /// True, if the user is verified
  final bool isVerified;
  /// True, if the user is Telegram support account
  final bool isSupport;
  /// If non-empty, it contains a human-readable description of the reason why access to this user must be restricted
  final String restrictionReason;
  /// True, if many users reported this user as a scam
  final bool isScam;
  /// True, if many users reported this user as a fake account
  final bool isFake;
  /// If false, the user is inaccessible, and the only information known about the user is inside this class. It can't be passed to any method except GetUser
  final bool haveAccess;
  /// Type of the user
  final a.UserType type;
  /// IETF language tag of the user's language; only available to bots
  final String languageCode;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.phoneNumber,
    required this.status,
    required this.profilePhoto,
    required this.isContact,
    required this.isMutualContact,
    required this.isVerified,
    required this.isSupport,
    required this.restrictionReason,
    required this.isScam,
    required this.isFake,
    required this.haveAccess,
    required this.type,
    required this.languageCode,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'user',
    'id': id,
    'first_name': firstName,
    'last_name': lastName,
    'username': username,
    'phone_number': phoneNumber,
    'status': status,
    'profile_photo': profilePhoto,
    'is_contact': isContact,
    'is_mutual_contact': isMutualContact,
    'is_verified': isVerified,
    'is_support': isSupport,
    'restriction_reason': restrictionReason,
    'is_scam': isScam,
    'is_fake': isFake,
    'have_access': haveAccess,
    'type': type,
    'language_code': languageCode,
  };

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'],
    firstName: json['first_name'],
    lastName: json['last_name'],
    username: json['username'],
    phoneNumber: json['phone_number'],
    status: b.TdBase.fromJson(json['status']) as a.UserStatus,
    profilePhoto: b.TdBase.fromJson(json['profile_photo']) as ProfilePhoto,
    isContact: json['is_contact'],
    isMutualContact: json['is_mutual_contact'],
    isVerified: json['is_verified'],
    isSupport: json['is_support'],
    restrictionReason: json['restriction_reason'],
    isScam: json['is_scam'],
    isFake: json['is_fake'],
    haveAccess: json['have_access'],
    type: b.TdBase.fromJson(json['type']) as a.UserType,
    languageCode: json['language_code'],
  );
}

/// Contains full information about a user
class UserFullInfo extends a.UserFullInfo {
  /// User profile photo; may be null
  final ChatPhoto photo;
  /// True, if the user is blocked by the current user
  final bool isBlocked;
  /// True, if the user can be called
  final bool canBeCalled;
  /// True, if a video call can be created with the user
  final bool supportsVideoCalls;
  /// True, if the user can't be called due to their privacy settings
  final bool hasPrivateCalls;
  /// True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used
  final bool needPhoneNumberPrivacyException;
  /// A short user bio
  final String bio;
  /// For bots, the text that is included with the link when users share the bot
  final String shareText;
  /// Number of group chats where both the other user and the current user are a member; 0 for the current user
  final int groupInCommonCount;
  /// If the user is a bot, information about the bot; may be null
  final BotInfo botInfo;

  UserFullInfo({
    required this.photo,
    required this.isBlocked,
    required this.canBeCalled,
    required this.supportsVideoCalls,
    required this.hasPrivateCalls,
    required this.needPhoneNumberPrivacyException,
    required this.bio,
    required this.shareText,
    required this.groupInCommonCount,
    required this.botInfo,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userFullInfo',
    'photo': photo,
    'is_blocked': isBlocked,
    'can_be_called': canBeCalled,
    'supports_video_calls': supportsVideoCalls,
    'has_private_calls': hasPrivateCalls,
    'need_phone_number_privacy_exception': needPhoneNumberPrivacyException,
    'bio': bio,
    'share_text': shareText,
    'group_in_common_count': groupInCommonCount,
    'bot_info': botInfo,
  };

  factory UserFullInfo.fromJson(Map<String, dynamic> json) => UserFullInfo(
    photo: b.TdBase.fromJson(json['photo']) as ChatPhoto,
    isBlocked: json['is_blocked'],
    canBeCalled: json['can_be_called'],
    supportsVideoCalls: json['supports_video_calls'],
    hasPrivateCalls: json['has_private_calls'],
    needPhoneNumberPrivacyException: json['need_phone_number_privacy_exception'],
    bio: json['bio'],
    shareText: json['share_text'],
    groupInCommonCount: json['group_in_common_count'],
    botInfo: b.TdBase.fromJson(json['bot_info']) as BotInfo,
  );
}

/// Represents a list of users
class Users extends a.Users {
  /// Approximate total count of users found
  final int totalCount;
  /// A list of user identifiers
  final List<int> userIds;

  Users({
    required this.totalCount,
    required this.userIds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'users',
    'total_count': totalCount,
    'user_ids': userIds,
  };

  factory Users.fromJson(Map<String, dynamic> json) => Users(
    totalCount: json['total_count'],
    userIds: (json['user_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// Contains information about a chat administrator
class ChatAdministrator extends a.ChatAdministrator {
  /// User identifier of the administrator
  final int userId;
  /// Custom title of the administrator
  final String customTitle;
  /// True, if the user is the owner of the chat
  final bool isOwner;

  ChatAdministrator({
    required this.userId,
    required this.customTitle,
    required this.isOwner,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatAdministrator',
    'user_id': userId,
    'custom_title': customTitle,
    'is_owner': isOwner,
  };

  factory ChatAdministrator.fromJson(Map<String, dynamic> json) => ChatAdministrator(
    userId: json['user_id'],
    customTitle: json['custom_title'],
    isOwner: json['is_owner'],
  );
}

/// Represents a list of chat administrators
class ChatAdministrators extends a.ChatAdministrators {
  /// A list of chat administrators
  final List<ChatAdministrator> administrators;

  ChatAdministrators({
    required this.administrators,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatAdministrators',
    'administrators': administrators,
  };

  factory ChatAdministrators.fromJson(Map<String, dynamic> json) => ChatAdministrators(
    administrators: (json['administrators'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatAdministrator).toList(growable: false),
  );
}

/// Describes actions that a user is allowed to take in a chat
class ChatPermissions extends a.ChatPermissions {
  /// True, if the user can send text messages, contacts, locations, and venues
  final bool canSendMessages;
  /// True, if the user can send audio files, documents, photos, videos, video notes, and voice notes. Implies can_send_messages permissions
  final bool canSendMediaMessages;
  /// True, if the user can send polls. Implies can_send_messages permissions
  final bool canSendPolls;
  /// True, if the user can send animations, games, stickers, and dice and use inline bots. Implies can_send_messages permissions
  final bool canSendOtherMessages;
  /// True, if the user may add a web page preview to their messages. Implies can_send_messages permissions
  final bool canAddWebPagePreviews;
  /// True, if the user can change the chat title, photo, and other settings
  final bool canChangeInfo;
  /// True, if the user can invite new users to the chat
  final bool canInviteUsers;
  /// True, if the user can pin messages
  final bool canPinMessages;

  ChatPermissions({
    required this.canSendMessages,
    required this.canSendMediaMessages,
    required this.canSendPolls,
    required this.canSendOtherMessages,
    required this.canAddWebPagePreviews,
    required this.canChangeInfo,
    required this.canInviteUsers,
    required this.canPinMessages,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatPermissions',
    'can_send_messages': canSendMessages,
    'can_send_media_messages': canSendMediaMessages,
    'can_send_polls': canSendPolls,
    'can_send_other_messages': canSendOtherMessages,
    'can_add_web_page_previews': canAddWebPagePreviews,
    'can_change_info': canChangeInfo,
    'can_invite_users': canInviteUsers,
    'can_pin_messages': canPinMessages,
  };

  factory ChatPermissions.fromJson(Map<String, dynamic> json) => ChatPermissions(
    canSendMessages: json['can_send_messages'],
    canSendMediaMessages: json['can_send_media_messages'],
    canSendPolls: json['can_send_polls'],
    canSendOtherMessages: json['can_send_other_messages'],
    canAddWebPagePreviews: json['can_add_web_page_previews'],
    canChangeInfo: json['can_change_info'],
    canInviteUsers: json['can_invite_users'],
    canPinMessages: json['can_pin_messages'],
  );
}

/// The user is the owner of a chat and has all the administrator privileges
class ChatMemberStatusCreator extends a.ChatMemberStatus {
  /// A custom title of the owner; 0-16 characters without emojis; applicable to supergroups only
  final String customTitle;
  /// True, if the creator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only
  final bool isAnonymous;
  /// True, if the user is a member of the chat
  final bool isMember;

  ChatMemberStatusCreator({
    required this.customTitle,
    required this.isAnonymous,
    required this.isMember,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatMemberStatusCreator',
    'custom_title': customTitle,
    'is_anonymous': isAnonymous,
    'is_member': isMember,
  };

  factory ChatMemberStatusCreator.fromJson(Map<String, dynamic> json) => ChatMemberStatusCreator(
    customTitle: json['custom_title'],
    isAnonymous: json['is_anonymous'],
    isMember: json['is_member'],
  );
}

/// The user is a member of a chat and has some additional privileges. In basic groups, administrators can edit and delete messages sent by others, add new members, ban unprivileged members, and manage voice chats. In supergroups and channels, there are more detailed options for administrator privileges
class ChatMemberStatusAdministrator extends a.ChatMemberStatus {
  /// A custom title of the administrator; 0-16 characters without emojis; applicable to supergroups only
  final String customTitle;
  /// True, if the current user can edit the administrator privileges for the called user
  final bool canBeEdited;
  /// True, if the administrator can get chat event log, get chat statistics, get message statistics in channels, get channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other privilege; applicable to supergroups and channels only
  final bool canManageChat;
  /// True, if the administrator can change the chat title, photo, and other settings
  final bool canChangeInfo;
  /// True, if the administrator can create channel posts; applicable to channels only
  final bool canPostMessages;
  /// True, if the administrator can edit messages of other users and pin messages; applicable to channels only
  final bool canEditMessages;
  /// True, if the administrator can delete messages of other users
  final bool canDeleteMessages;
  /// True, if the administrator can invite new users to the chat
  final bool canInviteUsers;
  /// True, if the administrator can restrict, ban, or unban chat members
  final bool canRestrictMembers;
  /// True, if the administrator can pin messages; applicable to basic groups and supergroups only
  final bool canPinMessages;
  /// True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that were directly or indirectly promoted by them
  final bool canPromoteMembers;
  /// True, if the administrator can manage voice chats
  final bool canManageVoiceChats;
  /// True, if the administrator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only
  final bool isAnonymous;

  ChatMemberStatusAdministrator({
    required this.customTitle,
    required this.canBeEdited,
    required this.canManageChat,
    required this.canChangeInfo,
    required this.canPostMessages,
    required this.canEditMessages,
    required this.canDeleteMessages,
    required this.canInviteUsers,
    required this.canRestrictMembers,
    required this.canPinMessages,
    required this.canPromoteMembers,
    required this.canManageVoiceChats,
    required this.isAnonymous,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatMemberStatusAdministrator',
    'custom_title': customTitle,
    'can_be_edited': canBeEdited,
    'can_manage_chat': canManageChat,
    'can_change_info': canChangeInfo,
    'can_post_messages': canPostMessages,
    'can_edit_messages': canEditMessages,
    'can_delete_messages': canDeleteMessages,
    'can_invite_users': canInviteUsers,
    'can_restrict_members': canRestrictMembers,
    'can_pin_messages': canPinMessages,
    'can_promote_members': canPromoteMembers,
    'can_manage_voice_chats': canManageVoiceChats,
    'is_anonymous': isAnonymous,
  };

  factory ChatMemberStatusAdministrator.fromJson(Map<String, dynamic> json) => ChatMemberStatusAdministrator(
    customTitle: json['custom_title'],
    canBeEdited: json['can_be_edited'],
    canManageChat: json['can_manage_chat'],
    canChangeInfo: json['can_change_info'],
    canPostMessages: json['can_post_messages'],
    canEditMessages: json['can_edit_messages'],
    canDeleteMessages: json['can_delete_messages'],
    canInviteUsers: json['can_invite_users'],
    canRestrictMembers: json['can_restrict_members'],
    canPinMessages: json['can_pin_messages'],
    canPromoteMembers: json['can_promote_members'],
    canManageVoiceChats: json['can_manage_voice_chats'],
    isAnonymous: json['is_anonymous'],
  );
}

/// The user is a member of a chat, without any additional privileges or restrictions
class ChatMemberStatusMember extends a.ChatMemberStatus {
  ChatMemberStatusMember();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatMemberStatusMember',
  };

  factory ChatMemberStatusMember.fromJson(Map<String, dynamic> json) => ChatMemberStatusMember(
  );
}

/// The user is under certain restrictions in the chat. Not supported in basic groups and channels
class ChatMemberStatusRestricted extends a.ChatMemberStatus {
  /// True, if the user is a member of the chat
  final bool isMember;
  /// Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if never. If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is considered to be restricted forever
  final int restrictedUntilDate;
  /// User permissions in the chat
  final ChatPermissions permissions;

  ChatMemberStatusRestricted({
    required this.isMember,
    required this.restrictedUntilDate,
    required this.permissions,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatMemberStatusRestricted',
    'is_member': isMember,
    'restricted_until_date': restrictedUntilDate,
    'permissions': permissions,
  };

  factory ChatMemberStatusRestricted.fromJson(Map<String, dynamic> json) => ChatMemberStatusRestricted(
    isMember: json['is_member'],
    restrictedUntilDate: json['restricted_until_date'],
    permissions: b.TdBase.fromJson(json['permissions']) as ChatPermissions,
  );
}

/// The user or the chat is not a chat member
class ChatMemberStatusLeft extends a.ChatMemberStatus {
  ChatMemberStatusLeft();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatMemberStatusLeft',
  };

  factory ChatMemberStatusLeft.fromJson(Map<String, dynamic> json) => ChatMemberStatusLeft(
  );
}

/// The user or the chat was banned (and hence is not a member of the chat). Implies the user can't return to the chat, view messages, or be used as a participant identifier to join a voice chat of the chat
class ChatMemberStatusBanned extends a.ChatMemberStatus {
  /// Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever. Always 0 in basic groups
  final int bannedUntilDate;

  ChatMemberStatusBanned({
    required this.bannedUntilDate,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatMemberStatusBanned',
    'banned_until_date': bannedUntilDate,
  };

  factory ChatMemberStatusBanned.fromJson(Map<String, dynamic> json) => ChatMemberStatusBanned(
    bannedUntilDate: json['banned_until_date'],
  );
}

/// Information about a user or a chat as a member of another chat
class ChatMember extends a.ChatMember {
  /// Identifier of the chat member. Currently, other chats can be only Left or Banned. Only supergroups and channels can have other chats as Left or Banned members and these chats must be supergroups or channels
  final a.MessageSender memberId;
  /// Identifier of a user that invited/promoted/banned this member in the chat; 0 if unknown
  final int inviterUserId;
  /// Point in time (Unix timestamp) when the user joined the chat
  final int joinedChatDate;
  /// Status of the member in the chat
  final a.ChatMemberStatus status;
  /// If the user is a bot, information about the bot; may be null. Can be null even for a bot if the bot is not the chat member
  final BotInfo botInfo;

  ChatMember({
    required this.memberId,
    required this.inviterUserId,
    required this.joinedChatDate,
    required this.status,
    required this.botInfo,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatMember',
    'member_id': memberId,
    'inviter_user_id': inviterUserId,
    'joined_chat_date': joinedChatDate,
    'status': status,
    'bot_info': botInfo,
  };

  factory ChatMember.fromJson(Map<String, dynamic> json) => ChatMember(
    memberId: b.TdBase.fromJson(json['member_id']) as a.MessageSender,
    inviterUserId: json['inviter_user_id'],
    joinedChatDate: json['joined_chat_date'],
    status: b.TdBase.fromJson(json['status']) as a.ChatMemberStatus,
    botInfo: b.TdBase.fromJson(json['bot_info']) as BotInfo,
  );
}

/// Contains a list of chat members
class ChatMembers extends a.ChatMembers {
  /// Approximate total count of chat members found
  final int totalCount;
  /// A list of chat members
  final List<ChatMember> members;

  ChatMembers({
    required this.totalCount,
    required this.members,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatMembers',
    'total_count': totalCount,
    'members': members,
  };

  factory ChatMembers.fromJson(Map<String, dynamic> json) => ChatMembers(
    totalCount: json['total_count'],
    members: (json['members'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatMember).toList(growable: false),
  );
}

/// Returns contacts of the user
class ChatMembersFilterContacts extends a.ChatMembersFilter {
  ChatMembersFilterContacts();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatMembersFilterContacts',
  };

  factory ChatMembersFilterContacts.fromJson(Map<String, dynamic> json) => ChatMembersFilterContacts(
  );
}

/// Returns the owner and administrators
class ChatMembersFilterAdministrators extends a.ChatMembersFilter {
  ChatMembersFilterAdministrators();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatMembersFilterAdministrators',
  };

  factory ChatMembersFilterAdministrators.fromJson(Map<String, dynamic> json) => ChatMembersFilterAdministrators(
  );
}

/// Returns all chat members, including restricted chat members
class ChatMembersFilterMembers extends a.ChatMembersFilter {
  ChatMembersFilterMembers();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatMembersFilterMembers',
  };

  factory ChatMembersFilterMembers.fromJson(Map<String, dynamic> json) => ChatMembersFilterMembers(
  );
}

/// Returns users which can be mentioned in the chat
class ChatMembersFilterMention extends a.ChatMembersFilter {
  /// If non-zero, the identifier of the current message thread
  final int messageThreadId;

  ChatMembersFilterMention({
    required this.messageThreadId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatMembersFilterMention',
    'message_thread_id': messageThreadId,
  };

  factory ChatMembersFilterMention.fromJson(Map<String, dynamic> json) => ChatMembersFilterMention(
    messageThreadId: json['message_thread_id'],
  );
}

/// Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup
class ChatMembersFilterRestricted extends a.ChatMembersFilter {
  ChatMembersFilterRestricted();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatMembersFilterRestricted',
  };

  factory ChatMembersFilterRestricted.fromJson(Map<String, dynamic> json) => ChatMembersFilterRestricted(
  );
}

/// Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel
class ChatMembersFilterBanned extends a.ChatMembersFilter {
  ChatMembersFilterBanned();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatMembersFilterBanned',
  };

  factory ChatMembersFilterBanned.fromJson(Map<String, dynamic> json) => ChatMembersFilterBanned(
  );
}

/// Returns bot members of the chat
class ChatMembersFilterBots extends a.ChatMembersFilter {
  ChatMembersFilterBots();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatMembersFilterBots',
  };

  factory ChatMembersFilterBots.fromJson(Map<String, dynamic> json) => ChatMembersFilterBots(
  );
}

/// Returns recently active users in reverse chronological order
class SupergroupMembersFilterRecent extends a.SupergroupMembersFilter {
  SupergroupMembersFilterRecent();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'supergroupMembersFilterRecent',
  };

  factory SupergroupMembersFilterRecent.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterRecent(
  );
}

/// Returns contacts of the user, which are members of the supergroup or channel
class SupergroupMembersFilterContacts extends a.SupergroupMembersFilter {
  /// Query to search for
  final String query;

  SupergroupMembersFilterContacts({
    required this.query,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'supergroupMembersFilterContacts',
    'query': query,
  };

  factory SupergroupMembersFilterContacts.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterContacts(
    query: json['query'],
  );
}

/// Returns the owner and administrators
class SupergroupMembersFilterAdministrators extends a.SupergroupMembersFilter {
  SupergroupMembersFilterAdministrators();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'supergroupMembersFilterAdministrators',
  };

  factory SupergroupMembersFilterAdministrators.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterAdministrators(
  );
}

/// Used to search for supergroup or channel members via a (string) query
class SupergroupMembersFilterSearch extends a.SupergroupMembersFilter {
  /// Query to search for
  final String query;

  SupergroupMembersFilterSearch({
    required this.query,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'supergroupMembersFilterSearch',
    'query': query,
  };

  factory SupergroupMembersFilterSearch.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterSearch(
    query: json['query'],
  );
}

/// Returns restricted supergroup members; can be used only by administrators
class SupergroupMembersFilterRestricted extends a.SupergroupMembersFilter {
  /// Query to search for
  final String query;

  SupergroupMembersFilterRestricted({
    required this.query,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'supergroupMembersFilterRestricted',
    'query': query,
  };

  factory SupergroupMembersFilterRestricted.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterRestricted(
    query: json['query'],
  );
}

/// Returns users banned from the supergroup or channel; can be used only by administrators
class SupergroupMembersFilterBanned extends a.SupergroupMembersFilter {
  /// Query to search for
  final String query;

  SupergroupMembersFilterBanned({
    required this.query,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'supergroupMembersFilterBanned',
    'query': query,
  };

  factory SupergroupMembersFilterBanned.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterBanned(
    query: json['query'],
  );
}

/// Returns users which can be mentioned in the supergroup
class SupergroupMembersFilterMention extends a.SupergroupMembersFilter {
  /// Query to search for
  final String query;
  /// If non-zero, the identifier of the current message thread
  final int messageThreadId;

  SupergroupMembersFilterMention({
    required this.query,
    required this.messageThreadId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'supergroupMembersFilterMention',
    'query': query,
    'message_thread_id': messageThreadId,
  };

  factory SupergroupMembersFilterMention.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterMention(
    query: json['query'],
    messageThreadId: json['message_thread_id'],
  );
}

/// Returns bot members of the supergroup or channel
class SupergroupMembersFilterBots extends a.SupergroupMembersFilter {
  SupergroupMembersFilterBots();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'supergroupMembersFilterBots',
  };

  factory SupergroupMembersFilterBots.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterBots(
  );
}

/// Contains a chat invite link
class ChatInviteLink extends a.ChatInviteLink {
  /// Chat invite link
  final String inviteLink;
  /// User identifier of an administrator created the link
  final int creatorUserId;
  /// Point in time (Unix timestamp) when the link was created
  final int date;
  /// Point in time (Unix timestamp) when the link was last edited; 0 if never or unknown
  final int editDate;
  /// Point in time (Unix timestamp) when the link will expire; 0 if never
  final int expireDate;
  /// The maximum number of members, which can join the chat using the link simultaneously; 0 if not limited
  final int memberLimit;
  /// Number of chat members, which joined the chat using the link
  final int memberCount;
  /// True, if the link is primary. Primary invite link can't have expire date or usage limit. There is exactly one primary invite link for each administrator with can_invite_users right at a given time
  final bool isPrimary;
  /// True, if the link was revoked
  final bool isRevoked;

  ChatInviteLink({
    required this.inviteLink,
    required this.creatorUserId,
    required this.date,
    required this.editDate,
    required this.expireDate,
    required this.memberLimit,
    required this.memberCount,
    required this.isPrimary,
    required this.isRevoked,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatInviteLink',
    'invite_link': inviteLink,
    'creator_user_id': creatorUserId,
    'date': date,
    'edit_date': editDate,
    'expire_date': expireDate,
    'member_limit': memberLimit,
    'member_count': memberCount,
    'is_primary': isPrimary,
    'is_revoked': isRevoked,
  };

  factory ChatInviteLink.fromJson(Map<String, dynamic> json) => ChatInviteLink(
    inviteLink: json['invite_link'],
    creatorUserId: json['creator_user_id'],
    date: json['date'],
    editDate: json['edit_date'],
    expireDate: json['expire_date'],
    memberLimit: json['member_limit'],
    memberCount: json['member_count'],
    isPrimary: json['is_primary'],
    isRevoked: json['is_revoked'],
  );
}

/// Contains a list of chat invite links
class ChatInviteLinks extends a.ChatInviteLinks {
  /// Approximate total count of chat invite links found
  final int totalCount;
  /// List of invite links
  final List<ChatInviteLink> inviteLinks;

  ChatInviteLinks({
    required this.totalCount,
    required this.inviteLinks,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatInviteLinks',
    'total_count': totalCount,
    'invite_links': inviteLinks,
  };

  factory ChatInviteLinks.fromJson(Map<String, dynamic> json) => ChatInviteLinks(
    totalCount: json['total_count'],
    inviteLinks: (json['invite_links'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatInviteLink).toList(growable: false),
  );
}

/// Describes a chat administrator with a number of active and revoked chat invite links
class ChatInviteLinkCount extends a.ChatInviteLinkCount {
  /// Administrator's user identifier
  final int userId;
  /// Number of active invite links
  final int inviteLinkCount;
  /// Number of revoked invite links
  final int revokedInviteLinkCount;

  ChatInviteLinkCount({
    required this.userId,
    required this.inviteLinkCount,
    required this.revokedInviteLinkCount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatInviteLinkCount',
    'user_id': userId,
    'invite_link_count': inviteLinkCount,
    'revoked_invite_link_count': revokedInviteLinkCount,
  };

  factory ChatInviteLinkCount.fromJson(Map<String, dynamic> json) => ChatInviteLinkCount(
    userId: json['user_id'],
    inviteLinkCount: json['invite_link_count'],
    revokedInviteLinkCount: json['revoked_invite_link_count'],
  );
}

/// Contains a list of chat invite link counts
class ChatInviteLinkCounts extends a.ChatInviteLinkCounts {
  /// List of invite linkcounts
  final List<ChatInviteLinkCount> inviteLinkCounts;

  ChatInviteLinkCounts({
    required this.inviteLinkCounts,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatInviteLinkCounts',
    'invite_link_counts': inviteLinkCounts,
  };

  factory ChatInviteLinkCounts.fromJson(Map<String, dynamic> json) => ChatInviteLinkCounts(
    inviteLinkCounts: (json['invite_link_counts'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatInviteLinkCount).toList(growable: false),
  );
}

/// Describes a chat member joined a chat by an invite link
class ChatInviteLinkMember extends a.ChatInviteLinkMember {
  /// User identifier
  final int userId;
  /// Point in time (Unix timestamp) when the user joined the chat
  final int joinedChatDate;

  ChatInviteLinkMember({
    required this.userId,
    required this.joinedChatDate,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatInviteLinkMember',
    'user_id': userId,
    'joined_chat_date': joinedChatDate,
  };

  factory ChatInviteLinkMember.fromJson(Map<String, dynamic> json) => ChatInviteLinkMember(
    userId: json['user_id'],
    joinedChatDate: json['joined_chat_date'],
  );
}

/// Contains a list of chat members joined a chat by an invite link
class ChatInviteLinkMembers extends a.ChatInviteLinkMembers {
  /// Approximate total count of chat members found
  final int totalCount;
  /// List of chat members, joined a chat by an invite link
  final List<ChatInviteLinkMember> members;

  ChatInviteLinkMembers({
    required this.totalCount,
    required this.members,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatInviteLinkMembers',
    'total_count': totalCount,
    'members': members,
  };

  factory ChatInviteLinkMembers.fromJson(Map<String, dynamic> json) => ChatInviteLinkMembers(
    totalCount: json['total_count'],
    members: (json['members'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatInviteLinkMember).toList(growable: false),
  );
}

/// Contains information about a chat invite link
class ChatInviteLinkInfo extends a.ChatInviteLinkInfo {
  /// Chat identifier of the invite link; 0 if the user has no access to the chat before joining
  final int chatId;
  /// If non-zero, the amount of time for which read access to the chat will remain available, in seconds
  final int accessibleFor;
  /// Contains information about the type of the chat
  final a.ChatType type;
  /// Title of the chat
  final String title;
  /// Chat photo; may be null
  final ChatPhotoInfo photo;
  /// Number of members in the chat
  final int memberCount;
  /// User identifiers of some chat members that may be known to the current user
  final List<int> memberUserIds;
  /// True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup
  final bool isPublic;

  ChatInviteLinkInfo({
    required this.chatId,
    required this.accessibleFor,
    required this.type,
    required this.title,
    required this.photo,
    required this.memberCount,
    required this.memberUserIds,
    required this.isPublic,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatInviteLinkInfo',
    'chat_id': chatId,
    'accessible_for': accessibleFor,
    'type': type,
    'title': title,
    'photo': photo,
    'member_count': memberCount,
    'member_user_ids': memberUserIds,
    'is_public': isPublic,
  };

  factory ChatInviteLinkInfo.fromJson(Map<String, dynamic> json) => ChatInviteLinkInfo(
    chatId: json['chat_id'],
    accessibleFor: json['accessible_for'],
    type: b.TdBase.fromJson(json['type']) as a.ChatType,
    title: json['title'],
    photo: b.TdBase.fromJson(json['photo']) as ChatPhotoInfo,
    memberCount: json['member_count'],
    memberUserIds: (json['member_user_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
    isPublic: json['is_public'],
  );
}

/// Represents a basic group of 0-200 users (must be upgraded to a supergroup to accommodate more than 200 users)
class BasicGroup extends a.BasicGroup {
  /// Group identifier
  final int id;
  /// Number of members in the group
  final int memberCount;
  /// Status of the current user in the group
  final a.ChatMemberStatus status;
  /// True, if the group is active
  final bool isActive;
  /// Identifier of the supergroup to which this group was upgraded; 0 if none
  final int upgradedToSupergroupId;

  BasicGroup({
    required this.id,
    required this.memberCount,
    required this.status,
    required this.isActive,
    required this.upgradedToSupergroupId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'basicGroup',
    'id': id,
    'member_count': memberCount,
    'status': status,
    'is_active': isActive,
    'upgraded_to_supergroup_id': upgradedToSupergroupId,
  };

  factory BasicGroup.fromJson(Map<String, dynamic> json) => BasicGroup(
    id: json['id'],
    memberCount: json['member_count'],
    status: b.TdBase.fromJson(json['status']) as a.ChatMemberStatus,
    isActive: json['is_active'],
    upgradedToSupergroupId: json['upgraded_to_supergroup_id'],
  );
}

/// Contains full information about a basic group
class BasicGroupFullInfo extends a.BasicGroupFullInfo {
  /// Chat photo; may be null
  final ChatPhoto photo;
  /// Group description. Updated only after the basic group is opened
  final String description;
  /// User identifier of the creator of the group; 0 if unknown
  final int creatorUserId;
  /// Group members
  final List<ChatMember> members;
  /// Primary invite link for this group; may be null. For chat administrators with can_invite_users right only. Updated only after the basic group is opened
  final ChatInviteLink inviteLink;

  BasicGroupFullInfo({
    required this.photo,
    required this.description,
    required this.creatorUserId,
    required this.members,
    required this.inviteLink,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'basicGroupFullInfo',
    'photo': photo,
    'description': description,
    'creator_user_id': creatorUserId,
    'members': members,
    'invite_link': inviteLink,
  };

  factory BasicGroupFullInfo.fromJson(Map<String, dynamic> json) => BasicGroupFullInfo(
    photo: b.TdBase.fromJson(json['photo']) as ChatPhoto,
    description: json['description'],
    creatorUserId: json['creator_user_id'],
    members: (json['members'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatMember).toList(growable: false),
    inviteLink: b.TdBase.fromJson(json['invite_link']) as ChatInviteLink,
  );
}

/// Represents a supergroup or channel with zero or more members (subscribers in the case of channels). From the point of view of the system, a channel is a special kind of a supergroup: only administrators can post and see the list of members, and posts from all administrators use the name and photo of the channel instead of individual names and profile photos. Unlike supergroups, channels can have an unlimited number of subscribers
class Supergroup extends a.Supergroup {
  /// Supergroup or channel identifier
  final int id;
  /// Username of the supergroup or channel; empty for private supergroups or channels
  final String username;
  /// Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member
  final int date;
  /// Status of the current user in the supergroup or channel; custom title will be always empty
  final a.ChatMemberStatus status;
  /// Number of members in the supergroup or channel; 0 if unknown. Currently it is guaranteed to be known only if the supergroup or channel was received through searchPublicChats, searchChatsNearby, getInactiveSupergroupChats, getSuitableDiscussionChats, getGroupsInCommon, or getUserPrivacySettingRules
  final int memberCount;
  /// True, if the channel has a discussion group, or the supergroup is the designated discussion group for a channel
  final bool hasLinkedChat;
  /// True, if the supergroup is connected to a location, i.e. the supergroup is a location-based supergroup
  final bool hasLocation;
  /// True, if messages sent to the channel should contain information about the sender. This field is only applicable to channels
  final bool signMessages;
  /// True, if the slow mode is enabled in the supergroup
  final bool isSlowModeEnabled;
  /// True, if the supergroup is a channel
  final bool isChannel;
  /// True, if the supergroup is a broadcast group, i.e. only administrators can send messages and there is no limit on number of members
  final bool isBroadcastGroup;
  /// True, if the supergroup or channel is verified
  final bool isVerified;
  /// If non-empty, contains a human-readable description of the reason why access to this supergroup or channel must be restricted
  final String restrictionReason;
  /// True, if many users reported this supergroup or channel as a scam
  final bool isScam;
  /// True, if many users reported this supergroup or channel as a fake account
  final bool isFake;

  Supergroup({
    required this.id,
    required this.username,
    required this.date,
    required this.status,
    required this.memberCount,
    required this.hasLinkedChat,
    required this.hasLocation,
    required this.signMessages,
    required this.isSlowModeEnabled,
    required this.isChannel,
    required this.isBroadcastGroup,
    required this.isVerified,
    required this.restrictionReason,
    required this.isScam,
    required this.isFake,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'supergroup',
    'id': id,
    'username': username,
    'date': date,
    'status': status,
    'member_count': memberCount,
    'has_linked_chat': hasLinkedChat,
    'has_location': hasLocation,
    'sign_messages': signMessages,
    'is_slow_mode_enabled': isSlowModeEnabled,
    'is_channel': isChannel,
    'is_broadcast_group': isBroadcastGroup,
    'is_verified': isVerified,
    'restriction_reason': restrictionReason,
    'is_scam': isScam,
    'is_fake': isFake,
  };

  factory Supergroup.fromJson(Map<String, dynamic> json) => Supergroup(
    id: json['id'],
    username: json['username'],
    date: json['date'],
    status: b.TdBase.fromJson(json['status']) as a.ChatMemberStatus,
    memberCount: json['member_count'],
    hasLinkedChat: json['has_linked_chat'],
    hasLocation: json['has_location'],
    signMessages: json['sign_messages'],
    isSlowModeEnabled: json['is_slow_mode_enabled'],
    isChannel: json['is_channel'],
    isBroadcastGroup: json['is_broadcast_group'],
    isVerified: json['is_verified'],
    restrictionReason: json['restriction_reason'],
    isScam: json['is_scam'],
    isFake: json['is_fake'],
  );
}

/// Contains full information about a supergroup or channel
class SupergroupFullInfo extends a.SupergroupFullInfo {
  /// Chat photo; may be null
  final ChatPhoto photo;
  /// Supergroup or channel description
  final String description;
  /// Number of members in the supergroup or channel; 0 if unknown
  final int memberCount;
  /// Number of privileged users in the supergroup or channel; 0 if unknown
  final int administratorCount;
  /// Number of restricted users in the supergroup; 0 if unknown
  final int restrictedCount;
  /// Number of users banned from chat; 0 if unknown
  final int bannedCount;
  /// Chat identifier of a discussion group for the channel, or a channel, for which the supergroup is the designated discussion group; 0 if none or unknown
  final int linkedChatId;
  /// Delay between consecutive sent messages for non-administrator supergroup members, in seconds
  final int slowModeDelay;
  /// Time left before next message can be sent in the supergroup, in seconds. An updateSupergroupFullInfo update is not triggered when value of this field changes, but both new and old values are non-zero
  final double slowModeDelayExpiresIn;
  /// True, if members of the chat can be retrieved
  final bool canGetMembers;
  /// True, if the chat username can be changed
  final bool canSetUsername;
  /// True, if the supergroup sticker set can be changed
  final bool canSetStickerSet;
  /// True, if the supergroup location can be changed
  final bool canSetLocation;
  /// True, if the supergroup or channel statistics are available
  final bool canGetStatistics;
  /// True, if new chat members will have access to old messages. In public or discussion groups and both public and private channels, old messages are always available, so this option affects only private supergroups without a linked chat. The value of this field is only available for chat administrators
  final bool isAllHistoryAvailable;
  /// Identifier of the supergroup sticker set; 0 if none
  final int stickerSetId;
  /// Location to which the supergroup is connected; may be null
  final ChatLocation location;
  /// Primary invite link for this chat; may be null. For chat administrators with can_invite_users right only
  final ChatInviteLink inviteLink;
  /// Identifier of the basic group from which supergroup was upgraded; 0 if none
  final int upgradedFromBasicGroupId;
  /// Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none
  final int upgradedFromMaxMessageId;

  SupergroupFullInfo({
    required this.photo,
    required this.description,
    required this.memberCount,
    required this.administratorCount,
    required this.restrictedCount,
    required this.bannedCount,
    required this.linkedChatId,
    required this.slowModeDelay,
    required this.slowModeDelayExpiresIn,
    required this.canGetMembers,
    required this.canSetUsername,
    required this.canSetStickerSet,
    required this.canSetLocation,
    required this.canGetStatistics,
    required this.isAllHistoryAvailable,
    required this.stickerSetId,
    required this.location,
    required this.inviteLink,
    required this.upgradedFromBasicGroupId,
    required this.upgradedFromMaxMessageId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'supergroupFullInfo',
    'photo': photo,
    'description': description,
    'member_count': memberCount,
    'administrator_count': administratorCount,
    'restricted_count': restrictedCount,
    'banned_count': bannedCount,
    'linked_chat_id': linkedChatId,
    'slow_mode_delay': slowModeDelay,
    'slow_mode_delay_expires_in': slowModeDelayExpiresIn,
    'can_get_members': canGetMembers,
    'can_set_username': canSetUsername,
    'can_set_sticker_set': canSetStickerSet,
    'can_set_location': canSetLocation,
    'can_get_statistics': canGetStatistics,
    'is_all_history_available': isAllHistoryAvailable,
    'sticker_set_id': stickerSetId,
    'location': location,
    'invite_link': inviteLink,
    'upgraded_from_basic_group_id': upgradedFromBasicGroupId,
    'upgraded_from_max_message_id': upgradedFromMaxMessageId,
  };

  factory SupergroupFullInfo.fromJson(Map<String, dynamic> json) => SupergroupFullInfo(
    photo: b.TdBase.fromJson(json['photo']) as ChatPhoto,
    description: json['description'],
    memberCount: json['member_count'],
    administratorCount: json['administrator_count'],
    restrictedCount: json['restricted_count'],
    bannedCount: json['banned_count'],
    linkedChatId: json['linked_chat_id'],
    slowModeDelay: json['slow_mode_delay'],
    slowModeDelayExpiresIn: json['slow_mode_delay_expires_in'],
    canGetMembers: json['can_get_members'],
    canSetUsername: json['can_set_username'],
    canSetStickerSet: json['can_set_sticker_set'],
    canSetLocation: json['can_set_location'],
    canGetStatistics: json['can_get_statistics'],
    isAllHistoryAvailable: json['is_all_history_available'],
    stickerSetId: int.parse(json['sticker_set_id']),
    location: b.TdBase.fromJson(json['location']) as ChatLocation,
    inviteLink: b.TdBase.fromJson(json['invite_link']) as ChatInviteLink,
    upgradedFromBasicGroupId: json['upgraded_from_basic_group_id'],
    upgradedFromMaxMessageId: json['upgraded_from_max_message_id'],
  );
}

/// The secret chat is not yet created; waiting for the other user to get online
class SecretChatStatePending extends a.SecretChatState {
  SecretChatStatePending();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'secretChatStatePending',
  };

  factory SecretChatStatePending.fromJson(Map<String, dynamic> json) => SecretChatStatePending(
  );
}

/// The secret chat is ready to use
class SecretChatStateReady extends a.SecretChatState {
  SecretChatStateReady();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'secretChatStateReady',
  };

  factory SecretChatStateReady.fromJson(Map<String, dynamic> json) => SecretChatStateReady(
  );
}

/// The secret chat is closed
class SecretChatStateClosed extends a.SecretChatState {
  SecretChatStateClosed();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'secretChatStateClosed',
  };

  factory SecretChatStateClosed.fromJson(Map<String, dynamic> json) => SecretChatStateClosed(
  );
}

/// Represents a secret chat
class SecretChat extends a.SecretChat {
  /// Secret chat identifier
  final int id;
  /// Identifier of the chat partner
  final int userId;
  /// State of the secret chat
  final a.SecretChatState state;
  /// True, if the chat was created by the current user; otherwise false
  final bool isOutbound;
  /// Hash of the currently used key for comparison with the hash of the chat partner's key. This is a string of 36 little-endian bytes, which must be split into groups of 2 bits, each denoting a pixel of one of 4 colors FFFFFF, D5E6F3, 2D5775, and 2F99C9.
  final Uint8List keyHash;
  /// Secret chat layer; determines features supported by the chat partner's application. Video notes are supported if the layer >= 66; nested text entities and underline and strikethrough entities are supported if the layer >= 101
  final int layer;

  SecretChat({
    required this.id,
    required this.userId,
    required this.state,
    required this.isOutbound,
    required this.keyHash,
    required this.layer,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'secretChat',
    'id': id,
    'user_id': userId,
    'state': state,
    'is_outbound': isOutbound,
    'key_hash': keyHash,
    'layer': layer,
  };

  factory SecretChat.fromJson(Map<String, dynamic> json) => SecretChat(
    id: json['id'],
    userId: json['user_id'],
    state: b.TdBase.fromJson(json['state']) as a.SecretChatState,
    isOutbound: json['is_outbound'],
    keyHash: base64.decode(json['key_hash']),
    layer: json['layer'],
  );
}

/// The message was sent by a known user
class MessageSenderUser extends a.MessageSender {
  /// Identifier of the user that sent the message
  final int userId;

  MessageSenderUser({
    required this.userId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageSenderUser',
    'user_id': userId,
  };

  factory MessageSenderUser.fromJson(Map<String, dynamic> json) => MessageSenderUser(
    userId: json['user_id'],
  );
}

/// The message was sent on behalf of a chat
class MessageSenderChat extends a.MessageSender {
  /// Identifier of the chat that sent the message
  final int chatId;

  MessageSenderChat({
    required this.chatId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageSenderChat',
    'chat_id': chatId,
  };

  factory MessageSenderChat.fromJson(Map<String, dynamic> json) => MessageSenderChat(
    chatId: json['chat_id'],
  );
}

/// Represents a list of message senders
class MessageSenders extends a.MessageSenders {
  /// Approximate total count of messages senders found
  final int totalCount;
  /// List of message senders
  final List<a.MessageSender> senders;

  MessageSenders({
    required this.totalCount,
    required this.senders,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageSenders',
    'total_count': totalCount,
    'senders': senders,
  };

  factory MessageSenders.fromJson(Map<String, dynamic> json) => MessageSenders(
    totalCount: json['total_count'],
    senders: (json['senders'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.MessageSender).toList(growable: false),
  );
}

/// The message was originally sent by a known user
class MessageForwardOriginUser extends a.MessageForwardOrigin {
  /// Identifier of the user that originally sent the message
  final int senderUserId;

  MessageForwardOriginUser({
    required this.senderUserId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageForwardOriginUser',
    'sender_user_id': senderUserId,
  };

  factory MessageForwardOriginUser.fromJson(Map<String, dynamic> json) => MessageForwardOriginUser(
    senderUserId: json['sender_user_id'],
  );
}

/// The message was originally sent by an anonymous chat administrator on behalf of the chat
class MessageForwardOriginChat extends a.MessageForwardOrigin {
  /// Identifier of the chat that originally sent the message
  final int senderChatId;
  /// Original message author signature
  final String authorSignature;

  MessageForwardOriginChat({
    required this.senderChatId,
    required this.authorSignature,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageForwardOriginChat',
    'sender_chat_id': senderChatId,
    'author_signature': authorSignature,
  };

  factory MessageForwardOriginChat.fromJson(Map<String, dynamic> json) => MessageForwardOriginChat(
    senderChatId: json['sender_chat_id'],
    authorSignature: json['author_signature'],
  );
}

/// The message was originally sent by a user, which is hidden by their privacy settings
class MessageForwardOriginHiddenUser extends a.MessageForwardOrigin {
  /// Name of the sender
  final String senderName;

  MessageForwardOriginHiddenUser({
    required this.senderName,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageForwardOriginHiddenUser',
    'sender_name': senderName,
  };

  factory MessageForwardOriginHiddenUser.fromJson(Map<String, dynamic> json) => MessageForwardOriginHiddenUser(
    senderName: json['sender_name'],
  );
}

/// The message was originally a post in a channel
class MessageForwardOriginChannel extends a.MessageForwardOrigin {
  /// Identifier of the chat from which the message was originally forwarded
  final int chatId;
  /// Message identifier of the original message
  final int messageId;
  /// Original post author signature
  final String authorSignature;

  MessageForwardOriginChannel({
    required this.chatId,
    required this.messageId,
    required this.authorSignature,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageForwardOriginChannel',
    'chat_id': chatId,
    'message_id': messageId,
    'author_signature': authorSignature,
  };

  factory MessageForwardOriginChannel.fromJson(Map<String, dynamic> json) => MessageForwardOriginChannel(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    authorSignature: json['author_signature'],
  );
}

/// The message was imported from an exported message history
class MessageForwardOriginMessageImport extends a.MessageForwardOrigin {
  /// Name of the sender
  final String senderName;

  MessageForwardOriginMessageImport({
    required this.senderName,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageForwardOriginMessageImport',
    'sender_name': senderName,
  };

  factory MessageForwardOriginMessageImport.fromJson(Map<String, dynamic> json) => MessageForwardOriginMessageImport(
    senderName: json['sender_name'],
  );
}

/// Contains information about a forwarded message
class MessageForwardInfo extends a.MessageForwardInfo {
  /// Origin of a forwarded message
  final a.MessageForwardOrigin origin;
  /// Point in time (Unix timestamp) when the message was originally sent
  final int date;
  /// The type of a public service announcement for the forwarded message
  final String publicServiceAnnouncementType;
  /// For messages forwarded to the chat with the current user (Saved Messages), to the Replies bot chat, or to the channel's discussion group, the identifier of the chat from which the message was forwarded last time; 0 if unknown
  final int fromChatId;
  /// For messages forwarded to the chat with the current user (Saved Messages), to the Replies bot chat, or to the channel's discussion group, the identifier of the original message from which the new message was forwarded last time; 0 if unknown
  final int fromMessageId;

  MessageForwardInfo({
    required this.origin,
    required this.date,
    required this.publicServiceAnnouncementType,
    required this.fromChatId,
    required this.fromMessageId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageForwardInfo',
    'origin': origin,
    'date': date,
    'public_service_announcement_type': publicServiceAnnouncementType,
    'from_chat_id': fromChatId,
    'from_message_id': fromMessageId,
  };

  factory MessageForwardInfo.fromJson(Map<String, dynamic> json) => MessageForwardInfo(
    origin: b.TdBase.fromJson(json['origin']) as a.MessageForwardOrigin,
    date: json['date'],
    publicServiceAnnouncementType: json['public_service_announcement_type'],
    fromChatId: json['from_chat_id'],
    fromMessageId: json['from_message_id'],
  );
}

/// Contains information about replies to a message
class MessageReplyInfo extends a.MessageReplyInfo {
  /// Number of times the message was directly or indirectly replied
  final int replyCount;
  /// Recent repliers to the message; available in channels with a discussion supergroup
  final List<a.MessageSender> recentRepliers;
  /// Identifier of the last read incoming reply to the message
  final int lastReadInboxMessageId;
  /// Identifier of the last read outgoing reply to the message
  final int lastReadOutboxMessageId;
  /// Identifier of the last reply to the message
  final int lastMessageId;

  MessageReplyInfo({
    required this.replyCount,
    required this.recentRepliers,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.lastMessageId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageReplyInfo',
    'reply_count': replyCount,
    'recent_repliers': recentRepliers,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
    'last_message_id': lastMessageId,
  };

  factory MessageReplyInfo.fromJson(Map<String, dynamic> json) => MessageReplyInfo(
    replyCount: json['reply_count'],
    recentRepliers: (json['recent_repliers'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.MessageSender).toList(growable: false),
    lastReadInboxMessageId: json['last_read_inbox_message_id'],
    lastReadOutboxMessageId: json['last_read_outbox_message_id'],
    lastMessageId: json['last_message_id'],
  );
}

/// Contains information about interactions with a message
class MessageInteractionInfo extends a.MessageInteractionInfo {
  /// Number of times the message was viewed
  final int viewCount;
  /// Number of times the message was forwarded
  final int forwardCount;
  /// Contains information about direct or indirect replies to the message; may be null. Currently, available only in channels with a discussion supergroup and discussion supergroups for messages, which are not replies itself
  final MessageReplyInfo replyInfo;

  MessageInteractionInfo({
    required this.viewCount,
    required this.forwardCount,
    required this.replyInfo,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageInteractionInfo',
    'view_count': viewCount,
    'forward_count': forwardCount,
    'reply_info': replyInfo,
  };

  factory MessageInteractionInfo.fromJson(Map<String, dynamic> json) => MessageInteractionInfo(
    viewCount: json['view_count'],
    forwardCount: json['forward_count'],
    replyInfo: b.TdBase.fromJson(json['reply_info']) as MessageReplyInfo,
  );
}

/// The message is being sent now, but has not yet been delivered to the server
class MessageSendingStatePending extends a.MessageSendingState {
  MessageSendingStatePending();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageSendingStatePending',
  };

  factory MessageSendingStatePending.fromJson(Map<String, dynamic> json) => MessageSendingStatePending(
  );
}

/// The message failed to be sent
class MessageSendingStateFailed extends a.MessageSendingState {
  /// An error code; 0 if unknown
  final int errorCode;
  /// Error message
  final String errorMessage;
  /// True, if the message can be re-sent
  final bool canRetry;
  /// Time left before the message can be re-sent, in seconds. No update is sent when this field changes
  final double retryAfter;

  MessageSendingStateFailed({
    required this.errorCode,
    required this.errorMessage,
    required this.canRetry,
    required this.retryAfter,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageSendingStateFailed',
    'error_code': errorCode,
    'error_message': errorMessage,
    'can_retry': canRetry,
    'retry_after': retryAfter,
  };

  factory MessageSendingStateFailed.fromJson(Map<String, dynamic> json) => MessageSendingStateFailed(
    errorCode: json['error_code'],
    errorMessage: json['error_message'],
    canRetry: json['can_retry'],
    retryAfter: json['retry_after'],
  );
}

/// Describes a message
class Message extends a.Message {
  /// Message identifier; unique for the chat to which the message belongs
  final int id;
  /// The sender of the message
  final a.MessageSender sender;
  /// Chat identifier
  final int chatId;
  /// Information about the sending state of the message; may be null
  final a.MessageSendingState sendingState;
  /// Information about the scheduling state of the message; may be null
  final a.MessageSchedulingState schedulingState;
  /// True, if the message is outgoing
  final bool isOutgoing;
  /// True, if the message is pinned
  final bool isPinned;
  /// True, if the message can be edited. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message by the application
  final bool canBeEdited;
  /// True, if the message can be forwarded
  final bool canBeForwarded;
  /// True, if the message can be deleted only for the current user while other users will continue to see it
  final bool canBeDeletedOnlyForSelf;
  /// True, if the message can be deleted for all users
  final bool canBeDeletedForAllUsers;
  /// True, if the message statistics are available
  final bool canGetStatistics;
  /// True, if the message thread info is available
  final bool canGetMessageThread;
  /// True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts
  final bool isChannelPost;
  /// True, if the message contains an unread mention for the current user
  final bool containsUnreadMention;
  /// Point in time (Unix timestamp) when the message was sent
  final int date;
  /// Point in time (Unix timestamp) when the message was last edited
  final int editDate;
  /// Information about the initial message sender; may be null
  final MessageForwardInfo forwardInfo;
  /// Information about interactions with the message; may be null
  final MessageInteractionInfo interactionInfo;
  /// If non-zero, the identifier of the chat to which the replied message belongs; Currently, only messages in the Replies chat can have different reply_in_chat_id and chat_id
  final int replyInChatId;
  /// If non-zero, the identifier of the message this message is replying to; can be the identifier of a deleted message
  final int replyToMessageId;
  /// If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs
  final int messageThreadId;
  /// For self-destructing messages, the message's TTL (Time To Live), in seconds; 0 if none. TDLib will send updateDeleteMessages or updateMessageContent once the TTL expires
  final int ttl;
  /// Time left before the message expires, in seconds
  final double ttlExpiresIn;
  /// If non-zero, the user identifier of the bot through which this message was sent
  final int viaBotUserId;
  /// For channel posts and anonymous group messages, optional author signature
  final String authorSignature;
  /// Unique identifier of an album this message belongs to. Only audios, documents, photos and videos can be grouped together in albums
  final int mediaAlbumId;
  /// If non-empty, contains a human-readable description of the reason why access to this message must be restricted
  final String restrictionReason;
  /// Content of the message
  final a.MessageContent content;
  /// Reply markup for the message; may be null
  final a.ReplyMarkup replyMarkup;

  Message({
    required this.id,
    required this.sender,
    required this.chatId,
    required this.sendingState,
    required this.schedulingState,
    required this.isOutgoing,
    required this.isPinned,
    required this.canBeEdited,
    required this.canBeForwarded,
    required this.canBeDeletedOnlyForSelf,
    required this.canBeDeletedForAllUsers,
    required this.canGetStatistics,
    required this.canGetMessageThread,
    required this.isChannelPost,
    required this.containsUnreadMention,
    required this.date,
    required this.editDate,
    required this.forwardInfo,
    required this.interactionInfo,
    required this.replyInChatId,
    required this.replyToMessageId,
    required this.messageThreadId,
    required this.ttl,
    required this.ttlExpiresIn,
    required this.viaBotUserId,
    required this.authorSignature,
    required this.mediaAlbumId,
    required this.restrictionReason,
    required this.content,
    required this.replyMarkup,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'message',
    'id': id,
    'sender': sender,
    'chat_id': chatId,
    'sending_state': sendingState,
    'scheduling_state': schedulingState,
    'is_outgoing': isOutgoing,
    'is_pinned': isPinned,
    'can_be_edited': canBeEdited,
    'can_be_forwarded': canBeForwarded,
    'can_be_deleted_only_for_self': canBeDeletedOnlyForSelf,
    'can_be_deleted_for_all_users': canBeDeletedForAllUsers,
    'can_get_statistics': canGetStatistics,
    'can_get_message_thread': canGetMessageThread,
    'is_channel_post': isChannelPost,
    'contains_unread_mention': containsUnreadMention,
    'date': date,
    'edit_date': editDate,
    'forward_info': forwardInfo,
    'interaction_info': interactionInfo,
    'reply_in_chat_id': replyInChatId,
    'reply_to_message_id': replyToMessageId,
    'message_thread_id': messageThreadId,
    'ttl': ttl,
    'ttl_expires_in': ttlExpiresIn,
    'via_bot_user_id': viaBotUserId,
    'author_signature': authorSignature,
    'media_album_id': mediaAlbumId,
    'restriction_reason': restrictionReason,
    'content': content,
    'reply_markup': replyMarkup,
  };

  factory Message.fromJson(Map<String, dynamic> json) => Message(
    id: json['id'],
    sender: b.TdBase.fromJson(json['sender']) as a.MessageSender,
    chatId: json['chat_id'],
    sendingState: b.TdBase.fromJson(json['sending_state']) as a.MessageSendingState,
    schedulingState: b.TdBase.fromJson(json['scheduling_state']) as a.MessageSchedulingState,
    isOutgoing: json['is_outgoing'],
    isPinned: json['is_pinned'],
    canBeEdited: json['can_be_edited'],
    canBeForwarded: json['can_be_forwarded'],
    canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'],
    canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'],
    canGetStatistics: json['can_get_statistics'],
    canGetMessageThread: json['can_get_message_thread'],
    isChannelPost: json['is_channel_post'],
    containsUnreadMention: json['contains_unread_mention'],
    date: json['date'],
    editDate: json['edit_date'],
    forwardInfo: b.TdBase.fromJson(json['forward_info']) as MessageForwardInfo,
    interactionInfo: b.TdBase.fromJson(json['interaction_info']) as MessageInteractionInfo,
    replyInChatId: json['reply_in_chat_id'],
    replyToMessageId: json['reply_to_message_id'],
    messageThreadId: json['message_thread_id'],
    ttl: json['ttl'],
    ttlExpiresIn: json['ttl_expires_in'],
    viaBotUserId: json['via_bot_user_id'],
    authorSignature: json['author_signature'],
    mediaAlbumId: int.parse(json['media_album_id']),
    restrictionReason: json['restriction_reason'],
    content: b.TdBase.fromJson(json['content']) as a.MessageContent,
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup,
  );
}

/// Contains a list of messages
class Messages extends a.Messages {
  /// Approximate total count of messages found
  final int totalCount;
  /// List of messages; messages may be null
  final List<Message> messages;

  Messages({
    required this.totalCount,
    required this.messages,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messages',
    'total_count': totalCount,
    'messages': messages,
  };

  factory Messages.fromJson(Map<String, dynamic> json) => Messages(
    totalCount: json['total_count'],
    messages: (json['messages'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as Message).toList(growable: false),
  );
}

/// Contains a list of messages found by a search
class FoundMessages extends a.FoundMessages {
  /// Approximate total count of messages found; -1 if unknown
  final int totalCount;
  /// List of messages
  final List<Message> messages;
  /// The offset for the next request. If empty, there are no more results
  final String nextOffset;

  FoundMessages({
    required this.totalCount,
    required this.messages,
    required this.nextOffset,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'foundMessages',
    'total_count': totalCount,
    'messages': messages,
    'next_offset': nextOffset,
  };

  factory FoundMessages.fromJson(Map<String, dynamic> json) => FoundMessages(
    totalCount: json['total_count'],
    messages: (json['messages'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as Message).toList(growable: false),
    nextOffset: json['next_offset'],
  );
}

/// Notification settings applied to all private and secret chats when the corresponding chat setting has a default value
class NotificationSettingsScopePrivateChats extends a.NotificationSettingsScope {
  NotificationSettingsScopePrivateChats();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'notificationSettingsScopePrivateChats',
  };

  factory NotificationSettingsScopePrivateChats.fromJson(Map<String, dynamic> json) => NotificationSettingsScopePrivateChats(
  );
}

/// Notification settings applied to all basic groups and supergroups when the corresponding chat setting has a default value
class NotificationSettingsScopeGroupChats extends a.NotificationSettingsScope {
  NotificationSettingsScopeGroupChats();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'notificationSettingsScopeGroupChats',
  };

  factory NotificationSettingsScopeGroupChats.fromJson(Map<String, dynamic> json) => NotificationSettingsScopeGroupChats(
  );
}

/// Notification settings applied to all channels when the corresponding chat setting has a default value
class NotificationSettingsScopeChannelChats extends a.NotificationSettingsScope {
  NotificationSettingsScopeChannelChats();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'notificationSettingsScopeChannelChats',
  };

  factory NotificationSettingsScopeChannelChats.fromJson(Map<String, dynamic> json) => NotificationSettingsScopeChannelChats(
  );
}

/// Contains information about notification settings for a chat
class ChatNotificationSettings extends a.ChatNotificationSettings {
  /// If true, mute_for is ignored and the value for the relevant type of chat is used instead
  final bool useDefaultMuteFor;
  /// Time left before notifications will be unmuted, in seconds
  final int muteFor;
  /// If true, sound is ignored and the value for the relevant type of chat is used instead
  final bool useDefaultSound;
  /// The name of an audio file to be used for notification sounds; only applies to iOS applications
  final String sound;
  /// If true, show_preview is ignored and the value for the relevant type of chat is used instead
  final bool useDefaultShowPreview;
  /// True, if message content should be displayed in notifications
  final bool showPreview;
  /// If true, disable_pinned_message_notifications is ignored and the value for the relevant type of chat is used instead
  final bool useDefaultDisablePinnedMessageNotifications;
  /// If true, notifications for incoming pinned messages will be created as for an ordinary unread message
  final bool disablePinnedMessageNotifications;
  /// If true, disable_mention_notifications is ignored and the value for the relevant type of chat is used instead
  final bool useDefaultDisableMentionNotifications;
  /// If true, notifications for messages with mentions will be created as for an ordinary unread message
  final bool disableMentionNotifications;

  ChatNotificationSettings({
    required this.useDefaultMuteFor,
    required this.muteFor,
    required this.useDefaultSound,
    required this.sound,
    required this.useDefaultShowPreview,
    required this.showPreview,
    required this.useDefaultDisablePinnedMessageNotifications,
    required this.disablePinnedMessageNotifications,
    required this.useDefaultDisableMentionNotifications,
    required this.disableMentionNotifications,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatNotificationSettings',
    'use_default_mute_for': useDefaultMuteFor,
    'mute_for': muteFor,
    'use_default_sound': useDefaultSound,
    'sound': sound,
    'use_default_show_preview': useDefaultShowPreview,
    'show_preview': showPreview,
    'use_default_disable_pinned_message_notifications': useDefaultDisablePinnedMessageNotifications,
    'disable_pinned_message_notifications': disablePinnedMessageNotifications,
    'use_default_disable_mention_notifications': useDefaultDisableMentionNotifications,
    'disable_mention_notifications': disableMentionNotifications,
  };

  factory ChatNotificationSettings.fromJson(Map<String, dynamic> json) => ChatNotificationSettings(
    useDefaultMuteFor: json['use_default_mute_for'],
    muteFor: json['mute_for'],
    useDefaultSound: json['use_default_sound'],
    sound: json['sound'],
    useDefaultShowPreview: json['use_default_show_preview'],
    showPreview: json['show_preview'],
    useDefaultDisablePinnedMessageNotifications: json['use_default_disable_pinned_message_notifications'],
    disablePinnedMessageNotifications: json['disable_pinned_message_notifications'],
    useDefaultDisableMentionNotifications: json['use_default_disable_mention_notifications'],
    disableMentionNotifications: json['disable_mention_notifications'],
  );
}

/// Contains information about notification settings for several chats
class ScopeNotificationSettings extends a.ScopeNotificationSettings {
  /// Time left before notifications will be unmuted, in seconds
  final int muteFor;
  /// The name of an audio file to be used for notification sounds; only applies to iOS applications
  final String sound;
  /// True, if message content should be displayed in notifications
  final bool showPreview;
  /// True, if notifications for incoming pinned messages will be created as for an ordinary unread message
  final bool disablePinnedMessageNotifications;
  /// True, if notifications for messages with mentions will be created as for an ordinary unread message
  final bool disableMentionNotifications;

  ScopeNotificationSettings({
    required this.muteFor,
    required this.sound,
    required this.showPreview,
    required this.disablePinnedMessageNotifications,
    required this.disableMentionNotifications,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'scopeNotificationSettings',
    'mute_for': muteFor,
    'sound': sound,
    'show_preview': showPreview,
    'disable_pinned_message_notifications': disablePinnedMessageNotifications,
    'disable_mention_notifications': disableMentionNotifications,
  };

  factory ScopeNotificationSettings.fromJson(Map<String, dynamic> json) => ScopeNotificationSettings(
    muteFor: json['mute_for'],
    sound: json['sound'],
    showPreview: json['show_preview'],
    disablePinnedMessageNotifications: json['disable_pinned_message_notifications'],
    disableMentionNotifications: json['disable_mention_notifications'],
  );
}

/// Contains information about a message draft
class DraftMessage extends a.DraftMessage {
  /// Identifier of the message to reply to; 0 if none
  final int replyToMessageId;
  /// Point in time (Unix timestamp) when the draft was created
  final int date;
  /// Content of the message draft; this should always be of type inputMessageText
  final a.InputMessageContent inputMessageText;

  DraftMessage({
    required this.replyToMessageId,
    required this.date,
    required this.inputMessageText,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'draftMessage',
    'reply_to_message_id': replyToMessageId,
    'date': date,
    'input_message_text': inputMessageText,
  };

  factory DraftMessage.fromJson(Map<String, dynamic> json) => DraftMessage(
    replyToMessageId: json['reply_to_message_id'],
    date: json['date'],
    inputMessageText: b.TdBase.fromJson(json['input_message_text']) as a.InputMessageContent,
  );
}

/// An ordinary chat with a user
class ChatTypePrivate extends a.ChatType {
  /// User identifier
  final int userId;

  ChatTypePrivate({
    required this.userId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatTypePrivate',
    'user_id': userId,
  };

  factory ChatTypePrivate.fromJson(Map<String, dynamic> json) => ChatTypePrivate(
    userId: json['user_id'],
  );
}

/// A basic group (i.e., a chat with 0-200 other users)
class ChatTypeBasicGroup extends a.ChatType {
  /// Basic group identifier
  final int basicGroupId;

  ChatTypeBasicGroup({
    required this.basicGroupId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatTypeBasicGroup',
    'basic_group_id': basicGroupId,
  };

  factory ChatTypeBasicGroup.fromJson(Map<String, dynamic> json) => ChatTypeBasicGroup(
    basicGroupId: json['basic_group_id'],
  );
}

/// A supergroup (i.e. a chat with up to GetOption("supergroup_max_size") other users), or channel (with unlimited members)
class ChatTypeSupergroup extends a.ChatType {
  /// Supergroup or channel identifier
  final int supergroupId;
  /// True, if the supergroup is a channel
  final bool isChannel;

  ChatTypeSupergroup({
    required this.supergroupId,
    required this.isChannel,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatTypeSupergroup',
    'supergroup_id': supergroupId,
    'is_channel': isChannel,
  };

  factory ChatTypeSupergroup.fromJson(Map<String, dynamic> json) => ChatTypeSupergroup(
    supergroupId: json['supergroup_id'],
    isChannel: json['is_channel'],
  );
}

/// A secret chat with a user
class ChatTypeSecret extends a.ChatType {
  /// Secret chat identifier
  final int secretChatId;
  /// User identifier of the secret chat peer
  final int userId;

  ChatTypeSecret({
    required this.secretChatId,
    required this.userId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatTypeSecret',
    'secret_chat_id': secretChatId,
    'user_id': userId,
  };

  factory ChatTypeSecret.fromJson(Map<String, dynamic> json) => ChatTypeSecret(
    secretChatId: json['secret_chat_id'],
    userId: json['user_id'],
  );
}

/// Represents a filter of user chats
class ChatFilter extends a.ChatFilter {
  /// The title of the filter; 1-12 characters without line feeds
  final String title;
  /// The icon name for short filter representation. If non-empty, must be one of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work".
  final String iconName;
  /// The chat identifiers of pinned chats in the filtered chat list
  final List<int> pinnedChatIds;
  /// The chat identifiers of always included chats in the filtered chat list
  final List<int> includedChatIds;
  /// The chat identifiers of always excluded chats in the filtered chat list
  final List<int> excludedChatIds;
  /// True, if muted chats need to be excluded
  final bool excludeMuted;
  /// True, if read chats need to be excluded
  final bool excludeRead;
  /// True, if archived chats need to be excluded
  final bool excludeArchived;
  /// True, if contacts need to be included
  final bool includeContacts;
  /// True, if non-contact users need to be included
  final bool includeNonContacts;
  /// True, if bots need to be included
  final bool includeBots;
  /// True, if basic groups and supergroups need to be included
  final bool includeGroups;
  /// True, if channels need to be included
  final bool includeChannels;

  ChatFilter({
    required this.title,
    required this.iconName,
    required this.pinnedChatIds,
    required this.includedChatIds,
    required this.excludedChatIds,
    required this.excludeMuted,
    required this.excludeRead,
    required this.excludeArchived,
    required this.includeContacts,
    required this.includeNonContacts,
    required this.includeBots,
    required this.includeGroups,
    required this.includeChannels,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatFilter',
    'title': title,
    'icon_name': iconName,
    'pinned_chat_ids': pinnedChatIds,
    'included_chat_ids': includedChatIds,
    'excluded_chat_ids': excludedChatIds,
    'exclude_muted': excludeMuted,
    'exclude_read': excludeRead,
    'exclude_archived': excludeArchived,
    'include_contacts': includeContacts,
    'include_non_contacts': includeNonContacts,
    'include_bots': includeBots,
    'include_groups': includeGroups,
    'include_channels': includeChannels,
  };

  factory ChatFilter.fromJson(Map<String, dynamic> json) => ChatFilter(
    title: json['title'],
    iconName: json['icon_name'],
    pinnedChatIds: (json['pinned_chat_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
    includedChatIds: (json['included_chat_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
    excludedChatIds: (json['excluded_chat_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
    excludeMuted: json['exclude_muted'],
    excludeRead: json['exclude_read'],
    excludeArchived: json['exclude_archived'],
    includeContacts: json['include_contacts'],
    includeNonContacts: json['include_non_contacts'],
    includeBots: json['include_bots'],
    includeGroups: json['include_groups'],
    includeChannels: json['include_channels'],
  );
}

/// Contains basic information about a chat filter
class ChatFilterInfo extends a.ChatFilterInfo {
  /// Unique chat filter identifier
  final int id;
  /// The title of the filter; 1-12 characters without line feeds
  final String title;
  /// The icon name for short filter representation. One of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work"
  final String iconName;

  ChatFilterInfo({
    required this.id,
    required this.title,
    required this.iconName,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatFilterInfo',
    'id': id,
    'title': title,
    'icon_name': iconName,
  };

  factory ChatFilterInfo.fromJson(Map<String, dynamic> json) => ChatFilterInfo(
    id: json['id'],
    title: json['title'],
    iconName: json['icon_name'],
  );
}

/// Describes a recommended chat filter
class RecommendedChatFilter extends a.RecommendedChatFilter {
  /// The chat filter
  final ChatFilter filter;
  /// Chat filter description
  final String description;

  RecommendedChatFilter({
    required this.filter,
    required this.description,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'recommendedChatFilter',
    'filter': filter,
    'description': description,
  };

  factory RecommendedChatFilter.fromJson(Map<String, dynamic> json) => RecommendedChatFilter(
    filter: b.TdBase.fromJson(json['filter']) as ChatFilter,
    description: json['description'],
  );
}

/// Contains a list of recommended chat filters
class RecommendedChatFilters extends a.RecommendedChatFilters {
  /// List of recommended chat filters
  final List<RecommendedChatFilter> chatFilters;

  RecommendedChatFilters({
    required this.chatFilters,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'recommendedChatFilters',
    'chat_filters': chatFilters,
  };

  factory RecommendedChatFilters.fromJson(Map<String, dynamic> json) => RecommendedChatFilters(
    chatFilters: (json['chat_filters'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as RecommendedChatFilter).toList(growable: false),
  );
}

/// A main list of chats
class ChatListMain extends a.ChatList {
  ChatListMain();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatListMain',
  };

  factory ChatListMain.fromJson(Map<String, dynamic> json) => ChatListMain(
  );
}

/// A list of chats usually located at the top of the main chat list. Unmuted chats are automatically moved from the Archive to the Main chat list when a new message arrives
class ChatListArchive extends a.ChatList {
  ChatListArchive();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatListArchive',
  };

  factory ChatListArchive.fromJson(Map<String, dynamic> json) => ChatListArchive(
  );
}

/// A list of chats belonging to a chat filter
class ChatListFilter extends a.ChatList {
  /// Chat filter identifier
  final int chatFilterId;

  ChatListFilter({
    required this.chatFilterId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatListFilter',
    'chat_filter_id': chatFilterId,
  };

  factory ChatListFilter.fromJson(Map<String, dynamic> json) => ChatListFilter(
    chatFilterId: json['chat_filter_id'],
  );
}

/// Contains a list of chat lists
class ChatLists extends a.ChatLists {
  /// List of chat lists
  final List<a.ChatList> chatLists;

  ChatLists({
    required this.chatLists,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatLists',
    'chat_lists': chatLists,
  };

  factory ChatLists.fromJson(Map<String, dynamic> json) => ChatLists(
    chatLists: (json['chat_lists'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.ChatList).toList(growable: false),
  );
}

/// The chat is sponsored by the user's MTProxy server
class ChatSourceMtprotoProxy extends a.ChatSource {
  ChatSourceMtprotoProxy();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatSourceMtprotoProxy',
  };

  factory ChatSourceMtprotoProxy.fromJson(Map<String, dynamic> json) => ChatSourceMtprotoProxy(
  );
}

/// The chat contains a public service announcement
class ChatSourcePublicServiceAnnouncement extends a.ChatSource {
  /// The type of the announcement
  final String type;
  /// The text of the announcement
  final String text;

  ChatSourcePublicServiceAnnouncement({
    required this.type,
    required this.text,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatSourcePublicServiceAnnouncement',
    'type': type,
    'text': text,
  };

  factory ChatSourcePublicServiceAnnouncement.fromJson(Map<String, dynamic> json) => ChatSourcePublicServiceAnnouncement(
    type: json['type'],
    text: json['text'],
  );
}

/// Describes a position of a chat in a chat list
class ChatPosition extends a.ChatPosition {
  /// The chat list
  final a.ChatList list;
  /// A parameter used to determine order of the chat in the chat list. Chats must be sorted by the pair (order, chat.id) in descending order
  final int order;
  /// True, if the chat is pinned in the chat list
  final bool isPinned;
  /// Source of the chat in the chat list; may be null
  final a.ChatSource source;

  ChatPosition({
    required this.list,
    required this.order,
    required this.isPinned,
    required this.source,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatPosition',
    'list': list,
    'order': order,
    'is_pinned': isPinned,
    'source': source,
  };

  factory ChatPosition.fromJson(Map<String, dynamic> json) => ChatPosition(
    list: b.TdBase.fromJson(json['list']) as a.ChatList,
    order: int.parse(json['order']),
    isPinned: json['is_pinned'],
    source: b.TdBase.fromJson(json['source']) as a.ChatSource,
  );
}

/// Describes a voice chat
class VoiceChat extends a.VoiceChat {
  /// Group call identifier of an active voice chat; 0 if none. Full informationa about the voice chat can be received through the method getGroupCall
  final int groupCallId;
  /// True, if the voice chat has participants
  final bool hasParticipants;
  /// Default group call participant identifier to join the voice chat; may be null
  final a.MessageSender defaultParticipantId;

  VoiceChat({
    required this.groupCallId,
    required this.hasParticipants,
    required this.defaultParticipantId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'voiceChat',
    'group_call_id': groupCallId,
    'has_participants': hasParticipants,
    'default_participant_id': defaultParticipantId,
  };

  factory VoiceChat.fromJson(Map<String, dynamic> json) => VoiceChat(
    groupCallId: json['group_call_id'],
    hasParticipants: json['has_participants'],
    defaultParticipantId: b.TdBase.fromJson(json['default_participant_id']) as a.MessageSender,
  );
}

/// A chat. (Can be a private chat, basic group, supergroup, or secret chat)
class Chat extends a.Chat {
  /// Chat unique identifier
  final int id;
  /// Type of the chat
  final a.ChatType type;
  /// Chat title
  final String title;
  /// Chat photo; may be null
  final ChatPhotoInfo photo;
  /// Actions that non-administrator chat members are allowed to take in the chat
  final ChatPermissions permissions;
  /// Last message in the chat; may be null
  final Message lastMessage;
  /// Positions of the chat in chat lists
  final List<ChatPosition> positions;
  /// True, if the chat is marked as unread
  final bool isMarkedAsUnread;
  /// True, if the chat is blocked by the current user and private messages from the chat can't be received
  final bool isBlocked;
  /// True, if the chat has scheduled messages
  final bool hasScheduledMessages;
  /// True, if the chat messages can be deleted only for the current user while other users will continue to see the messages
  final bool canBeDeletedOnlyForSelf;
  /// True, if the chat messages can be deleted for all users
  final bool canBeDeletedForAllUsers;
  /// True, if the chat can be reported to Telegram moderators through reportChat or reportChatPhoto
  final bool canBeReported;
  /// Default value of the disable_notification parameter, used when a message is sent to the chat
  final bool defaultDisableNotification;
  /// Number of unread messages in the chat
  final int unreadCount;
  /// Identifier of the last read incoming message
  final int lastReadInboxMessageId;
  /// Identifier of the last read outgoing message
  final int lastReadOutboxMessageId;
  /// Number of unread messages with a mention/reply in the chat
  final int unreadMentionCount;
  /// Notification settings for this chat
  final ChatNotificationSettings notificationSettings;
  /// Current message Time To Live setting (self-destruct timer) for the chat; 0 if not defined. TTL is counted from the time message or its content is viewed in secret chats and from the send date in other chats
  final int messageTtlSetting;
  /// Describes actions which should be possible to do through a chat action bar; may be null
  final a.ChatActionBar actionBar;
  /// Contains information about voice chat of the chat
  final VoiceChat voiceChat;
  /// Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
  final int replyMarkupMessageId;
  /// A draft of a message in the chat; may be null
  final DraftMessage draftMessage;
  /// Contains application-specific data associated with the chat. (For example, the chat scroll position or local chat notification settings can be stored here.) Persistent if the message database is used
  final String clientData;

  Chat({
    required this.id,
    required this.type,
    required this.title,
    required this.photo,
    required this.permissions,
    required this.lastMessage,
    required this.positions,
    required this.isMarkedAsUnread,
    required this.isBlocked,
    required this.hasScheduledMessages,
    required this.canBeDeletedOnlyForSelf,
    required this.canBeDeletedForAllUsers,
    required this.canBeReported,
    required this.defaultDisableNotification,
    required this.unreadCount,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.unreadMentionCount,
    required this.notificationSettings,
    required this.messageTtlSetting,
    required this.actionBar,
    required this.voiceChat,
    required this.replyMarkupMessageId,
    required this.draftMessage,
    required this.clientData,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chat',
    'id': id,
    'type': type,
    'title': title,
    'photo': photo,
    'permissions': permissions,
    'last_message': lastMessage,
    'positions': positions,
    'is_marked_as_unread': isMarkedAsUnread,
    'is_blocked': isBlocked,
    'has_scheduled_messages': hasScheduledMessages,
    'can_be_deleted_only_for_self': canBeDeletedOnlyForSelf,
    'can_be_deleted_for_all_users': canBeDeletedForAllUsers,
    'can_be_reported': canBeReported,
    'default_disable_notification': defaultDisableNotification,
    'unread_count': unreadCount,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
    'unread_mention_count': unreadMentionCount,
    'notification_settings': notificationSettings,
    'message_ttl_setting': messageTtlSetting,
    'action_bar': actionBar,
    'voice_chat': voiceChat,
    'reply_markup_message_id': replyMarkupMessageId,
    'draft_message': draftMessage,
    'client_data': clientData,
  };

  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
    id: json['id'],
    type: b.TdBase.fromJson(json['type']) as a.ChatType,
    title: json['title'],
    photo: b.TdBase.fromJson(json['photo']) as ChatPhotoInfo,
    permissions: b.TdBase.fromJson(json['permissions']) as ChatPermissions,
    lastMessage: b.TdBase.fromJson(json['last_message']) as Message,
    positions: (json['positions'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatPosition).toList(growable: false),
    isMarkedAsUnread: json['is_marked_as_unread'],
    isBlocked: json['is_blocked'],
    hasScheduledMessages: json['has_scheduled_messages'],
    canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'],
    canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'],
    canBeReported: json['can_be_reported'],
    defaultDisableNotification: json['default_disable_notification'],
    unreadCount: json['unread_count'],
    lastReadInboxMessageId: json['last_read_inbox_message_id'],
    lastReadOutboxMessageId: json['last_read_outbox_message_id'],
    unreadMentionCount: json['unread_mention_count'],
    notificationSettings: b.TdBase.fromJson(json['notification_settings']) as ChatNotificationSettings,
    messageTtlSetting: json['message_ttl_setting'],
    actionBar: b.TdBase.fromJson(json['action_bar']) as a.ChatActionBar,
    voiceChat: b.TdBase.fromJson(json['voice_chat']) as VoiceChat,
    replyMarkupMessageId: json['reply_markup_message_id'],
    draftMessage: b.TdBase.fromJson(json['draft_message']) as DraftMessage,
    clientData: json['client_data'],
  );
}

/// Represents a list of chats
class Chats extends a.Chats {
  /// Approximate total count of chats found
  final int totalCount;
  /// List of chat identifiers
  final List<int> chatIds;

  Chats({
    required this.totalCount,
    required this.chatIds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chats',
    'total_count': totalCount,
    'chat_ids': chatIds,
  };

  factory Chats.fromJson(Map<String, dynamic> json) => Chats(
    totalCount: json['total_count'],
    chatIds: (json['chat_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// Describes a chat located nearby
class ChatNearby extends a.ChatNearby {
  /// Chat identifier
  final int chatId;
  /// Distance to the chat location, in meters
  final int distance;

  ChatNearby({
    required this.chatId,
    required this.distance,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatNearby',
    'chat_id': chatId,
    'distance': distance,
  };

  factory ChatNearby.fromJson(Map<String, dynamic> json) => ChatNearby(
    chatId: json['chat_id'],
    distance: json['distance'],
  );
}

/// Represents a list of chats located nearby
class ChatsNearby extends a.ChatsNearby {
  /// List of users nearby
  final List<ChatNearby> usersNearby;
  /// List of location-based supergroups nearby
  final List<ChatNearby> supergroupsNearby;

  ChatsNearby({
    required this.usersNearby,
    required this.supergroupsNearby,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatsNearby',
    'users_nearby': usersNearby,
    'supergroups_nearby': supergroupsNearby,
  };

  factory ChatsNearby.fromJson(Map<String, dynamic> json) => ChatsNearby(
    usersNearby: (json['users_nearby'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatNearby).toList(growable: false),
    supergroupsNearby: (json['supergroups_nearby'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatNearby).toList(growable: false),
  );
}

/// The chat is public, because it has username
class PublicChatTypeHasUsername extends a.PublicChatType {
  PublicChatTypeHasUsername();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'publicChatTypeHasUsername',
  };

  factory PublicChatTypeHasUsername.fromJson(Map<String, dynamic> json) => PublicChatTypeHasUsername(
  );
}

/// The chat is public, because it is a location-based supergroup
class PublicChatTypeIsLocationBased extends a.PublicChatType {
  PublicChatTypeIsLocationBased();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'publicChatTypeIsLocationBased',
  };

  factory PublicChatTypeIsLocationBased.fromJson(Map<String, dynamic> json) => PublicChatTypeIsLocationBased(
  );
}

/// The chat can be reported as spam using the method reportChat with the reason chatReportReasonSpam
class ChatActionBarReportSpam extends a.ChatActionBar {
  /// If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings
  final bool canUnarchive;

  ChatActionBarReportSpam({
    required this.canUnarchive,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionBarReportSpam',
    'can_unarchive': canUnarchive,
  };

  factory ChatActionBarReportSpam.fromJson(Map<String, dynamic> json) => ChatActionBarReportSpam(
    canUnarchive: json['can_unarchive'],
  );
}

/// The chat is a location-based supergroup, which can be reported as having unrelated location using the method reportChat with the reason chatReportReasonUnrelatedLocation
class ChatActionBarReportUnrelatedLocation extends a.ChatActionBar {
  ChatActionBarReportUnrelatedLocation();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionBarReportUnrelatedLocation',
  };

  factory ChatActionBarReportUnrelatedLocation.fromJson(Map<String, dynamic> json) => ChatActionBarReportUnrelatedLocation(
  );
}

/// The chat is a recently created group chat, to which new members can be invited
class ChatActionBarInviteMembers extends a.ChatActionBar {
  ChatActionBarInviteMembers();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionBarInviteMembers',
  };

  factory ChatActionBarInviteMembers.fromJson(Map<String, dynamic> json) => ChatActionBarInviteMembers(
  );
}

/// The chat is a private or secret chat, which can be reported using the method reportChat, or the other user can be blocked using the method blockUser, or the other user can be added to the contact list using the method addContact
class ChatActionBarReportAddBlock extends a.ChatActionBar {
  /// If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings
  final bool canUnarchive;
  /// If non-negative, the current user was found by the peer through searchChatsNearby and this is the distance between the users
  final int distance;

  ChatActionBarReportAddBlock({
    required this.canUnarchive,
    required this.distance,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionBarReportAddBlock',
    'can_unarchive': canUnarchive,
    'distance': distance,
  };

  factory ChatActionBarReportAddBlock.fromJson(Map<String, dynamic> json) => ChatActionBarReportAddBlock(
    canUnarchive: json['can_unarchive'],
    distance: json['distance'],
  );
}

/// The chat is a private or secret chat and the other user can be added to the contact list using the method addContact
class ChatActionBarAddContact extends a.ChatActionBar {
  ChatActionBarAddContact();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionBarAddContact',
  };

  factory ChatActionBarAddContact.fromJson(Map<String, dynamic> json) => ChatActionBarAddContact(
  );
}

/// The chat is a private or secret chat with a mutual contact and the user's phone number can be shared with the other user using the method sharePhoneNumber
class ChatActionBarSharePhoneNumber extends a.ChatActionBar {
  ChatActionBarSharePhoneNumber();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionBarSharePhoneNumber',
  };

  factory ChatActionBarSharePhoneNumber.fromJson(Map<String, dynamic> json) => ChatActionBarSharePhoneNumber(
  );
}

/// A simple button, with text that should be sent when the button is pressed
class KeyboardButtonTypeText extends a.KeyboardButtonType {
  KeyboardButtonTypeText();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'keyboardButtonTypeText',
  };

  factory KeyboardButtonTypeText.fromJson(Map<String, dynamic> json) => KeyboardButtonTypeText(
  );
}

/// A button that sends the user's phone number when pressed; available only in private chats
class KeyboardButtonTypeRequestPhoneNumber extends a.KeyboardButtonType {
  KeyboardButtonTypeRequestPhoneNumber();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'keyboardButtonTypeRequestPhoneNumber',
  };

  factory KeyboardButtonTypeRequestPhoneNumber.fromJson(Map<String, dynamic> json) => KeyboardButtonTypeRequestPhoneNumber(
  );
}

/// A button that sends the user's location when pressed; available only in private chats
class KeyboardButtonTypeRequestLocation extends a.KeyboardButtonType {
  KeyboardButtonTypeRequestLocation();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'keyboardButtonTypeRequestLocation',
  };

  factory KeyboardButtonTypeRequestLocation.fromJson(Map<String, dynamic> json) => KeyboardButtonTypeRequestLocation(
  );
}

/// A button that allows the user to create and send a poll when pressed; available only in private chats
class KeyboardButtonTypeRequestPoll extends a.KeyboardButtonType {
  /// If true, only regular polls must be allowed to create
  final bool forceRegular;
  /// If true, only polls in quiz mode must be allowed to create
  final bool forceQuiz;

  KeyboardButtonTypeRequestPoll({
    required this.forceRegular,
    required this.forceQuiz,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'keyboardButtonTypeRequestPoll',
    'force_regular': forceRegular,
    'force_quiz': forceQuiz,
  };

  factory KeyboardButtonTypeRequestPoll.fromJson(Map<String, dynamic> json) => KeyboardButtonTypeRequestPoll(
    forceRegular: json['force_regular'],
    forceQuiz: json['force_quiz'],
  );
}

/// Represents a single button in a bot keyboard
class KeyboardButton extends a.KeyboardButton {
  /// Text of the button
  final String text;
  /// Type of the button
  final a.KeyboardButtonType type;

  KeyboardButton({
    required this.text,
    required this.type,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'keyboardButton',
    'text': text,
    'type': type,
  };

  factory KeyboardButton.fromJson(Map<String, dynamic> json) => KeyboardButton(
    text: json['text'],
    type: b.TdBase.fromJson(json['type']) as a.KeyboardButtonType,
  );
}

/// A button that opens a specified URL
class InlineKeyboardButtonTypeUrl extends a.InlineKeyboardButtonType {
  /// HTTP or tg:// URL to open
  final String url;

  InlineKeyboardButtonTypeUrl({
    required this.url,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineKeyboardButtonTypeUrl',
    'url': url,
  };

  factory InlineKeyboardButtonTypeUrl.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeUrl(
    url: json['url'],
  );
}

/// A button that opens a specified URL and automatically authorize the current user if allowed to do so
class InlineKeyboardButtonTypeLoginUrl extends a.InlineKeyboardButtonType {
  /// An HTTP URL to open
  final String url;
  /// Unique button identifier
  final int id;
  /// If non-empty, new text of the button in forwarded messages
  final String forwardText;

  InlineKeyboardButtonTypeLoginUrl({
    required this.url,
    required this.id,
    required this.forwardText,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineKeyboardButtonTypeLoginUrl',
    'url': url,
    'id': id,
    'forward_text': forwardText,
  };

  factory InlineKeyboardButtonTypeLoginUrl.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeLoginUrl(
    url: json['url'],
    id: json['id'],
    forwardText: json['forward_text'],
  );
}

/// A button that sends a callback query to a bot
class InlineKeyboardButtonTypeCallback extends a.InlineKeyboardButtonType {
  /// Data to be sent to the bot via a callback query
  final Uint8List data;

  InlineKeyboardButtonTypeCallback({
    required this.data,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineKeyboardButtonTypeCallback',
    'data': data,
  };

  factory InlineKeyboardButtonTypeCallback.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeCallback(
    data: base64.decode(json['data']),
  );
}

/// A button that asks for password of the current user and then sends a callback query to a bot
class InlineKeyboardButtonTypeCallbackWithPassword extends a.InlineKeyboardButtonType {
  /// Data to be sent to the bot via a callback query
  final Uint8List data;

  InlineKeyboardButtonTypeCallbackWithPassword({
    required this.data,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineKeyboardButtonTypeCallbackWithPassword',
    'data': data,
  };

  factory InlineKeyboardButtonTypeCallbackWithPassword.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeCallbackWithPassword(
    data: base64.decode(json['data']),
  );
}

/// A button with a game that sends a callback query to a bot. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageGame
class InlineKeyboardButtonTypeCallbackGame extends a.InlineKeyboardButtonType {
  InlineKeyboardButtonTypeCallbackGame();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineKeyboardButtonTypeCallbackGame',
  };

  factory InlineKeyboardButtonTypeCallbackGame.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeCallbackGame(
  );
}

/// A button that forces an inline query to the bot to be inserted in the input field
class InlineKeyboardButtonTypeSwitchInline extends a.InlineKeyboardButtonType {
  /// Inline query to be sent to the bot
  final String query;
  /// True, if the inline query should be sent from the current chat
  final bool inCurrentChat;

  InlineKeyboardButtonTypeSwitchInline({
    required this.query,
    required this.inCurrentChat,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineKeyboardButtonTypeSwitchInline',
    'query': query,
    'in_current_chat': inCurrentChat,
  };

  factory InlineKeyboardButtonTypeSwitchInline.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeSwitchInline(
    query: json['query'],
    inCurrentChat: json['in_current_chat'],
  );
}

/// A button to buy something. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageInvoice
class InlineKeyboardButtonTypeBuy extends a.InlineKeyboardButtonType {
  InlineKeyboardButtonTypeBuy();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineKeyboardButtonTypeBuy',
  };

  factory InlineKeyboardButtonTypeBuy.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeBuy(
  );
}

/// Represents a single button in an inline keyboard
class InlineKeyboardButton extends a.InlineKeyboardButton {
  /// Text of the button
  final String text;
  /// Type of the button
  final a.InlineKeyboardButtonType type;

  InlineKeyboardButton({
    required this.text,
    required this.type,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineKeyboardButton',
    'text': text,
    'type': type,
  };

  factory InlineKeyboardButton.fromJson(Map<String, dynamic> json) => InlineKeyboardButton(
    text: json['text'],
    type: b.TdBase.fromJson(json['type']) as a.InlineKeyboardButtonType,
  );
}

/// Instructs application to remove the keyboard once this message has been received. This kind of keyboard can't be received in an incoming message; instead, UpdateChatReplyMarkup with message_id == 0 will be sent
class ReplyMarkupRemoveKeyboard extends a.ReplyMarkup {
  /// True, if the keyboard is removed only for the mentioned users or the target user of a reply
  final bool isPersonal;

  ReplyMarkupRemoveKeyboard({
    required this.isPersonal,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'replyMarkupRemoveKeyboard',
    'is_personal': isPersonal,
  };

  factory ReplyMarkupRemoveKeyboard.fromJson(Map<String, dynamic> json) => ReplyMarkupRemoveKeyboard(
    isPersonal: json['is_personal'],
  );
}

/// Instructs application to force a reply to this message
class ReplyMarkupForceReply extends a.ReplyMarkup {
  /// True, if a forced reply must automatically be shown to the current user. For outgoing messages, specify true to show the forced reply only for the mentioned users and for the target user of a reply
  final bool isPersonal;

  ReplyMarkupForceReply({
    required this.isPersonal,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'replyMarkupForceReply',
    'is_personal': isPersonal,
  };

  factory ReplyMarkupForceReply.fromJson(Map<String, dynamic> json) => ReplyMarkupForceReply(
    isPersonal: json['is_personal'],
  );
}

/// Contains a custom keyboard layout to quickly reply to bots
class ReplyMarkupShowKeyboard extends a.ReplyMarkup {
  /// A list of rows of bot keyboard buttons
  final List<List<KeyboardButton>> rows;
  /// True, if the application needs to resize the keyboard vertically
  final bool resizeKeyboard;
  /// True, if the application needs to hide the keyboard after use
  final bool oneTime;
  /// True, if the keyboard must automatically be shown to the current user. For outgoing messages, specify true to show the keyboard only for the mentioned users and for the target user of a reply
  final bool isPersonal;

  ReplyMarkupShowKeyboard({
    required this.rows,
    required this.resizeKeyboard,
    required this.oneTime,
    required this.isPersonal,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'replyMarkupShowKeyboard',
    'rows': rows,
    'resize_keyboard': resizeKeyboard,
    'one_time': oneTime,
    'is_personal': isPersonal,
  };

  factory ReplyMarkupShowKeyboard.fromJson(Map<String, dynamic> json) => ReplyMarkupShowKeyboard(
    rows: (json['rows'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as List<KeyboardButton>).toList(growable: false),
    resizeKeyboard: json['resize_keyboard'],
    oneTime: json['one_time'],
    isPersonal: json['is_personal'],
  );
}

/// Contains an inline keyboard layout
class ReplyMarkupInlineKeyboard extends a.ReplyMarkup {
  /// A list of rows of inline keyboard buttons
  final List<List<InlineKeyboardButton>> rows;

  ReplyMarkupInlineKeyboard({
    required this.rows,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'replyMarkupInlineKeyboard',
    'rows': rows,
  };

  factory ReplyMarkupInlineKeyboard.fromJson(Map<String, dynamic> json) => ReplyMarkupInlineKeyboard(
    rows: (json['rows'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as List<InlineKeyboardButton>).toList(growable: false),
  );
}

/// An HTTP url needs to be open
class LoginUrlInfoOpen extends a.LoginUrlInfo {
  /// The URL to open
  final String url;
  /// True, if there is no need to show an ordinary open URL confirm
  final bool skipConfirm;

  LoginUrlInfoOpen({
    required this.url,
    required this.skipConfirm,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'loginUrlInfoOpen',
    'url': url,
    'skip_confirm': skipConfirm,
  };

  factory LoginUrlInfoOpen.fromJson(Map<String, dynamic> json) => LoginUrlInfoOpen(
    url: json['url'],
    skipConfirm: json['skip_confirm'],
  );
}

/// An authorization confirmation dialog needs to be shown to the user
class LoginUrlInfoRequestConfirmation extends a.LoginUrlInfo {
  /// An HTTP URL to be opened
  final String url;
  /// A domain of the URL
  final String domain;
  /// User identifier of a bot linked with the website
  final int botUserId;
  /// True, if the user needs to be requested to give the permission to the bot to send them messages
  final bool requestWriteAccess;

  LoginUrlInfoRequestConfirmation({
    required this.url,
    required this.domain,
    required this.botUserId,
    required this.requestWriteAccess,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'loginUrlInfoRequestConfirmation',
    'url': url,
    'domain': domain,
    'bot_user_id': botUserId,
    'request_write_access': requestWriteAccess,
  };

  factory LoginUrlInfoRequestConfirmation.fromJson(Map<String, dynamic> json) => LoginUrlInfoRequestConfirmation(
    url: json['url'],
    domain: json['domain'],
    botUserId: json['bot_user_id'],
    requestWriteAccess: json['request_write_access'],
  );
}

/// Contains information about a message thread
class MessageThreadInfo extends a.MessageThreadInfo {
  /// Identifier of the chat to which the message thread belongs
  final int chatId;
  /// Message thread identifier, unique within the chat
  final int messageThreadId;
  /// Contains information about the message thread
  final MessageReplyInfo replyInfo;
  /// The messages from which the thread starts. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id)
  final List<Message> messages;
  /// A draft of a message in the message thread; may be null
  final DraftMessage draftMessage;

  MessageThreadInfo({
    required this.chatId,
    required this.messageThreadId,
    required this.replyInfo,
    required this.messages,
    required this.draftMessage,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageThreadInfo',
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'reply_info': replyInfo,
    'messages': messages,
    'draft_message': draftMessage,
  };

  factory MessageThreadInfo.fromJson(Map<String, dynamic> json) => MessageThreadInfo(
    chatId: json['chat_id'],
    messageThreadId: json['message_thread_id'],
    replyInfo: b.TdBase.fromJson(json['reply_info']) as MessageReplyInfo,
    messages: (json['messages'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as Message).toList(growable: false),
    draftMessage: b.TdBase.fromJson(json['draft_message']) as DraftMessage,
  );
}

/// A plain text
class RichTextPlain extends a.RichText {
  /// Text
  final String text;

  RichTextPlain({
    required this.text,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextPlain',
    'text': text,
  };

  factory RichTextPlain.fromJson(Map<String, dynamic> json) => RichTextPlain(
    text: json['text'],
  );
}

/// A bold rich text
class RichTextBold extends a.RichText {
  /// Text
  final a.RichText text;

  RichTextBold({
    required this.text,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextBold',
    'text': text,
  };

  factory RichTextBold.fromJson(Map<String, dynamic> json) => RichTextBold(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
  );
}

/// An italicized rich text
class RichTextItalic extends a.RichText {
  /// Text
  final a.RichText text;

  RichTextItalic({
    required this.text,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextItalic',
    'text': text,
  };

  factory RichTextItalic.fromJson(Map<String, dynamic> json) => RichTextItalic(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
  );
}

/// An underlined rich text
class RichTextUnderline extends a.RichText {
  /// Text
  final a.RichText text;

  RichTextUnderline({
    required this.text,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextUnderline',
    'text': text,
  };

  factory RichTextUnderline.fromJson(Map<String, dynamic> json) => RichTextUnderline(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
  );
}

/// A strikethrough rich text
class RichTextStrikethrough extends a.RichText {
  /// Text
  final a.RichText text;

  RichTextStrikethrough({
    required this.text,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextStrikethrough',
    'text': text,
  };

  factory RichTextStrikethrough.fromJson(Map<String, dynamic> json) => RichTextStrikethrough(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
  );
}

/// A fixed-width rich text
class RichTextFixed extends a.RichText {
  /// Text
  final a.RichText text;

  RichTextFixed({
    required this.text,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextFixed',
    'text': text,
  };

  factory RichTextFixed.fromJson(Map<String, dynamic> json) => RichTextFixed(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
  );
}

/// A rich text URL link
class RichTextUrl extends a.RichText {
  /// Text
  final a.RichText text;
  /// URL
  final String url;
  /// True, if the URL has cached instant view server-side
  final bool isCached;

  RichTextUrl({
    required this.text,
    required this.url,
    required this.isCached,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextUrl',
    'text': text,
    'url': url,
    'is_cached': isCached,
  };

  factory RichTextUrl.fromJson(Map<String, dynamic> json) => RichTextUrl(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
    url: json['url'],
    isCached: json['is_cached'],
  );
}

/// A rich text email link
class RichTextEmailAddress extends a.RichText {
  /// Text
  final a.RichText text;
  /// Email address
  final String emailAddress;

  RichTextEmailAddress({
    required this.text,
    required this.emailAddress,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextEmailAddress',
    'text': text,
    'email_address': emailAddress,
  };

  factory RichTextEmailAddress.fromJson(Map<String, dynamic> json) => RichTextEmailAddress(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
    emailAddress: json['email_address'],
  );
}

/// A subscript rich text
class RichTextSubscript extends a.RichText {
  /// Text
  final a.RichText text;

  RichTextSubscript({
    required this.text,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextSubscript',
    'text': text,
  };

  factory RichTextSubscript.fromJson(Map<String, dynamic> json) => RichTextSubscript(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
  );
}

/// A superscript rich text
class RichTextSuperscript extends a.RichText {
  /// Text
  final a.RichText text;

  RichTextSuperscript({
    required this.text,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextSuperscript',
    'text': text,
  };

  factory RichTextSuperscript.fromJson(Map<String, dynamic> json) => RichTextSuperscript(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
  );
}

/// A marked rich text
class RichTextMarked extends a.RichText {
  /// Text
  final a.RichText text;

  RichTextMarked({
    required this.text,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextMarked',
    'text': text,
  };

  factory RichTextMarked.fromJson(Map<String, dynamic> json) => RichTextMarked(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
  );
}

/// A rich text phone number
class RichTextPhoneNumber extends a.RichText {
  /// Text
  final a.RichText text;
  /// Phone number
  final String phoneNumber;

  RichTextPhoneNumber({
    required this.text,
    required this.phoneNumber,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextPhoneNumber',
    'text': text,
    'phone_number': phoneNumber,
  };

  factory RichTextPhoneNumber.fromJson(Map<String, dynamic> json) => RichTextPhoneNumber(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
    phoneNumber: json['phone_number'],
  );
}

/// A small image inside the text
class RichTextIcon extends a.RichText {
  /// The image represented as a document. The image can be in GIF, JPEG or PNG format
  final Document document;
  /// Width of a bounding box in which the image should be shown; 0 if unknown
  final int width;
  /// Height of a bounding box in which the image should be shown; 0 if unknown
  final int height;

  RichTextIcon({
    required this.document,
    required this.width,
    required this.height,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextIcon',
    'document': document,
    'width': width,
    'height': height,
  };

  factory RichTextIcon.fromJson(Map<String, dynamic> json) => RichTextIcon(
    document: b.TdBase.fromJson(json['document']) as Document,
    width: json['width'],
    height: json['height'],
  );
}

/// A reference to a richTexts object on the same web page
class RichTextReference extends a.RichText {
  /// The text
  final a.RichText text;
  /// The name of a richTextAnchor object, which is the first element of the target richTexts object
  final String anchorName;
  /// An HTTP URL, opening the reference
  final String url;

  RichTextReference({
    required this.text,
    required this.anchorName,
    required this.url,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextReference',
    'text': text,
    'anchor_name': anchorName,
    'url': url,
  };

  factory RichTextReference.fromJson(Map<String, dynamic> json) => RichTextReference(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
    anchorName: json['anchor_name'],
    url: json['url'],
  );
}

/// An anchor
class RichTextAnchor extends a.RichText {
  /// Anchor name
  final String name;

  RichTextAnchor({
    required this.name,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextAnchor',
    'name': name,
  };

  factory RichTextAnchor.fromJson(Map<String, dynamic> json) => RichTextAnchor(
    name: json['name'],
  );
}

/// A link to an anchor on the same web page
class RichTextAnchorLink extends a.RichText {
  /// The link text
  final a.RichText text;
  /// The anchor name. If the name is empty, the link should bring back to top
  final String anchorName;
  /// An HTTP URL, opening the anchor
  final String url;

  RichTextAnchorLink({
    required this.text,
    required this.anchorName,
    required this.url,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTextAnchorLink',
    'text': text,
    'anchor_name': anchorName,
    'url': url,
  };

  factory RichTextAnchorLink.fromJson(Map<String, dynamic> json) => RichTextAnchorLink(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
    anchorName: json['anchor_name'],
    url: json['url'],
  );
}

/// A concatenation of rich texts
class RichTexts extends a.RichText {
  /// Texts
  final List<a.RichText> texts;

  RichTexts({
    required this.texts,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'richTexts',
    'texts': texts,
  };

  factory RichTexts.fromJson(Map<String, dynamic> json) => RichTexts(
    texts: (json['texts'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.RichText).toList(growable: false),
  );
}

/// Contains a caption of an instant view web page block, consisting of a text and a trailing credit
class PageBlockCaption extends a.PageBlockCaption {
  /// Content of the caption
  final a.RichText text;
  /// Block credit (like HTML tag <cite>)
  final a.RichText credit;

  PageBlockCaption({
    required this.text,
    required this.credit,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockCaption',
    'text': text,
    'credit': credit,
  };

  factory PageBlockCaption.fromJson(Map<String, dynamic> json) => PageBlockCaption(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
    credit: b.TdBase.fromJson(json['credit']) as a.RichText,
  );
}

/// Describes an item of a list page block
class PageBlockListItem extends a.PageBlockListItem {
  /// Item label
  final String label;
  /// Item blocks
  final List<a.PageBlock> pageBlocks;

  PageBlockListItem({
    required this.label,
    required this.pageBlocks,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockListItem',
    'label': label,
    'page_blocks': pageBlocks,
  };

  factory PageBlockListItem.fromJson(Map<String, dynamic> json) => PageBlockListItem(
    label: json['label'],
    pageBlocks: (json['page_blocks'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.PageBlock).toList(growable: false),
  );
}

/// The content should be left-aligned
class PageBlockHorizontalAlignmentLeft extends a.PageBlockHorizontalAlignment {
  PageBlockHorizontalAlignmentLeft();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockHorizontalAlignmentLeft',
  };

  factory PageBlockHorizontalAlignmentLeft.fromJson(Map<String, dynamic> json) => PageBlockHorizontalAlignmentLeft(
  );
}

/// The content should be center-aligned
class PageBlockHorizontalAlignmentCenter extends a.PageBlockHorizontalAlignment {
  PageBlockHorizontalAlignmentCenter();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockHorizontalAlignmentCenter',
  };

  factory PageBlockHorizontalAlignmentCenter.fromJson(Map<String, dynamic> json) => PageBlockHorizontalAlignmentCenter(
  );
}

/// The content should be right-aligned
class PageBlockHorizontalAlignmentRight extends a.PageBlockHorizontalAlignment {
  PageBlockHorizontalAlignmentRight();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockHorizontalAlignmentRight',
  };

  factory PageBlockHorizontalAlignmentRight.fromJson(Map<String, dynamic> json) => PageBlockHorizontalAlignmentRight(
  );
}

/// The content should be top-aligned
class PageBlockVerticalAlignmentTop extends a.PageBlockVerticalAlignment {
  PageBlockVerticalAlignmentTop();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockVerticalAlignmentTop',
  };

  factory PageBlockVerticalAlignmentTop.fromJson(Map<String, dynamic> json) => PageBlockVerticalAlignmentTop(
  );
}

/// The content should be middle-aligned
class PageBlockVerticalAlignmentMiddle extends a.PageBlockVerticalAlignment {
  PageBlockVerticalAlignmentMiddle();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockVerticalAlignmentMiddle',
  };

  factory PageBlockVerticalAlignmentMiddle.fromJson(Map<String, dynamic> json) => PageBlockVerticalAlignmentMiddle(
  );
}

/// The content should be bottom-aligned
class PageBlockVerticalAlignmentBottom extends a.PageBlockVerticalAlignment {
  PageBlockVerticalAlignmentBottom();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockVerticalAlignmentBottom',
  };

  factory PageBlockVerticalAlignmentBottom.fromJson(Map<String, dynamic> json) => PageBlockVerticalAlignmentBottom(
  );
}

/// Represents a cell of a table
class PageBlockTableCell extends a.PageBlockTableCell {
  /// Cell text; may be null. If the text is null, then the cell should be invisible
  final a.RichText text;
  /// True, if it is a header cell
  final bool isHeader;
  /// The number of columns the cell should span
  final int colspan;
  /// The number of rows the cell should span
  final int rowspan;
  /// Horizontal cell content alignment
  final a.PageBlockHorizontalAlignment align;
  /// Vertical cell content alignment
  final a.PageBlockVerticalAlignment valign;

  PageBlockTableCell({
    required this.text,
    required this.isHeader,
    required this.colspan,
    required this.rowspan,
    required this.align,
    required this.valign,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockTableCell',
    'text': text,
    'is_header': isHeader,
    'colspan': colspan,
    'rowspan': rowspan,
    'align': align,
    'valign': valign,
  };

  factory PageBlockTableCell.fromJson(Map<String, dynamic> json) => PageBlockTableCell(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
    isHeader: json['is_header'],
    colspan: json['colspan'],
    rowspan: json['rowspan'],
    align: b.TdBase.fromJson(json['align']) as a.PageBlockHorizontalAlignment,
    valign: b.TdBase.fromJson(json['valign']) as a.PageBlockVerticalAlignment,
  );
}

/// Contains information about a related article
class PageBlockRelatedArticle extends a.PageBlockRelatedArticle {
  /// Related article URL
  final String url;
  /// Article title; may be empty
  final String title;
  /// Article description; may be empty
  final String description;
  /// Article photo; may be null
  final Photo photo;
  /// Article author; may be empty
  final String author;
  /// Point in time (Unix timestamp) when the article was published; 0 if unknown
  final int publishDate;

  PageBlockRelatedArticle({
    required this.url,
    required this.title,
    required this.description,
    required this.photo,
    required this.author,
    required this.publishDate,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockRelatedArticle',
    'url': url,
    'title': title,
    'description': description,
    'photo': photo,
    'author': author,
    'publish_date': publishDate,
  };

  factory PageBlockRelatedArticle.fromJson(Map<String, dynamic> json) => PageBlockRelatedArticle(
    url: json['url'],
    title: json['title'],
    description: json['description'],
    photo: b.TdBase.fromJson(json['photo']) as Photo,
    author: json['author'],
    publishDate: json['publish_date'],
  );
}

/// The title of a page
class PageBlockTitle extends a.PageBlock {
  /// Title
  final a.RichText title;

  PageBlockTitle({
    required this.title,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockTitle',
    'title': title,
  };

  factory PageBlockTitle.fromJson(Map<String, dynamic> json) => PageBlockTitle(
    title: b.TdBase.fromJson(json['title']) as a.RichText,
  );
}

/// The subtitle of a page
class PageBlockSubtitle extends a.PageBlock {
  /// Subtitle
  final a.RichText subtitle;

  PageBlockSubtitle({
    required this.subtitle,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockSubtitle',
    'subtitle': subtitle,
  };

  factory PageBlockSubtitle.fromJson(Map<String, dynamic> json) => PageBlockSubtitle(
    subtitle: b.TdBase.fromJson(json['subtitle']) as a.RichText,
  );
}

/// The author and publishing date of a page
class PageBlockAuthorDate extends a.PageBlock {
  /// Author
  final a.RichText author;
  /// Point in time (Unix timestamp) when the article was published; 0 if unknown
  final int publishDate;

  PageBlockAuthorDate({
    required this.author,
    required this.publishDate,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockAuthorDate',
    'author': author,
    'publish_date': publishDate,
  };

  factory PageBlockAuthorDate.fromJson(Map<String, dynamic> json) => PageBlockAuthorDate(
    author: b.TdBase.fromJson(json['author']) as a.RichText,
    publishDate: json['publish_date'],
  );
}

/// A header
class PageBlockHeader extends a.PageBlock {
  /// Header
  final a.RichText header;

  PageBlockHeader({
    required this.header,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockHeader',
    'header': header,
  };

  factory PageBlockHeader.fromJson(Map<String, dynamic> json) => PageBlockHeader(
    header: b.TdBase.fromJson(json['header']) as a.RichText,
  );
}

/// A subheader
class PageBlockSubheader extends a.PageBlock {
  /// Subheader
  final a.RichText subheader;

  PageBlockSubheader({
    required this.subheader,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockSubheader',
    'subheader': subheader,
  };

  factory PageBlockSubheader.fromJson(Map<String, dynamic> json) => PageBlockSubheader(
    subheader: b.TdBase.fromJson(json['subheader']) as a.RichText,
  );
}

/// A kicker
class PageBlockKicker extends a.PageBlock {
  /// Kicker
  final a.RichText kicker;

  PageBlockKicker({
    required this.kicker,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockKicker',
    'kicker': kicker,
  };

  factory PageBlockKicker.fromJson(Map<String, dynamic> json) => PageBlockKicker(
    kicker: b.TdBase.fromJson(json['kicker']) as a.RichText,
  );
}

/// A text paragraph
class PageBlockParagraph extends a.PageBlock {
  /// Paragraph text
  final a.RichText text;

  PageBlockParagraph({
    required this.text,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockParagraph',
    'text': text,
  };

  factory PageBlockParagraph.fromJson(Map<String, dynamic> json) => PageBlockParagraph(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
  );
}

/// A preformatted text paragraph
class PageBlockPreformatted extends a.PageBlock {
  /// Paragraph text
  final a.RichText text;
  /// Programming language for which the text should be formatted
  final String language;

  PageBlockPreformatted({
    required this.text,
    required this.language,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockPreformatted',
    'text': text,
    'language': language,
  };

  factory PageBlockPreformatted.fromJson(Map<String, dynamic> json) => PageBlockPreformatted(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
    language: json['language'],
  );
}

/// The footer of a page
class PageBlockFooter extends a.PageBlock {
  /// Footer
  final a.RichText footer;

  PageBlockFooter({
    required this.footer,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockFooter',
    'footer': footer,
  };

  factory PageBlockFooter.fromJson(Map<String, dynamic> json) => PageBlockFooter(
    footer: b.TdBase.fromJson(json['footer']) as a.RichText,
  );
}

/// An empty block separating a page
class PageBlockDivider extends a.PageBlock {
  PageBlockDivider();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockDivider',
  };

  factory PageBlockDivider.fromJson(Map<String, dynamic> json) => PageBlockDivider(
  );
}

/// An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor
class PageBlockAnchor extends a.PageBlock {
  /// Name of the anchor
  final String name;

  PageBlockAnchor({
    required this.name,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockAnchor',
    'name': name,
  };

  factory PageBlockAnchor.fromJson(Map<String, dynamic> json) => PageBlockAnchor(
    name: json['name'],
  );
}

/// A list of data blocks
class PageBlockList extends a.PageBlock {
  /// The items of the list
  final List<PageBlockListItem> items;

  PageBlockList({
    required this.items,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockList',
    'items': items,
  };

  factory PageBlockList.fromJson(Map<String, dynamic> json) => PageBlockList(
    items: (json['items'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as PageBlockListItem).toList(growable: false),
  );
}

/// A block quote
class PageBlockBlockQuote extends a.PageBlock {
  /// Quote text
  final a.RichText text;
  /// Quote credit
  final a.RichText credit;

  PageBlockBlockQuote({
    required this.text,
    required this.credit,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockBlockQuote',
    'text': text,
    'credit': credit,
  };

  factory PageBlockBlockQuote.fromJson(Map<String, dynamic> json) => PageBlockBlockQuote(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
    credit: b.TdBase.fromJson(json['credit']) as a.RichText,
  );
}

/// A pull quote
class PageBlockPullQuote extends a.PageBlock {
  /// Quote text
  final a.RichText text;
  /// Quote credit
  final a.RichText credit;

  PageBlockPullQuote({
    required this.text,
    required this.credit,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockPullQuote',
    'text': text,
    'credit': credit,
  };

  factory PageBlockPullQuote.fromJson(Map<String, dynamic> json) => PageBlockPullQuote(
    text: b.TdBase.fromJson(json['text']) as a.RichText,
    credit: b.TdBase.fromJson(json['credit']) as a.RichText,
  );
}

/// An animation
class PageBlockAnimation extends a.PageBlock {
  /// Animation file; may be null
  final Animation animation;
  /// Animation caption
  final PageBlockCaption caption;
  /// True, if the animation should be played automatically
  final bool needAutoplay;

  PageBlockAnimation({
    required this.animation,
    required this.caption,
    required this.needAutoplay,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockAnimation',
    'animation': animation,
    'caption': caption,
    'need_autoplay': needAutoplay,
  };

  factory PageBlockAnimation.fromJson(Map<String, dynamic> json) => PageBlockAnimation(
    animation: b.TdBase.fromJson(json['animation']) as Animation,
    caption: b.TdBase.fromJson(json['caption']) as PageBlockCaption,
    needAutoplay: json['need_autoplay'],
  );
}

/// An audio file
class PageBlockAudio extends a.PageBlock {
  /// Audio file; may be null
  final Audio audio;
  /// Audio file caption
  final PageBlockCaption caption;

  PageBlockAudio({
    required this.audio,
    required this.caption,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockAudio',
    'audio': audio,
    'caption': caption,
  };

  factory PageBlockAudio.fromJson(Map<String, dynamic> json) => PageBlockAudio(
    audio: b.TdBase.fromJson(json['audio']) as Audio,
    caption: b.TdBase.fromJson(json['caption']) as PageBlockCaption,
  );
}

/// A photo
class PageBlockPhoto extends a.PageBlock {
  /// Photo file; may be null
  final Photo photo;
  /// Photo caption
  final PageBlockCaption caption;
  /// URL that needs to be opened when the photo is clicked
  final String url;

  PageBlockPhoto({
    required this.photo,
    required this.caption,
    required this.url,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockPhoto',
    'photo': photo,
    'caption': caption,
    'url': url,
  };

  factory PageBlockPhoto.fromJson(Map<String, dynamic> json) => PageBlockPhoto(
    photo: b.TdBase.fromJson(json['photo']) as Photo,
    caption: b.TdBase.fromJson(json['caption']) as PageBlockCaption,
    url: json['url'],
  );
}

/// A video
class PageBlockVideo extends a.PageBlock {
  /// Video file; may be null
  final Video video;
  /// Video caption
  final PageBlockCaption caption;
  /// True, if the video should be played automatically
  final bool needAutoplay;
  /// True, if the video should be looped
  final bool isLooped;

  PageBlockVideo({
    required this.video,
    required this.caption,
    required this.needAutoplay,
    required this.isLooped,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockVideo',
    'video': video,
    'caption': caption,
    'need_autoplay': needAutoplay,
    'is_looped': isLooped,
  };

  factory PageBlockVideo.fromJson(Map<String, dynamic> json) => PageBlockVideo(
    video: b.TdBase.fromJson(json['video']) as Video,
    caption: b.TdBase.fromJson(json['caption']) as PageBlockCaption,
    needAutoplay: json['need_autoplay'],
    isLooped: json['is_looped'],
  );
}

/// A voice note
class PageBlockVoiceNote extends a.PageBlock {
  /// Voice note; may be null
  final VoiceNote voiceNote;
  /// Voice note caption
  final PageBlockCaption caption;

  PageBlockVoiceNote({
    required this.voiceNote,
    required this.caption,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockVoiceNote',
    'voice_note': voiceNote,
    'caption': caption,
  };

  factory PageBlockVoiceNote.fromJson(Map<String, dynamic> json) => PageBlockVoiceNote(
    voiceNote: b.TdBase.fromJson(json['voice_note']) as VoiceNote,
    caption: b.TdBase.fromJson(json['caption']) as PageBlockCaption,
  );
}

/// A page cover
class PageBlockCover extends a.PageBlock {
  /// Cover
  final a.PageBlock cover;

  PageBlockCover({
    required this.cover,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockCover',
    'cover': cover,
  };

  factory PageBlockCover.fromJson(Map<String, dynamic> json) => PageBlockCover(
    cover: b.TdBase.fromJson(json['cover']) as a.PageBlock,
  );
}

/// An embedded web page
class PageBlockEmbedded extends a.PageBlock {
  /// Web page URL, if available
  final String url;
  /// HTML-markup of the embedded page
  final String html;
  /// Poster photo, if available; may be null
  final Photo posterPhoto;
  /// Block width; 0 if unknown
  final int width;
  /// Block height; 0 if unknown
  final int height;
  /// Block caption
  final PageBlockCaption caption;
  /// True, if the block should be full width
  final bool isFullWidth;
  /// True, if scrolling should be allowed
  final bool allowScrolling;

  PageBlockEmbedded({
    required this.url,
    required this.html,
    required this.posterPhoto,
    required this.width,
    required this.height,
    required this.caption,
    required this.isFullWidth,
    required this.allowScrolling,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockEmbedded',
    'url': url,
    'html': html,
    'poster_photo': posterPhoto,
    'width': width,
    'height': height,
    'caption': caption,
    'is_full_width': isFullWidth,
    'allow_scrolling': allowScrolling,
  };

  factory PageBlockEmbedded.fromJson(Map<String, dynamic> json) => PageBlockEmbedded(
    url: json['url'],
    html: json['html'],
    posterPhoto: b.TdBase.fromJson(json['poster_photo']) as Photo,
    width: json['width'],
    height: json['height'],
    caption: b.TdBase.fromJson(json['caption']) as PageBlockCaption,
    isFullWidth: json['is_full_width'],
    allowScrolling: json['allow_scrolling'],
  );
}

/// An embedded post
class PageBlockEmbeddedPost extends a.PageBlock {
  /// Web page URL
  final String url;
  /// Post author
  final String author;
  /// Post author photo; may be null
  final Photo authorPhoto;
  /// Point in time (Unix timestamp) when the post was created; 0 if unknown
  final int date;
  /// Post content
  final List<a.PageBlock> pageBlocks;
  /// Post caption
  final PageBlockCaption caption;

  PageBlockEmbeddedPost({
    required this.url,
    required this.author,
    required this.authorPhoto,
    required this.date,
    required this.pageBlocks,
    required this.caption,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockEmbeddedPost',
    'url': url,
    'author': author,
    'author_photo': authorPhoto,
    'date': date,
    'page_blocks': pageBlocks,
    'caption': caption,
  };

  factory PageBlockEmbeddedPost.fromJson(Map<String, dynamic> json) => PageBlockEmbeddedPost(
    url: json['url'],
    author: json['author'],
    authorPhoto: b.TdBase.fromJson(json['author_photo']) as Photo,
    date: json['date'],
    pageBlocks: (json['page_blocks'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.PageBlock).toList(growable: false),
    caption: b.TdBase.fromJson(json['caption']) as PageBlockCaption,
  );
}

/// A collage
class PageBlockCollage extends a.PageBlock {
  /// Collage item contents
  final List<a.PageBlock> pageBlocks;
  /// Block caption
  final PageBlockCaption caption;

  PageBlockCollage({
    required this.pageBlocks,
    required this.caption,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockCollage',
    'page_blocks': pageBlocks,
    'caption': caption,
  };

  factory PageBlockCollage.fromJson(Map<String, dynamic> json) => PageBlockCollage(
    pageBlocks: (json['page_blocks'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.PageBlock).toList(growable: false),
    caption: b.TdBase.fromJson(json['caption']) as PageBlockCaption,
  );
}

/// A slideshow
class PageBlockSlideshow extends a.PageBlock {
  /// Slideshow item contents
  final List<a.PageBlock> pageBlocks;
  /// Block caption
  final PageBlockCaption caption;

  PageBlockSlideshow({
    required this.pageBlocks,
    required this.caption,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockSlideshow',
    'page_blocks': pageBlocks,
    'caption': caption,
  };

  factory PageBlockSlideshow.fromJson(Map<String, dynamic> json) => PageBlockSlideshow(
    pageBlocks: (json['page_blocks'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.PageBlock).toList(growable: false),
    caption: b.TdBase.fromJson(json['caption']) as PageBlockCaption,
  );
}

/// A link to a chat
class PageBlockChatLink extends a.PageBlock {
  /// Chat title
  final String title;
  /// Chat photo; may be null
  final ChatPhotoInfo photo;
  /// Chat username, by which all other information about the chat should be resolved
  final String username;

  PageBlockChatLink({
    required this.title,
    required this.photo,
    required this.username,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockChatLink',
    'title': title,
    'photo': photo,
    'username': username,
  };

  factory PageBlockChatLink.fromJson(Map<String, dynamic> json) => PageBlockChatLink(
    title: json['title'],
    photo: b.TdBase.fromJson(json['photo']) as ChatPhotoInfo,
    username: json['username'],
  );
}

/// A table
class PageBlockTable extends a.PageBlock {
  /// Table caption
  final a.RichText caption;
  /// Table cells
  final List<List<PageBlockTableCell>> cells;
  /// True, if the table is bordered
  final bool isBordered;
  /// True, if the table is striped
  final bool isStriped;

  PageBlockTable({
    required this.caption,
    required this.cells,
    required this.isBordered,
    required this.isStriped,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockTable',
    'caption': caption,
    'cells': cells,
    'is_bordered': isBordered,
    'is_striped': isStriped,
  };

  factory PageBlockTable.fromJson(Map<String, dynamic> json) => PageBlockTable(
    caption: b.TdBase.fromJson(json['caption']) as a.RichText,
    cells: (json['cells'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as List<PageBlockTableCell>).toList(growable: false),
    isBordered: json['is_bordered'],
    isStriped: json['is_striped'],
  );
}

/// A collapsible block
class PageBlockDetails extends a.PageBlock {
  /// Always visible heading for the block
  final a.RichText header;
  /// Block contents
  final List<a.PageBlock> pageBlocks;
  /// True, if the block is open by default
  final bool isOpen;

  PageBlockDetails({
    required this.header,
    required this.pageBlocks,
    required this.isOpen,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockDetails',
    'header': header,
    'page_blocks': pageBlocks,
    'is_open': isOpen,
  };

  factory PageBlockDetails.fromJson(Map<String, dynamic> json) => PageBlockDetails(
    header: b.TdBase.fromJson(json['header']) as a.RichText,
    pageBlocks: (json['page_blocks'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.PageBlock).toList(growable: false),
    isOpen: json['is_open'],
  );
}

/// Related articles
class PageBlockRelatedArticles extends a.PageBlock {
  /// Block header
  final a.RichText header;
  /// List of related articles
  final List<PageBlockRelatedArticle> articles;

  PageBlockRelatedArticles({
    required this.header,
    required this.articles,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockRelatedArticles',
    'header': header,
    'articles': articles,
  };

  factory PageBlockRelatedArticles.fromJson(Map<String, dynamic> json) => PageBlockRelatedArticles(
    header: b.TdBase.fromJson(json['header']) as a.RichText,
    articles: (json['articles'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as PageBlockRelatedArticle).toList(growable: false),
  );
}

/// A map
class PageBlockMap extends a.PageBlock {
  /// Location of the map center
  final Location location;
  /// Map zoom level
  final int zoom;
  /// Map width
  final int width;
  /// Map height
  final int height;
  /// Block caption
  final PageBlockCaption caption;

  PageBlockMap({
    required this.location,
    required this.zoom,
    required this.width,
    required this.height,
    required this.caption,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pageBlockMap',
    'location': location,
    'zoom': zoom,
    'width': width,
    'height': height,
    'caption': caption,
  };

  factory PageBlockMap.fromJson(Map<String, dynamic> json) => PageBlockMap(
    location: b.TdBase.fromJson(json['location']) as Location,
    zoom: json['zoom'],
    width: json['width'],
    height: json['height'],
    caption: b.TdBase.fromJson(json['caption']) as PageBlockCaption,
  );
}

/// Describes an instant view page for a web page
class WebPageInstantView extends a.WebPageInstantView {
  /// Content of the web page
  final List<a.PageBlock> pageBlocks;
  /// Number of the instant view views; 0 if unknown
  final int viewCount;
  /// Version of the instant view, currently can be 1 or 2
  final int version;
  /// True, if the instant view must be shown from right to left
  final bool isRtl;
  /// True, if the instant view contains the full page. A network request might be needed to get the full web page instant view
  final bool isFull;

  WebPageInstantView({
    required this.pageBlocks,
    required this.viewCount,
    required this.version,
    required this.isRtl,
    required this.isFull,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'webPageInstantView',
    'page_blocks': pageBlocks,
    'view_count': viewCount,
    'version': version,
    'is_rtl': isRtl,
    'is_full': isFull,
  };

  factory WebPageInstantView.fromJson(Map<String, dynamic> json) => WebPageInstantView(
    pageBlocks: (json['page_blocks'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.PageBlock).toList(growable: false),
    viewCount: json['view_count'],
    version: json['version'],
    isRtl: json['is_rtl'],
    isFull: json['is_full'],
  );
}

/// Describes a web page preview
class WebPage extends a.WebPage {
  /// Original URL of the link
  final String url;
  /// URL to display
  final String displayUrl;
  /// Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else
  final String type;
  /// Short name of the site (e.g., Google Docs, App Store)
  final String siteName;
  /// Title of the content
  final String title;
  /// Description of the content
  final FormattedText description;
  /// Image representing the content; may be null
  final Photo photo;
  /// URL to show in the embedded preview
  final String embedUrl;
  /// MIME type of the embedded preview, (e.g., text/html or video/mp4)
  final String embedType;
  /// Width of the embedded preview
  final int embedWidth;
  /// Height of the embedded preview
  final int embedHeight;
  /// Duration of the content, in seconds
  final int duration;
  /// Author of the content
  final String author;
  /// Preview of the content as an animation, if available; may be null
  final Animation animation;
  /// Preview of the content as an audio file, if available; may be null
  final Audio audio;
  /// Preview of the content as a document, if available (currently only available for small PDF files and ZIP archives); may be null
  final Document document;
  /// Preview of the content as a sticker for small WEBP files, if available; may be null
  final Sticker sticker;
  /// Preview of the content as a video, if available; may be null
  final Video video;
  /// Preview of the content as a video note, if available; may be null
  final VideoNote videoNote;
  /// Preview of the content as a voice note, if available; may be null
  final VoiceNote voiceNote;
  /// Version of instant view, available for the web page (currently can be 1 or 2), 0 if none
  final int instantViewVersion;

  WebPage({
    required this.url,
    required this.displayUrl,
    required this.type,
    required this.siteName,
    required this.title,
    required this.description,
    required this.photo,
    required this.embedUrl,
    required this.embedType,
    required this.embedWidth,
    required this.embedHeight,
    required this.duration,
    required this.author,
    required this.animation,
    required this.audio,
    required this.document,
    required this.sticker,
    required this.video,
    required this.videoNote,
    required this.voiceNote,
    required this.instantViewVersion,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'webPage',
    'url': url,
    'display_url': displayUrl,
    'type': type,
    'site_name': siteName,
    'title': title,
    'description': description,
    'photo': photo,
    'embed_url': embedUrl,
    'embed_type': embedType,
    'embed_width': embedWidth,
    'embed_height': embedHeight,
    'duration': duration,
    'author': author,
    'animation': animation,
    'audio': audio,
    'document': document,
    'sticker': sticker,
    'video': video,
    'video_note': videoNote,
    'voice_note': voiceNote,
    'instant_view_version': instantViewVersion,
  };

  factory WebPage.fromJson(Map<String, dynamic> json) => WebPage(
    url: json['url'],
    displayUrl: json['display_url'],
    type: json['type'],
    siteName: json['site_name'],
    title: json['title'],
    description: b.TdBase.fromJson(json['description']) as FormattedText,
    photo: b.TdBase.fromJson(json['photo']) as Photo,
    embedUrl: json['embed_url'],
    embedType: json['embed_type'],
    embedWidth: json['embed_width'],
    embedHeight: json['embed_height'],
    duration: json['duration'],
    author: json['author'],
    animation: b.TdBase.fromJson(json['animation']) as Animation,
    audio: b.TdBase.fromJson(json['audio']) as Audio,
    document: b.TdBase.fromJson(json['document']) as Document,
    sticker: b.TdBase.fromJson(json['sticker']) as Sticker,
    video: b.TdBase.fromJson(json['video']) as Video,
    videoNote: b.TdBase.fromJson(json['video_note']) as VideoNote,
    voiceNote: b.TdBase.fromJson(json['voice_note']) as VoiceNote,
    instantViewVersion: json['instant_view_version'],
  );
}

/// Contains information about a country
class CountryInfo extends a.CountryInfo {
  /// A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;
  /// Native name of the country
  final String name;
  /// English name of the country
  final String englishName;
  /// True, if the country should be hidden from the list of all countries
  final bool isHidden;
  /// List of country calling codes
  final List<String> callingCodes;

  CountryInfo({
    required this.countryCode,
    required this.name,
    required this.englishName,
    required this.isHidden,
    required this.callingCodes,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'countryInfo',
    'country_code': countryCode,
    'name': name,
    'english_name': englishName,
    'is_hidden': isHidden,
    'calling_codes': callingCodes,
  };

  factory CountryInfo.fromJson(Map<String, dynamic> json) => CountryInfo(
    countryCode: json['country_code'],
    name: json['name'],
    englishName: json['english_name'],
    isHidden: json['is_hidden'],
    callingCodes: (json['calling_codes'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as String).toList(growable: false),
  );
}

/// Contains information about countries
class Countries extends a.Countries {
  /// The list of countries
  final List<CountryInfo> countries;

  Countries({
    required this.countries,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'countries',
    'countries': countries,
  };

  factory Countries.fromJson(Map<String, dynamic> json) => Countries(
    countries: (json['countries'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as CountryInfo).toList(growable: false),
  );
}

/// Contains information about a phone number
class PhoneNumberInfo extends a.PhoneNumberInfo {
  /// Information about the country to which the phone number belongs; may be null
  final CountryInfo country;
  /// The part of the phone number denoting country calling code or its part
  final String countryCallingCode;
  /// The phone number without country calling code formatted accordingly to local rules
  final String formattedPhoneNumber;

  PhoneNumberInfo({
    required this.country,
    required this.countryCallingCode,
    required this.formattedPhoneNumber,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'phoneNumberInfo',
    'country': country,
    'country_calling_code': countryCallingCode,
    'formatted_phone_number': formattedPhoneNumber,
  };

  factory PhoneNumberInfo.fromJson(Map<String, dynamic> json) => PhoneNumberInfo(
    country: b.TdBase.fromJson(json['country']) as CountryInfo,
    countryCallingCode: json['country_calling_code'],
    formattedPhoneNumber: json['formatted_phone_number'],
  );
}

/// Describes an action associated with a bank card number
class BankCardActionOpenUrl extends a.BankCardActionOpenUrl {
  /// Action text
  final String text;
  /// The URL to be opened
  final String url;

  BankCardActionOpenUrl({
    required this.text,
    required this.url,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'bankCardActionOpenUrl',
    'text': text,
    'url': url,
  };

  factory BankCardActionOpenUrl.fromJson(Map<String, dynamic> json) => BankCardActionOpenUrl(
    text: json['text'],
    url: json['url'],
  );
}

/// Information about a bank card
class BankCardInfo extends a.BankCardInfo {
  /// Title of the bank card description
  final String title;
  /// Actions that can be done with the bank card number
  final List<BankCardActionOpenUrl> actions;

  BankCardInfo({
    required this.title,
    required this.actions,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'bankCardInfo',
    'title': title,
    'actions': actions,
  };

  factory BankCardInfo.fromJson(Map<String, dynamic> json) => BankCardInfo(
    title: json['title'],
    actions: (json['actions'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as BankCardActionOpenUrl).toList(growable: false),
  );
}

/// Describes an address
class Address extends a.Address {
  /// A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;
  /// State, if applicable
  final String state;
  /// City
  final String city;
  /// First line of the address
  final String streetLine1;
  /// Second line of the address
  final String streetLine2;
  /// Address postal code
  final String postalCode;

  Address({
    required this.countryCode,
    required this.state,
    required this.city,
    required this.streetLine1,
    required this.streetLine2,
    required this.postalCode,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'address',
    'country_code': countryCode,
    'state': state,
    'city': city,
    'street_line1': streetLine1,
    'street_line2': streetLine2,
    'postal_code': postalCode,
  };

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    countryCode: json['country_code'],
    state: json['state'],
    city: json['city'],
    streetLine1: json['street_line1'],
    streetLine2: json['street_line2'],
    postalCode: json['postal_code'],
  );
}

/// Portion of the price of a product (e.g., "delivery cost", "tax amount")
class LabeledPricePart extends a.LabeledPricePart {
  /// Label for this portion of the product price
  final String label;
  /// Currency amount in the smallest units of the currency
  final int amount;

  LabeledPricePart({
    required this.label,
    required this.amount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'labeledPricePart',
    'label': label,
    'amount': amount,
  };

  factory LabeledPricePart.fromJson(Map<String, dynamic> json) => LabeledPricePart(
    label: json['label'],
    amount: json['amount'],
  );
}

/// Product invoice
class Invoice extends a.Invoice {
  /// ISO 4217 currency code
  final String currency;
  /// A list of objects used to calculate the total price of the product
  final List<LabeledPricePart> priceParts;
  /// The maximum allowed amount of tip in the smallest units of the currency
  final int maxTipAmount;
  /// Suggested amounts of tip in the smallest units of the currency
  final List<int> suggestedTipAmounts;
  /// True, if the payment is a test payment
  final bool isTest;
  /// True, if the user's name is needed for payment
  final bool needName;
  /// True, if the user's phone number is needed for payment
  final bool needPhoneNumber;
  /// True, if the user's email address is needed for payment
  final bool needEmailAddress;
  /// True, if the user's shipping address is needed for payment
  final bool needShippingAddress;
  /// True, if the user's phone number will be sent to the provider
  final bool sendPhoneNumberToProvider;
  /// True, if the user's email address will be sent to the provider
  final bool sendEmailAddressToProvider;
  /// True, if the total price depends on the shipping method
  final bool isFlexible;

  Invoice({
    required this.currency,
    required this.priceParts,
    required this.maxTipAmount,
    required this.suggestedTipAmounts,
    required this.isTest,
    required this.needName,
    required this.needPhoneNumber,
    required this.needEmailAddress,
    required this.needShippingAddress,
    required this.sendPhoneNumberToProvider,
    required this.sendEmailAddressToProvider,
    required this.isFlexible,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'invoice',
    'currency': currency,
    'price_parts': priceParts,
    'max_tip_amount': maxTipAmount,
    'suggested_tip_amounts': suggestedTipAmounts,
    'is_test': isTest,
    'need_name': needName,
    'need_phone_number': needPhoneNumber,
    'need_email_address': needEmailAddress,
    'need_shipping_address': needShippingAddress,
    'send_phone_number_to_provider': sendPhoneNumberToProvider,
    'send_email_address_to_provider': sendEmailAddressToProvider,
    'is_flexible': isFlexible,
  };

  factory Invoice.fromJson(Map<String, dynamic> json) => Invoice(
    currency: json['currency'],
    priceParts: (json['price_parts'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as LabeledPricePart).toList(growable: false),
    maxTipAmount: json['max_tip_amount'],
    suggestedTipAmounts: (json['suggested_tip_amounts'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
    isTest: json['is_test'],
    needName: json['need_name'],
    needPhoneNumber: json['need_phone_number'],
    needEmailAddress: json['need_email_address'],
    needShippingAddress: json['need_shipping_address'],
    sendPhoneNumberToProvider: json['send_phone_number_to_provider'],
    sendEmailAddressToProvider: json['send_email_address_to_provider'],
    isFlexible: json['is_flexible'],
  );
}

/// Order information
class OrderInfo extends a.OrderInfo {
  /// Name of the user
  final String name;
  /// Phone number of the user
  final String phoneNumber;
  /// Email address of the user
  final String emailAddress;
  /// Shipping address for this order; may be null
  final Address shippingAddress;

  OrderInfo({
    required this.name,
    required this.phoneNumber,
    required this.emailAddress,
    required this.shippingAddress,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'orderInfo',
    'name': name,
    'phone_number': phoneNumber,
    'email_address': emailAddress,
    'shipping_address': shippingAddress,
  };

  factory OrderInfo.fromJson(Map<String, dynamic> json) => OrderInfo(
    name: json['name'],
    phoneNumber: json['phone_number'],
    emailAddress: json['email_address'],
    shippingAddress: b.TdBase.fromJson(json['shipping_address']) as Address,
  );
}

/// One shipping option
class ShippingOption extends a.ShippingOption {
  /// Shipping option identifier
  final String id;
  /// Option title
  final String title;
  /// A list of objects used to calculate the total shipping costs
  final List<LabeledPricePart> priceParts;

  ShippingOption({
    required this.id,
    required this.title,
    required this.priceParts,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'shippingOption',
    'id': id,
    'title': title,
    'price_parts': priceParts,
  };

  factory ShippingOption.fromJson(Map<String, dynamic> json) => ShippingOption(
    id: json['id'],
    title: json['title'],
    priceParts: (json['price_parts'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as LabeledPricePart).toList(growable: false),
  );
}

/// Contains information about saved card credentials
class SavedCredentials extends a.SavedCredentials {
  /// Unique identifier of the saved credentials
  final String id;
  /// Title of the saved credentials
  final String title;

  SavedCredentials({
    required this.id,
    required this.title,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'savedCredentials',
    'id': id,
    'title': title,
  };

  factory SavedCredentials.fromJson(Map<String, dynamic> json) => SavedCredentials(
    id: json['id'],
    title: json['title'],
  );
}

/// Applies if a user chooses some previously saved payment credentials. To use their previously saved credentials, the user must have a valid temporary password
class InputCredentialsSaved extends a.InputCredentials {
  /// Identifier of the saved credentials
  final String savedCredentialsId;

  InputCredentialsSaved({
    required this.savedCredentialsId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputCredentialsSaved',
    'saved_credentials_id': savedCredentialsId,
  };

  factory InputCredentialsSaved.fromJson(Map<String, dynamic> json) => InputCredentialsSaved(
    savedCredentialsId: json['saved_credentials_id'],
  );
}

/// Applies if a user enters new credentials on a payment provider website
class InputCredentialsNew extends a.InputCredentials {
  /// Contains JSON-encoded data with a credential identifier from the payment provider
  final String data;
  /// True, if the credential identifier can be saved on the server side
  final bool allowSave;

  InputCredentialsNew({
    required this.data,
    required this.allowSave,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputCredentialsNew',
    'data': data,
    'allow_save': allowSave,
  };

  factory InputCredentialsNew.fromJson(Map<String, dynamic> json) => InputCredentialsNew(
    data: json['data'],
    allowSave: json['allow_save'],
  );
}

/// Applies if a user enters new credentials using Apple Pay
class InputCredentialsApplePay extends a.InputCredentials {
  /// JSON-encoded data with the credential identifier
  final String data;

  InputCredentialsApplePay({
    required this.data,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputCredentialsApplePay',
    'data': data,
  };

  factory InputCredentialsApplePay.fromJson(Map<String, dynamic> json) => InputCredentialsApplePay(
    data: json['data'],
  );
}

/// Applies if a user enters new credentials using Google Pay
class InputCredentialsGooglePay extends a.InputCredentials {
  /// JSON-encoded data with the credential identifier
  final String data;

  InputCredentialsGooglePay({
    required this.data,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputCredentialsGooglePay',
    'data': data,
  };

  factory InputCredentialsGooglePay.fromJson(Map<String, dynamic> json) => InputCredentialsGooglePay(
    data: json['data'],
  );
}

/// Stripe payment provider
class PaymentsProviderStripe extends a.PaymentsProviderStripe {
  /// Stripe API publishable key
  final String publishableKey;
  /// True, if the user country must be provided
  final bool needCountry;
  /// True, if the user ZIP/postal code must be provided
  final bool needPostalCode;
  /// True, if the cardholder name must be provided
  final bool needCardholderName;

  PaymentsProviderStripe({
    required this.publishableKey,
    required this.needCountry,
    required this.needPostalCode,
    required this.needCardholderName,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'paymentsProviderStripe',
    'publishable_key': publishableKey,
    'need_country': needCountry,
    'need_postal_code': needPostalCode,
    'need_cardholder_name': needCardholderName,
  };

  factory PaymentsProviderStripe.fromJson(Map<String, dynamic> json) => PaymentsProviderStripe(
    publishableKey: json['publishable_key'],
    needCountry: json['need_country'],
    needPostalCode: json['need_postal_code'],
    needCardholderName: json['need_cardholder_name'],
  );
}

/// Theme colors for a payment form
class PaymentFormTheme extends a.PaymentFormTheme {
  /// A color of the payment form background in the RGB24 format
  final int backgroundColor;
  /// A color of text in the RGB24 format
  final int textColor;
  /// A color of hints in the RGB24 format
  final int hintColor;
  /// A color of links in the RGB24 format
  final int linkColor;
  /// A color of thebuttons in the RGB24 format
  final int buttonColor;
  /// A color of text on the buttons in the RGB24 format
  final int buttonTextColor;

  PaymentFormTheme({
    required this.backgroundColor,
    required this.textColor,
    required this.hintColor,
    required this.linkColor,
    required this.buttonColor,
    required this.buttonTextColor,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'paymentFormTheme',
    'background_color': backgroundColor,
    'text_color': textColor,
    'hint_color': hintColor,
    'link_color': linkColor,
    'button_color': buttonColor,
    'button_text_color': buttonTextColor,
  };

  factory PaymentFormTheme.fromJson(Map<String, dynamic> json) => PaymentFormTheme(
    backgroundColor: json['background_color'],
    textColor: json['text_color'],
    hintColor: json['hint_color'],
    linkColor: json['link_color'],
    buttonColor: json['button_color'],
    buttonTextColor: json['button_text_color'],
  );
}

/// Contains information about an invoice payment form
class PaymentForm extends a.PaymentForm {
  /// The payment form identifier
  final int id;
  /// Full information of the invoice
  final Invoice invoice;
  /// Payment form URL
  final String url;
  /// User identifier of the seller bot
  final int sellerBotUserId;
  /// User identifier of the payment provider bot
  final int paymentsProviderUserId;
  /// Contains information about the payment provider, if available, to support it natively without the need for opening the URL; may be null
  final PaymentsProviderStripe paymentsProvider;
  /// Saved server-side order information; may be null
  final OrderInfo savedOrderInfo;
  /// Contains information about saved card credentials; may be null
  final SavedCredentials savedCredentials;
  /// True, if the user can choose to save credentials
  final bool canSaveCredentials;
  /// True, if the user will be able to save credentials protected by a password they set up
  final bool needPassword;

  PaymentForm({
    required this.id,
    required this.invoice,
    required this.url,
    required this.sellerBotUserId,
    required this.paymentsProviderUserId,
    required this.paymentsProvider,
    required this.savedOrderInfo,
    required this.savedCredentials,
    required this.canSaveCredentials,
    required this.needPassword,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'paymentForm',
    'id': id,
    'invoice': invoice,
    'url': url,
    'seller_bot_user_id': sellerBotUserId,
    'payments_provider_user_id': paymentsProviderUserId,
    'payments_provider': paymentsProvider,
    'saved_order_info': savedOrderInfo,
    'saved_credentials': savedCredentials,
    'can_save_credentials': canSaveCredentials,
    'need_password': needPassword,
  };

  factory PaymentForm.fromJson(Map<String, dynamic> json) => PaymentForm(
    id: int.parse(json['id']),
    invoice: b.TdBase.fromJson(json['invoice']) as Invoice,
    url: json['url'],
    sellerBotUserId: json['seller_bot_user_id'],
    paymentsProviderUserId: json['payments_provider_user_id'],
    paymentsProvider: b.TdBase.fromJson(json['payments_provider']) as PaymentsProviderStripe,
    savedOrderInfo: b.TdBase.fromJson(json['saved_order_info']) as OrderInfo,
    savedCredentials: b.TdBase.fromJson(json['saved_credentials']) as SavedCredentials,
    canSaveCredentials: json['can_save_credentials'],
    needPassword: json['need_password'],
  );
}

/// Contains a temporary identifier of validated order information, which is stored for one hour. Also contains the available shipping options
class ValidatedOrderInfo extends a.ValidatedOrderInfo {
  /// Temporary identifier of the order information
  final String orderInfoId;
  /// Available shipping options
  final List<ShippingOption> shippingOptions;

  ValidatedOrderInfo({
    required this.orderInfoId,
    required this.shippingOptions,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'validatedOrderInfo',
    'order_info_id': orderInfoId,
    'shipping_options': shippingOptions,
  };

  factory ValidatedOrderInfo.fromJson(Map<String, dynamic> json) => ValidatedOrderInfo(
    orderInfoId: json['order_info_id'],
    shippingOptions: (json['shipping_options'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ShippingOption).toList(growable: false),
  );
}

/// Contains the result of a payment request
class PaymentResult extends a.PaymentResult {
  /// True, if the payment request was successful; otherwise the verification_url will be not empty
  final bool success;
  /// URL for additional payment credentials verification
  final String verificationUrl;

  PaymentResult({
    required this.success,
    required this.verificationUrl,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'paymentResult',
    'success': success,
    'verification_url': verificationUrl,
  };

  factory PaymentResult.fromJson(Map<String, dynamic> json) => PaymentResult(
    success: json['success'],
    verificationUrl: json['verification_url'],
  );
}

/// Contains information about a successful payment
class PaymentReceipt extends a.PaymentReceipt {
  /// Product title
  final String title;
  /// Product description
  final String description;
  /// Product photo; may be null
  final Photo photo;
  /// Point in time (Unix timestamp) when the payment was made
  final int date;
  /// User identifier of the seller bot
  final int sellerBotUserId;
  /// User identifier of the payment provider bot
  final int paymentsProviderUserId;
  /// Contains information about the invoice
  final Invoice invoice;
  /// Order information; may be null
  final OrderInfo orderInfo;
  /// Chosen shipping option; may be null
  final ShippingOption shippingOption;
  /// Title of the saved credentials chosen by the buyer
  final String credentialsTitle;
  /// The amount of tip chosen by the buyer in the smallest units of the currency
  final int tipAmount;

  PaymentReceipt({
    required this.title,
    required this.description,
    required this.photo,
    required this.date,
    required this.sellerBotUserId,
    required this.paymentsProviderUserId,
    required this.invoice,
    required this.orderInfo,
    required this.shippingOption,
    required this.credentialsTitle,
    required this.tipAmount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'paymentReceipt',
    'title': title,
    'description': description,
    'photo': photo,
    'date': date,
    'seller_bot_user_id': sellerBotUserId,
    'payments_provider_user_id': paymentsProviderUserId,
    'invoice': invoice,
    'order_info': orderInfo,
    'shipping_option': shippingOption,
    'credentials_title': credentialsTitle,
    'tip_amount': tipAmount,
  };

  factory PaymentReceipt.fromJson(Map<String, dynamic> json) => PaymentReceipt(
    title: json['title'],
    description: json['description'],
    photo: b.TdBase.fromJson(json['photo']) as Photo,
    date: json['date'],
    sellerBotUserId: json['seller_bot_user_id'],
    paymentsProviderUserId: json['payments_provider_user_id'],
    invoice: b.TdBase.fromJson(json['invoice']) as Invoice,
    orderInfo: b.TdBase.fromJson(json['order_info']) as OrderInfo,
    shippingOption: b.TdBase.fromJson(json['shipping_option']) as ShippingOption,
    credentialsTitle: json['credentials_title'],
    tipAmount: json['tip_amount'],
  );
}

/// File with the date it was uploaded
class DatedFile extends a.DatedFile {
  /// The file
  final File file;
  /// Point in time (Unix timestamp) when the file was uploaded
  final int date;

  DatedFile({
    required this.file,
    required this.date,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'datedFile',
    'file': file,
    'date': date,
  };

  factory DatedFile.fromJson(Map<String, dynamic> json) => DatedFile(
    file: b.TdBase.fromJson(json['file']) as File,
    date: json['date'],
  );
}

/// A Telegram Passport element containing the user's personal details
class PassportElementTypePersonalDetails extends a.PassportElementType {
  PassportElementTypePersonalDetails();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementTypePersonalDetails',
  };

  factory PassportElementTypePersonalDetails.fromJson(Map<String, dynamic> json) => PassportElementTypePersonalDetails(
  );
}

/// A Telegram Passport element containing the user's passport
class PassportElementTypePassport extends a.PassportElementType {
  PassportElementTypePassport();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementTypePassport',
  };

  factory PassportElementTypePassport.fromJson(Map<String, dynamic> json) => PassportElementTypePassport(
  );
}

/// A Telegram Passport element containing the user's driver license
class PassportElementTypeDriverLicense extends a.PassportElementType {
  PassportElementTypeDriverLicense();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementTypeDriverLicense',
  };

  factory PassportElementTypeDriverLicense.fromJson(Map<String, dynamic> json) => PassportElementTypeDriverLicense(
  );
}

/// A Telegram Passport element containing the user's identity card
class PassportElementTypeIdentityCard extends a.PassportElementType {
  PassportElementTypeIdentityCard();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementTypeIdentityCard',
  };

  factory PassportElementTypeIdentityCard.fromJson(Map<String, dynamic> json) => PassportElementTypeIdentityCard(
  );
}

/// A Telegram Passport element containing the user's internal passport
class PassportElementTypeInternalPassport extends a.PassportElementType {
  PassportElementTypeInternalPassport();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementTypeInternalPassport',
  };

  factory PassportElementTypeInternalPassport.fromJson(Map<String, dynamic> json) => PassportElementTypeInternalPassport(
  );
}

/// A Telegram Passport element containing the user's address
class PassportElementTypeAddress extends a.PassportElementType {
  PassportElementTypeAddress();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementTypeAddress',
  };

  factory PassportElementTypeAddress.fromJson(Map<String, dynamic> json) => PassportElementTypeAddress(
  );
}

/// A Telegram Passport element containing the user's utility bill
class PassportElementTypeUtilityBill extends a.PassportElementType {
  PassportElementTypeUtilityBill();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementTypeUtilityBill',
  };

  factory PassportElementTypeUtilityBill.fromJson(Map<String, dynamic> json) => PassportElementTypeUtilityBill(
  );
}

/// A Telegram Passport element containing the user's bank statement
class PassportElementTypeBankStatement extends a.PassportElementType {
  PassportElementTypeBankStatement();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementTypeBankStatement',
  };

  factory PassportElementTypeBankStatement.fromJson(Map<String, dynamic> json) => PassportElementTypeBankStatement(
  );
}

/// A Telegram Passport element containing the user's rental agreement
class PassportElementTypeRentalAgreement extends a.PassportElementType {
  PassportElementTypeRentalAgreement();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementTypeRentalAgreement',
  };

  factory PassportElementTypeRentalAgreement.fromJson(Map<String, dynamic> json) => PassportElementTypeRentalAgreement(
  );
}

/// A Telegram Passport element containing the registration page of the user's passport
class PassportElementTypePassportRegistration extends a.PassportElementType {
  PassportElementTypePassportRegistration();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementTypePassportRegistration',
  };

  factory PassportElementTypePassportRegistration.fromJson(Map<String, dynamic> json) => PassportElementTypePassportRegistration(
  );
}

/// A Telegram Passport element containing the user's temporary registration
class PassportElementTypeTemporaryRegistration extends a.PassportElementType {
  PassportElementTypeTemporaryRegistration();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementTypeTemporaryRegistration',
  };

  factory PassportElementTypeTemporaryRegistration.fromJson(Map<String, dynamic> json) => PassportElementTypeTemporaryRegistration(
  );
}

/// A Telegram Passport element containing the user's phone number
class PassportElementTypePhoneNumber extends a.PassportElementType {
  PassportElementTypePhoneNumber();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementTypePhoneNumber',
  };

  factory PassportElementTypePhoneNumber.fromJson(Map<String, dynamic> json) => PassportElementTypePhoneNumber(
  );
}

/// A Telegram Passport element containing the user's email address
class PassportElementTypeEmailAddress extends a.PassportElementType {
  PassportElementTypeEmailAddress();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementTypeEmailAddress',
  };

  factory PassportElementTypeEmailAddress.fromJson(Map<String, dynamic> json) => PassportElementTypeEmailAddress(
  );
}

/// Represents a date according to the Gregorian calendar
class Date extends a.Date {
  /// Day of the month; 1-31
  final int day;
  /// Month; 1-12
  final int month;
  /// Year; 1-9999
  final int year;

  Date({
    required this.day,
    required this.month,
    required this.year,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'date',
    'day': day,
    'month': month,
    'year': year,
  };

  factory Date.fromJson(Map<String, dynamic> json) => Date(
    day: json['day'],
    month: json['month'],
    year: json['year'],
  );
}

/// Contains the user's personal details
class PersonalDetails extends a.PersonalDetails {
  /// First name of the user written in English; 1-255 characters
  final String firstName;
  /// Middle name of the user written in English; 0-255 characters
  final String middleName;
  /// Last name of the user written in English; 1-255 characters
  final String lastName;
  /// Native first name of the user; 1-255 characters
  final String nativeFirstName;
  /// Native middle name of the user; 0-255 characters
  final String nativeMiddleName;
  /// Native last name of the user; 1-255 characters
  final String nativeLastName;
  /// Birthdate of the user
  final Date birthdate;
  /// Gender of the user, "male" or "female"
  final String gender;
  /// A two-letter ISO 3166-1 alpha-2 country code of the user's country
  final String countryCode;
  /// A two-letter ISO 3166-1 alpha-2 country code of the user's residence country
  final String residenceCountryCode;

  PersonalDetails({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.nativeFirstName,
    required this.nativeMiddleName,
    required this.nativeLastName,
    required this.birthdate,
    required this.gender,
    required this.countryCode,
    required this.residenceCountryCode,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'personalDetails',
    'first_name': firstName,
    'middle_name': middleName,
    'last_name': lastName,
    'native_first_name': nativeFirstName,
    'native_middle_name': nativeMiddleName,
    'native_last_name': nativeLastName,
    'birthdate': birthdate,
    'gender': gender,
    'country_code': countryCode,
    'residence_country_code': residenceCountryCode,
  };

  factory PersonalDetails.fromJson(Map<String, dynamic> json) => PersonalDetails(
    firstName: json['first_name'],
    middleName: json['middle_name'],
    lastName: json['last_name'],
    nativeFirstName: json['native_first_name'],
    nativeMiddleName: json['native_middle_name'],
    nativeLastName: json['native_last_name'],
    birthdate: b.TdBase.fromJson(json['birthdate']) as Date,
    gender: json['gender'],
    countryCode: json['country_code'],
    residenceCountryCode: json['residence_country_code'],
  );
}

/// An identity document
class IdentityDocument extends a.IdentityDocument {
  /// Document number; 1-24 characters
  final String number;
  /// Document expiry date; may be null
  final Date expiryDate;
  /// Front side of the document
  final DatedFile frontSide;
  /// Reverse side of the document; only for driver license and identity card
  final DatedFile reverseSide;
  /// Selfie with the document; may be null
  final DatedFile selfie;
  /// List of files containing a certified English translation of the document
  final List<DatedFile> translation;

  IdentityDocument({
    required this.number,
    required this.expiryDate,
    required this.frontSide,
    required this.reverseSide,
    required this.selfie,
    required this.translation,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'identityDocument',
    'number': number,
    'expiry_date': expiryDate,
    'front_side': frontSide,
    'reverse_side': reverseSide,
    'selfie': selfie,
    'translation': translation,
  };

  factory IdentityDocument.fromJson(Map<String, dynamic> json) => IdentityDocument(
    number: json['number'],
    expiryDate: b.TdBase.fromJson(json['expiry_date']) as Date,
    frontSide: b.TdBase.fromJson(json['front_side']) as DatedFile,
    reverseSide: b.TdBase.fromJson(json['reverse_side']) as DatedFile,
    selfie: b.TdBase.fromJson(json['selfie']) as DatedFile,
    translation: (json['translation'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as DatedFile).toList(growable: false),
  );
}

/// An identity document to be saved to Telegram Passport
class InputIdentityDocument extends a.InputIdentityDocument {
  /// Document number; 1-24 characters
  final String number;
  /// Document expiry date, if available
  final Date expiryDate;
  /// Front side of the document
  final a.InputFile frontSide;
  /// Reverse side of the document; only for driver license and identity card
  final a.InputFile reverseSide;
  /// Selfie with the document, if available
  final a.InputFile selfie;
  /// List of files containing a certified English translation of the document
  final List<a.InputFile> translation;

  InputIdentityDocument({
    required this.number,
    required this.expiryDate,
    required this.frontSide,
    required this.reverseSide,
    required this.selfie,
    required this.translation,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputIdentityDocument',
    'number': number,
    'expiry_date': expiryDate,
    'front_side': frontSide,
    'reverse_side': reverseSide,
    'selfie': selfie,
    'translation': translation,
  };

  factory InputIdentityDocument.fromJson(Map<String, dynamic> json) => InputIdentityDocument(
    number: json['number'],
    expiryDate: b.TdBase.fromJson(json['expiry_date']) as Date,
    frontSide: b.TdBase.fromJson(json['front_side']) as a.InputFile,
    reverseSide: b.TdBase.fromJson(json['reverse_side']) as a.InputFile,
    selfie: b.TdBase.fromJson(json['selfie']) as a.InputFile,
    translation: (json['translation'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.InputFile).toList(growable: false),
  );
}

/// A personal document, containing some information about a user
class PersonalDocument extends a.PersonalDocument {
  /// List of files containing the pages of the document
  final List<DatedFile> files;
  /// List of files containing a certified English translation of the document
  final List<DatedFile> translation;

  PersonalDocument({
    required this.files,
    required this.translation,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'personalDocument',
    'files': files,
    'translation': translation,
  };

  factory PersonalDocument.fromJson(Map<String, dynamic> json) => PersonalDocument(
    files: (json['files'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as DatedFile).toList(growable: false),
    translation: (json['translation'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as DatedFile).toList(growable: false),
  );
}

/// A personal document to be saved to Telegram Passport
class InputPersonalDocument extends a.InputPersonalDocument {
  /// List of files containing the pages of the document
  final List<a.InputFile> files;
  /// List of files containing a certified English translation of the document
  final List<a.InputFile> translation;

  InputPersonalDocument({
    required this.files,
    required this.translation,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPersonalDocument',
    'files': files,
    'translation': translation,
  };

  factory InputPersonalDocument.fromJson(Map<String, dynamic> json) => InputPersonalDocument(
    files: (json['files'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.InputFile).toList(growable: false),
    translation: (json['translation'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.InputFile).toList(growable: false),
  );
}

/// A Telegram Passport element containing the user's personal details
class PassportElementPersonalDetails extends a.PassportElement {
  /// Personal details of the user
  final PersonalDetails personalDetails;

  PassportElementPersonalDetails({
    required this.personalDetails,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementPersonalDetails',
    'personal_details': personalDetails,
  };

  factory PassportElementPersonalDetails.fromJson(Map<String, dynamic> json) => PassportElementPersonalDetails(
    personalDetails: b.TdBase.fromJson(json['personal_details']) as PersonalDetails,
  );
}

/// A Telegram Passport element containing the user's passport
class PassportElementPassport extends a.PassportElement {
  /// Passport
  final IdentityDocument passport;

  PassportElementPassport({
    required this.passport,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementPassport',
    'passport': passport,
  };

  factory PassportElementPassport.fromJson(Map<String, dynamic> json) => PassportElementPassport(
    passport: b.TdBase.fromJson(json['passport']) as IdentityDocument,
  );
}

/// A Telegram Passport element containing the user's driver license
class PassportElementDriverLicense extends a.PassportElement {
  /// Driver license
  final IdentityDocument driverLicense;

  PassportElementDriverLicense({
    required this.driverLicense,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementDriverLicense',
    'driver_license': driverLicense,
  };

  factory PassportElementDriverLicense.fromJson(Map<String, dynamic> json) => PassportElementDriverLicense(
    driverLicense: b.TdBase.fromJson(json['driver_license']) as IdentityDocument,
  );
}

/// A Telegram Passport element containing the user's identity card
class PassportElementIdentityCard extends a.PassportElement {
  /// Identity card
  final IdentityDocument identityCard;

  PassportElementIdentityCard({
    required this.identityCard,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementIdentityCard',
    'identity_card': identityCard,
  };

  factory PassportElementIdentityCard.fromJson(Map<String, dynamic> json) => PassportElementIdentityCard(
    identityCard: b.TdBase.fromJson(json['identity_card']) as IdentityDocument,
  );
}

/// A Telegram Passport element containing the user's internal passport
class PassportElementInternalPassport extends a.PassportElement {
  /// Internal passport
  final IdentityDocument internalPassport;

  PassportElementInternalPassport({
    required this.internalPassport,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementInternalPassport',
    'internal_passport': internalPassport,
  };

  factory PassportElementInternalPassport.fromJson(Map<String, dynamic> json) => PassportElementInternalPassport(
    internalPassport: b.TdBase.fromJson(json['internal_passport']) as IdentityDocument,
  );
}

/// A Telegram Passport element containing the user's address
class PassportElementAddress extends a.PassportElement {
  /// Address
  final Address address;

  PassportElementAddress({
    required this.address,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementAddress',
    'address': address,
  };

  factory PassportElementAddress.fromJson(Map<String, dynamic> json) => PassportElementAddress(
    address: b.TdBase.fromJson(json['address']) as Address,
  );
}

/// A Telegram Passport element containing the user's utility bill
class PassportElementUtilityBill extends a.PassportElement {
  /// Utility bill
  final PersonalDocument utilityBill;

  PassportElementUtilityBill({
    required this.utilityBill,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementUtilityBill',
    'utility_bill': utilityBill,
  };

  factory PassportElementUtilityBill.fromJson(Map<String, dynamic> json) => PassportElementUtilityBill(
    utilityBill: b.TdBase.fromJson(json['utility_bill']) as PersonalDocument,
  );
}

/// A Telegram Passport element containing the user's bank statement
class PassportElementBankStatement extends a.PassportElement {
  /// Bank statement
  final PersonalDocument bankStatement;

  PassportElementBankStatement({
    required this.bankStatement,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementBankStatement',
    'bank_statement': bankStatement,
  };

  factory PassportElementBankStatement.fromJson(Map<String, dynamic> json) => PassportElementBankStatement(
    bankStatement: b.TdBase.fromJson(json['bank_statement']) as PersonalDocument,
  );
}

/// A Telegram Passport element containing the user's rental agreement
class PassportElementRentalAgreement extends a.PassportElement {
  /// Rental agreement
  final PersonalDocument rentalAgreement;

  PassportElementRentalAgreement({
    required this.rentalAgreement,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementRentalAgreement',
    'rental_agreement': rentalAgreement,
  };

  factory PassportElementRentalAgreement.fromJson(Map<String, dynamic> json) => PassportElementRentalAgreement(
    rentalAgreement: b.TdBase.fromJson(json['rental_agreement']) as PersonalDocument,
  );
}

/// A Telegram Passport element containing the user's passport registration pages
class PassportElementPassportRegistration extends a.PassportElement {
  /// Passport registration pages
  final PersonalDocument passportRegistration;

  PassportElementPassportRegistration({
    required this.passportRegistration,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementPassportRegistration',
    'passport_registration': passportRegistration,
  };

  factory PassportElementPassportRegistration.fromJson(Map<String, dynamic> json) => PassportElementPassportRegistration(
    passportRegistration: b.TdBase.fromJson(json['passport_registration']) as PersonalDocument,
  );
}

/// A Telegram Passport element containing the user's temporary registration
class PassportElementTemporaryRegistration extends a.PassportElement {
  /// Temporary registration
  final PersonalDocument temporaryRegistration;

  PassportElementTemporaryRegistration({
    required this.temporaryRegistration,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementTemporaryRegistration',
    'temporary_registration': temporaryRegistration,
  };

  factory PassportElementTemporaryRegistration.fromJson(Map<String, dynamic> json) => PassportElementTemporaryRegistration(
    temporaryRegistration: b.TdBase.fromJson(json['temporary_registration']) as PersonalDocument,
  );
}

/// A Telegram Passport element containing the user's phone number
class PassportElementPhoneNumber extends a.PassportElement {
  /// Phone number
  final String phoneNumber;

  PassportElementPhoneNumber({
    required this.phoneNumber,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementPhoneNumber',
    'phone_number': phoneNumber,
  };

  factory PassportElementPhoneNumber.fromJson(Map<String, dynamic> json) => PassportElementPhoneNumber(
    phoneNumber: json['phone_number'],
  );
}

/// A Telegram Passport element containing the user's email address
class PassportElementEmailAddress extends a.PassportElement {
  /// Email address
  final String emailAddress;

  PassportElementEmailAddress({
    required this.emailAddress,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementEmailAddress',
    'email_address': emailAddress,
  };

  factory PassportElementEmailAddress.fromJson(Map<String, dynamic> json) => PassportElementEmailAddress(
    emailAddress: json['email_address'],
  );
}

/// A Telegram Passport element to be saved containing the user's personal details
class InputPassportElementPersonalDetails extends a.InputPassportElement {
  /// Personal details of the user
  final PersonalDetails personalDetails;

  InputPassportElementPersonalDetails({
    required this.personalDetails,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementPersonalDetails',
    'personal_details': personalDetails,
  };

  factory InputPassportElementPersonalDetails.fromJson(Map<String, dynamic> json) => InputPassportElementPersonalDetails(
    personalDetails: b.TdBase.fromJson(json['personal_details']) as PersonalDetails,
  );
}

/// A Telegram Passport element to be saved containing the user's passport
class InputPassportElementPassport extends a.InputPassportElement {
  /// The passport to be saved
  final InputIdentityDocument passport;

  InputPassportElementPassport({
    required this.passport,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementPassport',
    'passport': passport,
  };

  factory InputPassportElementPassport.fromJson(Map<String, dynamic> json) => InputPassportElementPassport(
    passport: b.TdBase.fromJson(json['passport']) as InputIdentityDocument,
  );
}

/// A Telegram Passport element to be saved containing the user's driver license
class InputPassportElementDriverLicense extends a.InputPassportElement {
  /// The driver license to be saved
  final InputIdentityDocument driverLicense;

  InputPassportElementDriverLicense({
    required this.driverLicense,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementDriverLicense',
    'driver_license': driverLicense,
  };

  factory InputPassportElementDriverLicense.fromJson(Map<String, dynamic> json) => InputPassportElementDriverLicense(
    driverLicense: b.TdBase.fromJson(json['driver_license']) as InputIdentityDocument,
  );
}

/// A Telegram Passport element to be saved containing the user's identity card
class InputPassportElementIdentityCard extends a.InputPassportElement {
  /// The identity card to be saved
  final InputIdentityDocument identityCard;

  InputPassportElementIdentityCard({
    required this.identityCard,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementIdentityCard',
    'identity_card': identityCard,
  };

  factory InputPassportElementIdentityCard.fromJson(Map<String, dynamic> json) => InputPassportElementIdentityCard(
    identityCard: b.TdBase.fromJson(json['identity_card']) as InputIdentityDocument,
  );
}

/// A Telegram Passport element to be saved containing the user's internal passport
class InputPassportElementInternalPassport extends a.InputPassportElement {
  /// The internal passport to be saved
  final InputIdentityDocument internalPassport;

  InputPassportElementInternalPassport({
    required this.internalPassport,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementInternalPassport',
    'internal_passport': internalPassport,
  };

  factory InputPassportElementInternalPassport.fromJson(Map<String, dynamic> json) => InputPassportElementInternalPassport(
    internalPassport: b.TdBase.fromJson(json['internal_passport']) as InputIdentityDocument,
  );
}

/// A Telegram Passport element to be saved containing the user's address
class InputPassportElementAddress extends a.InputPassportElement {
  /// The address to be saved
  final Address address;

  InputPassportElementAddress({
    required this.address,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementAddress',
    'address': address,
  };

  factory InputPassportElementAddress.fromJson(Map<String, dynamic> json) => InputPassportElementAddress(
    address: b.TdBase.fromJson(json['address']) as Address,
  );
}

/// A Telegram Passport element to be saved containing the user's utility bill
class InputPassportElementUtilityBill extends a.InputPassportElement {
  /// The utility bill to be saved
  final InputPersonalDocument utilityBill;

  InputPassportElementUtilityBill({
    required this.utilityBill,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementUtilityBill',
    'utility_bill': utilityBill,
  };

  factory InputPassportElementUtilityBill.fromJson(Map<String, dynamic> json) => InputPassportElementUtilityBill(
    utilityBill: b.TdBase.fromJson(json['utility_bill']) as InputPersonalDocument,
  );
}

/// A Telegram Passport element to be saved containing the user's bank statement
class InputPassportElementBankStatement extends a.InputPassportElement {
  /// The bank statement to be saved
  final InputPersonalDocument bankStatement;

  InputPassportElementBankStatement({
    required this.bankStatement,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementBankStatement',
    'bank_statement': bankStatement,
  };

  factory InputPassportElementBankStatement.fromJson(Map<String, dynamic> json) => InputPassportElementBankStatement(
    bankStatement: b.TdBase.fromJson(json['bank_statement']) as InputPersonalDocument,
  );
}

/// A Telegram Passport element to be saved containing the user's rental agreement
class InputPassportElementRentalAgreement extends a.InputPassportElement {
  /// The rental agreement to be saved
  final InputPersonalDocument rentalAgreement;

  InputPassportElementRentalAgreement({
    required this.rentalAgreement,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementRentalAgreement',
    'rental_agreement': rentalAgreement,
  };

  factory InputPassportElementRentalAgreement.fromJson(Map<String, dynamic> json) => InputPassportElementRentalAgreement(
    rentalAgreement: b.TdBase.fromJson(json['rental_agreement']) as InputPersonalDocument,
  );
}

/// A Telegram Passport element to be saved containing the user's passport registration
class InputPassportElementPassportRegistration extends a.InputPassportElement {
  /// The passport registration page to be saved
  final InputPersonalDocument passportRegistration;

  InputPassportElementPassportRegistration({
    required this.passportRegistration,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementPassportRegistration',
    'passport_registration': passportRegistration,
  };

  factory InputPassportElementPassportRegistration.fromJson(Map<String, dynamic> json) => InputPassportElementPassportRegistration(
    passportRegistration: b.TdBase.fromJson(json['passport_registration']) as InputPersonalDocument,
  );
}

/// A Telegram Passport element to be saved containing the user's temporary registration
class InputPassportElementTemporaryRegistration extends a.InputPassportElement {
  /// The temporary registration document to be saved
  final InputPersonalDocument temporaryRegistration;

  InputPassportElementTemporaryRegistration({
    required this.temporaryRegistration,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementTemporaryRegistration',
    'temporary_registration': temporaryRegistration,
  };

  factory InputPassportElementTemporaryRegistration.fromJson(Map<String, dynamic> json) => InputPassportElementTemporaryRegistration(
    temporaryRegistration: b.TdBase.fromJson(json['temporary_registration']) as InputPersonalDocument,
  );
}

/// A Telegram Passport element to be saved containing the user's phone number
class InputPassportElementPhoneNumber extends a.InputPassportElement {
  /// The phone number to be saved
  final String phoneNumber;

  InputPassportElementPhoneNumber({
    required this.phoneNumber,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementPhoneNumber',
    'phone_number': phoneNumber,
  };

  factory InputPassportElementPhoneNumber.fromJson(Map<String, dynamic> json) => InputPassportElementPhoneNumber(
    phoneNumber: json['phone_number'],
  );
}

/// A Telegram Passport element to be saved containing the user's email address
class InputPassportElementEmailAddress extends a.InputPassportElement {
  /// The email address to be saved
  final String emailAddress;

  InputPassportElementEmailAddress({
    required this.emailAddress,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementEmailAddress',
    'email_address': emailAddress,
  };

  factory InputPassportElementEmailAddress.fromJson(Map<String, dynamic> json) => InputPassportElementEmailAddress(
    emailAddress: json['email_address'],
  );
}

/// Contains information about saved Telegram Passport elements
class PassportElements extends a.PassportElements {
  /// Telegram Passport elements
  final List<a.PassportElement> elements;

  PassportElements({
    required this.elements,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElements',
    'elements': elements,
  };

  factory PassportElements.fromJson(Map<String, dynamic> json) => PassportElements(
    elements: (json['elements'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.PassportElement).toList(growable: false),
  );
}

/// The element contains an error in an unspecified place. The error will be considered resolved when new data is added
class PassportElementErrorSourceUnspecified extends a.PassportElementErrorSource {
  PassportElementErrorSourceUnspecified();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementErrorSourceUnspecified',
  };

  factory PassportElementErrorSourceUnspecified.fromJson(Map<String, dynamic> json) => PassportElementErrorSourceUnspecified(
  );
}

/// One of the data fields contains an error. The error will be considered resolved when the value of the field changes
class PassportElementErrorSourceDataField extends a.PassportElementErrorSource {
  /// Field name
  final String fieldName;

  PassportElementErrorSourceDataField({
    required this.fieldName,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementErrorSourceDataField',
    'field_name': fieldName,
  };

  factory PassportElementErrorSourceDataField.fromJson(Map<String, dynamic> json) => PassportElementErrorSourceDataField(
    fieldName: json['field_name'],
  );
}

/// The front side of the document contains an error. The error will be considered resolved when the file with the front side changes
class PassportElementErrorSourceFrontSide extends a.PassportElementErrorSource {
  PassportElementErrorSourceFrontSide();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementErrorSourceFrontSide',
  };

  factory PassportElementErrorSourceFrontSide.fromJson(Map<String, dynamic> json) => PassportElementErrorSourceFrontSide(
  );
}

/// The reverse side of the document contains an error. The error will be considered resolved when the file with the reverse side changes
class PassportElementErrorSourceReverseSide extends a.PassportElementErrorSource {
  PassportElementErrorSourceReverseSide();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementErrorSourceReverseSide',
  };

  factory PassportElementErrorSourceReverseSide.fromJson(Map<String, dynamic> json) => PassportElementErrorSourceReverseSide(
  );
}

/// The selfie with the document contains an error. The error will be considered resolved when the file with the selfie changes
class PassportElementErrorSourceSelfie extends a.PassportElementErrorSource {
  PassportElementErrorSourceSelfie();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementErrorSourceSelfie',
  };

  factory PassportElementErrorSourceSelfie.fromJson(Map<String, dynamic> json) => PassportElementErrorSourceSelfie(
  );
}

/// One of files with the translation of the document contains an error. The error will be considered resolved when the file changes
class PassportElementErrorSourceTranslationFile extends a.PassportElementErrorSource {
  /// Index of a file with the error
  final int fileIndex;

  PassportElementErrorSourceTranslationFile({
    required this.fileIndex,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementErrorSourceTranslationFile',
    'file_index': fileIndex,
  };

  factory PassportElementErrorSourceTranslationFile.fromJson(Map<String, dynamic> json) => PassportElementErrorSourceTranslationFile(
    fileIndex: json['file_index'],
  );
}

/// The translation of the document contains an error. The error will be considered resolved when the list of translation files changes
class PassportElementErrorSourceTranslationFiles extends a.PassportElementErrorSource {
  PassportElementErrorSourceTranslationFiles();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementErrorSourceTranslationFiles',
  };

  factory PassportElementErrorSourceTranslationFiles.fromJson(Map<String, dynamic> json) => PassportElementErrorSourceTranslationFiles(
  );
}

/// The file contains an error. The error will be considered resolved when the file changes
class PassportElementErrorSourceFile extends a.PassportElementErrorSource {
  /// Index of a file with the error
  final int fileIndex;

  PassportElementErrorSourceFile({
    required this.fileIndex,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementErrorSourceFile',
    'file_index': fileIndex,
  };

  factory PassportElementErrorSourceFile.fromJson(Map<String, dynamic> json) => PassportElementErrorSourceFile(
    fileIndex: json['file_index'],
  );
}

/// The list of attached files contains an error. The error will be considered resolved when the list of files changes
class PassportElementErrorSourceFiles extends a.PassportElementErrorSource {
  PassportElementErrorSourceFiles();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementErrorSourceFiles',
  };

  factory PassportElementErrorSourceFiles.fromJson(Map<String, dynamic> json) => PassportElementErrorSourceFiles(
  );
}

/// Contains the description of an error in a Telegram Passport element
class PassportElementError extends a.PassportElementError {
  /// Type of the Telegram Passport element which has the error
  final a.PassportElementType type;
  /// Error message
  final String message;
  /// Error source
  final a.PassportElementErrorSource source;

  PassportElementError({
    required this.type,
    required this.message,
    required this.source,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementError',
    'type': type,
    'message': message,
    'source': source,
  };

  factory PassportElementError.fromJson(Map<String, dynamic> json) => PassportElementError(
    type: b.TdBase.fromJson(json['type']) as a.PassportElementType,
    message: json['message'],
    source: b.TdBase.fromJson(json['source']) as a.PassportElementErrorSource,
  );
}

/// Contains information about a Telegram Passport element that was requested by a service
class PassportSuitableElement extends a.PassportSuitableElement {
  /// Type of the element
  final a.PassportElementType type;
  /// True, if a selfie is required with the identity document
  final bool isSelfieRequired;
  /// True, if a certified English translation is required with the document
  final bool isTranslationRequired;
  /// True, if personal details must include the user's name in the language of their country of residence
  final bool isNativeNameRequired;

  PassportSuitableElement({
    required this.type,
    required this.isSelfieRequired,
    required this.isTranslationRequired,
    required this.isNativeNameRequired,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportSuitableElement',
    'type': type,
    'is_selfie_required': isSelfieRequired,
    'is_translation_required': isTranslationRequired,
    'is_native_name_required': isNativeNameRequired,
  };

  factory PassportSuitableElement.fromJson(Map<String, dynamic> json) => PassportSuitableElement(
    type: b.TdBase.fromJson(json['type']) as a.PassportElementType,
    isSelfieRequired: json['is_selfie_required'],
    isTranslationRequired: json['is_translation_required'],
    isNativeNameRequired: json['is_native_name_required'],
  );
}

/// Contains a description of the required Telegram Passport element that was requested by a service
class PassportRequiredElement extends a.PassportRequiredElement {
  /// List of Telegram Passport elements any of which is enough to provide
  final List<PassportSuitableElement> suitableElements;

  PassportRequiredElement({
    required this.suitableElements,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportRequiredElement',
    'suitable_elements': suitableElements,
  };

  factory PassportRequiredElement.fromJson(Map<String, dynamic> json) => PassportRequiredElement(
    suitableElements: (json['suitable_elements'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as PassportSuitableElement).toList(growable: false),
  );
}

/// Contains information about a Telegram Passport authorization form that was requested
class PassportAuthorizationForm extends a.PassportAuthorizationForm {
  /// Unique identifier of the authorization form
  final int id;
  /// Information about the Telegram Passport elements that must be provided to complete the form
  final List<PassportRequiredElement> requiredElements;
  /// URL for the privacy policy of the service; may be empty
  final String privacyPolicyUrl;

  PassportAuthorizationForm({
    required this.id,
    required this.requiredElements,
    required this.privacyPolicyUrl,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportAuthorizationForm',
    'id': id,
    'required_elements': requiredElements,
    'privacy_policy_url': privacyPolicyUrl,
  };

  factory PassportAuthorizationForm.fromJson(Map<String, dynamic> json) => PassportAuthorizationForm(
    id: json['id'],
    requiredElements: (json['required_elements'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as PassportRequiredElement).toList(growable: false),
    privacyPolicyUrl: json['privacy_policy_url'],
  );
}

/// Contains information about a Telegram Passport elements and corresponding errors
class PassportElementsWithErrors extends a.PassportElementsWithErrors {
  /// Telegram Passport elements
  final List<a.PassportElement> elements;
  /// Errors in the elements that are already available
  final List<PassportElementError> errors;

  PassportElementsWithErrors({
    required this.elements,
    required this.errors,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'passportElementsWithErrors',
    'elements': elements,
    'errors': errors,
  };

  factory PassportElementsWithErrors.fromJson(Map<String, dynamic> json) => PassportElementsWithErrors(
    elements: (json['elements'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.PassportElement).toList(growable: false),
    errors: (json['errors'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as PassportElementError).toList(growable: false),
  );
}

/// Contains encrypted Telegram Passport data credentials
class EncryptedCredentials extends a.EncryptedCredentials {
  /// The encrypted credentials
  final Uint8List data;
  /// The decrypted data hash
  final Uint8List hash;
  /// Secret for data decryption, encrypted with the service's public key
  final Uint8List secret;

  EncryptedCredentials({
    required this.data,
    required this.hash,
    required this.secret,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'encryptedCredentials',
    'data': data,
    'hash': hash,
    'secret': secret,
  };

  factory EncryptedCredentials.fromJson(Map<String, dynamic> json) => EncryptedCredentials(
    data: base64.decode(json['data']),
    hash: base64.decode(json['hash']),
    secret: base64.decode(json['secret']),
  );
}

/// Contains information about an encrypted Telegram Passport element; for bots only
class EncryptedPassportElement extends a.EncryptedPassportElement {
  /// Type of Telegram Passport element
  final a.PassportElementType type;
  /// Encrypted JSON-encoded data about the user
  final Uint8List data;
  /// The front side of an identity document
  final DatedFile frontSide;
  /// The reverse side of an identity document; may be null
  final DatedFile reverseSide;
  /// Selfie with the document; may be null
  final DatedFile selfie;
  /// List of files containing a certified English translation of the document
  final List<DatedFile> translation;
  /// List of attached files
  final List<DatedFile> files;
  /// Unencrypted data, phone number or email address
  final String value;
  /// Hash of the entire element
  final String hash;

  EncryptedPassportElement({
    required this.type,
    required this.data,
    required this.frontSide,
    required this.reverseSide,
    required this.selfie,
    required this.translation,
    required this.files,
    required this.value,
    required this.hash,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'encryptedPassportElement',
    'type': type,
    'data': data,
    'front_side': frontSide,
    'reverse_side': reverseSide,
    'selfie': selfie,
    'translation': translation,
    'files': files,
    'value': value,
    'hash': hash,
  };

  factory EncryptedPassportElement.fromJson(Map<String, dynamic> json) => EncryptedPassportElement(
    type: b.TdBase.fromJson(json['type']) as a.PassportElementType,
    data: base64.decode(json['data']),
    frontSide: b.TdBase.fromJson(json['front_side']) as DatedFile,
    reverseSide: b.TdBase.fromJson(json['reverse_side']) as DatedFile,
    selfie: b.TdBase.fromJson(json['selfie']) as DatedFile,
    translation: (json['translation'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as DatedFile).toList(growable: false),
    files: (json['files'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as DatedFile).toList(growable: false),
    value: json['value'],
    hash: json['hash'],
  );
}

/// The element contains an error in an unspecified place. The error will be considered resolved when new data is added
class InputPassportElementErrorSourceUnspecified extends a.InputPassportElementErrorSource {
  /// Current hash of the entire element
  final Uint8List elementHash;

  InputPassportElementErrorSourceUnspecified({
    required this.elementHash,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementErrorSourceUnspecified',
    'element_hash': elementHash,
  };

  factory InputPassportElementErrorSourceUnspecified.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceUnspecified(
    elementHash: base64.decode(json['element_hash']),
  );
}

/// A data field contains an error. The error is considered resolved when the field's value changes
class InputPassportElementErrorSourceDataField extends a.InputPassportElementErrorSource {
  /// Field name
  final String fieldName;
  /// Current data hash
  final Uint8List dataHash;

  InputPassportElementErrorSourceDataField({
    required this.fieldName,
    required this.dataHash,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementErrorSourceDataField',
    'field_name': fieldName,
    'data_hash': dataHash,
  };

  factory InputPassportElementErrorSourceDataField.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceDataField(
    fieldName: json['field_name'],
    dataHash: base64.decode(json['data_hash']),
  );
}

/// The front side of the document contains an error. The error is considered resolved when the file with the front side of the document changes
class InputPassportElementErrorSourceFrontSide extends a.InputPassportElementErrorSource {
  /// Current hash of the file containing the front side
  final Uint8List fileHash;

  InputPassportElementErrorSourceFrontSide({
    required this.fileHash,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementErrorSourceFrontSide',
    'file_hash': fileHash,
  };

  factory InputPassportElementErrorSourceFrontSide.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceFrontSide(
    fileHash: base64.decode(json['file_hash']),
  );
}

/// The reverse side of the document contains an error. The error is considered resolved when the file with the reverse side of the document changes
class InputPassportElementErrorSourceReverseSide extends a.InputPassportElementErrorSource {
  /// Current hash of the file containing the reverse side
  final Uint8List fileHash;

  InputPassportElementErrorSourceReverseSide({
    required this.fileHash,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementErrorSourceReverseSide',
    'file_hash': fileHash,
  };

  factory InputPassportElementErrorSourceReverseSide.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceReverseSide(
    fileHash: base64.decode(json['file_hash']),
  );
}

/// The selfie contains an error. The error is considered resolved when the file with the selfie changes
class InputPassportElementErrorSourceSelfie extends a.InputPassportElementErrorSource {
  /// Current hash of the file containing the selfie
  final Uint8List fileHash;

  InputPassportElementErrorSourceSelfie({
    required this.fileHash,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementErrorSourceSelfie',
    'file_hash': fileHash,
  };

  factory InputPassportElementErrorSourceSelfie.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceSelfie(
    fileHash: base64.decode(json['file_hash']),
  );
}

/// One of the files containing the translation of the document contains an error. The error is considered resolved when the file with the translation changes
class InputPassportElementErrorSourceTranslationFile extends a.InputPassportElementErrorSource {
  /// Current hash of the file containing the translation
  final Uint8List fileHash;

  InputPassportElementErrorSourceTranslationFile({
    required this.fileHash,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementErrorSourceTranslationFile',
    'file_hash': fileHash,
  };

  factory InputPassportElementErrorSourceTranslationFile.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceTranslationFile(
    fileHash: base64.decode(json['file_hash']),
  );
}

/// The translation of the document contains an error. The error is considered resolved when the list of files changes
class InputPassportElementErrorSourceTranslationFiles extends a.InputPassportElementErrorSource {
  /// Current hashes of all files with the translation
  final List<Uint8List> fileHashes;

  InputPassportElementErrorSourceTranslationFiles({
    required this.fileHashes,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementErrorSourceTranslationFiles',
    'file_hashes': fileHashes,
  };

  factory InputPassportElementErrorSourceTranslationFiles.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceTranslationFiles(
    fileHashes: (json['file_hashes'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as Uint8List).toList(growable: false),
  );
}

/// The file contains an error. The error is considered resolved when the file changes
class InputPassportElementErrorSourceFile extends a.InputPassportElementErrorSource {
  /// Current hash of the file which has the error
  final Uint8List fileHash;

  InputPassportElementErrorSourceFile({
    required this.fileHash,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementErrorSourceFile',
    'file_hash': fileHash,
  };

  factory InputPassportElementErrorSourceFile.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceFile(
    fileHash: base64.decode(json['file_hash']),
  );
}

/// The list of attached files contains an error. The error is considered resolved when the file list changes
class InputPassportElementErrorSourceFiles extends a.InputPassportElementErrorSource {
  /// Current hashes of all attached files
  final List<Uint8List> fileHashes;

  InputPassportElementErrorSourceFiles({
    required this.fileHashes,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementErrorSourceFiles',
    'file_hashes': fileHashes,
  };

  factory InputPassportElementErrorSourceFiles.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceFiles(
    fileHashes: (json['file_hashes'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as Uint8List).toList(growable: false),
  );
}

/// Contains the description of an error in a Telegram Passport element; for bots only
class InputPassportElementError extends a.InputPassportElementError {
  /// Type of Telegram Passport element that has the error
  final a.PassportElementType type;
  /// Error message
  final String message;
  /// Error source
  final a.InputPassportElementErrorSource source;

  InputPassportElementError({
    required this.type,
    required this.message,
    required this.source,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputPassportElementError',
    'type': type,
    'message': message,
    'source': source,
  };

  factory InputPassportElementError.fromJson(Map<String, dynamic> json) => InputPassportElementError(
    type: b.TdBase.fromJson(json['type']) as a.PassportElementType,
    message: json['message'],
    source: b.TdBase.fromJson(json['source']) as a.InputPassportElementErrorSource,
  );
}

/// A text message
class MessageText extends a.MessageContent {
  /// Text of the message
  final FormattedText text;
  /// A preview of the web page that's mentioned in the text; may be null
  final WebPage webPage;

  MessageText({
    required this.text,
    required this.webPage,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageText',
    'text': text,
    'web_page': webPage,
  };

  factory MessageText.fromJson(Map<String, dynamic> json) => MessageText(
    text: b.TdBase.fromJson(json['text']) as FormattedText,
    webPage: b.TdBase.fromJson(json['web_page']) as WebPage,
  );
}

/// An animation message (GIF-style).
class MessageAnimation extends a.MessageContent {
  /// The animation description
  final Animation animation;
  /// Animation caption
  final FormattedText caption;
  /// True, if the animation thumbnail must be blurred and the animation must be shown only while tapped
  final bool isSecret;

  MessageAnimation({
    required this.animation,
    required this.caption,
    required this.isSecret,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageAnimation',
    'animation': animation,
    'caption': caption,
    'is_secret': isSecret,
  };

  factory MessageAnimation.fromJson(Map<String, dynamic> json) => MessageAnimation(
    animation: b.TdBase.fromJson(json['animation']) as Animation,
    caption: b.TdBase.fromJson(json['caption']) as FormattedText,
    isSecret: json['is_secret'],
  );
}

/// An audio message
class MessageAudio extends a.MessageContent {
  /// The audio description
  final Audio audio;
  /// Audio caption
  final FormattedText caption;

  MessageAudio({
    required this.audio,
    required this.caption,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageAudio',
    'audio': audio,
    'caption': caption,
  };

  factory MessageAudio.fromJson(Map<String, dynamic> json) => MessageAudio(
    audio: b.TdBase.fromJson(json['audio']) as Audio,
    caption: b.TdBase.fromJson(json['caption']) as FormattedText,
  );
}

/// A document message (general file)
class MessageDocument extends a.MessageContent {
  /// The document description
  final Document document;
  /// Document caption
  final FormattedText caption;

  MessageDocument({
    required this.document,
    required this.caption,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageDocument',
    'document': document,
    'caption': caption,
  };

  factory MessageDocument.fromJson(Map<String, dynamic> json) => MessageDocument(
    document: b.TdBase.fromJson(json['document']) as Document,
    caption: b.TdBase.fromJson(json['caption']) as FormattedText,
  );
}

/// A photo message
class MessagePhoto extends a.MessageContent {
  /// The photo description
  final Photo photo;
  /// Photo caption
  final FormattedText caption;
  /// True, if the photo must be blurred and must be shown only while tapped
  final bool isSecret;

  MessagePhoto({
    required this.photo,
    required this.caption,
    required this.isSecret,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messagePhoto',
    'photo': photo,
    'caption': caption,
    'is_secret': isSecret,
  };

  factory MessagePhoto.fromJson(Map<String, dynamic> json) => MessagePhoto(
    photo: b.TdBase.fromJson(json['photo']) as Photo,
    caption: b.TdBase.fromJson(json['caption']) as FormattedText,
    isSecret: json['is_secret'],
  );
}

/// An expired photo message (self-destructed after TTL has elapsed)
class MessageExpiredPhoto extends a.MessageContent {
  MessageExpiredPhoto();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageExpiredPhoto',
  };

  factory MessageExpiredPhoto.fromJson(Map<String, dynamic> json) => MessageExpiredPhoto(
  );
}

/// A sticker message
class MessageSticker extends a.MessageContent {
  /// The sticker description
  final Sticker sticker;

  MessageSticker({
    required this.sticker,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageSticker',
    'sticker': sticker,
  };

  factory MessageSticker.fromJson(Map<String, dynamic> json) => MessageSticker(
    sticker: b.TdBase.fromJson(json['sticker']) as Sticker,
  );
}

/// A video message
class MessageVideo extends a.MessageContent {
  /// The video description
  final Video video;
  /// Video caption
  final FormattedText caption;
  /// True, if the video thumbnail must be blurred and the video must be shown only while tapped
  final bool isSecret;

  MessageVideo({
    required this.video,
    required this.caption,
    required this.isSecret,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageVideo',
    'video': video,
    'caption': caption,
    'is_secret': isSecret,
  };

  factory MessageVideo.fromJson(Map<String, dynamic> json) => MessageVideo(
    video: b.TdBase.fromJson(json['video']) as Video,
    caption: b.TdBase.fromJson(json['caption']) as FormattedText,
    isSecret: json['is_secret'],
  );
}

/// An expired video message (self-destructed after TTL has elapsed)
class MessageExpiredVideo extends a.MessageContent {
  MessageExpiredVideo();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageExpiredVideo',
  };

  factory MessageExpiredVideo.fromJson(Map<String, dynamic> json) => MessageExpiredVideo(
  );
}

/// A video note message
class MessageVideoNote extends a.MessageContent {
  /// The video note description
  final VideoNote videoNote;
  /// True, if at least one of the recipients has viewed the video note
  final bool isViewed;
  /// True, if the video note thumbnail must be blurred and the video note must be shown only while tapped
  final bool isSecret;

  MessageVideoNote({
    required this.videoNote,
    required this.isViewed,
    required this.isSecret,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageVideoNote',
    'video_note': videoNote,
    'is_viewed': isViewed,
    'is_secret': isSecret,
  };

  factory MessageVideoNote.fromJson(Map<String, dynamic> json) => MessageVideoNote(
    videoNote: b.TdBase.fromJson(json['video_note']) as VideoNote,
    isViewed: json['is_viewed'],
    isSecret: json['is_secret'],
  );
}

/// A voice note message
class MessageVoiceNote extends a.MessageContent {
  /// The voice note description
  final VoiceNote voiceNote;
  /// Voice note caption
  final FormattedText caption;
  /// True, if at least one of the recipients has listened to the voice note
  final bool isListened;

  MessageVoiceNote({
    required this.voiceNote,
    required this.caption,
    required this.isListened,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageVoiceNote',
    'voice_note': voiceNote,
    'caption': caption,
    'is_listened': isListened,
  };

  factory MessageVoiceNote.fromJson(Map<String, dynamic> json) => MessageVoiceNote(
    voiceNote: b.TdBase.fromJson(json['voice_note']) as VoiceNote,
    caption: b.TdBase.fromJson(json['caption']) as FormattedText,
    isListened: json['is_listened'],
  );
}

/// A message with a location
class MessageLocation extends a.MessageContent {
  /// The location description
  final Location location;
  /// Time relative to the message send date, for which the location can be updated, in seconds
  final int livePeriod;
  /// Left time for which the location can be updated, in seconds. updateMessageContent is not sent when this field changes
  final int expiresIn;
  /// For live locations, a direction in which the location moves, in degrees; 1-360. If 0 the direction is unknown
  final int heading;
  /// For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). 0 if the notification is disabled. Available only for the message sender
  final int proximityAlertRadius;

  MessageLocation({
    required this.location,
    required this.livePeriod,
    required this.expiresIn,
    required this.heading,
    required this.proximityAlertRadius,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageLocation',
    'location': location,
    'live_period': livePeriod,
    'expires_in': expiresIn,
    'heading': heading,
    'proximity_alert_radius': proximityAlertRadius,
  };

  factory MessageLocation.fromJson(Map<String, dynamic> json) => MessageLocation(
    location: b.TdBase.fromJson(json['location']) as Location,
    livePeriod: json['live_period'],
    expiresIn: json['expires_in'],
    heading: json['heading'],
    proximityAlertRadius: json['proximity_alert_radius'],
  );
}

/// A message with information about a venue
class MessageVenue extends a.MessageContent {
  /// The venue description
  final Venue venue;

  MessageVenue({
    required this.venue,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageVenue',
    'venue': venue,
  };

  factory MessageVenue.fromJson(Map<String, dynamic> json) => MessageVenue(
    venue: b.TdBase.fromJson(json['venue']) as Venue,
  );
}

/// A message with a user contact
class MessageContact extends a.MessageContent {
  /// The contact description
  final Contact contact;

  MessageContact({
    required this.contact,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageContact',
    'contact': contact,
  };

  factory MessageContact.fromJson(Map<String, dynamic> json) => MessageContact(
    contact: b.TdBase.fromJson(json['contact']) as Contact,
  );
}

/// A dice message. The dice value is randomly generated by the server
class MessageDice extends a.MessageContent {
  /// The animated stickers with the initial dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known
  final a.DiceStickers initialState;
  /// The animated stickers with the final dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known
  final a.DiceStickers finalState;
  /// Emoji on which the dice throw animation is based
  final String emoji;
  /// The dice value. If the value is 0, the dice don't have final state yet
  final int value;
  /// Number of frame after which a success animation like a shower of confetti needs to be shown on updateMessageSendSucceeded
  final int successAnimationFrameNumber;

  MessageDice({
    required this.initialState,
    required this.finalState,
    required this.emoji,
    required this.value,
    required this.successAnimationFrameNumber,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageDice',
    'initial_state': initialState,
    'final_state': finalState,
    'emoji': emoji,
    'value': value,
    'success_animation_frame_number': successAnimationFrameNumber,
  };

  factory MessageDice.fromJson(Map<String, dynamic> json) => MessageDice(
    initialState: b.TdBase.fromJson(json['initial_state']) as a.DiceStickers,
    finalState: b.TdBase.fromJson(json['final_state']) as a.DiceStickers,
    emoji: json['emoji'],
    value: json['value'],
    successAnimationFrameNumber: json['success_animation_frame_number'],
  );
}

/// A message with a game
class MessageGame extends a.MessageContent {
  /// The game description
  final Game game;

  MessageGame({
    required this.game,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageGame',
    'game': game,
  };

  factory MessageGame.fromJson(Map<String, dynamic> json) => MessageGame(
    game: b.TdBase.fromJson(json['game']) as Game,
  );
}

/// A message with a poll
class MessagePoll extends a.MessageContent {
  /// The poll description
  final Poll poll;

  MessagePoll({
    required this.poll,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messagePoll',
    'poll': poll,
  };

  factory MessagePoll.fromJson(Map<String, dynamic> json) => MessagePoll(
    poll: b.TdBase.fromJson(json['poll']) as Poll,
  );
}

/// A message with an invoice from a bot
class MessageInvoice extends a.MessageContent {
  /// Product title
  final String title;
  /// Product description
  final String description;
  /// Product photo; may be null
  final Photo photo;
  /// Currency for the product price
  final String currency;
  /// Product total price in the smallest units of the currency
  final int totalAmount;
  /// Unique invoice bot start_parameter. To share an invoice use the URL https://t.me/{bot_username}?start={start_parameter}
  final String startParameter;
  /// True, if the invoice is a test invoice
  final bool isTest;
  /// True, if the shipping address should be specified
  final bool needShippingAddress;
  /// The identifier of the message with the receipt, after the product has been purchased
  final int receiptMessageId;

  MessageInvoice({
    required this.title,
    required this.description,
    required this.photo,
    required this.currency,
    required this.totalAmount,
    required this.startParameter,
    required this.isTest,
    required this.needShippingAddress,
    required this.receiptMessageId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageInvoice',
    'title': title,
    'description': description,
    'photo': photo,
    'currency': currency,
    'total_amount': totalAmount,
    'start_parameter': startParameter,
    'is_test': isTest,
    'need_shipping_address': needShippingAddress,
    'receipt_message_id': receiptMessageId,
  };

  factory MessageInvoice.fromJson(Map<String, dynamic> json) => MessageInvoice(
    title: json['title'],
    description: json['description'],
    photo: b.TdBase.fromJson(json['photo']) as Photo,
    currency: json['currency'],
    totalAmount: json['total_amount'],
    startParameter: json['start_parameter'],
    isTest: json['is_test'],
    needShippingAddress: json['need_shipping_address'],
    receiptMessageId: json['receipt_message_id'],
  );
}

/// A message with information about an ended call
class MessageCall extends a.MessageContent {
  /// True, if the call was a video call
  final bool isVideo;
  /// Reason why the call was discarded
  final a.CallDiscardReason discardReason;
  /// Call duration, in seconds
  final int duration;

  MessageCall({
    required this.isVideo,
    required this.discardReason,
    required this.duration,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageCall',
    'is_video': isVideo,
    'discard_reason': discardReason,
    'duration': duration,
  };

  factory MessageCall.fromJson(Map<String, dynamic> json) => MessageCall(
    isVideo: json['is_video'],
    discardReason: b.TdBase.fromJson(json['discard_reason']) as a.CallDiscardReason,
    duration: json['duration'],
  );
}

/// A new voice chat was scheduled
class MessageVoiceChatScheduled extends a.MessageContent {
  /// Identifier of the voice chat. The voice chat can be received through the method getGroupCall
  final int groupCallId;
  /// Point in time (Unix timestamp) when the group call is supposed to be started by an administrator
  final int startDate;

  MessageVoiceChatScheduled({
    required this.groupCallId,
    required this.startDate,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageVoiceChatScheduled',
    'group_call_id': groupCallId,
    'start_date': startDate,
  };

  factory MessageVoiceChatScheduled.fromJson(Map<String, dynamic> json) => MessageVoiceChatScheduled(
    groupCallId: json['group_call_id'],
    startDate: json['start_date'],
  );
}

/// A newly created voice chat
class MessageVoiceChatStarted extends a.MessageContent {
  /// Identifier of the voice chat. The voice chat can be received through the method getGroupCall
  final int groupCallId;

  MessageVoiceChatStarted({
    required this.groupCallId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageVoiceChatStarted',
    'group_call_id': groupCallId,
  };

  factory MessageVoiceChatStarted.fromJson(Map<String, dynamic> json) => MessageVoiceChatStarted(
    groupCallId: json['group_call_id'],
  );
}

/// A message with information about an ended voice chat
class MessageVoiceChatEnded extends a.MessageContent {
  /// Call duration
  final int duration;

  MessageVoiceChatEnded({
    required this.duration,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageVoiceChatEnded',
    'duration': duration,
  };

  factory MessageVoiceChatEnded.fromJson(Map<String, dynamic> json) => MessageVoiceChatEnded(
    duration: json['duration'],
  );
}

/// A message with information about an invite to a voice chat
class MessageInviteVoiceChatParticipants extends a.MessageContent {
  /// Identifier of the voice chat. The voice chat can be received through the method getGroupCall
  final int groupCallId;
  /// Invited user identifiers
  final List<int> userIds;

  MessageInviteVoiceChatParticipants({
    required this.groupCallId,
    required this.userIds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageInviteVoiceChatParticipants',
    'group_call_id': groupCallId,
    'user_ids': userIds,
  };

  factory MessageInviteVoiceChatParticipants.fromJson(Map<String, dynamic> json) => MessageInviteVoiceChatParticipants(
    groupCallId: json['group_call_id'],
    userIds: (json['user_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// A newly created basic group
class MessageBasicGroupChatCreate extends a.MessageContent {
  /// Title of the basic group
  final String title;
  /// User identifiers of members in the basic group
  final List<int> memberUserIds;

  MessageBasicGroupChatCreate({
    required this.title,
    required this.memberUserIds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageBasicGroupChatCreate',
    'title': title,
    'member_user_ids': memberUserIds,
  };

  factory MessageBasicGroupChatCreate.fromJson(Map<String, dynamic> json) => MessageBasicGroupChatCreate(
    title: json['title'],
    memberUserIds: (json['member_user_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// A newly created supergroup or channel
class MessageSupergroupChatCreate extends a.MessageContent {
  /// Title of the supergroup or channel
  final String title;

  MessageSupergroupChatCreate({
    required this.title,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageSupergroupChatCreate',
    'title': title,
  };

  factory MessageSupergroupChatCreate.fromJson(Map<String, dynamic> json) => MessageSupergroupChatCreate(
    title: json['title'],
  );
}

/// An updated chat title
class MessageChatChangeTitle extends a.MessageContent {
  /// New chat title
  final String title;

  MessageChatChangeTitle({
    required this.title,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageChatChangeTitle',
    'title': title,
  };

  factory MessageChatChangeTitle.fromJson(Map<String, dynamic> json) => MessageChatChangeTitle(
    title: json['title'],
  );
}

/// An updated chat photo
class MessageChatChangePhoto extends a.MessageContent {
  /// New chat photo
  final ChatPhoto photo;

  MessageChatChangePhoto({
    required this.photo,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageChatChangePhoto',
    'photo': photo,
  };

  factory MessageChatChangePhoto.fromJson(Map<String, dynamic> json) => MessageChatChangePhoto(
    photo: b.TdBase.fromJson(json['photo']) as ChatPhoto,
  );
}

/// A deleted chat photo
class MessageChatDeletePhoto extends a.MessageContent {
  MessageChatDeletePhoto();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageChatDeletePhoto',
  };

  factory MessageChatDeletePhoto.fromJson(Map<String, dynamic> json) => MessageChatDeletePhoto(
  );
}

/// New chat members were added
class MessageChatAddMembers extends a.MessageContent {
  /// User identifiers of the new members
  final List<int> memberUserIds;

  MessageChatAddMembers({
    required this.memberUserIds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageChatAddMembers',
    'member_user_ids': memberUserIds,
  };

  factory MessageChatAddMembers.fromJson(Map<String, dynamic> json) => MessageChatAddMembers(
    memberUserIds: (json['member_user_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// A new member joined the chat by invite link
class MessageChatJoinByLink extends a.MessageContent {
  MessageChatJoinByLink();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageChatJoinByLink',
  };

  factory MessageChatJoinByLink.fromJson(Map<String, dynamic> json) => MessageChatJoinByLink(
  );
}

/// A chat member was deleted
class MessageChatDeleteMember extends a.MessageContent {
  /// User identifier of the deleted chat member
  final int userId;

  MessageChatDeleteMember({
    required this.userId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageChatDeleteMember',
    'user_id': userId,
  };

  factory MessageChatDeleteMember.fromJson(Map<String, dynamic> json) => MessageChatDeleteMember(
    userId: json['user_id'],
  );
}

/// A basic group was upgraded to a supergroup and was deactivated as the result
class MessageChatUpgradeTo extends a.MessageContent {
  /// Identifier of the supergroup to which the basic group was upgraded
  final int supergroupId;

  MessageChatUpgradeTo({
    required this.supergroupId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageChatUpgradeTo',
    'supergroup_id': supergroupId,
  };

  factory MessageChatUpgradeTo.fromJson(Map<String, dynamic> json) => MessageChatUpgradeTo(
    supergroupId: json['supergroup_id'],
  );
}

/// A supergroup has been created from a basic group
class MessageChatUpgradeFrom extends a.MessageContent {
  /// Title of the newly created supergroup
  final String title;
  /// The identifier of the original basic group
  final int basicGroupId;

  MessageChatUpgradeFrom({
    required this.title,
    required this.basicGroupId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageChatUpgradeFrom',
    'title': title,
    'basic_group_id': basicGroupId,
  };

  factory MessageChatUpgradeFrom.fromJson(Map<String, dynamic> json) => MessageChatUpgradeFrom(
    title: json['title'],
    basicGroupId: json['basic_group_id'],
  );
}

/// A message has been pinned
class MessagePinMessage extends a.MessageContent {
  /// Identifier of the pinned message, can be an identifier of a deleted message or 0
  final int messageId;

  MessagePinMessage({
    required this.messageId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messagePinMessage',
    'message_id': messageId,
  };

  factory MessagePinMessage.fromJson(Map<String, dynamic> json) => MessagePinMessage(
    messageId: json['message_id'],
  );
}

/// A screenshot of a message in the chat has been taken
class MessageScreenshotTaken extends a.MessageContent {
  MessageScreenshotTaken();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageScreenshotTaken',
  };

  factory MessageScreenshotTaken.fromJson(Map<String, dynamic> json) => MessageScreenshotTaken(
  );
}

/// The TTL (Time To Live) setting for messages in the chat has been changed
class MessageChatSetTtl extends a.MessageContent {
  /// New message TTL setting
  final int ttl;

  MessageChatSetTtl({
    required this.ttl,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageChatSetTtl',
    'ttl': ttl,
  };

  factory MessageChatSetTtl.fromJson(Map<String, dynamic> json) => MessageChatSetTtl(
    ttl: json['ttl'],
  );
}

/// A non-standard action has happened in the chat
class MessageCustomServiceAction extends a.MessageContent {
  /// Message text to be shown in the chat
  final String text;

  MessageCustomServiceAction({
    required this.text,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageCustomServiceAction',
    'text': text,
  };

  factory MessageCustomServiceAction.fromJson(Map<String, dynamic> json) => MessageCustomServiceAction(
    text: json['text'],
  );
}

/// A new high score was achieved in a game
class MessageGameScore extends a.MessageContent {
  /// Identifier of the message with the game, can be an identifier of a deleted message
  final int gameMessageId;
  /// Identifier of the game; may be different from the games presented in the message with the game
  final int gameId;
  /// New score
  final int score;

  MessageGameScore({
    required this.gameMessageId,
    required this.gameId,
    required this.score,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageGameScore',
    'game_message_id': gameMessageId,
    'game_id': gameId,
    'score': score,
  };

  factory MessageGameScore.fromJson(Map<String, dynamic> json) => MessageGameScore(
    gameMessageId: json['game_message_id'],
    gameId: int.parse(json['game_id']),
    score: json['score'],
  );
}

/// A payment has been completed
class MessagePaymentSuccessful extends a.MessageContent {
  /// Identifier of the chat, containing the corresponding invoice message; 0 if unknown
  final int invoiceChatId;
  /// Identifier of the message with the corresponding invoice; can be an identifier of a deleted message
  final int invoiceMessageId;
  /// Currency for the price of the product
  final String currency;
  /// Total price for the product, in the smallest units of the currency
  final int totalAmount;

  MessagePaymentSuccessful({
    required this.invoiceChatId,
    required this.invoiceMessageId,
    required this.currency,
    required this.totalAmount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messagePaymentSuccessful',
    'invoice_chat_id': invoiceChatId,
    'invoice_message_id': invoiceMessageId,
    'currency': currency,
    'total_amount': totalAmount,
  };

  factory MessagePaymentSuccessful.fromJson(Map<String, dynamic> json) => MessagePaymentSuccessful(
    invoiceChatId: json['invoice_chat_id'],
    invoiceMessageId: json['invoice_message_id'],
    currency: json['currency'],
    totalAmount: json['total_amount'],
  );
}

/// A payment has been completed; for bots only
class MessagePaymentSuccessfulBot extends a.MessageContent {
  /// Currency for price of the product
  final String currency;
  /// Total price for the product, in the smallest units of the currency
  final int totalAmount;
  /// Invoice payload
  final Uint8List invoicePayload;
  /// Identifier of the shipping option chosen by the user; may be empty if not applicable
  final String shippingOptionId;
  /// Information about the order; may be null
  final OrderInfo orderInfo;
  /// Telegram payment identifier
  final String telegramPaymentChargeId;
  /// Provider payment identifier
  final String providerPaymentChargeId;

  MessagePaymentSuccessfulBot({
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    required this.shippingOptionId,
    required this.orderInfo,
    required this.telegramPaymentChargeId,
    required this.providerPaymentChargeId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messagePaymentSuccessfulBot',
    'currency': currency,
    'total_amount': totalAmount,
    'invoice_payload': invoicePayload,
    'shipping_option_id': shippingOptionId,
    'order_info': orderInfo,
    'telegram_payment_charge_id': telegramPaymentChargeId,
    'provider_payment_charge_id': providerPaymentChargeId,
  };

  factory MessagePaymentSuccessfulBot.fromJson(Map<String, dynamic> json) => MessagePaymentSuccessfulBot(
    currency: json['currency'],
    totalAmount: json['total_amount'],
    invoicePayload: base64.decode(json['invoice_payload']),
    shippingOptionId: json['shipping_option_id'],
    orderInfo: b.TdBase.fromJson(json['order_info']) as OrderInfo,
    telegramPaymentChargeId: json['telegram_payment_charge_id'],
    providerPaymentChargeId: json['provider_payment_charge_id'],
  );
}

/// A contact has registered with Telegram
class MessageContactRegistered extends a.MessageContent {
  MessageContactRegistered();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageContactRegistered',
  };

  factory MessageContactRegistered.fromJson(Map<String, dynamic> json) => MessageContactRegistered(
  );
}

/// The current user has connected a website by logging in using Telegram Login Widget on it
class MessageWebsiteConnected extends a.MessageContent {
  /// Domain name of the connected website
  final String domainName;

  MessageWebsiteConnected({
    required this.domainName,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageWebsiteConnected',
    'domain_name': domainName,
  };

  factory MessageWebsiteConnected.fromJson(Map<String, dynamic> json) => MessageWebsiteConnected(
    domainName: json['domain_name'],
  );
}

/// Telegram Passport data has been sent
class MessagePassportDataSent extends a.MessageContent {
  /// List of Telegram Passport element types sent
  final List<a.PassportElementType> types;

  MessagePassportDataSent({
    required this.types,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messagePassportDataSent',
    'types': types,
  };

  factory MessagePassportDataSent.fromJson(Map<String, dynamic> json) => MessagePassportDataSent(
    types: (json['types'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.PassportElementType).toList(growable: false),
  );
}

/// Telegram Passport data has been received; for bots only
class MessagePassportDataReceived extends a.MessageContent {
  /// List of received Telegram Passport elements
  final List<EncryptedPassportElement> elements;
  /// Encrypted data credentials
  final EncryptedCredentials credentials;

  MessagePassportDataReceived({
    required this.elements,
    required this.credentials,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messagePassportDataReceived',
    'elements': elements,
    'credentials': credentials,
  };

  factory MessagePassportDataReceived.fromJson(Map<String, dynamic> json) => MessagePassportDataReceived(
    elements: (json['elements'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as EncryptedPassportElement).toList(growable: false),
    credentials: b.TdBase.fromJson(json['credentials']) as EncryptedCredentials,
  );
}

/// A user in the chat came within proximity alert range
class MessageProximityAlertTriggered extends a.MessageContent {
  /// The user or chat, which triggered the proximity alert
  final a.MessageSender traveler;
  /// The user or chat, which subscribed for the proximity alert
  final a.MessageSender watcher;
  /// The distance between the users
  final int distance;

  MessageProximityAlertTriggered({
    required this.traveler,
    required this.watcher,
    required this.distance,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageProximityAlertTriggered',
    'traveler': traveler,
    'watcher': watcher,
    'distance': distance,
  };

  factory MessageProximityAlertTriggered.fromJson(Map<String, dynamic> json) => MessageProximityAlertTriggered(
    traveler: b.TdBase.fromJson(json['traveler']) as a.MessageSender,
    watcher: b.TdBase.fromJson(json['watcher']) as a.MessageSender,
    distance: json['distance'],
  );
}

/// Message content that is not supported in the current TDLib version
class MessageUnsupported extends a.MessageContent {
  MessageUnsupported();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageUnsupported',
  };

  factory MessageUnsupported.fromJson(Map<String, dynamic> json) => MessageUnsupported(
  );
}

/// A mention of a user by their username
class TextEntityTypeMention extends a.TextEntityType {
  TextEntityTypeMention();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypeMention',
  };

  factory TextEntityTypeMention.fromJson(Map<String, dynamic> json) => TextEntityTypeMention(
  );
}

/// A hashtag text, beginning with "#"
class TextEntityTypeHashtag extends a.TextEntityType {
  TextEntityTypeHashtag();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypeHashtag',
  };

  factory TextEntityTypeHashtag.fromJson(Map<String, dynamic> json) => TextEntityTypeHashtag(
  );
}

/// A cashtag text, beginning with "$" and consisting of capital english letters (i.e. "$USD")
class TextEntityTypeCashtag extends a.TextEntityType {
  TextEntityTypeCashtag();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypeCashtag',
  };

  factory TextEntityTypeCashtag.fromJson(Map<String, dynamic> json) => TextEntityTypeCashtag(
  );
}

/// A bot command, beginning with "/". This shouldn't be highlighted if there are no bots in the chat
class TextEntityTypeBotCommand extends a.TextEntityType {
  TextEntityTypeBotCommand();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypeBotCommand',
  };

  factory TextEntityTypeBotCommand.fromJson(Map<String, dynamic> json) => TextEntityTypeBotCommand(
  );
}

/// An HTTP URL
class TextEntityTypeUrl extends a.TextEntityType {
  TextEntityTypeUrl();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypeUrl',
  };

  factory TextEntityTypeUrl.fromJson(Map<String, dynamic> json) => TextEntityTypeUrl(
  );
}

/// An email address
class TextEntityTypeEmailAddress extends a.TextEntityType {
  TextEntityTypeEmailAddress();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypeEmailAddress',
  };

  factory TextEntityTypeEmailAddress.fromJson(Map<String, dynamic> json) => TextEntityTypeEmailAddress(
  );
}

/// A phone number
class TextEntityTypePhoneNumber extends a.TextEntityType {
  TextEntityTypePhoneNumber();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypePhoneNumber',
  };

  factory TextEntityTypePhoneNumber.fromJson(Map<String, dynamic> json) => TextEntityTypePhoneNumber(
  );
}

/// A bank card number. The getBankCardInfo method can be used to get information about the bank card
class TextEntityTypeBankCardNumber extends a.TextEntityType {
  TextEntityTypeBankCardNumber();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypeBankCardNumber',
  };

  factory TextEntityTypeBankCardNumber.fromJson(Map<String, dynamic> json) => TextEntityTypeBankCardNumber(
  );
}

/// A bold text
class TextEntityTypeBold extends a.TextEntityType {
  TextEntityTypeBold();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypeBold',
  };

  factory TextEntityTypeBold.fromJson(Map<String, dynamic> json) => TextEntityTypeBold(
  );
}

/// An italic text
class TextEntityTypeItalic extends a.TextEntityType {
  TextEntityTypeItalic();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypeItalic',
  };

  factory TextEntityTypeItalic.fromJson(Map<String, dynamic> json) => TextEntityTypeItalic(
  );
}

/// An underlined text
class TextEntityTypeUnderline extends a.TextEntityType {
  TextEntityTypeUnderline();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypeUnderline',
  };

  factory TextEntityTypeUnderline.fromJson(Map<String, dynamic> json) => TextEntityTypeUnderline(
  );
}

/// A strikethrough text
class TextEntityTypeStrikethrough extends a.TextEntityType {
  TextEntityTypeStrikethrough();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypeStrikethrough',
  };

  factory TextEntityTypeStrikethrough.fromJson(Map<String, dynamic> json) => TextEntityTypeStrikethrough(
  );
}

/// Text that must be formatted as if inside a code HTML tag
class TextEntityTypeCode extends a.TextEntityType {
  TextEntityTypeCode();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypeCode',
  };

  factory TextEntityTypeCode.fromJson(Map<String, dynamic> json) => TextEntityTypeCode(
  );
}

/// Text that must be formatted as if inside a pre HTML tag
class TextEntityTypePre extends a.TextEntityType {
  TextEntityTypePre();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypePre',
  };

  factory TextEntityTypePre.fromJson(Map<String, dynamic> json) => TextEntityTypePre(
  );
}

/// Text that must be formatted as if inside pre, and code HTML tags
class TextEntityTypePreCode extends a.TextEntityType {
  /// Programming language of the code; as defined by the sender
  final String language;

  TextEntityTypePreCode({
    required this.language,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypePreCode',
    'language': language,
  };

  factory TextEntityTypePreCode.fromJson(Map<String, dynamic> json) => TextEntityTypePreCode(
    language: json['language'],
  );
}

/// A text description shown instead of a raw URL
class TextEntityTypeTextUrl extends a.TextEntityType {
  /// HTTP or tg:// URL to be opened when the link is clicked
  final String url;

  TextEntityTypeTextUrl({
    required this.url,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypeTextUrl',
    'url': url,
  };

  factory TextEntityTypeTextUrl.fromJson(Map<String, dynamic> json) => TextEntityTypeTextUrl(
    url: json['url'],
  );
}

/// A text shows instead of a raw mention of the user (e.g., when the user has no username)
class TextEntityTypeMentionName extends a.TextEntityType {
  /// Identifier of the mentioned user
  final int userId;

  TextEntityTypeMentionName({
    required this.userId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textEntityTypeMentionName',
    'user_id': userId,
  };

  factory TextEntityTypeMentionName.fromJson(Map<String, dynamic> json) => TextEntityTypeMentionName(
    userId: json['user_id'],
  );
}

/// A thumbnail to be sent along with a file; must be in JPEG or WEBP format for stickers, and less than 200 KB in size
class InputThumbnail extends a.InputThumbnail {
  /// Thumbnail file to send. Sending thumbnails by file_id is currently not supported
  final a.InputFile thumbnail;
  /// Thumbnail width, usually shouldn't exceed 320. Use 0 if unknown
  final int width;
  /// Thumbnail height, usually shouldn't exceed 320. Use 0 if unknown
  final int height;

  InputThumbnail({
    required this.thumbnail,
    required this.width,
    required this.height,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputThumbnail',
    'thumbnail': thumbnail,
    'width': width,
    'height': height,
  };

  factory InputThumbnail.fromJson(Map<String, dynamic> json) => InputThumbnail(
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as a.InputFile,
    width: json['width'],
    height: json['height'],
  );
}

/// The message will be sent at the specified date
class MessageSchedulingStateSendAtDate extends a.MessageSchedulingState {
  /// Date the message will be sent. The date must be within 367 days in the future
  final int sendDate;

  MessageSchedulingStateSendAtDate({
    required this.sendDate,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageSchedulingStateSendAtDate',
    'send_date': sendDate,
  };

  factory MessageSchedulingStateSendAtDate.fromJson(Map<String, dynamic> json) => MessageSchedulingStateSendAtDate(
    sendDate: json['send_date'],
  );
}

/// The message will be sent when the peer will be online. Applicable to private chats only and when the exact online status of the peer is known
class MessageSchedulingStateSendWhenOnline extends a.MessageSchedulingState {
  MessageSchedulingStateSendWhenOnline();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageSchedulingStateSendWhenOnline',
  };

  factory MessageSchedulingStateSendWhenOnline.fromJson(Map<String, dynamic> json) => MessageSchedulingStateSendWhenOnline(
  );
}

/// Options to be used when a message is sent
class MessageSendOptions extends a.MessageSendOptions {
  /// Pass true to disable notification for the message
  final bool disableNotification;
  /// Pass true if the message is sent from the background
  final bool fromBackground;
  /// Message scheduling state. Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled
  final a.MessageSchedulingState schedulingState;

  MessageSendOptions({
    required this.disableNotification,
    required this.fromBackground,
    required this.schedulingState,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageSendOptions',
    'disable_notification': disableNotification,
    'from_background': fromBackground,
    'scheduling_state': schedulingState,
  };

  factory MessageSendOptions.fromJson(Map<String, dynamic> json) => MessageSendOptions(
    disableNotification: json['disable_notification'],
    fromBackground: json['from_background'],
    schedulingState: b.TdBase.fromJson(json['scheduling_state']) as a.MessageSchedulingState,
  );
}

/// Options to be used when a message content is copied without a link to the original message. Service messages and messageInvoice can't be copied
class MessageCopyOptions extends a.MessageCopyOptions {
  /// True, if content of the message needs to be copied without a link to the original message. Always true if the message is forwarded to a secret chat
  final bool sendCopy;
  /// True, if media caption of the message copy needs to be replaced. Ignored if send_copy is false
  final bool replaceCaption;
  /// New message caption. Ignored if replace_caption is false
  final FormattedText newCaption;

  MessageCopyOptions({
    required this.sendCopy,
    required this.replaceCaption,
    required this.newCaption,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageCopyOptions',
    'send_copy': sendCopy,
    'replace_caption': replaceCaption,
    'new_caption': newCaption,
  };

  factory MessageCopyOptions.fromJson(Map<String, dynamic> json) => MessageCopyOptions(
    sendCopy: json['send_copy'],
    replaceCaption: json['replace_caption'],
    newCaption: b.TdBase.fromJson(json['new_caption']) as FormattedText,
  );
}

/// A text message
class InputMessageText extends a.InputMessageContent {
  /// Formatted text to be sent; 1-GetOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually
  final FormattedText text;
  /// True, if rich web page previews for URLs in the message text should be disabled
  final bool disableWebPagePreview;
  /// True, if a chat message draft should be deleted
  final bool clearDraft;

  InputMessageText({
    required this.text,
    required this.disableWebPagePreview,
    required this.clearDraft,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessageText',
    'text': text,
    'disable_web_page_preview': disableWebPagePreview,
    'clear_draft': clearDraft,
  };

  factory InputMessageText.fromJson(Map<String, dynamic> json) => InputMessageText(
    text: b.TdBase.fromJson(json['text']) as FormattedText,
    disableWebPagePreview: json['disable_web_page_preview'],
    clearDraft: json['clear_draft'],
  );
}

/// An animation message (GIF-style).
class InputMessageAnimation extends a.InputMessageContent {
  /// Animation file to be sent
  final a.InputFile animation;
  /// Animation thumbnail, if available
  final InputThumbnail thumbnail;
  /// File identifiers of the stickers added to the animation, if applicable
  final List<int> addedStickerFileIds;
  /// Duration of the animation, in seconds
  final int duration;
  /// Width of the animation; may be replaced by the server
  final int width;
  /// Height of the animation; may be replaced by the server
  final int height;
  /// Animation caption; 0-GetOption("message_caption_length_max") characters
  final FormattedText caption;

  InputMessageAnimation({
    required this.animation,
    required this.thumbnail,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
    required this.caption,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessageAnimation',
    'animation': animation,
    'thumbnail': thumbnail,
    'added_sticker_file_ids': addedStickerFileIds,
    'duration': duration,
    'width': width,
    'height': height,
    'caption': caption,
  };

  factory InputMessageAnimation.fromJson(Map<String, dynamic> json) => InputMessageAnimation(
    animation: b.TdBase.fromJson(json['animation']) as a.InputFile,
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as InputThumbnail,
    addedStickerFileIds: (json['added_sticker_file_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
    duration: json['duration'],
    width: json['width'],
    height: json['height'],
    caption: b.TdBase.fromJson(json['caption']) as FormattedText,
  );
}

/// An audio message
class InputMessageAudio extends a.InputMessageContent {
  /// Audio file to be sent
  final a.InputFile audio;
  /// Thumbnail of the cover for the album, if available
  final InputThumbnail albumCoverThumbnail;
  /// Duration of the audio, in seconds; may be replaced by the server
  final int duration;
  /// Title of the audio; 0-64 characters; may be replaced by the server
  final String title;
  /// Performer of the audio; 0-64 characters, may be replaced by the server
  final String performer;
  /// Audio caption; 0-GetOption("message_caption_length_max") characters
  final FormattedText caption;

  InputMessageAudio({
    required this.audio,
    required this.albumCoverThumbnail,
    required this.duration,
    required this.title,
    required this.performer,
    required this.caption,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessageAudio',
    'audio': audio,
    'album_cover_thumbnail': albumCoverThumbnail,
    'duration': duration,
    'title': title,
    'performer': performer,
    'caption': caption,
  };

  factory InputMessageAudio.fromJson(Map<String, dynamic> json) => InputMessageAudio(
    audio: b.TdBase.fromJson(json['audio']) as a.InputFile,
    albumCoverThumbnail: b.TdBase.fromJson(json['album_cover_thumbnail']) as InputThumbnail,
    duration: json['duration'],
    title: json['title'],
    performer: json['performer'],
    caption: b.TdBase.fromJson(json['caption']) as FormattedText,
  );
}

/// A document message (general file)
class InputMessageDocument extends a.InputMessageContent {
  /// Document to be sent
  final a.InputFile document;
  /// Document thumbnail, if available
  final InputThumbnail thumbnail;
  /// If true, automatic file type detection will be disabled and the document will be always sent as file. Always true for files sent to secret chats
  final bool disableContentTypeDetection;
  /// Document caption; 0-GetOption("message_caption_length_max") characters
  final FormattedText caption;

  InputMessageDocument({
    required this.document,
    required this.thumbnail,
    required this.disableContentTypeDetection,
    required this.caption,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessageDocument',
    'document': document,
    'thumbnail': thumbnail,
    'disable_content_type_detection': disableContentTypeDetection,
    'caption': caption,
  };

  factory InputMessageDocument.fromJson(Map<String, dynamic> json) => InputMessageDocument(
    document: b.TdBase.fromJson(json['document']) as a.InputFile,
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as InputThumbnail,
    disableContentTypeDetection: json['disable_content_type_detection'],
    caption: b.TdBase.fromJson(json['caption']) as FormattedText,
  );
}

/// A photo message
class InputMessagePhoto extends a.InputMessageContent {
  /// Photo to send
  final a.InputFile photo;
  /// Photo thumbnail to be sent, this is sent to the other party in secret chats only
  final InputThumbnail thumbnail;
  /// File identifiers of the stickers added to the photo, if applicable
  final List<int> addedStickerFileIds;
  /// Photo width
  final int width;
  /// Photo height
  final int height;
  /// Photo caption; 0-GetOption("message_caption_length_max") characters
  final FormattedText caption;
  /// Photo TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
  final int ttl;

  InputMessagePhoto({
    required this.photo,
    required this.thumbnail,
    required this.addedStickerFileIds,
    required this.width,
    required this.height,
    required this.caption,
    required this.ttl,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessagePhoto',
    'photo': photo,
    'thumbnail': thumbnail,
    'added_sticker_file_ids': addedStickerFileIds,
    'width': width,
    'height': height,
    'caption': caption,
    'ttl': ttl,
  };

  factory InputMessagePhoto.fromJson(Map<String, dynamic> json) => InputMessagePhoto(
    photo: b.TdBase.fromJson(json['photo']) as a.InputFile,
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as InputThumbnail,
    addedStickerFileIds: (json['added_sticker_file_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
    width: json['width'],
    height: json['height'],
    caption: b.TdBase.fromJson(json['caption']) as FormattedText,
    ttl: json['ttl'],
  );
}

/// A sticker message
class InputMessageSticker extends a.InputMessageContent {
  /// Sticker to be sent
  final a.InputFile sticker;
  /// Sticker thumbnail, if available
  final InputThumbnail thumbnail;
  /// Sticker width
  final int width;
  /// Sticker height
  final int height;
  /// Emoji used to choose the sticker
  final String emoji;

  InputMessageSticker({
    required this.sticker,
    required this.thumbnail,
    required this.width,
    required this.height,
    required this.emoji,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessageSticker',
    'sticker': sticker,
    'thumbnail': thumbnail,
    'width': width,
    'height': height,
    'emoji': emoji,
  };

  factory InputMessageSticker.fromJson(Map<String, dynamic> json) => InputMessageSticker(
    sticker: b.TdBase.fromJson(json['sticker']) as a.InputFile,
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as InputThumbnail,
    width: json['width'],
    height: json['height'],
    emoji: json['emoji'],
  );
}

/// A video message
class InputMessageVideo extends a.InputMessageContent {
  /// Video to be sent
  final a.InputFile video;
  /// Video thumbnail, if available
  final InputThumbnail thumbnail;
  /// File identifiers of the stickers added to the video, if applicable
  final List<int> addedStickerFileIds;
  /// Duration of the video, in seconds
  final int duration;
  /// Video width
  final int width;
  /// Video height
  final int height;
  /// True, if the video should be tried to be streamed
  final bool supportsStreaming;
  /// Video caption; 0-GetOption("message_caption_length_max") characters
  final FormattedText caption;
  /// Video TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
  final int ttl;

  InputMessageVideo({
    required this.video,
    required this.thumbnail,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
    required this.supportsStreaming,
    required this.caption,
    required this.ttl,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessageVideo',
    'video': video,
    'thumbnail': thumbnail,
    'added_sticker_file_ids': addedStickerFileIds,
    'duration': duration,
    'width': width,
    'height': height,
    'supports_streaming': supportsStreaming,
    'caption': caption,
    'ttl': ttl,
  };

  factory InputMessageVideo.fromJson(Map<String, dynamic> json) => InputMessageVideo(
    video: b.TdBase.fromJson(json['video']) as a.InputFile,
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as InputThumbnail,
    addedStickerFileIds: (json['added_sticker_file_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
    duration: json['duration'],
    width: json['width'],
    height: json['height'],
    supportsStreaming: json['supports_streaming'],
    caption: b.TdBase.fromJson(json['caption']) as FormattedText,
    ttl: json['ttl'],
  );
}

/// A video note message
class InputMessageVideoNote extends a.InputMessageContent {
  /// Video note to be sent
  final a.InputFile videoNote;
  /// Video thumbnail, if available
  final InputThumbnail thumbnail;
  /// Duration of the video, in seconds
  final int duration;
  /// Video width and height; must be positive and not greater than 640
  final int length;

  InputMessageVideoNote({
    required this.videoNote,
    required this.thumbnail,
    required this.duration,
    required this.length,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessageVideoNote',
    'video_note': videoNote,
    'thumbnail': thumbnail,
    'duration': duration,
    'length': length,
  };

  factory InputMessageVideoNote.fromJson(Map<String, dynamic> json) => InputMessageVideoNote(
    videoNote: b.TdBase.fromJson(json['video_note']) as a.InputFile,
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as InputThumbnail,
    duration: json['duration'],
    length: json['length'],
  );
}

/// A voice note message
class InputMessageVoiceNote extends a.InputMessageContent {
  /// Voice note to be sent
  final a.InputFile voiceNote;
  /// Duration of the voice note, in seconds
  final int duration;
  /// Waveform representation of the voice note, in 5-bit format
  final Uint8List waveform;
  /// Voice note caption; 0-GetOption("message_caption_length_max") characters
  final FormattedText caption;

  InputMessageVoiceNote({
    required this.voiceNote,
    required this.duration,
    required this.waveform,
    required this.caption,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessageVoiceNote',
    'voice_note': voiceNote,
    'duration': duration,
    'waveform': waveform,
    'caption': caption,
  };

  factory InputMessageVoiceNote.fromJson(Map<String, dynamic> json) => InputMessageVoiceNote(
    voiceNote: b.TdBase.fromJson(json['voice_note']) as a.InputFile,
    duration: json['duration'],
    waveform: base64.decode(json['waveform']),
    caption: b.TdBase.fromJson(json['caption']) as FormattedText,
  );
}

/// A message with a location
class InputMessageLocation extends a.InputMessageContent {
  /// Location to be sent
  final Location location;
  /// Period for which the location can be updated, in seconds; should be between 60 and 86400 for a live location and 0 otherwise
  final int livePeriod;
  /// For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  final int heading;
  /// For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages
  final int proximityAlertRadius;

  InputMessageLocation({
    required this.location,
    required this.livePeriod,
    required this.heading,
    required this.proximityAlertRadius,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessageLocation',
    'location': location,
    'live_period': livePeriod,
    'heading': heading,
    'proximity_alert_radius': proximityAlertRadius,
  };

  factory InputMessageLocation.fromJson(Map<String, dynamic> json) => InputMessageLocation(
    location: b.TdBase.fromJson(json['location']) as Location,
    livePeriod: json['live_period'],
    heading: json['heading'],
    proximityAlertRadius: json['proximity_alert_radius'],
  );
}

/// A message with information about a venue
class InputMessageVenue extends a.InputMessageContent {
  /// Venue to send
  final Venue venue;

  InputMessageVenue({
    required this.venue,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessageVenue',
    'venue': venue,
  };

  factory InputMessageVenue.fromJson(Map<String, dynamic> json) => InputMessageVenue(
    venue: b.TdBase.fromJson(json['venue']) as Venue,
  );
}

/// A message containing a user contact
class InputMessageContact extends a.InputMessageContent {
  /// Contact to send
  final Contact contact;

  InputMessageContact({
    required this.contact,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessageContact',
    'contact': contact,
  };

  factory InputMessageContact.fromJson(Map<String, dynamic> json) => InputMessageContact(
    contact: b.TdBase.fromJson(json['contact']) as Contact,
  );
}

/// A dice message
class InputMessageDice extends a.InputMessageContent {
  /// Emoji on which the dice throw animation is based
  final String emoji;
  /// True, if a chat message draft should be deleted
  final bool clearDraft;

  InputMessageDice({
    required this.emoji,
    required this.clearDraft,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessageDice',
    'emoji': emoji,
    'clear_draft': clearDraft,
  };

  factory InputMessageDice.fromJson(Map<String, dynamic> json) => InputMessageDice(
    emoji: json['emoji'],
    clearDraft: json['clear_draft'],
  );
}

/// A message with a game; not supported for channels or secret chats
class InputMessageGame extends a.InputMessageContent {
  /// User identifier of the bot that owns the game
  final int botUserId;
  /// Short name of the game
  final String gameShortName;

  InputMessageGame({
    required this.botUserId,
    required this.gameShortName,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessageGame',
    'bot_user_id': botUserId,
    'game_short_name': gameShortName,
  };

  factory InputMessageGame.fromJson(Map<String, dynamic> json) => InputMessageGame(
    botUserId: json['bot_user_id'],
    gameShortName: json['game_short_name'],
  );
}

/// A message with an invoice; can be used only by bots
class InputMessageInvoice extends a.InputMessageContent {
  /// Invoice
  final Invoice invoice;
  /// Product title; 1-32 characters
  final String title;
  /// Product description; 0-255 characters
  final String description;
  /// Product photo URL; optional
  final String photoUrl;
  /// Product photo size
  final int photoSize;
  /// Product photo width
  final int photoWidth;
  /// Product photo height
  final int photoHeight;
  /// The invoice payload
  final Uint8List payload;
  /// Payment provider token
  final String providerToken;
  /// JSON-encoded data about the invoice, which will be shared with the payment provider
  final String providerData;
  /// Unique invoice bot deep link parameter for the generation of this invoice. If empty, it would be possible to pay directly from forwards of the invoice message
  final String startParameter;

  InputMessageInvoice({
    required this.invoice,
    required this.title,
    required this.description,
    required this.photoUrl,
    required this.photoSize,
    required this.photoWidth,
    required this.photoHeight,
    required this.payload,
    required this.providerToken,
    required this.providerData,
    required this.startParameter,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessageInvoice',
    'invoice': invoice,
    'title': title,
    'description': description,
    'photo_url': photoUrl,
    'photo_size': photoSize,
    'photo_width': photoWidth,
    'photo_height': photoHeight,
    'payload': payload,
    'provider_token': providerToken,
    'provider_data': providerData,
    'start_parameter': startParameter,
  };

  factory InputMessageInvoice.fromJson(Map<String, dynamic> json) => InputMessageInvoice(
    invoice: b.TdBase.fromJson(json['invoice']) as Invoice,
    title: json['title'],
    description: json['description'],
    photoUrl: json['photo_url'],
    photoSize: json['photo_size'],
    photoWidth: json['photo_width'],
    photoHeight: json['photo_height'],
    payload: base64.decode(json['payload']),
    providerToken: json['provider_token'],
    providerData: json['provider_data'],
    startParameter: json['start_parameter'],
  );
}

/// A message with a poll. Polls can't be sent to secret chats. Polls can be sent only to a private chat with a bot
class InputMessagePoll extends a.InputMessageContent {
  /// Poll question; 1-255 characters (up to 300 characters for bots)
  final String question;
  /// List of poll answer options, 2-10 strings 1-100 characters each
  final List<String> options;
  /// True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels
  final bool isAnonymous;
  /// Type of the poll
  final a.PollType type;
  /// Amount of time the poll will be active after creation, in seconds; for bots only
  final int openPeriod;
  /// Point in time (Unix timestamp) when the poll will be automatically closed; for bots only
  final int closeDate;
  /// True, if the poll needs to be sent already closed; for bots only
  final bool isClosed;

  InputMessagePoll({
    required this.question,
    required this.options,
    required this.isAnonymous,
    required this.type,
    required this.openPeriod,
    required this.closeDate,
    required this.isClosed,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessagePoll',
    'question': question,
    'options': options,
    'is_anonymous': isAnonymous,
    'type': type,
    'open_period': openPeriod,
    'close_date': closeDate,
    'is_closed': isClosed,
  };

  factory InputMessagePoll.fromJson(Map<String, dynamic> json) => InputMessagePoll(
    question: json['question'],
    options: (json['options'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as String).toList(growable: false),
    isAnonymous: json['is_anonymous'],
    type: b.TdBase.fromJson(json['type']) as a.PollType,
    openPeriod: json['open_period'],
    closeDate: json['close_date'],
    isClosed: json['is_closed'],
  );
}

/// A forwarded message
class InputMessageForwarded extends a.InputMessageContent {
  /// Identifier for the chat this forwarded message came from
  final int fromChatId;
  /// Identifier of the message to forward
  final int messageId;
  /// True, if a game message should be shared within a launched game; applies only to game messages
  final bool inGameShare;
  /// Options to be used to copy content of the message without a link to the original message
  final MessageCopyOptions copyOptions;

  InputMessageForwarded({
    required this.fromChatId,
    required this.messageId,
    required this.inGameShare,
    required this.copyOptions,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputMessageForwarded',
    'from_chat_id': fromChatId,
    'message_id': messageId,
    'in_game_share': inGameShare,
    'copy_options': copyOptions,
  };

  factory InputMessageForwarded.fromJson(Map<String, dynamic> json) => InputMessageForwarded(
    fromChatId: json['from_chat_id'],
    messageId: json['message_id'],
    inGameShare: json['in_game_share'],
    copyOptions: b.TdBase.fromJson(json['copy_options']) as MessageCopyOptions,
  );
}

/// Returns all found messages, no filter is applied
class SearchMessagesFilterEmpty extends a.SearchMessagesFilter {
  SearchMessagesFilterEmpty();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterEmpty',
  };

  factory SearchMessagesFilterEmpty.fromJson(Map<String, dynamic> json) => SearchMessagesFilterEmpty(
  );
}

/// Returns only animation messages
class SearchMessagesFilterAnimation extends a.SearchMessagesFilter {
  SearchMessagesFilterAnimation();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterAnimation',
  };

  factory SearchMessagesFilterAnimation.fromJson(Map<String, dynamic> json) => SearchMessagesFilterAnimation(
  );
}

/// Returns only audio messages
class SearchMessagesFilterAudio extends a.SearchMessagesFilter {
  SearchMessagesFilterAudio();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterAudio',
  };

  factory SearchMessagesFilterAudio.fromJson(Map<String, dynamic> json) => SearchMessagesFilterAudio(
  );
}

/// Returns only document messages
class SearchMessagesFilterDocument extends a.SearchMessagesFilter {
  SearchMessagesFilterDocument();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterDocument',
  };

  factory SearchMessagesFilterDocument.fromJson(Map<String, dynamic> json) => SearchMessagesFilterDocument(
  );
}

/// Returns only photo messages
class SearchMessagesFilterPhoto extends a.SearchMessagesFilter {
  SearchMessagesFilterPhoto();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterPhoto',
  };

  factory SearchMessagesFilterPhoto.fromJson(Map<String, dynamic> json) => SearchMessagesFilterPhoto(
  );
}

/// Returns only video messages
class SearchMessagesFilterVideo extends a.SearchMessagesFilter {
  SearchMessagesFilterVideo();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterVideo',
  };

  factory SearchMessagesFilterVideo.fromJson(Map<String, dynamic> json) => SearchMessagesFilterVideo(
  );
}

/// Returns only voice note messages
class SearchMessagesFilterVoiceNote extends a.SearchMessagesFilter {
  SearchMessagesFilterVoiceNote();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterVoiceNote',
  };

  factory SearchMessagesFilterVoiceNote.fromJson(Map<String, dynamic> json) => SearchMessagesFilterVoiceNote(
  );
}

/// Returns only photo and video messages
class SearchMessagesFilterPhotoAndVideo extends a.SearchMessagesFilter {
  SearchMessagesFilterPhotoAndVideo();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterPhotoAndVideo',
  };

  factory SearchMessagesFilterPhotoAndVideo.fromJson(Map<String, dynamic> json) => SearchMessagesFilterPhotoAndVideo(
  );
}

/// Returns only messages containing URLs
class SearchMessagesFilterUrl extends a.SearchMessagesFilter {
  SearchMessagesFilterUrl();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterUrl',
  };

  factory SearchMessagesFilterUrl.fromJson(Map<String, dynamic> json) => SearchMessagesFilterUrl(
  );
}

/// Returns only messages containing chat photos
class SearchMessagesFilterChatPhoto extends a.SearchMessagesFilter {
  SearchMessagesFilterChatPhoto();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterChatPhoto',
  };

  factory SearchMessagesFilterChatPhoto.fromJson(Map<String, dynamic> json) => SearchMessagesFilterChatPhoto(
  );
}

/// Returns only call messages
class SearchMessagesFilterCall extends a.SearchMessagesFilter {
  SearchMessagesFilterCall();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterCall',
  };

  factory SearchMessagesFilterCall.fromJson(Map<String, dynamic> json) => SearchMessagesFilterCall(
  );
}

/// Returns only incoming call messages with missed/declined discard reasons
class SearchMessagesFilterMissedCall extends a.SearchMessagesFilter {
  SearchMessagesFilterMissedCall();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterMissedCall',
  };

  factory SearchMessagesFilterMissedCall.fromJson(Map<String, dynamic> json) => SearchMessagesFilterMissedCall(
  );
}

/// Returns only video note messages
class SearchMessagesFilterVideoNote extends a.SearchMessagesFilter {
  SearchMessagesFilterVideoNote();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterVideoNote',
  };

  factory SearchMessagesFilterVideoNote.fromJson(Map<String, dynamic> json) => SearchMessagesFilterVideoNote(
  );
}

/// Returns only voice and video note messages
class SearchMessagesFilterVoiceAndVideoNote extends a.SearchMessagesFilter {
  SearchMessagesFilterVoiceAndVideoNote();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterVoiceAndVideoNote',
  };

  factory SearchMessagesFilterVoiceAndVideoNote.fromJson(Map<String, dynamic> json) => SearchMessagesFilterVoiceAndVideoNote(
  );
}

/// Returns only messages with mentions of the current user, or messages that are replies to their messages
class SearchMessagesFilterMention extends a.SearchMessagesFilter {
  SearchMessagesFilterMention();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterMention',
  };

  factory SearchMessagesFilterMention.fromJson(Map<String, dynamic> json) => SearchMessagesFilterMention(
  );
}

/// Returns only messages with unread mentions of the current user, or messages that are replies to their messages. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user
class SearchMessagesFilterUnreadMention extends a.SearchMessagesFilter {
  SearchMessagesFilterUnreadMention();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterUnreadMention',
  };

  factory SearchMessagesFilterUnreadMention.fromJson(Map<String, dynamic> json) => SearchMessagesFilterUnreadMention(
  );
}

/// Returns only failed to send messages. This filter can be used only if the message database is used
class SearchMessagesFilterFailedToSend extends a.SearchMessagesFilter {
  SearchMessagesFilterFailedToSend();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterFailedToSend',
  };

  factory SearchMessagesFilterFailedToSend.fromJson(Map<String, dynamic> json) => SearchMessagesFilterFailedToSend(
  );
}

/// Returns only pinned messages
class SearchMessagesFilterPinned extends a.SearchMessagesFilter {
  SearchMessagesFilterPinned();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'searchMessagesFilterPinned',
  };

  factory SearchMessagesFilterPinned.fromJson(Map<String, dynamic> json) => SearchMessagesFilterPinned(
  );
}

/// The user is typing a message
class ChatActionTyping extends a.ChatAction {
  ChatActionTyping();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionTyping',
  };

  factory ChatActionTyping.fromJson(Map<String, dynamic> json) => ChatActionTyping(
  );
}

/// The user is recording a video
class ChatActionRecordingVideo extends a.ChatAction {
  ChatActionRecordingVideo();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionRecordingVideo',
  };

  factory ChatActionRecordingVideo.fromJson(Map<String, dynamic> json) => ChatActionRecordingVideo(
  );
}

/// The user is uploading a video
class ChatActionUploadingVideo extends a.ChatAction {
  /// Upload progress, as a percentage
  final int progress;

  ChatActionUploadingVideo({
    required this.progress,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionUploadingVideo',
    'progress': progress,
  };

  factory ChatActionUploadingVideo.fromJson(Map<String, dynamic> json) => ChatActionUploadingVideo(
    progress: json['progress'],
  );
}

/// The user is recording a voice note
class ChatActionRecordingVoiceNote extends a.ChatAction {
  ChatActionRecordingVoiceNote();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionRecordingVoiceNote',
  };

  factory ChatActionRecordingVoiceNote.fromJson(Map<String, dynamic> json) => ChatActionRecordingVoiceNote(
  );
}

/// The user is uploading a voice note
class ChatActionUploadingVoiceNote extends a.ChatAction {
  /// Upload progress, as a percentage
  final int progress;

  ChatActionUploadingVoiceNote({
    required this.progress,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionUploadingVoiceNote',
    'progress': progress,
  };

  factory ChatActionUploadingVoiceNote.fromJson(Map<String, dynamic> json) => ChatActionUploadingVoiceNote(
    progress: json['progress'],
  );
}

/// The user is uploading a photo
class ChatActionUploadingPhoto extends a.ChatAction {
  /// Upload progress, as a percentage
  final int progress;

  ChatActionUploadingPhoto({
    required this.progress,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionUploadingPhoto',
    'progress': progress,
  };

  factory ChatActionUploadingPhoto.fromJson(Map<String, dynamic> json) => ChatActionUploadingPhoto(
    progress: json['progress'],
  );
}

/// The user is uploading a document
class ChatActionUploadingDocument extends a.ChatAction {
  /// Upload progress, as a percentage
  final int progress;

  ChatActionUploadingDocument({
    required this.progress,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionUploadingDocument',
    'progress': progress,
  };

  factory ChatActionUploadingDocument.fromJson(Map<String, dynamic> json) => ChatActionUploadingDocument(
    progress: json['progress'],
  );
}

/// The user is picking a location or venue to send
class ChatActionChoosingLocation extends a.ChatAction {
  ChatActionChoosingLocation();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionChoosingLocation',
  };

  factory ChatActionChoosingLocation.fromJson(Map<String, dynamic> json) => ChatActionChoosingLocation(
  );
}

/// The user is picking a contact to send
class ChatActionChoosingContact extends a.ChatAction {
  ChatActionChoosingContact();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionChoosingContact',
  };

  factory ChatActionChoosingContact.fromJson(Map<String, dynamic> json) => ChatActionChoosingContact(
  );
}

/// The user has started to play a game
class ChatActionStartPlayingGame extends a.ChatAction {
  ChatActionStartPlayingGame();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionStartPlayingGame',
  };

  factory ChatActionStartPlayingGame.fromJson(Map<String, dynamic> json) => ChatActionStartPlayingGame(
  );
}

/// The user is recording a video note
class ChatActionRecordingVideoNote extends a.ChatAction {
  ChatActionRecordingVideoNote();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionRecordingVideoNote',
  };

  factory ChatActionRecordingVideoNote.fromJson(Map<String, dynamic> json) => ChatActionRecordingVideoNote(
  );
}

/// The user is uploading a video note
class ChatActionUploadingVideoNote extends a.ChatAction {
  /// Upload progress, as a percentage
  final int progress;

  ChatActionUploadingVideoNote({
    required this.progress,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionUploadingVideoNote',
    'progress': progress,
  };

  factory ChatActionUploadingVideoNote.fromJson(Map<String, dynamic> json) => ChatActionUploadingVideoNote(
    progress: json['progress'],
  );
}

/// The user has cancelled the previous action
class ChatActionCancel extends a.ChatAction {
  ChatActionCancel();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatActionCancel',
  };

  factory ChatActionCancel.fromJson(Map<String, dynamic> json) => ChatActionCancel(
  );
}

/// The user status was never changed
class UserStatusEmpty extends a.UserStatus {
  UserStatusEmpty();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userStatusEmpty',
  };

  factory UserStatusEmpty.fromJson(Map<String, dynamic> json) => UserStatusEmpty(
  );
}

/// The user is online
class UserStatusOnline extends a.UserStatus {
  /// Point in time (Unix timestamp) when the user's online status will expire
  final int expires;

  UserStatusOnline({
    required this.expires,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userStatusOnline',
    'expires': expires,
  };

  factory UserStatusOnline.fromJson(Map<String, dynamic> json) => UserStatusOnline(
    expires: json['expires'],
  );
}

/// The user is offline
class UserStatusOffline extends a.UserStatus {
  /// Point in time (Unix timestamp) when the user was last online
  final int wasOnline;

  UserStatusOffline({
    required this.wasOnline,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userStatusOffline',
    'was_online': wasOnline,
  };

  factory UserStatusOffline.fromJson(Map<String, dynamic> json) => UserStatusOffline(
    wasOnline: json['was_online'],
  );
}

/// The user was online recently
class UserStatusRecently extends a.UserStatus {
  UserStatusRecently();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userStatusRecently',
  };

  factory UserStatusRecently.fromJson(Map<String, dynamic> json) => UserStatusRecently(
  );
}

/// The user is offline, but was online last week
class UserStatusLastWeek extends a.UserStatus {
  UserStatusLastWeek();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userStatusLastWeek',
  };

  factory UserStatusLastWeek.fromJson(Map<String, dynamic> json) => UserStatusLastWeek(
  );
}

/// The user is offline, but was online last month
class UserStatusLastMonth extends a.UserStatus {
  UserStatusLastMonth();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userStatusLastMonth',
  };

  factory UserStatusLastMonth.fromJson(Map<String, dynamic> json) => UserStatusLastMonth(
  );
}

/// Represents a list of stickers
class Stickers extends a.Stickers {
  /// List of stickers
  final List<Sticker> stickers;

  Stickers({
    required this.stickers,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'stickers',
    'stickers': stickers,
  };

  factory Stickers.fromJson(Map<String, dynamic> json) => Stickers(
    stickers: (json['stickers'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as Sticker).toList(growable: false),
  );
}

/// Represents a list of emoji
class Emojis extends a.Emojis {
  /// List of emojis
  final List<String> emojis;

  Emojis({
    required this.emojis,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'emojis',
    'emojis': emojis,
  };

  factory Emojis.fromJson(Map<String, dynamic> json) => Emojis(
    emojis: (json['emojis'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as String).toList(growable: false),
  );
}

/// Represents a sticker set
class StickerSet extends a.StickerSet {
  /// Identifier of the sticker set
  final int id;
  /// Title of the sticker set
  final String title;
  /// Name of the sticker set
  final String name;
  /// Sticker set thumbnail in WEBP or TGS format with width and height 100; may be null. The file can be downloaded only before the thumbnail is changed
  final Thumbnail thumbnail;
  /// Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
  final List<ClosedVectorPath> thumbnailOutline;
  /// True, if the sticker set has been installed by the current user
  final bool isInstalled;
  /// True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously
  final bool isArchived;
  /// True, if the sticker set is official
  final bool isOfficial;
  /// True, is the stickers in the set are animated
  final bool isAnimated;
  /// True, if the stickers in the set are masks
  final bool isMasks;
  /// True for already viewed trending sticker sets
  final bool isViewed;
  /// List of stickers in this set
  final List<Sticker> stickers;
  /// A list of emoji corresponding to the stickers in the same order. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object
  final List<Emojis> emojis;

  StickerSet({
    required this.id,
    required this.title,
    required this.name,
    required this.thumbnail,
    required this.thumbnailOutline,
    required this.isInstalled,
    required this.isArchived,
    required this.isOfficial,
    required this.isAnimated,
    required this.isMasks,
    required this.isViewed,
    required this.stickers,
    required this.emojis,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'stickerSet',
    'id': id,
    'title': title,
    'name': name,
    'thumbnail': thumbnail,
    'thumbnail_outline': thumbnailOutline,
    'is_installed': isInstalled,
    'is_archived': isArchived,
    'is_official': isOfficial,
    'is_animated': isAnimated,
    'is_masks': isMasks,
    'is_viewed': isViewed,
    'stickers': stickers,
    'emojis': emojis,
  };

  factory StickerSet.fromJson(Map<String, dynamic> json) => StickerSet(
    id: int.parse(json['id']),
    title: json['title'],
    name: json['name'],
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as Thumbnail,
    thumbnailOutline: (json['thumbnail_outline'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ClosedVectorPath).toList(growable: false),
    isInstalled: json['is_installed'],
    isArchived: json['is_archived'],
    isOfficial: json['is_official'],
    isAnimated: json['is_animated'],
    isMasks: json['is_masks'],
    isViewed: json['is_viewed'],
    stickers: (json['stickers'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as Sticker).toList(growable: false),
    emojis: (json['emojis'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as Emojis).toList(growable: false),
  );
}

/// Represents short information about a sticker set
class StickerSetInfo extends a.StickerSetInfo {
  /// Identifier of the sticker set
  final int id;
  /// Title of the sticker set
  final String title;
  /// Name of the sticker set
  final String name;
  /// Sticker set thumbnail in WEBP or TGS format with width and height 100; may be null
  final Thumbnail thumbnail;
  /// Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
  final List<ClosedVectorPath> thumbnailOutline;
  /// True, if the sticker set has been installed by the current user
  final bool isInstalled;
  /// True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously
  final bool isArchived;
  /// True, if the sticker set is official
  final bool isOfficial;
  /// True, is the stickers in the set are animated
  final bool isAnimated;
  /// True, if the stickers in the set are masks
  final bool isMasks;
  /// True for already viewed trending sticker sets
  final bool isViewed;
  /// Total number of stickers in the set
  final int size;
  /// Contains up to the first 5 stickers from the set, depending on the context. If the application needs more stickers the full set should be requested
  final List<Sticker> covers;

  StickerSetInfo({
    required this.id,
    required this.title,
    required this.name,
    required this.thumbnail,
    required this.thumbnailOutline,
    required this.isInstalled,
    required this.isArchived,
    required this.isOfficial,
    required this.isAnimated,
    required this.isMasks,
    required this.isViewed,
    required this.size,
    required this.covers,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'stickerSetInfo',
    'id': id,
    'title': title,
    'name': name,
    'thumbnail': thumbnail,
    'thumbnail_outline': thumbnailOutline,
    'is_installed': isInstalled,
    'is_archived': isArchived,
    'is_official': isOfficial,
    'is_animated': isAnimated,
    'is_masks': isMasks,
    'is_viewed': isViewed,
    'size': size,
    'covers': covers,
  };

  factory StickerSetInfo.fromJson(Map<String, dynamic> json) => StickerSetInfo(
    id: int.parse(json['id']),
    title: json['title'],
    name: json['name'],
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as Thumbnail,
    thumbnailOutline: (json['thumbnail_outline'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ClosedVectorPath).toList(growable: false),
    isInstalled: json['is_installed'],
    isArchived: json['is_archived'],
    isOfficial: json['is_official'],
    isAnimated: json['is_animated'],
    isMasks: json['is_masks'],
    isViewed: json['is_viewed'],
    size: json['size'],
    covers: (json['covers'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as Sticker).toList(growable: false),
  );
}

/// Represents a list of sticker sets
class StickerSets extends a.StickerSets {
  /// Approximate total number of sticker sets found
  final int totalCount;
  /// List of sticker sets
  final List<StickerSetInfo> sets;

  StickerSets({
    required this.totalCount,
    required this.sets,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'stickerSets',
    'total_count': totalCount,
    'sets': sets,
  };

  factory StickerSets.fromJson(Map<String, dynamic> json) => StickerSets(
    totalCount: json['total_count'],
    sets: (json['sets'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as StickerSetInfo).toList(growable: false),
  );
}

/// The call wasn't discarded, or the reason is unknown
class CallDiscardReasonEmpty extends a.CallDiscardReason {
  CallDiscardReasonEmpty();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callDiscardReasonEmpty',
  };

  factory CallDiscardReasonEmpty.fromJson(Map<String, dynamic> json) => CallDiscardReasonEmpty(
  );
}

/// The call was ended before the conversation started. It was cancelled by the caller or missed by the other party
class CallDiscardReasonMissed extends a.CallDiscardReason {
  CallDiscardReasonMissed();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callDiscardReasonMissed',
  };

  factory CallDiscardReasonMissed.fromJson(Map<String, dynamic> json) => CallDiscardReasonMissed(
  );
}

/// The call was ended before the conversation started. It was declined by the other party
class CallDiscardReasonDeclined extends a.CallDiscardReason {
  CallDiscardReasonDeclined();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callDiscardReasonDeclined',
  };

  factory CallDiscardReasonDeclined.fromJson(Map<String, dynamic> json) => CallDiscardReasonDeclined(
  );
}

/// The call was ended during the conversation because the users were disconnected
class CallDiscardReasonDisconnected extends a.CallDiscardReason {
  CallDiscardReasonDisconnected();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callDiscardReasonDisconnected',
  };

  factory CallDiscardReasonDisconnected.fromJson(Map<String, dynamic> json) => CallDiscardReasonDisconnected(
  );
}

/// The call was ended because one of the parties hung up
class CallDiscardReasonHungUp extends a.CallDiscardReason {
  CallDiscardReasonHungUp();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callDiscardReasonHungUp',
  };

  factory CallDiscardReasonHungUp.fromJson(Map<String, dynamic> json) => CallDiscardReasonHungUp(
  );
}

/// Specifies the supported call protocols
class CallProtocol extends a.CallProtocol {
  /// True, if UDP peer-to-peer connections are supported
  final bool udpP2p;
  /// True, if connection through UDP reflectors is supported
  final bool udpReflector;
  /// The minimum supported API layer; use 65
  final int minLayer;
  /// The maximum supported API layer; use 65
  final int maxLayer;
  /// List of supported tgcalls versions
  final List<String> libraryVersions;

  CallProtocol({
    required this.udpP2p,
    required this.udpReflector,
    required this.minLayer,
    required this.maxLayer,
    required this.libraryVersions,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callProtocol',
    'udp_p2p': udpP2p,
    'udp_reflector': udpReflector,
    'min_layer': minLayer,
    'max_layer': maxLayer,
    'library_versions': libraryVersions,
  };

  factory CallProtocol.fromJson(Map<String, dynamic> json) => CallProtocol(
    udpP2p: json['udp_p2p'],
    udpReflector: json['udp_reflector'],
    minLayer: json['min_layer'],
    maxLayer: json['max_layer'],
    libraryVersions: (json['library_versions'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as String).toList(growable: false),
  );
}

/// A Telegram call reflector
class CallServerTypeTelegramReflector extends a.CallServerType {
  /// A peer tag to be used with the reflector
  final Uint8List peerTag;

  CallServerTypeTelegramReflector({
    required this.peerTag,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callServerTypeTelegramReflector',
    'peer_tag': peerTag,
  };

  factory CallServerTypeTelegramReflector.fromJson(Map<String, dynamic> json) => CallServerTypeTelegramReflector(
    peerTag: base64.decode(json['peer_tag']),
  );
}

/// A WebRTC server
class CallServerTypeWebrtc extends a.CallServerType {
  /// Username to be used for authentication
  final String username;
  /// Authentication password
  final String password;
  /// True, if the server supports TURN
  final bool supportsTurn;
  /// True, if the server supports STUN
  final bool supportsStun;

  CallServerTypeWebrtc({
    required this.username,
    required this.password,
    required this.supportsTurn,
    required this.supportsStun,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callServerTypeWebrtc',
    'username': username,
    'password': password,
    'supports_turn': supportsTurn,
    'supports_stun': supportsStun,
  };

  factory CallServerTypeWebrtc.fromJson(Map<String, dynamic> json) => CallServerTypeWebrtc(
    username: json['username'],
    password: json['password'],
    supportsTurn: json['supports_turn'],
    supportsStun: json['supports_stun'],
  );
}

/// Describes a server for relaying call data
class CallServer extends a.CallServer {
  /// Server identifier
  final int id;
  /// Server IPv4 address
  final String ipAddress;
  /// Server IPv6 address
  final String ipv6Address;
  /// Server port number
  final int port;
  /// Server type
  final a.CallServerType type;

  CallServer({
    required this.id,
    required this.ipAddress,
    required this.ipv6Address,
    required this.port,
    required this.type,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callServer',
    'id': id,
    'ip_address': ipAddress,
    'ipv6_address': ipv6Address,
    'port': port,
    'type': type,
  };

  factory CallServer.fromJson(Map<String, dynamic> json) => CallServer(
    id: int.parse(json['id']),
    ipAddress: json['ip_address'],
    ipv6Address: json['ipv6_address'],
    port: json['port'],
    type: b.TdBase.fromJson(json['type']) as a.CallServerType,
  );
}

/// Contains the call identifier
class CallId extends a.CallId {
  /// Call identifier
  final int id;

  CallId({
    required this.id,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callId',
    'id': id,
  };

  factory CallId.fromJson(Map<String, dynamic> json) => CallId(
    id: json['id'],
  );
}

/// Contains the group call identifier
class GroupCallId extends a.GroupCallId {
  /// Group call identifier
  final int id;

  GroupCallId({
    required this.id,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'groupCallId',
    'id': id,
  };

  factory GroupCallId.fromJson(Map<String, dynamic> json) => GroupCallId(
    id: json['id'],
  );
}

/// The call is pending, waiting to be accepted by a user
class CallStatePending extends a.CallState {
  /// True, if the call has already been created by the server
  final bool isCreated;
  /// True, if the call has already been received by the other party
  final bool isReceived;

  CallStatePending({
    required this.isCreated,
    required this.isReceived,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callStatePending',
    'is_created': isCreated,
    'is_received': isReceived,
  };

  factory CallStatePending.fromJson(Map<String, dynamic> json) => CallStatePending(
    isCreated: json['is_created'],
    isReceived: json['is_received'],
  );
}

/// The call has been answered and encryption keys are being exchanged
class CallStateExchangingKeys extends a.CallState {
  CallStateExchangingKeys();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callStateExchangingKeys',
  };

  factory CallStateExchangingKeys.fromJson(Map<String, dynamic> json) => CallStateExchangingKeys(
  );
}

/// The call is ready to use
class CallStateReady extends a.CallState {
  /// Call protocols supported by the peer
  final CallProtocol protocol;
  /// List of available call servers
  final List<CallServer> servers;
  /// A JSON-encoded call config
  final String config;
  /// Call encryption key
  final Uint8List encryptionKey;
  /// Encryption key emojis fingerprint
  final List<String> emojis;
  /// True, if peer-to-peer connection is allowed by users privacy settings
  final bool allowP2p;

  CallStateReady({
    required this.protocol,
    required this.servers,
    required this.config,
    required this.encryptionKey,
    required this.emojis,
    required this.allowP2p,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callStateReady',
    'protocol': protocol,
    'servers': servers,
    'config': config,
    'encryption_key': encryptionKey,
    'emojis': emojis,
    'allow_p2p': allowP2p,
  };

  factory CallStateReady.fromJson(Map<String, dynamic> json) => CallStateReady(
    protocol: b.TdBase.fromJson(json['protocol']) as CallProtocol,
    servers: (json['servers'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as CallServer).toList(growable: false),
    config: json['config'],
    encryptionKey: base64.decode(json['encryption_key']),
    emojis: (json['emojis'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as String).toList(growable: false),
    allowP2p: json['allow_p2p'],
  );
}

/// The call is hanging up after discardCall has been called
class CallStateHangingUp extends a.CallState {
  CallStateHangingUp();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callStateHangingUp',
  };

  factory CallStateHangingUp.fromJson(Map<String, dynamic> json) => CallStateHangingUp(
  );
}

/// The call has ended successfully
class CallStateDiscarded extends a.CallState {
  /// The reason, why the call has ended
  final a.CallDiscardReason reason;
  /// True, if the call rating should be sent to the server
  final bool needRating;
  /// True, if the call debug information should be sent to the server
  final bool needDebugInformation;

  CallStateDiscarded({
    required this.reason,
    required this.needRating,
    required this.needDebugInformation,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callStateDiscarded',
    'reason': reason,
    'need_rating': needRating,
    'need_debug_information': needDebugInformation,
  };

  factory CallStateDiscarded.fromJson(Map<String, dynamic> json) => CallStateDiscarded(
    reason: b.TdBase.fromJson(json['reason']) as a.CallDiscardReason,
    needRating: json['need_rating'],
    needDebugInformation: json['need_debug_information'],
  );
}

/// The call has ended with an error
class CallStateError extends a.CallState {
  /// Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout
  final Error error;

  CallStateError({
    required this.error,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callStateError',
    'error': error,
  };

  factory CallStateError.fromJson(Map<String, dynamic> json) => CallStateError(
    error: b.TdBase.fromJson(json['error']) as Error,
  );
}

/// Describes a recently speaking participant in a group call
class GroupCallRecentSpeaker extends a.GroupCallRecentSpeaker {
  /// Group call participant identifier
  final a.MessageSender participantId;
  /// True, is the user has spoken recently
  final bool isSpeaking;

  GroupCallRecentSpeaker({
    required this.participantId,
    required this.isSpeaking,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'groupCallRecentSpeaker',
    'participant_id': participantId,
    'is_speaking': isSpeaking,
  };

  factory GroupCallRecentSpeaker.fromJson(Map<String, dynamic> json) => GroupCallRecentSpeaker(
    participantId: b.TdBase.fromJson(json['participant_id']) as a.MessageSender,
    isSpeaking: json['is_speaking'],
  );
}

/// Describes a group call
class GroupCall extends a.GroupCall {
  /// Group call identifier
  final int id;
  /// Group call title
  final String title;
  /// Point in time (Unix timestamp) when the group call is supposed to be started by an administrator; 0 if it is already active or was ended
  final int scheduledStartDate;
  /// True, if the group call is scheduled and the current user will receive a notification when the group call will start
  final bool enabledStartNotification;
  /// True, if the call is active
  final bool isActive;
  /// True, if the call is joined
  final bool isJoined;
  /// True, if user was kicked from the call because of network loss and the call needs to be rejoined
  final bool needRejoin;
  /// True, if the current user can manage the group call
  final bool canBeManaged;
  /// Number of participants in the group call
  final int participantCount;
  /// True, if all group call participants are loaded
  final bool loadedAllParticipants;
  /// Recently speaking users in the group call
  final List<GroupCallRecentSpeaker> recentSpeakers;
  /// True, if only group call administrators can unmute new participants
  final bool muteNewParticipants;
  /// True, if the current user can enable or disable mute_new_participants setting
  final bool canChangeMuteNewParticipants;
  /// Duration of the ongoing group call recording, in seconds; 0 if none. An updateGroupCall update is not triggered when value of this field changes, but the same recording goes on
  final int recordDuration;
  /// Call duration; for ended calls only
  final int duration;

  GroupCall({
    required this.id,
    required this.title,
    required this.scheduledStartDate,
    required this.enabledStartNotification,
    required this.isActive,
    required this.isJoined,
    required this.needRejoin,
    required this.canBeManaged,
    required this.participantCount,
    required this.loadedAllParticipants,
    required this.recentSpeakers,
    required this.muteNewParticipants,
    required this.canChangeMuteNewParticipants,
    required this.recordDuration,
    required this.duration,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'groupCall',
    'id': id,
    'title': title,
    'scheduled_start_date': scheduledStartDate,
    'enabled_start_notification': enabledStartNotification,
    'is_active': isActive,
    'is_joined': isJoined,
    'need_rejoin': needRejoin,
    'can_be_managed': canBeManaged,
    'participant_count': participantCount,
    'loaded_all_participants': loadedAllParticipants,
    'recent_speakers': recentSpeakers,
    'mute_new_participants': muteNewParticipants,
    'can_change_mute_new_participants': canChangeMuteNewParticipants,
    'record_duration': recordDuration,
    'duration': duration,
  };

  factory GroupCall.fromJson(Map<String, dynamic> json) => GroupCall(
    id: json['id'],
    title: json['title'],
    scheduledStartDate: json['scheduled_start_date'],
    enabledStartNotification: json['enabled_start_notification'],
    isActive: json['is_active'],
    isJoined: json['is_joined'],
    needRejoin: json['need_rejoin'],
    canBeManaged: json['can_be_managed'],
    participantCount: json['participant_count'],
    loadedAllParticipants: json['loaded_all_participants'],
    recentSpeakers: (json['recent_speakers'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as GroupCallRecentSpeaker).toList(growable: false),
    muteNewParticipants: json['mute_new_participants'],
    canChangeMuteNewParticipants: json['can_change_mute_new_participants'],
    recordDuration: json['record_duration'],
    duration: json['duration'],
  );
}

/// Describes a payload fingerprint for interaction with tgcalls
class GroupCallPayloadFingerprint extends a.GroupCallPayloadFingerprint {
  /// Value of the field hash
  final String hash;
  /// Value of the field setup
  final String setup;
  /// Value of the field fingerprint
  final String fingerprint;

  GroupCallPayloadFingerprint({
    required this.hash,
    required this.setup,
    required this.fingerprint,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'groupCallPayloadFingerprint',
    'hash': hash,
    'setup': setup,
    'fingerprint': fingerprint,
  };

  factory GroupCallPayloadFingerprint.fromJson(Map<String, dynamic> json) => GroupCallPayloadFingerprint(
    hash: json['hash'],
    setup: json['setup'],
    fingerprint: json['fingerprint'],
  );
}

/// Describes a payload for interaction with tgcalls
class GroupCallPayload extends a.GroupCallPayload {
  /// Value of the field ufrag
  final String ufrag;
  /// Value of the field pwd
  final String pwd;
  /// The list of fingerprints
  final List<GroupCallPayloadFingerprint> fingerprints;

  GroupCallPayload({
    required this.ufrag,
    required this.pwd,
    required this.fingerprints,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'groupCallPayload',
    'ufrag': ufrag,
    'pwd': pwd,
    'fingerprints': fingerprints,
  };

  factory GroupCallPayload.fromJson(Map<String, dynamic> json) => GroupCallPayload(
    ufrag: json['ufrag'],
    pwd: json['pwd'],
    fingerprints: (json['fingerprints'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as GroupCallPayloadFingerprint).toList(growable: false),
  );
}

/// Describes a join response candidate for interaction with tgcalls
class GroupCallJoinResponseCandidate extends a.GroupCallJoinResponseCandidate {
  /// Value of the field port
  final String port;
  /// Value of the field protocol
  final String protocol;
  /// Value of the field network
  final String network;
  /// Value of the field generation
  final String generation;
  /// Value of the field id
  final String id;
  /// Value of the field component
  final String component;
  /// Value of the field foundation
  final String foundation;
  /// Value of the field priority
  final String priority;
  /// Value of the field ip
  final String ip;
  /// Value of the field type
  final String type;
  /// Value of the field tcp_type
  final String tcpType;
  /// Value of the field rel_addr
  final String relAddr;
  /// Value of the field rel_port
  final String relPort;

  GroupCallJoinResponseCandidate({
    required this.port,
    required this.protocol,
    required this.network,
    required this.generation,
    required this.id,
    required this.component,
    required this.foundation,
    required this.priority,
    required this.ip,
    required this.type,
    required this.tcpType,
    required this.relAddr,
    required this.relPort,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'groupCallJoinResponseCandidate',
    'port': port,
    'protocol': protocol,
    'network': network,
    'generation': generation,
    'id': id,
    'component': component,
    'foundation': foundation,
    'priority': priority,
    'ip': ip,
    'type': type,
    'tcp_type': tcpType,
    'rel_addr': relAddr,
    'rel_port': relPort,
  };

  factory GroupCallJoinResponseCandidate.fromJson(Map<String, dynamic> json) => GroupCallJoinResponseCandidate(
    port: json['port'],
    protocol: json['protocol'],
    network: json['network'],
    generation: json['generation'],
    id: json['id'],
    component: json['component'],
    foundation: json['foundation'],
    priority: json['priority'],
    ip: json['ip'],
    type: json['type'],
    tcpType: json['tcp_type'],
    relAddr: json['rel_addr'],
    relPort: json['rel_port'],
  );
}

/// Contains data needed to join the group call with WebRTC
class GroupCallJoinResponseWebrtc extends a.GroupCallJoinResponse {
  /// Group call payload to pass to tgcalls
  final GroupCallPayload payload;
  /// Join response candidates to pass to tgcalls
  final List<GroupCallJoinResponseCandidate> candidates;

  GroupCallJoinResponseWebrtc({
    required this.payload,
    required this.candidates,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'groupCallJoinResponseWebrtc',
    'payload': payload,
    'candidates': candidates,
  };

  factory GroupCallJoinResponseWebrtc.fromJson(Map<String, dynamic> json) => GroupCallJoinResponseWebrtc(
    payload: b.TdBase.fromJson(json['payload']) as GroupCallPayload,
    candidates: (json['candidates'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as GroupCallJoinResponseCandidate).toList(growable: false),
  );
}

/// Describes that group call needs to be joined as a stream
class GroupCallJoinResponseStream extends a.GroupCallJoinResponse {
  GroupCallJoinResponseStream();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'groupCallJoinResponseStream',
  };

  factory GroupCallJoinResponseStream.fromJson(Map<String, dynamic> json) => GroupCallJoinResponseStream(
  );
}

/// Represents a group call participant
class GroupCallParticipant extends a.GroupCallParticipant {
  /// Identifier of the group call participant
  final a.MessageSender participantId;
  /// User's synchronization source
  final int source;
  /// The participant user's bio or the participant chat's description
  final String bio;
  /// True, if the participant is the current user
  final bool isCurrentUser;
  /// True, if the participant is speaking as set by setGroupCallParticipantIsSpeaking
  final bool isSpeaking;
  /// True, if the participant hand is raised
  final bool isHandRaised;
  /// True, if the current user can mute the participant for all other group call participants
  final bool canBeMutedForAllUsers;
  /// True, if the current user can allow the participant to unmute themself or unmute the participant (if the participant is the current user)
  final bool canBeUnmutedForAllUsers;
  /// True, if the current user can mute the participant only for self
  final bool canBeMutedForCurrentUser;
  /// True, if the current user can unmute the participant for self
  final bool canBeUnmutedForCurrentUser;
  /// True, if the participant is muted for all users
  final bool isMutedForAllUsers;
  /// True, if the participant is muted for the current user
  final bool isMutedForCurrentUser;
  /// True, if the participant is muted for all users, but can unmute themself
  final bool canUnmuteSelf;
  /// Participant's volume level; 1-20000 in hundreds of percents
  final int volumeLevel;
  /// User's order in the group call participant list. Orders must be compared lexicographically. The bigger is order, the higher is user in the list. If order is empty, the user must be removed from the participant list
  final String order;

  GroupCallParticipant({
    required this.participantId,
    required this.source,
    required this.bio,
    required this.isCurrentUser,
    required this.isSpeaking,
    required this.isHandRaised,
    required this.canBeMutedForAllUsers,
    required this.canBeUnmutedForAllUsers,
    required this.canBeMutedForCurrentUser,
    required this.canBeUnmutedForCurrentUser,
    required this.isMutedForAllUsers,
    required this.isMutedForCurrentUser,
    required this.canUnmuteSelf,
    required this.volumeLevel,
    required this.order,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'groupCallParticipant',
    'participant_id': participantId,
    'source': source,
    'bio': bio,
    'is_current_user': isCurrentUser,
    'is_speaking': isSpeaking,
    'is_hand_raised': isHandRaised,
    'can_be_muted_for_all_users': canBeMutedForAllUsers,
    'can_be_unmuted_for_all_users': canBeUnmutedForAllUsers,
    'can_be_muted_for_current_user': canBeMutedForCurrentUser,
    'can_be_unmuted_for_current_user': canBeUnmutedForCurrentUser,
    'is_muted_for_all_users': isMutedForAllUsers,
    'is_muted_for_current_user': isMutedForCurrentUser,
    'can_unmute_self': canUnmuteSelf,
    'volume_level': volumeLevel,
    'order': order,
  };

  factory GroupCallParticipant.fromJson(Map<String, dynamic> json) => GroupCallParticipant(
    participantId: b.TdBase.fromJson(json['participant_id']) as a.MessageSender,
    source: json['source'],
    bio: json['bio'],
    isCurrentUser: json['is_current_user'],
    isSpeaking: json['is_speaking'],
    isHandRaised: json['is_hand_raised'],
    canBeMutedForAllUsers: json['can_be_muted_for_all_users'],
    canBeUnmutedForAllUsers: json['can_be_unmuted_for_all_users'],
    canBeMutedForCurrentUser: json['can_be_muted_for_current_user'],
    canBeUnmutedForCurrentUser: json['can_be_unmuted_for_current_user'],
    isMutedForAllUsers: json['is_muted_for_all_users'],
    isMutedForCurrentUser: json['is_muted_for_current_user'],
    canUnmuteSelf: json['can_unmute_self'],
    volumeLevel: json['volume_level'],
    order: json['order'],
  );
}

/// The user heard their own voice
class CallProblemEcho extends a.CallProblem {
  CallProblemEcho();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callProblemEcho',
  };

  factory CallProblemEcho.fromJson(Map<String, dynamic> json) => CallProblemEcho(
  );
}

/// The user heard background noise
class CallProblemNoise extends a.CallProblem {
  CallProblemNoise();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callProblemNoise',
  };

  factory CallProblemNoise.fromJson(Map<String, dynamic> json) => CallProblemNoise(
  );
}

/// The other side kept disappearing
class CallProblemInterruptions extends a.CallProblem {
  CallProblemInterruptions();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callProblemInterruptions',
  };

  factory CallProblemInterruptions.fromJson(Map<String, dynamic> json) => CallProblemInterruptions(
  );
}

/// The speech was distorted
class CallProblemDistortedSpeech extends a.CallProblem {
  CallProblemDistortedSpeech();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callProblemDistortedSpeech',
  };

  factory CallProblemDistortedSpeech.fromJson(Map<String, dynamic> json) => CallProblemDistortedSpeech(
  );
}

/// The user couldn't hear the other side
class CallProblemSilentLocal extends a.CallProblem {
  CallProblemSilentLocal();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callProblemSilentLocal',
  };

  factory CallProblemSilentLocal.fromJson(Map<String, dynamic> json) => CallProblemSilentLocal(
  );
}

/// The other side couldn't hear the user
class CallProblemSilentRemote extends a.CallProblem {
  CallProblemSilentRemote();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callProblemSilentRemote',
  };

  factory CallProblemSilentRemote.fromJson(Map<String, dynamic> json) => CallProblemSilentRemote(
  );
}

/// The call ended unexpectedly
class CallProblemDropped extends a.CallProblem {
  CallProblemDropped();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callProblemDropped',
  };

  factory CallProblemDropped.fromJson(Map<String, dynamic> json) => CallProblemDropped(
  );
}

/// The video was distorted
class CallProblemDistortedVideo extends a.CallProblem {
  CallProblemDistortedVideo();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callProblemDistortedVideo',
  };

  factory CallProblemDistortedVideo.fromJson(Map<String, dynamic> json) => CallProblemDistortedVideo(
  );
}

/// The video was pixelated
class CallProblemPixelatedVideo extends a.CallProblem {
  CallProblemPixelatedVideo();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callProblemPixelatedVideo',
  };

  factory CallProblemPixelatedVideo.fromJson(Map<String, dynamic> json) => CallProblemPixelatedVideo(
  );
}

/// Describes a call
class Call extends a.Call {
  /// Call identifier, not persistent
  final int id;
  /// Peer user identifier
  final int userId;
  /// True, if the call is outgoing
  final bool isOutgoing;
  /// True, if the call is a video call
  final bool isVideo;
  /// Call state
  final a.CallState state;

  Call({
    required this.id,
    required this.userId,
    required this.isOutgoing,
    required this.isVideo,
    required this.state,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'call',
    'id': id,
    'user_id': userId,
    'is_outgoing': isOutgoing,
    'is_video': isVideo,
    'state': state,
  };

  factory Call.fromJson(Map<String, dynamic> json) => Call(
    id: json['id'],
    userId: json['user_id'],
    isOutgoing: json['is_outgoing'],
    isVideo: json['is_video'],
    state: b.TdBase.fromJson(json['state']) as a.CallState,
  );
}

/// Contains settings for the authentication of the user's phone number
class PhoneNumberAuthenticationSettings extends a.PhoneNumberAuthenticationSettings {
  /// Pass true if the authentication code may be sent via flash call to the specified phone number
  final bool allowFlashCall;
  /// Pass true if the authenticated phone number is used on the current device
  final bool isCurrentPhoneNumber;
  /// For official applications only. True, if the application can use Android SMS Retriever API (requires Google Play Services >= 10.2) to automatically receive the authentication code from the SMS. See https://developers.google.com/identity/sms-retriever/ for more details
  final bool allowSmsRetrieverApi;

  PhoneNumberAuthenticationSettings({
    required this.allowFlashCall,
    required this.isCurrentPhoneNumber,
    required this.allowSmsRetrieverApi,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'phoneNumberAuthenticationSettings',
    'allow_flash_call': allowFlashCall,
    'is_current_phone_number': isCurrentPhoneNumber,
    'allow_sms_retriever_api': allowSmsRetrieverApi,
  };

  factory PhoneNumberAuthenticationSettings.fromJson(Map<String, dynamic> json) => PhoneNumberAuthenticationSettings(
    allowFlashCall: json['allow_flash_call'],
    isCurrentPhoneNumber: json['is_current_phone_number'],
    allowSmsRetrieverApi: json['allow_sms_retriever_api'],
  );
}

/// Represents a list of animations
class Animations extends a.Animations {
  /// List of animations
  final List<Animation> animations;

  Animations({
    required this.animations,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'animations',
    'animations': animations,
  };

  factory Animations.fromJson(Map<String, dynamic> json) => Animations(
    animations: (json['animations'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as Animation).toList(growable: false),
  );
}

/// A regular animated sticker
class DiceStickersRegular extends a.DiceStickers {
  /// The animated sticker with the dice animation
  final Sticker sticker;

  DiceStickersRegular({
    required this.sticker,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'diceStickersRegular',
    'sticker': sticker,
  };

  factory DiceStickersRegular.fromJson(Map<String, dynamic> json) => DiceStickersRegular(
    sticker: b.TdBase.fromJson(json['sticker']) as Sticker,
  );
}

/// Animated stickers to be combined into a slot machine
class DiceStickersSlotMachine extends a.DiceStickers {
  /// The animated sticker with the slot machine background. The background animation must start playing after all reel animations finish
  final Sticker background;
  /// The animated sticker with the lever animation. The lever animation must play once in the initial dice state
  final Sticker lever;
  /// The animated sticker with the left reel
  final Sticker leftReel;
  /// The animated sticker with the center reel
  final Sticker centerReel;
  /// The animated sticker with the right reel
  final Sticker rightReel;

  DiceStickersSlotMachine({
    required this.background,
    required this.lever,
    required this.leftReel,
    required this.centerReel,
    required this.rightReel,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'diceStickersSlotMachine',
    'background': background,
    'lever': lever,
    'left_reel': leftReel,
    'center_reel': centerReel,
    'right_reel': rightReel,
  };

  factory DiceStickersSlotMachine.fromJson(Map<String, dynamic> json) => DiceStickersSlotMachine(
    background: b.TdBase.fromJson(json['background']) as Sticker,
    lever: b.TdBase.fromJson(json['lever']) as Sticker,
    leftReel: b.TdBase.fromJson(json['left_reel']) as Sticker,
    centerReel: b.TdBase.fromJson(json['center_reel']) as Sticker,
    rightReel: b.TdBase.fromJson(json['right_reel']) as Sticker,
  );
}

/// Represents the result of an ImportContacts request
class ImportedContacts extends a.ImportedContacts {
  /// User identifiers of the imported contacts in the same order as they were specified in the request; 0 if the contact is not yet a registered user
  final List<int> userIds;
  /// The number of users that imported the corresponding contact; 0 for already registered users or if unavailable
  final List<int> importerCount;

  ImportedContacts({
    required this.userIds,
    required this.importerCount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'importedContacts',
    'user_ids': userIds,
    'importer_count': importerCount,
  };

  factory ImportedContacts.fromJson(Map<String, dynamic> json) => ImportedContacts(
    userIds: (json['user_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
    importerCount: (json['importer_count'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// Contains an HTTP URL
class HttpUrl extends a.HttpUrl {
  /// The URL
  final String url;

  HttpUrl({
    required this.url,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'httpUrl',
    'url': url,
  };

  factory HttpUrl.fromJson(Map<String, dynamic> json) => HttpUrl(
    url: json['url'],
  );
}

/// Represents a link to an animated GIF or an animated (i.e. without sound) H.264/MPEG-4 AVC video
class InputInlineQueryResultAnimation extends a.InputInlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Title of the query result
  final String title;
  /// URL of the result thumbnail (JPEG, GIF, or MPEG4), if it exists
  final String thumbnailUrl;
  /// MIME type of the video thumbnail. If non-empty, must be one of "image/jpeg", "image/gif" and "video/mp4"
  final String thumbnailMimeType;
  /// The URL of the video file (file size must not exceed 1MB)
  final String videoUrl;
  /// MIME type of the video file. Must be one of "image/gif" and "video/mp4"
  final String videoMimeType;
  /// Duration of the video, in seconds
  final int videoDuration;
  /// Width of the video
  final int videoWidth;
  /// Height of the video
  final int videoHeight;
  /// The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final a.ReplyMarkup replyMarkup;
  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final a.InputMessageContent inputMessageContent;

  InputInlineQueryResultAnimation({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.thumbnailMimeType,
    required this.videoUrl,
    required this.videoMimeType,
    required this.videoDuration,
    required this.videoWidth,
    required this.videoHeight,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputInlineQueryResultAnimation',
    'id': id,
    'title': title,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_mime_type': thumbnailMimeType,
    'video_url': videoUrl,
    'video_mime_type': videoMimeType,
    'video_duration': videoDuration,
    'video_width': videoWidth,
    'video_height': videoHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  factory InputInlineQueryResultAnimation.fromJson(Map<String, dynamic> json) => InputInlineQueryResultAnimation(
    id: json['id'],
    title: json['title'],
    thumbnailUrl: json['thumbnail_url'],
    thumbnailMimeType: json['thumbnail_mime_type'],
    videoUrl: json['video_url'],
    videoMimeType: json['video_mime_type'],
    videoDuration: json['video_duration'],
    videoWidth: json['video_width'],
    videoHeight: json['video_height'],
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent,
  );
}

/// Represents a link to an article or web page
class InputInlineQueryResultArticle extends a.InputInlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// URL of the result, if it exists
  final String url;
  /// True, if the URL must be not shown
  final bool hideUrl;
  /// Title of the result
  final String title;
  /// A short description of the result
  final String description;
  /// URL of the result thumbnail, if it exists
  final String thumbnailUrl;
  /// Thumbnail width, if known
  final int thumbnailWidth;
  /// Thumbnail height, if known
  final int thumbnailHeight;
  /// The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final a.ReplyMarkup replyMarkup;
  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final a.InputMessageContent inputMessageContent;

  InputInlineQueryResultArticle({
    required this.id,
    required this.url,
    required this.hideUrl,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputInlineQueryResultArticle',
    'id': id,
    'url': url,
    'hide_url': hideUrl,
    'title': title,
    'description': description,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  factory InputInlineQueryResultArticle.fromJson(Map<String, dynamic> json) => InputInlineQueryResultArticle(
    id: json['id'],
    url: json['url'],
    hideUrl: json['hide_url'],
    title: json['title'],
    description: json['description'],
    thumbnailUrl: json['thumbnail_url'],
    thumbnailWidth: json['thumbnail_width'],
    thumbnailHeight: json['thumbnail_height'],
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent,
  );
}

/// Represents a link to an MP3 audio file
class InputInlineQueryResultAudio extends a.InputInlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Title of the audio file
  final String title;
  /// Performer of the audio file
  final String performer;
  /// The URL of the audio file
  final String audioUrl;
  /// Audio file duration, in seconds
  final int audioDuration;
  /// The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final a.ReplyMarkup replyMarkup;
  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAudio, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final a.InputMessageContent inputMessageContent;

  InputInlineQueryResultAudio({
    required this.id,
    required this.title,
    required this.performer,
    required this.audioUrl,
    required this.audioDuration,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputInlineQueryResultAudio',
    'id': id,
    'title': title,
    'performer': performer,
    'audio_url': audioUrl,
    'audio_duration': audioDuration,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  factory InputInlineQueryResultAudio.fromJson(Map<String, dynamic> json) => InputInlineQueryResultAudio(
    id: json['id'],
    title: json['title'],
    performer: json['performer'],
    audioUrl: json['audio_url'],
    audioDuration: json['audio_duration'],
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent,
  );
}

/// Represents a user contact
class InputInlineQueryResultContact extends a.InputInlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// User contact
  final Contact contact;
  /// URL of the result thumbnail, if it exists
  final String thumbnailUrl;
  /// Thumbnail width, if known
  final int thumbnailWidth;
  /// Thumbnail height, if known
  final int thumbnailHeight;
  /// The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final a.ReplyMarkup replyMarkup;
  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final a.InputMessageContent inputMessageContent;

  InputInlineQueryResultContact({
    required this.id,
    required this.contact,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputInlineQueryResultContact',
    'id': id,
    'contact': contact,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  factory InputInlineQueryResultContact.fromJson(Map<String, dynamic> json) => InputInlineQueryResultContact(
    id: json['id'],
    contact: b.TdBase.fromJson(json['contact']) as Contact,
    thumbnailUrl: json['thumbnail_url'],
    thumbnailWidth: json['thumbnail_width'],
    thumbnailHeight: json['thumbnail_height'],
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent,
  );
}

/// Represents a link to a file
class InputInlineQueryResultDocument extends a.InputInlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Title of the resulting file
  final String title;
  /// Short description of the result, if known
  final String description;
  /// URL of the file
  final String documentUrl;
  /// MIME type of the file content; only "application/pdf" and "application/zip" are currently allowed
  final String mimeType;
  /// The URL of the file thumbnail, if it exists
  final String thumbnailUrl;
  /// Width of the thumbnail
  final int thumbnailWidth;
  /// Height of the thumbnail
  final int thumbnailHeight;
  /// The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final a.ReplyMarkup replyMarkup;
  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageDocument, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final a.InputMessageContent inputMessageContent;

  InputInlineQueryResultDocument({
    required this.id,
    required this.title,
    required this.description,
    required this.documentUrl,
    required this.mimeType,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputInlineQueryResultDocument',
    'id': id,
    'title': title,
    'description': description,
    'document_url': documentUrl,
    'mime_type': mimeType,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  factory InputInlineQueryResultDocument.fromJson(Map<String, dynamic> json) => InputInlineQueryResultDocument(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    documentUrl: json['document_url'],
    mimeType: json['mime_type'],
    thumbnailUrl: json['thumbnail_url'],
    thumbnailWidth: json['thumbnail_width'],
    thumbnailHeight: json['thumbnail_height'],
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent,
  );
}

/// Represents a game
class InputInlineQueryResultGame extends a.InputInlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Short name of the game
  final String gameShortName;
  /// Message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final a.ReplyMarkup replyMarkup;

  InputInlineQueryResultGame({
    required this.id,
    required this.gameShortName,
    required this.replyMarkup,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputInlineQueryResultGame',
    'id': id,
    'game_short_name': gameShortName,
    'reply_markup': replyMarkup,
  };

  factory InputInlineQueryResultGame.fromJson(Map<String, dynamic> json) => InputInlineQueryResultGame(
    id: json['id'],
    gameShortName: json['game_short_name'],
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup,
  );
}

/// Represents a point on the map
class InputInlineQueryResultLocation extends a.InputInlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Location result
  final Location location;
  /// Amount of time relative to the message sent time until the location can be updated, in seconds
  final int livePeriod;
  /// Title of the result
  final String title;
  /// URL of the result thumbnail, if it exists
  final String thumbnailUrl;
  /// Thumbnail width, if known
  final int thumbnailWidth;
  /// Thumbnail height, if known
  final int thumbnailHeight;
  /// The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final a.ReplyMarkup replyMarkup;
  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final a.InputMessageContent inputMessageContent;

  InputInlineQueryResultLocation({
    required this.id,
    required this.location,
    required this.livePeriod,
    required this.title,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputInlineQueryResultLocation',
    'id': id,
    'location': location,
    'live_period': livePeriod,
    'title': title,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  factory InputInlineQueryResultLocation.fromJson(Map<String, dynamic> json) => InputInlineQueryResultLocation(
    id: json['id'],
    location: b.TdBase.fromJson(json['location']) as Location,
    livePeriod: json['live_period'],
    title: json['title'],
    thumbnailUrl: json['thumbnail_url'],
    thumbnailWidth: json['thumbnail_width'],
    thumbnailHeight: json['thumbnail_height'],
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent,
  );
}

/// Represents link to a JPEG image
class InputInlineQueryResultPhoto extends a.InputInlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Title of the result, if known
  final String title;
  /// A short description of the result, if known
  final String description;
  /// URL of the photo thumbnail, if it exists
  final String thumbnailUrl;
  /// The URL of the JPEG photo (photo size must not exceed 5MB)
  final String photoUrl;
  /// Width of the photo
  final int photoWidth;
  /// Height of the photo
  final int photoHeight;
  /// The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final a.ReplyMarkup replyMarkup;
  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessagePhoto, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final a.InputMessageContent inputMessageContent;

  InputInlineQueryResultPhoto({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.photoUrl,
    required this.photoWidth,
    required this.photoHeight,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputInlineQueryResultPhoto',
    'id': id,
    'title': title,
    'description': description,
    'thumbnail_url': thumbnailUrl,
    'photo_url': photoUrl,
    'photo_width': photoWidth,
    'photo_height': photoHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  factory InputInlineQueryResultPhoto.fromJson(Map<String, dynamic> json) => InputInlineQueryResultPhoto(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    thumbnailUrl: json['thumbnail_url'],
    photoUrl: json['photo_url'],
    photoWidth: json['photo_width'],
    photoHeight: json['photo_height'],
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent,
  );
}

/// Represents a link to a WEBP or TGS sticker
class InputInlineQueryResultSticker extends a.InputInlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// URL of the sticker thumbnail, if it exists
  final String thumbnailUrl;
  /// The URL of the WEBP or TGS sticker (sticker file size must not exceed 5MB)
  final String stickerUrl;
  /// Width of the sticker
  final int stickerWidth;
  /// Height of the sticker
  final int stickerHeight;
  /// The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final a.ReplyMarkup replyMarkup;
  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageSticker, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final a.InputMessageContent inputMessageContent;

  InputInlineQueryResultSticker({
    required this.id,
    required this.thumbnailUrl,
    required this.stickerUrl,
    required this.stickerWidth,
    required this.stickerHeight,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputInlineQueryResultSticker',
    'id': id,
    'thumbnail_url': thumbnailUrl,
    'sticker_url': stickerUrl,
    'sticker_width': stickerWidth,
    'sticker_height': stickerHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  factory InputInlineQueryResultSticker.fromJson(Map<String, dynamic> json) => InputInlineQueryResultSticker(
    id: json['id'],
    thumbnailUrl: json['thumbnail_url'],
    stickerUrl: json['sticker_url'],
    stickerWidth: json['sticker_width'],
    stickerHeight: json['sticker_height'],
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent,
  );
}

/// Represents information about a venue
class InputInlineQueryResultVenue extends a.InputInlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Venue result
  final Venue venue;
  /// URL of the result thumbnail, if it exists
  final String thumbnailUrl;
  /// Thumbnail width, if known
  final int thumbnailWidth;
  /// Thumbnail height, if known
  final int thumbnailHeight;
  /// The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final a.ReplyMarkup replyMarkup;
  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final a.InputMessageContent inputMessageContent;

  InputInlineQueryResultVenue({
    required this.id,
    required this.venue,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputInlineQueryResultVenue',
    'id': id,
    'venue': venue,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  factory InputInlineQueryResultVenue.fromJson(Map<String, dynamic> json) => InputInlineQueryResultVenue(
    id: json['id'],
    venue: b.TdBase.fromJson(json['venue']) as Venue,
    thumbnailUrl: json['thumbnail_url'],
    thumbnailWidth: json['thumbnail_width'],
    thumbnailHeight: json['thumbnail_height'],
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent,
  );
}

/// Represents a link to a page containing an embedded video player or a video file
class InputInlineQueryResultVideo extends a.InputInlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Title of the result
  final String title;
  /// A short description of the result, if known
  final String description;
  /// The URL of the video thumbnail (JPEG), if it exists
  final String thumbnailUrl;
  /// URL of the embedded video player or video file
  final String videoUrl;
  /// MIME type of the content of the video URL, only "text/html" or "video/mp4" are currently supported
  final String mimeType;
  /// Width of the video
  final int videoWidth;
  /// Height of the video
  final int videoHeight;
  /// Video duration, in seconds
  final int videoDuration;
  /// The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final a.ReplyMarkup replyMarkup;
  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageVideo, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final a.InputMessageContent inputMessageContent;

  InputInlineQueryResultVideo({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.videoUrl,
    required this.mimeType,
    required this.videoWidth,
    required this.videoHeight,
    required this.videoDuration,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputInlineQueryResultVideo',
    'id': id,
    'title': title,
    'description': description,
    'thumbnail_url': thumbnailUrl,
    'video_url': videoUrl,
    'mime_type': mimeType,
    'video_width': videoWidth,
    'video_height': videoHeight,
    'video_duration': videoDuration,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  factory InputInlineQueryResultVideo.fromJson(Map<String, dynamic> json) => InputInlineQueryResultVideo(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    thumbnailUrl: json['thumbnail_url'],
    videoUrl: json['video_url'],
    mimeType: json['mime_type'],
    videoWidth: json['video_width'],
    videoHeight: json['video_height'],
    videoDuration: json['video_duration'],
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent,
  );
}

/// Represents a link to an opus-encoded audio file within an OGG container, single channel audio
class InputInlineQueryResultVoiceNote extends a.InputInlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Title of the voice note
  final String title;
  /// The URL of the voice note file
  final String voiceNoteUrl;
  /// Duration of the voice note, in seconds
  final int voiceNoteDuration;
  /// The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final a.ReplyMarkup replyMarkup;
  /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageVoiceNote, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final a.InputMessageContent inputMessageContent;

  InputInlineQueryResultVoiceNote({
    required this.id,
    required this.title,
    required this.voiceNoteUrl,
    required this.voiceNoteDuration,
    required this.replyMarkup,
    required this.inputMessageContent,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputInlineQueryResultVoiceNote',
    'id': id,
    'title': title,
    'voice_note_url': voiceNoteUrl,
    'voice_note_duration': voiceNoteDuration,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  factory InputInlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json) => InputInlineQueryResultVoiceNote(
    id: json['id'],
    title: json['title'],
    voiceNoteUrl: json['voice_note_url'],
    voiceNoteDuration: json['voice_note_duration'],
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup,
    inputMessageContent: b.TdBase.fromJson(json['input_message_content']) as a.InputMessageContent,
  );
}

/// Represents a link to an article or web page
class InlineQueryResultArticle extends a.InlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// URL of the result, if it exists
  final String url;
  /// True, if the URL must be not shown
  final bool hideUrl;
  /// Title of the result
  final String title;
  /// A short description of the result
  final String description;
  /// Result thumbnail in JPEG format; may be null
  final Thumbnail thumbnail;

  InlineQueryResultArticle({
    required this.id,
    required this.url,
    required this.hideUrl,
    required this.title,
    required this.description,
    required this.thumbnail,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineQueryResultArticle',
    'id': id,
    'url': url,
    'hide_url': hideUrl,
    'title': title,
    'description': description,
    'thumbnail': thumbnail,
  };

  factory InlineQueryResultArticle.fromJson(Map<String, dynamic> json) => InlineQueryResultArticle(
    id: json['id'],
    url: json['url'],
    hideUrl: json['hide_url'],
    title: json['title'],
    description: json['description'],
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as Thumbnail,
  );
}

/// Represents a user contact
class InlineQueryResultContact extends a.InlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// A user contact
  final Contact contact;
  /// Result thumbnail in JPEG format; may be null
  final Thumbnail thumbnail;

  InlineQueryResultContact({
    required this.id,
    required this.contact,
    required this.thumbnail,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineQueryResultContact',
    'id': id,
    'contact': contact,
    'thumbnail': thumbnail,
  };

  factory InlineQueryResultContact.fromJson(Map<String, dynamic> json) => InlineQueryResultContact(
    id: json['id'],
    contact: b.TdBase.fromJson(json['contact']) as Contact,
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as Thumbnail,
  );
}

/// Represents a point on the map
class InlineQueryResultLocation extends a.InlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Location result
  final Location location;
  /// Title of the result
  final String title;
  /// Result thumbnail in JPEG format; may be null
  final Thumbnail thumbnail;

  InlineQueryResultLocation({
    required this.id,
    required this.location,
    required this.title,
    required this.thumbnail,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineQueryResultLocation',
    'id': id,
    'location': location,
    'title': title,
    'thumbnail': thumbnail,
  };

  factory InlineQueryResultLocation.fromJson(Map<String, dynamic> json) => InlineQueryResultLocation(
    id: json['id'],
    location: b.TdBase.fromJson(json['location']) as Location,
    title: json['title'],
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as Thumbnail,
  );
}

/// Represents information about a venue
class InlineQueryResultVenue extends a.InlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Venue result
  final Venue venue;
  /// Result thumbnail in JPEG format; may be null
  final Thumbnail thumbnail;

  InlineQueryResultVenue({
    required this.id,
    required this.venue,
    required this.thumbnail,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineQueryResultVenue',
    'id': id,
    'venue': venue,
    'thumbnail': thumbnail,
  };

  factory InlineQueryResultVenue.fromJson(Map<String, dynamic> json) => InlineQueryResultVenue(
    id: json['id'],
    venue: b.TdBase.fromJson(json['venue']) as Venue,
    thumbnail: b.TdBase.fromJson(json['thumbnail']) as Thumbnail,
  );
}

/// Represents information about a game
class InlineQueryResultGame extends a.InlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Game result
  final Game game;

  InlineQueryResultGame({
    required this.id,
    required this.game,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineQueryResultGame',
    'id': id,
    'game': game,
  };

  factory InlineQueryResultGame.fromJson(Map<String, dynamic> json) => InlineQueryResultGame(
    id: json['id'],
    game: b.TdBase.fromJson(json['game']) as Game,
  );
}

/// Represents an animation file
class InlineQueryResultAnimation extends a.InlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Animation file
  final Animation animation;
  /// Animation title
  final String title;

  InlineQueryResultAnimation({
    required this.id,
    required this.animation,
    required this.title,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineQueryResultAnimation',
    'id': id,
    'animation': animation,
    'title': title,
  };

  factory InlineQueryResultAnimation.fromJson(Map<String, dynamic> json) => InlineQueryResultAnimation(
    id: json['id'],
    animation: b.TdBase.fromJson(json['animation']) as Animation,
    title: json['title'],
  );
}

/// Represents an audio file
class InlineQueryResultAudio extends a.InlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Audio file
  final Audio audio;

  InlineQueryResultAudio({
    required this.id,
    required this.audio,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineQueryResultAudio',
    'id': id,
    'audio': audio,
  };

  factory InlineQueryResultAudio.fromJson(Map<String, dynamic> json) => InlineQueryResultAudio(
    id: json['id'],
    audio: b.TdBase.fromJson(json['audio']) as Audio,
  );
}

/// Represents a document
class InlineQueryResultDocument extends a.InlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Document
  final Document document;
  /// Document title
  final String title;
  /// Document description
  final String description;

  InlineQueryResultDocument({
    required this.id,
    required this.document,
    required this.title,
    required this.description,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineQueryResultDocument',
    'id': id,
    'document': document,
    'title': title,
    'description': description,
  };

  factory InlineQueryResultDocument.fromJson(Map<String, dynamic> json) => InlineQueryResultDocument(
    id: json['id'],
    document: b.TdBase.fromJson(json['document']) as Document,
    title: json['title'],
    description: json['description'],
  );
}

/// Represents a photo
class InlineQueryResultPhoto extends a.InlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Photo
  final Photo photo;
  /// Title of the result, if known
  final String title;
  /// A short description of the result, if known
  final String description;

  InlineQueryResultPhoto({
    required this.id,
    required this.photo,
    required this.title,
    required this.description,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineQueryResultPhoto',
    'id': id,
    'photo': photo,
    'title': title,
    'description': description,
  };

  factory InlineQueryResultPhoto.fromJson(Map<String, dynamic> json) => InlineQueryResultPhoto(
    id: json['id'],
    photo: b.TdBase.fromJson(json['photo']) as Photo,
    title: json['title'],
    description: json['description'],
  );
}

/// Represents a sticker
class InlineQueryResultSticker extends a.InlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Sticker
  final Sticker sticker;

  InlineQueryResultSticker({
    required this.id,
    required this.sticker,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineQueryResultSticker',
    'id': id,
    'sticker': sticker,
  };

  factory InlineQueryResultSticker.fromJson(Map<String, dynamic> json) => InlineQueryResultSticker(
    id: json['id'],
    sticker: b.TdBase.fromJson(json['sticker']) as Sticker,
  );
}

/// Represents a video
class InlineQueryResultVideo extends a.InlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Video
  final Video video;
  /// Title of the video
  final String title;
  /// Description of the video
  final String description;

  InlineQueryResultVideo({
    required this.id,
    required this.video,
    required this.title,
    required this.description,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineQueryResultVideo',
    'id': id,
    'video': video,
    'title': title,
    'description': description,
  };

  factory InlineQueryResultVideo.fromJson(Map<String, dynamic> json) => InlineQueryResultVideo(
    id: json['id'],
    video: b.TdBase.fromJson(json['video']) as Video,
    title: json['title'],
    description: json['description'],
  );
}

/// Represents a voice note
class InlineQueryResultVoiceNote extends a.InlineQueryResult {
  /// Unique identifier of the query result
  final String id;
  /// Voice note
  final VoiceNote voiceNote;
  /// Title of the voice note
  final String title;

  InlineQueryResultVoiceNote({
    required this.id,
    required this.voiceNote,
    required this.title,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineQueryResultVoiceNote',
    'id': id,
    'voice_note': voiceNote,
    'title': title,
  };

  factory InlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json) => InlineQueryResultVoiceNote(
    id: json['id'],
    voiceNote: b.TdBase.fromJson(json['voice_note']) as VoiceNote,
    title: json['title'],
  );
}

/// Represents the results of the inline query. Use sendInlineQueryResultMessage to send the result of the query
class InlineQueryResults extends a.InlineQueryResults {
  /// Unique identifier of the inline query
  final int inlineQueryId;
  /// The offset for the next request. If empty, there are no more results
  final String nextOffset;
  /// Results of the query
  final List<a.InlineQueryResult> results;
  /// If non-empty, this text should be shown on the button, which opens a private chat with the bot and sends the bot a start message with the switch_pm_parameter
  final String switchPmText;
  /// Parameter for the bot start message
  final String switchPmParameter;

  InlineQueryResults({
    required this.inlineQueryId,
    required this.nextOffset,
    required this.results,
    required this.switchPmText,
    required this.switchPmParameter,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inlineQueryResults',
    'inline_query_id': inlineQueryId,
    'next_offset': nextOffset,
    'results': results,
    'switch_pm_text': switchPmText,
    'switch_pm_parameter': switchPmParameter,
  };

  factory InlineQueryResults.fromJson(Map<String, dynamic> json) => InlineQueryResults(
    inlineQueryId: int.parse(json['inline_query_id']),
    nextOffset: json['next_offset'],
    results: (json['results'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.InlineQueryResult).toList(growable: false),
    switchPmText: json['switch_pm_text'],
    switchPmParameter: json['switch_pm_parameter'],
  );
}

/// The payload for a general callback button
class CallbackQueryPayloadData extends a.CallbackQueryPayload {
  /// Data that was attached to the callback button
  final Uint8List data;

  CallbackQueryPayloadData({
    required this.data,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callbackQueryPayloadData',
    'data': data,
  };

  factory CallbackQueryPayloadData.fromJson(Map<String, dynamic> json) => CallbackQueryPayloadData(
    data: base64.decode(json['data']),
  );
}

/// The payload for a callback button requiring password
class CallbackQueryPayloadDataWithPassword extends a.CallbackQueryPayload {
  /// The password for the current user
  final String password;
  /// Data that was attached to the callback button
  final Uint8List data;

  CallbackQueryPayloadDataWithPassword({
    required this.password,
    required this.data,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callbackQueryPayloadDataWithPassword',
    'password': password,
    'data': data,
  };

  factory CallbackQueryPayloadDataWithPassword.fromJson(Map<String, dynamic> json) => CallbackQueryPayloadDataWithPassword(
    password: json['password'],
    data: base64.decode(json['data']),
  );
}

/// The payload for a game callback button
class CallbackQueryPayloadGame extends a.CallbackQueryPayload {
  /// A short name of the game that was attached to the callback button
  final String gameShortName;

  CallbackQueryPayloadGame({
    required this.gameShortName,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callbackQueryPayloadGame',
    'game_short_name': gameShortName,
  };

  factory CallbackQueryPayloadGame.fromJson(Map<String, dynamic> json) => CallbackQueryPayloadGame(
    gameShortName: json['game_short_name'],
  );
}

/// Contains a bot's answer to a callback query
class CallbackQueryAnswer extends a.CallbackQueryAnswer {
  /// Text of the answer
  final String text;
  /// True, if an alert should be shown to the user instead of a toast notification
  final bool showAlert;
  /// URL to be opened
  final String url;

  CallbackQueryAnswer({
    required this.text,
    required this.showAlert,
    required this.url,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'callbackQueryAnswer',
    'text': text,
    'show_alert': showAlert,
    'url': url,
  };

  factory CallbackQueryAnswer.fromJson(Map<String, dynamic> json) => CallbackQueryAnswer(
    text: json['text'],
    showAlert: json['show_alert'],
    url: json['url'],
  );
}

/// Contains the result of a custom request
class CustomRequestResult extends a.CustomRequestResult {
  /// A JSON-serialized result
  final String result;

  CustomRequestResult({
    required this.result,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'customRequestResult',
    'result': result,
  };

  factory CustomRequestResult.fromJson(Map<String, dynamic> json) => CustomRequestResult(
    result: json['result'],
  );
}

/// Contains one row of the game high score table
class GameHighScore extends a.GameHighScore {
  /// Position in the high score table
  final int position;
  /// User identifier
  final int userId;
  /// User score
  final int score;

  GameHighScore({
    required this.position,
    required this.userId,
    required this.score,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'gameHighScore',
    'position': position,
    'user_id': userId,
    'score': score,
  };

  factory GameHighScore.fromJson(Map<String, dynamic> json) => GameHighScore(
    position: json['position'],
    userId: json['user_id'],
    score: json['score'],
  );
}

/// Contains a list of game high scores
class GameHighScores extends a.GameHighScores {
  /// A list of game high scores
  final List<GameHighScore> scores;

  GameHighScores({
    required this.scores,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'gameHighScores',
    'scores': scores,
  };

  factory GameHighScores.fromJson(Map<String, dynamic> json) => GameHighScores(
    scores: (json['scores'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as GameHighScore).toList(growable: false),
  );
}

/// A message was edited
class ChatEventMessageEdited extends a.ChatEventAction {
  /// The original message before the edit
  final Message oldMessage;
  /// The message after it was edited
  final Message newMessage;

  ChatEventMessageEdited({
    required this.oldMessage,
    required this.newMessage,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventMessageEdited',
    'old_message': oldMessage,
    'new_message': newMessage,
  };

  factory ChatEventMessageEdited.fromJson(Map<String, dynamic> json) => ChatEventMessageEdited(
    oldMessage: b.TdBase.fromJson(json['old_message']) as Message,
    newMessage: b.TdBase.fromJson(json['new_message']) as Message,
  );
}

/// A message was deleted
class ChatEventMessageDeleted extends a.ChatEventAction {
  /// Deleted message
  final Message message;

  ChatEventMessageDeleted({
    required this.message,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventMessageDeleted',
    'message': message,
  };

  factory ChatEventMessageDeleted.fromJson(Map<String, dynamic> json) => ChatEventMessageDeleted(
    message: b.TdBase.fromJson(json['message']) as Message,
  );
}

/// A poll in a message was stopped
class ChatEventPollStopped extends a.ChatEventAction {
  /// The message with the poll
  final Message message;

  ChatEventPollStopped({
    required this.message,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventPollStopped',
    'message': message,
  };

  factory ChatEventPollStopped.fromJson(Map<String, dynamic> json) => ChatEventPollStopped(
    message: b.TdBase.fromJson(json['message']) as Message,
  );
}

/// A message was pinned
class ChatEventMessagePinned extends a.ChatEventAction {
  /// Pinned message
  final Message message;

  ChatEventMessagePinned({
    required this.message,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventMessagePinned',
    'message': message,
  };

  factory ChatEventMessagePinned.fromJson(Map<String, dynamic> json) => ChatEventMessagePinned(
    message: b.TdBase.fromJson(json['message']) as Message,
  );
}

/// A message was unpinned
class ChatEventMessageUnpinned extends a.ChatEventAction {
  /// Unpinned message
  final Message message;

  ChatEventMessageUnpinned({
    required this.message,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventMessageUnpinned',
    'message': message,
  };

  factory ChatEventMessageUnpinned.fromJson(Map<String, dynamic> json) => ChatEventMessageUnpinned(
    message: b.TdBase.fromJson(json['message']) as Message,
  );
}

/// A new member joined the chat
class ChatEventMemberJoined extends a.ChatEventAction {
  ChatEventMemberJoined();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventMemberJoined',
  };

  factory ChatEventMemberJoined.fromJson(Map<String, dynamic> json) => ChatEventMemberJoined(
  );
}

/// A new member joined the chat by an invite link
class ChatEventMemberJoinedByInviteLink extends a.ChatEventAction {
  /// Invite link used to join the chat
  final ChatInviteLink inviteLink;

  ChatEventMemberJoinedByInviteLink({
    required this.inviteLink,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventMemberJoinedByInviteLink',
    'invite_link': inviteLink,
  };

  factory ChatEventMemberJoinedByInviteLink.fromJson(Map<String, dynamic> json) => ChatEventMemberJoinedByInviteLink(
    inviteLink: b.TdBase.fromJson(json['invite_link']) as ChatInviteLink,
  );
}

/// A member left the chat
class ChatEventMemberLeft extends a.ChatEventAction {
  ChatEventMemberLeft();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventMemberLeft',
  };

  factory ChatEventMemberLeft.fromJson(Map<String, dynamic> json) => ChatEventMemberLeft(
  );
}

/// A new chat member was invited
class ChatEventMemberInvited extends a.ChatEventAction {
  /// New member user identifier
  final int userId;
  /// New member status
  final a.ChatMemberStatus status;

  ChatEventMemberInvited({
    required this.userId,
    required this.status,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventMemberInvited',
    'user_id': userId,
    'status': status,
  };

  factory ChatEventMemberInvited.fromJson(Map<String, dynamic> json) => ChatEventMemberInvited(
    userId: json['user_id'],
    status: b.TdBase.fromJson(json['status']) as a.ChatMemberStatus,
  );
}

/// A chat member has gained/lost administrator status, or the list of their administrator privileges has changed
class ChatEventMemberPromoted extends a.ChatEventAction {
  /// Affected chat member user identifier
  final int userId;
  /// Previous status of the chat member
  final a.ChatMemberStatus oldStatus;
  /// New status of the chat member
  final a.ChatMemberStatus newStatus;

  ChatEventMemberPromoted({
    required this.userId,
    required this.oldStatus,
    required this.newStatus,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventMemberPromoted',
    'user_id': userId,
    'old_status': oldStatus,
    'new_status': newStatus,
  };

  factory ChatEventMemberPromoted.fromJson(Map<String, dynamic> json) => ChatEventMemberPromoted(
    userId: json['user_id'],
    oldStatus: b.TdBase.fromJson(json['old_status']) as a.ChatMemberStatus,
    newStatus: b.TdBase.fromJson(json['new_status']) as a.ChatMemberStatus,
  );
}

/// A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed
class ChatEventMemberRestricted extends a.ChatEventAction {
  /// Affected chat member identifier
  final a.MessageSender memberId;
  /// Previous status of the chat member
  final a.ChatMemberStatus oldStatus;
  /// New status of the chat member
  final a.ChatMemberStatus newStatus;

  ChatEventMemberRestricted({
    required this.memberId,
    required this.oldStatus,
    required this.newStatus,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventMemberRestricted',
    'member_id': memberId,
    'old_status': oldStatus,
    'new_status': newStatus,
  };

  factory ChatEventMemberRestricted.fromJson(Map<String, dynamic> json) => ChatEventMemberRestricted(
    memberId: b.TdBase.fromJson(json['member_id']) as a.MessageSender,
    oldStatus: b.TdBase.fromJson(json['old_status']) as a.ChatMemberStatus,
    newStatus: b.TdBase.fromJson(json['new_status']) as a.ChatMemberStatus,
  );
}

/// The chat title was changed
class ChatEventTitleChanged extends a.ChatEventAction {
  /// Previous chat title
  final String oldTitle;
  /// New chat title
  final String newTitle;

  ChatEventTitleChanged({
    required this.oldTitle,
    required this.newTitle,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventTitleChanged',
    'old_title': oldTitle,
    'new_title': newTitle,
  };

  factory ChatEventTitleChanged.fromJson(Map<String, dynamic> json) => ChatEventTitleChanged(
    oldTitle: json['old_title'],
    newTitle: json['new_title'],
  );
}

/// The chat permissions was changed
class ChatEventPermissionsChanged extends a.ChatEventAction {
  /// Previous chat permissions
  final ChatPermissions oldPermissions;
  /// New chat permissions
  final ChatPermissions newPermissions;

  ChatEventPermissionsChanged({
    required this.oldPermissions,
    required this.newPermissions,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventPermissionsChanged',
    'old_permissions': oldPermissions,
    'new_permissions': newPermissions,
  };

  factory ChatEventPermissionsChanged.fromJson(Map<String, dynamic> json) => ChatEventPermissionsChanged(
    oldPermissions: b.TdBase.fromJson(json['old_permissions']) as ChatPermissions,
    newPermissions: b.TdBase.fromJson(json['new_permissions']) as ChatPermissions,
  );
}

/// The chat description was changed
class ChatEventDescriptionChanged extends a.ChatEventAction {
  /// Previous chat description
  final String oldDescription;
  /// New chat description
  final String newDescription;

  ChatEventDescriptionChanged({
    required this.oldDescription,
    required this.newDescription,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventDescriptionChanged',
    'old_description': oldDescription,
    'new_description': newDescription,
  };

  factory ChatEventDescriptionChanged.fromJson(Map<String, dynamic> json) => ChatEventDescriptionChanged(
    oldDescription: json['old_description'],
    newDescription: json['new_description'],
  );
}

/// The chat username was changed
class ChatEventUsernameChanged extends a.ChatEventAction {
  /// Previous chat username
  final String oldUsername;
  /// New chat username
  final String newUsername;

  ChatEventUsernameChanged({
    required this.oldUsername,
    required this.newUsername,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventUsernameChanged',
    'old_username': oldUsername,
    'new_username': newUsername,
  };

  factory ChatEventUsernameChanged.fromJson(Map<String, dynamic> json) => ChatEventUsernameChanged(
    oldUsername: json['old_username'],
    newUsername: json['new_username'],
  );
}

/// The chat photo was changed
class ChatEventPhotoChanged extends a.ChatEventAction {
  /// Previous chat photo value; may be null
  final ChatPhoto oldPhoto;
  /// New chat photo value; may be null
  final ChatPhoto newPhoto;

  ChatEventPhotoChanged({
    required this.oldPhoto,
    required this.newPhoto,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventPhotoChanged',
    'old_photo': oldPhoto,
    'new_photo': newPhoto,
  };

  factory ChatEventPhotoChanged.fromJson(Map<String, dynamic> json) => ChatEventPhotoChanged(
    oldPhoto: b.TdBase.fromJson(json['old_photo']) as ChatPhoto,
    newPhoto: b.TdBase.fromJson(json['new_photo']) as ChatPhoto,
  );
}

/// The can_invite_users permission of a supergroup chat was toggled
class ChatEventInvitesToggled extends a.ChatEventAction {
  /// New value of can_invite_users permission
  final bool canInviteUsers;

  ChatEventInvitesToggled({
    required this.canInviteUsers,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventInvitesToggled',
    'can_invite_users': canInviteUsers,
  };

  factory ChatEventInvitesToggled.fromJson(Map<String, dynamic> json) => ChatEventInvitesToggled(
    canInviteUsers: json['can_invite_users'],
  );
}

/// The linked chat of a supergroup was changed
class ChatEventLinkedChatChanged extends a.ChatEventAction {
  /// Previous supergroup linked chat identifier
  final int oldLinkedChatId;
  /// New supergroup linked chat identifier
  final int newLinkedChatId;

  ChatEventLinkedChatChanged({
    required this.oldLinkedChatId,
    required this.newLinkedChatId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventLinkedChatChanged',
    'old_linked_chat_id': oldLinkedChatId,
    'new_linked_chat_id': newLinkedChatId,
  };

  factory ChatEventLinkedChatChanged.fromJson(Map<String, dynamic> json) => ChatEventLinkedChatChanged(
    oldLinkedChatId: json['old_linked_chat_id'],
    newLinkedChatId: json['new_linked_chat_id'],
  );
}

/// The slow_mode_delay setting of a supergroup was changed
class ChatEventSlowModeDelayChanged extends a.ChatEventAction {
  /// Previous value of slow_mode_delay
  final int oldSlowModeDelay;
  /// New value of slow_mode_delay
  final int newSlowModeDelay;

  ChatEventSlowModeDelayChanged({
    required this.oldSlowModeDelay,
    required this.newSlowModeDelay,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventSlowModeDelayChanged',
    'old_slow_mode_delay': oldSlowModeDelay,
    'new_slow_mode_delay': newSlowModeDelay,
  };

  factory ChatEventSlowModeDelayChanged.fromJson(Map<String, dynamic> json) => ChatEventSlowModeDelayChanged(
    oldSlowModeDelay: json['old_slow_mode_delay'],
    newSlowModeDelay: json['new_slow_mode_delay'],
  );
}

/// The message TTL setting was changed
class ChatEventMessageTtlSettingChanged extends a.ChatEventAction {
  /// Previous value of message_ttl_setting
  final int oldMessageTtlSetting;
  /// New value of message_ttl_setting
  final int newMessageTtlSetting;

  ChatEventMessageTtlSettingChanged({
    required this.oldMessageTtlSetting,
    required this.newMessageTtlSetting,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventMessageTtlSettingChanged',
    'old_message_ttl_setting': oldMessageTtlSetting,
    'new_message_ttl_setting': newMessageTtlSetting,
  };

  factory ChatEventMessageTtlSettingChanged.fromJson(Map<String, dynamic> json) => ChatEventMessageTtlSettingChanged(
    oldMessageTtlSetting: json['old_message_ttl_setting'],
    newMessageTtlSetting: json['new_message_ttl_setting'],
  );
}

/// The sign_messages setting of a channel was toggled
class ChatEventSignMessagesToggled extends a.ChatEventAction {
  /// New value of sign_messages
  final bool signMessages;

  ChatEventSignMessagesToggled({
    required this.signMessages,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventSignMessagesToggled',
    'sign_messages': signMessages,
  };

  factory ChatEventSignMessagesToggled.fromJson(Map<String, dynamic> json) => ChatEventSignMessagesToggled(
    signMessages: json['sign_messages'],
  );
}

/// The supergroup sticker set was changed
class ChatEventStickerSetChanged extends a.ChatEventAction {
  /// Previous identifier of the chat sticker set; 0 if none
  final int oldStickerSetId;
  /// New identifier of the chat sticker set; 0 if none
  final int newStickerSetId;

  ChatEventStickerSetChanged({
    required this.oldStickerSetId,
    required this.newStickerSetId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventStickerSetChanged',
    'old_sticker_set_id': oldStickerSetId,
    'new_sticker_set_id': newStickerSetId,
  };

  factory ChatEventStickerSetChanged.fromJson(Map<String, dynamic> json) => ChatEventStickerSetChanged(
    oldStickerSetId: int.parse(json['old_sticker_set_id']),
    newStickerSetId: int.parse(json['new_sticker_set_id']),
  );
}

/// The supergroup location was changed
class ChatEventLocationChanged extends a.ChatEventAction {
  /// Previous location; may be null
  final ChatLocation oldLocation;
  /// New location; may be null
  final ChatLocation newLocation;

  ChatEventLocationChanged({
    required this.oldLocation,
    required this.newLocation,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventLocationChanged',
    'old_location': oldLocation,
    'new_location': newLocation,
  };

  factory ChatEventLocationChanged.fromJson(Map<String, dynamic> json) => ChatEventLocationChanged(
    oldLocation: b.TdBase.fromJson(json['old_location']) as ChatLocation,
    newLocation: b.TdBase.fromJson(json['new_location']) as ChatLocation,
  );
}

/// The is_all_history_available setting of a supergroup was toggled
class ChatEventIsAllHistoryAvailableToggled extends a.ChatEventAction {
  /// New value of is_all_history_available
  final bool isAllHistoryAvailable;

  ChatEventIsAllHistoryAvailableToggled({
    required this.isAllHistoryAvailable,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventIsAllHistoryAvailableToggled',
    'is_all_history_available': isAllHistoryAvailable,
  };

  factory ChatEventIsAllHistoryAvailableToggled.fromJson(Map<String, dynamic> json) => ChatEventIsAllHistoryAvailableToggled(
    isAllHistoryAvailable: json['is_all_history_available'],
  );
}

/// A chat invite link was edited
class ChatEventInviteLinkEdited extends a.ChatEventAction {
  /// Previous information about the invite link
  final ChatInviteLink oldInviteLink;
  /// New information about the invite link
  final ChatInviteLink newInviteLink;

  ChatEventInviteLinkEdited({
    required this.oldInviteLink,
    required this.newInviteLink,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventInviteLinkEdited',
    'old_invite_link': oldInviteLink,
    'new_invite_link': newInviteLink,
  };

  factory ChatEventInviteLinkEdited.fromJson(Map<String, dynamic> json) => ChatEventInviteLinkEdited(
    oldInviteLink: b.TdBase.fromJson(json['old_invite_link']) as ChatInviteLink,
    newInviteLink: b.TdBase.fromJson(json['new_invite_link']) as ChatInviteLink,
  );
}

/// A chat invite link was revoked
class ChatEventInviteLinkRevoked extends a.ChatEventAction {
  /// The invite link
  final ChatInviteLink inviteLink;

  ChatEventInviteLinkRevoked({
    required this.inviteLink,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventInviteLinkRevoked',
    'invite_link': inviteLink,
  };

  factory ChatEventInviteLinkRevoked.fromJson(Map<String, dynamic> json) => ChatEventInviteLinkRevoked(
    inviteLink: b.TdBase.fromJson(json['invite_link']) as ChatInviteLink,
  );
}

/// A revoked chat invite link was deleted
class ChatEventInviteLinkDeleted extends a.ChatEventAction {
  /// The invite link
  final ChatInviteLink inviteLink;

  ChatEventInviteLinkDeleted({
    required this.inviteLink,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventInviteLinkDeleted',
    'invite_link': inviteLink,
  };

  factory ChatEventInviteLinkDeleted.fromJson(Map<String, dynamic> json) => ChatEventInviteLinkDeleted(
    inviteLink: b.TdBase.fromJson(json['invite_link']) as ChatInviteLink,
  );
}

/// A voice chat was created
class ChatEventVoiceChatCreated extends a.ChatEventAction {
  /// Identifier of the voice chat. The voice chat can be received through the method getGroupCall
  final int groupCallId;

  ChatEventVoiceChatCreated({
    required this.groupCallId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventVoiceChatCreated',
    'group_call_id': groupCallId,
  };

  factory ChatEventVoiceChatCreated.fromJson(Map<String, dynamic> json) => ChatEventVoiceChatCreated(
    groupCallId: json['group_call_id'],
  );
}

/// A voice chat was discarded
class ChatEventVoiceChatDiscarded extends a.ChatEventAction {
  /// Identifier of the voice chat. The voice chat can be received through the method getGroupCall
  final int groupCallId;

  ChatEventVoiceChatDiscarded({
    required this.groupCallId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventVoiceChatDiscarded',
    'group_call_id': groupCallId,
  };

  factory ChatEventVoiceChatDiscarded.fromJson(Map<String, dynamic> json) => ChatEventVoiceChatDiscarded(
    groupCallId: json['group_call_id'],
  );
}

/// A voice chat participant was muted or unmuted
class ChatEventVoiceChatParticipantIsMutedToggled extends a.ChatEventAction {
  /// Identifier of the affected group call participant
  final a.MessageSender participantId;
  /// New value of is_muted
  final bool isMuted;

  ChatEventVoiceChatParticipantIsMutedToggled({
    required this.participantId,
    required this.isMuted,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventVoiceChatParticipantIsMutedToggled',
    'participant_id': participantId,
    'is_muted': isMuted,
  };

  factory ChatEventVoiceChatParticipantIsMutedToggled.fromJson(Map<String, dynamic> json) => ChatEventVoiceChatParticipantIsMutedToggled(
    participantId: b.TdBase.fromJson(json['participant_id']) as a.MessageSender,
    isMuted: json['is_muted'],
  );
}

/// A voice chat participant volume level was changed
class ChatEventVoiceChatParticipantVolumeLevelChanged extends a.ChatEventAction {
  /// Identifier of the affected group call participant
  final a.MessageSender participantId;
  /// New value of volume_level; 1-20000 in hundreds of percents
  final int volumeLevel;

  ChatEventVoiceChatParticipantVolumeLevelChanged({
    required this.participantId,
    required this.volumeLevel,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventVoiceChatParticipantVolumeLevelChanged',
    'participant_id': participantId,
    'volume_level': volumeLevel,
  };

  factory ChatEventVoiceChatParticipantVolumeLevelChanged.fromJson(Map<String, dynamic> json) => ChatEventVoiceChatParticipantVolumeLevelChanged(
    participantId: b.TdBase.fromJson(json['participant_id']) as a.MessageSender,
    volumeLevel: json['volume_level'],
  );
}

/// The mute_new_participants setting of a voice chat was toggled
class ChatEventVoiceChatMuteNewParticipantsToggled extends a.ChatEventAction {
  /// New value of the mute_new_participants setting
  final bool muteNewParticipants;

  ChatEventVoiceChatMuteNewParticipantsToggled({
    required this.muteNewParticipants,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventVoiceChatMuteNewParticipantsToggled',
    'mute_new_participants': muteNewParticipants,
  };

  factory ChatEventVoiceChatMuteNewParticipantsToggled.fromJson(Map<String, dynamic> json) => ChatEventVoiceChatMuteNewParticipantsToggled(
    muteNewParticipants: json['mute_new_participants'],
  );
}

/// Represents a chat event
class ChatEvent extends a.ChatEvent {
  /// Chat event identifier
  final int id;
  /// Point in time (Unix timestamp) when the event happened
  final int date;
  /// Identifier of the user who performed the action that triggered the event
  final int userId;
  /// Action performed by the user
  final a.ChatEventAction action;

  ChatEvent({
    required this.id,
    required this.date,
    required this.userId,
    required this.action,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEvent',
    'id': id,
    'date': date,
    'user_id': userId,
    'action': action,
  };

  factory ChatEvent.fromJson(Map<String, dynamic> json) => ChatEvent(
    id: int.parse(json['id']),
    date: json['date'],
    userId: json['user_id'],
    action: b.TdBase.fromJson(json['action']) as a.ChatEventAction,
  );
}

/// Contains a list of chat events
class ChatEvents extends a.ChatEvents {
  /// List of events
  final List<ChatEvent> events;

  ChatEvents({
    required this.events,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEvents',
    'events': events,
  };

  factory ChatEvents.fromJson(Map<String, dynamic> json) => ChatEvents(
    events: (json['events'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatEvent).toList(growable: false),
  );
}

/// Represents a set of filters used to obtain a chat event log
class ChatEventLogFilters extends a.ChatEventLogFilters {
  /// True, if message edits should be returned
  final bool messageEdits;
  /// True, if message deletions should be returned
  final bool messageDeletions;
  /// True, if pin/unpin events should be returned
  final bool messagePins;
  /// True, if members joining events should be returned
  final bool memberJoins;
  /// True, if members leaving events should be returned
  final bool memberLeaves;
  /// True, if invited member events should be returned
  final bool memberInvites;
  /// True, if member promotion/demotion events should be returned
  final bool memberPromotions;
  /// True, if member restricted/unrestricted/banned/unbanned events should be returned
  final bool memberRestrictions;
  /// True, if changes in chat information should be returned
  final bool infoChanges;
  /// True, if changes in chat settings should be returned
  final bool settingChanges;
  /// True, if changes to invite links should be returned
  final bool inviteLinkChanges;
  /// True, if voice chat actions should be returned
  final bool voiceChatChanges;

  ChatEventLogFilters({
    required this.messageEdits,
    required this.messageDeletions,
    required this.messagePins,
    required this.memberJoins,
    required this.memberLeaves,
    required this.memberInvites,
    required this.memberPromotions,
    required this.memberRestrictions,
    required this.infoChanges,
    required this.settingChanges,
    required this.inviteLinkChanges,
    required this.voiceChatChanges,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatEventLogFilters',
    'message_edits': messageEdits,
    'message_deletions': messageDeletions,
    'message_pins': messagePins,
    'member_joins': memberJoins,
    'member_leaves': memberLeaves,
    'member_invites': memberInvites,
    'member_promotions': memberPromotions,
    'member_restrictions': memberRestrictions,
    'info_changes': infoChanges,
    'setting_changes': settingChanges,
    'invite_link_changes': inviteLinkChanges,
    'voice_chat_changes': voiceChatChanges,
  };

  factory ChatEventLogFilters.fromJson(Map<String, dynamic> json) => ChatEventLogFilters(
    messageEdits: json['message_edits'],
    messageDeletions: json['message_deletions'],
    messagePins: json['message_pins'],
    memberJoins: json['member_joins'],
    memberLeaves: json['member_leaves'],
    memberInvites: json['member_invites'],
    memberPromotions: json['member_promotions'],
    memberRestrictions: json['member_restrictions'],
    infoChanges: json['info_changes'],
    settingChanges: json['setting_changes'],
    inviteLinkChanges: json['invite_link_changes'],
    voiceChatChanges: json['voice_chat_changes'],
  );
}

/// An ordinary language pack string
class LanguagePackStringValueOrdinary extends a.LanguagePackStringValue {
  /// String value
  final String value;

  LanguagePackStringValueOrdinary({
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'languagePackStringValueOrdinary',
    'value': value,
  };

  factory LanguagePackStringValueOrdinary.fromJson(Map<String, dynamic> json) => LanguagePackStringValueOrdinary(
    value: json['value'],
  );
}

/// A language pack string which has different forms based on the number of some object it mentions. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more info
class LanguagePackStringValuePluralized extends a.LanguagePackStringValue {
  /// Value for zero objects
  final String zeroValue;
  /// Value for one object
  final String oneValue;
  /// Value for two objects
  final String twoValue;
  /// Value for few objects
  final String fewValue;
  /// Value for many objects
  final String manyValue;
  /// Default value
  final String otherValue;

  LanguagePackStringValuePluralized({
    required this.zeroValue,
    required this.oneValue,
    required this.twoValue,
    required this.fewValue,
    required this.manyValue,
    required this.otherValue,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'languagePackStringValuePluralized',
    'zero_value': zeroValue,
    'one_value': oneValue,
    'two_value': twoValue,
    'few_value': fewValue,
    'many_value': manyValue,
    'other_value': otherValue,
  };

  factory LanguagePackStringValuePluralized.fromJson(Map<String, dynamic> json) => LanguagePackStringValuePluralized(
    zeroValue: json['zero_value'],
    oneValue: json['one_value'],
    twoValue: json['two_value'],
    fewValue: json['few_value'],
    manyValue: json['many_value'],
    otherValue: json['other_value'],
  );
}

/// A deleted language pack string, the value should be taken from the built-in english language pack
class LanguagePackStringValueDeleted extends a.LanguagePackStringValue {
  LanguagePackStringValueDeleted();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'languagePackStringValueDeleted',
  };

  factory LanguagePackStringValueDeleted.fromJson(Map<String, dynamic> json) => LanguagePackStringValueDeleted(
  );
}

/// Represents one language pack string
class LanguagePackString extends a.LanguagePackString {
  /// String key
  final String key;
  /// String value
  final a.LanguagePackStringValue value;

  LanguagePackString({
    required this.key,
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'languagePackString',
    'key': key,
    'value': value,
  };

  factory LanguagePackString.fromJson(Map<String, dynamic> json) => LanguagePackString(
    key: json['key'],
    value: b.TdBase.fromJson(json['value']) as a.LanguagePackStringValue,
  );
}

/// Contains a list of language pack strings
class LanguagePackStrings extends a.LanguagePackStrings {
  /// A list of language pack strings
  final List<LanguagePackString> strings;

  LanguagePackStrings({
    required this.strings,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'languagePackStrings',
    'strings': strings,
  };

  factory LanguagePackStrings.fromJson(Map<String, dynamic> json) => LanguagePackStrings(
    strings: (json['strings'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as LanguagePackString).toList(growable: false),
  );
}

/// Contains information about a language pack
class LanguagePackInfo extends a.LanguagePackInfo {
  /// Unique language pack identifier
  final String id;
  /// Identifier of a base language pack; may be empty. If a string is missed in the language pack, then it should be fetched from base language pack. Unsupported in custom language packs
  final String baseLanguagePackId;
  /// Language name
  final String name;
  /// Name of the language in that language
  final String nativeName;
  /// A language code to be used to apply plural forms. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more info
  final String pluralCode;
  /// True, if the language pack is official
  final bool isOfficial;
  /// True, if the language pack strings are RTL
  final bool isRtl;
  /// True, if the language pack is a beta language pack
  final bool isBeta;
  /// True, if the language pack is installed by the current user
  final bool isInstalled;
  /// Total number of non-deleted strings from the language pack
  final int totalStringCount;
  /// Total number of translated strings from the language pack
  final int translatedStringCount;
  /// Total number of non-deleted strings from the language pack available locally
  final int localStringCount;
  /// Link to language translation interface; empty for custom local language packs
  final String translationUrl;

  LanguagePackInfo({
    required this.id,
    required this.baseLanguagePackId,
    required this.name,
    required this.nativeName,
    required this.pluralCode,
    required this.isOfficial,
    required this.isRtl,
    required this.isBeta,
    required this.isInstalled,
    required this.totalStringCount,
    required this.translatedStringCount,
    required this.localStringCount,
    required this.translationUrl,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'languagePackInfo',
    'id': id,
    'base_language_pack_id': baseLanguagePackId,
    'name': name,
    'native_name': nativeName,
    'plural_code': pluralCode,
    'is_official': isOfficial,
    'is_rtl': isRtl,
    'is_beta': isBeta,
    'is_installed': isInstalled,
    'total_string_count': totalStringCount,
    'translated_string_count': translatedStringCount,
    'local_string_count': localStringCount,
    'translation_url': translationUrl,
  };

  factory LanguagePackInfo.fromJson(Map<String, dynamic> json) => LanguagePackInfo(
    id: json['id'],
    baseLanguagePackId: json['base_language_pack_id'],
    name: json['name'],
    nativeName: json['native_name'],
    pluralCode: json['plural_code'],
    isOfficial: json['is_official'],
    isRtl: json['is_rtl'],
    isBeta: json['is_beta'],
    isInstalled: json['is_installed'],
    totalStringCount: json['total_string_count'],
    translatedStringCount: json['translated_string_count'],
    localStringCount: json['local_string_count'],
    translationUrl: json['translation_url'],
  );
}

/// Contains information about the current localization target
class LocalizationTargetInfo extends a.LocalizationTargetInfo {
  /// List of available language packs for this application
  final List<LanguagePackInfo> languagePacks;

  LocalizationTargetInfo({
    required this.languagePacks,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'localizationTargetInfo',
    'language_packs': languagePacks,
  };

  factory LocalizationTargetInfo.fromJson(Map<String, dynamic> json) => LocalizationTargetInfo(
    languagePacks: (json['language_packs'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as LanguagePackInfo).toList(growable: false),
  );
}

/// A token for Firebase Cloud Messaging
class DeviceTokenFirebaseCloudMessaging extends a.DeviceToken {
  /// Device registration token; may be empty to de-register a device
  final String token;
  /// True, if push notifications should be additionally encrypted
  final bool encrypt;

  DeviceTokenFirebaseCloudMessaging({
    required this.token,
    required this.encrypt,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deviceTokenFirebaseCloudMessaging',
    'token': token,
    'encrypt': encrypt,
  };

  factory DeviceTokenFirebaseCloudMessaging.fromJson(Map<String, dynamic> json) => DeviceTokenFirebaseCloudMessaging(
    token: json['token'],
    encrypt: json['encrypt'],
  );
}

/// A token for Apple Push Notification service
class DeviceTokenApplePush extends a.DeviceToken {
  /// Device token; may be empty to de-register a device
  final String deviceToken;
  /// True, if App Sandbox is enabled
  final bool isAppSandbox;

  DeviceTokenApplePush({
    required this.deviceToken,
    required this.isAppSandbox,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deviceTokenApplePush',
    'device_token': deviceToken,
    'is_app_sandbox': isAppSandbox,
  };

  factory DeviceTokenApplePush.fromJson(Map<String, dynamic> json) => DeviceTokenApplePush(
    deviceToken: json['device_token'],
    isAppSandbox: json['is_app_sandbox'],
  );
}

/// A token for Apple Push Notification service VoIP notifications
class DeviceTokenApplePushVoIP extends a.DeviceToken {
  /// Device token; may be empty to de-register a device
  final String deviceToken;
  /// True, if App Sandbox is enabled
  final bool isAppSandbox;
  /// True, if push notifications should be additionally encrypted
  final bool encrypt;

  DeviceTokenApplePushVoIP({
    required this.deviceToken,
    required this.isAppSandbox,
    required this.encrypt,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deviceTokenApplePushVoIP',
    'device_token': deviceToken,
    'is_app_sandbox': isAppSandbox,
    'encrypt': encrypt,
  };

  factory DeviceTokenApplePushVoIP.fromJson(Map<String, dynamic> json) => DeviceTokenApplePushVoIP(
    deviceToken: json['device_token'],
    isAppSandbox: json['is_app_sandbox'],
    encrypt: json['encrypt'],
  );
}

/// A token for Windows Push Notification Services
class DeviceTokenWindowsPush extends a.DeviceToken {
  /// The access token that will be used to send notifications; may be empty to de-register a device
  final String accessToken;

  DeviceTokenWindowsPush({
    required this.accessToken,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deviceTokenWindowsPush',
    'access_token': accessToken,
  };

  factory DeviceTokenWindowsPush.fromJson(Map<String, dynamic> json) => DeviceTokenWindowsPush(
    accessToken: json['access_token'],
  );
}

/// A token for Microsoft Push Notification Service
class DeviceTokenMicrosoftPush extends a.DeviceToken {
  /// Push notification channel URI; may be empty to de-register a device
  final String channelUri;

  DeviceTokenMicrosoftPush({
    required this.channelUri,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deviceTokenMicrosoftPush',
    'channel_uri': channelUri,
  };

  factory DeviceTokenMicrosoftPush.fromJson(Map<String, dynamic> json) => DeviceTokenMicrosoftPush(
    channelUri: json['channel_uri'],
  );
}

/// A token for Microsoft Push Notification Service VoIP channel
class DeviceTokenMicrosoftPushVoIP extends a.DeviceToken {
  /// Push notification channel URI; may be empty to de-register a device
  final String channelUri;

  DeviceTokenMicrosoftPushVoIP({
    required this.channelUri,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deviceTokenMicrosoftPushVoIP',
    'channel_uri': channelUri,
  };

  factory DeviceTokenMicrosoftPushVoIP.fromJson(Map<String, dynamic> json) => DeviceTokenMicrosoftPushVoIP(
    channelUri: json['channel_uri'],
  );
}

/// A token for web Push API
class DeviceTokenWebPush extends a.DeviceToken {
  /// Absolute URL exposed by the push service where the application server can send push messages; may be empty to de-register a device
  final String endpoint;
  /// Base64url-encoded P-256 elliptic curve Diffie-Hellman public key
  final String p256dhBase64url;
  /// Base64url-encoded authentication secret
  final String authBase64url;

  DeviceTokenWebPush({
    required this.endpoint,
    required this.p256dhBase64url,
    required this.authBase64url,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deviceTokenWebPush',
    'endpoint': endpoint,
    'p256dh_base64url': p256dhBase64url,
    'auth_base64url': authBase64url,
  };

  factory DeviceTokenWebPush.fromJson(Map<String, dynamic> json) => DeviceTokenWebPush(
    endpoint: json['endpoint'],
    p256dhBase64url: json['p256dh_base64url'],
    authBase64url: json['auth_base64url'],
  );
}

/// A token for Simple Push API for Firefox OS
class DeviceTokenSimplePush extends a.DeviceToken {
  /// Absolute URL exposed by the push service where the application server can send push messages; may be empty to de-register a device
  final String endpoint;

  DeviceTokenSimplePush({
    required this.endpoint,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deviceTokenSimplePush',
    'endpoint': endpoint,
  };

  factory DeviceTokenSimplePush.fromJson(Map<String, dynamic> json) => DeviceTokenSimplePush(
    endpoint: json['endpoint'],
  );
}

/// A token for Ubuntu Push Client service
class DeviceTokenUbuntuPush extends a.DeviceToken {
  /// Token; may be empty to de-register a device
  final String token;

  DeviceTokenUbuntuPush({
    required this.token,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deviceTokenUbuntuPush',
    'token': token,
  };

  factory DeviceTokenUbuntuPush.fromJson(Map<String, dynamic> json) => DeviceTokenUbuntuPush(
    token: json['token'],
  );
}

/// A token for BlackBerry Push Service
class DeviceTokenBlackBerryPush extends a.DeviceToken {
  /// Token; may be empty to de-register a device
  final String token;

  DeviceTokenBlackBerryPush({
    required this.token,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deviceTokenBlackBerryPush',
    'token': token,
  };

  factory DeviceTokenBlackBerryPush.fromJson(Map<String, dynamic> json) => DeviceTokenBlackBerryPush(
    token: json['token'],
  );
}

/// A token for Tizen Push Service
class DeviceTokenTizenPush extends a.DeviceToken {
  /// Push service registration identifier; may be empty to de-register a device
  final String regId;

  DeviceTokenTizenPush({
    required this.regId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deviceTokenTizenPush',
    'reg_id': regId,
  };

  factory DeviceTokenTizenPush.fromJson(Map<String, dynamic> json) => DeviceTokenTizenPush(
    regId: json['reg_id'],
  );
}

/// Contains a globally unique push receiver identifier, which can be used to identify which account has received a push notification
class PushReceiverId extends a.PushReceiverId {
  /// The globally unique identifier of push notification subscription
  final int id;

  PushReceiverId({
    required this.id,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushReceiverId',
    'id': id,
  };

  factory PushReceiverId.fromJson(Map<String, dynamic> json) => PushReceiverId(
    id: int.parse(json['id']),
  );
}

/// Describes a solid fill of a background
class BackgroundFillSolid extends a.BackgroundFill {
  /// A color of the background in the RGB24 format
  final int color;

  BackgroundFillSolid({
    required this.color,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'backgroundFillSolid',
    'color': color,
  };

  factory BackgroundFillSolid.fromJson(Map<String, dynamic> json) => BackgroundFillSolid(
    color: json['color'],
  );
}

/// Describes a gradient fill of a background
class BackgroundFillGradient extends a.BackgroundFill {
  /// A top color of the background in the RGB24 format
  final int topColor;
  /// A bottom color of the background in the RGB24 format
  final int bottomColor;
  /// Clockwise rotation angle of the gradient, in degrees; 0-359. Should be always divisible by 45
  final int rotationAngle;

  BackgroundFillGradient({
    required this.topColor,
    required this.bottomColor,
    required this.rotationAngle,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'backgroundFillGradient',
    'top_color': topColor,
    'bottom_color': bottomColor,
    'rotation_angle': rotationAngle,
  };

  factory BackgroundFillGradient.fromJson(Map<String, dynamic> json) => BackgroundFillGradient(
    topColor: json['top_color'],
    bottomColor: json['bottom_color'],
    rotationAngle: json['rotation_angle'],
  );
}

/// A wallpaper in JPEG format
class BackgroundTypeWallpaper extends a.BackgroundType {
  /// True, if the wallpaper must be downscaled to fit in 450x450 square and then box-blurred with radius 12
  final bool isBlurred;
  /// True, if the background needs to be slightly moved when device is tilted
  final bool isMoving;

  BackgroundTypeWallpaper({
    required this.isBlurred,
    required this.isMoving,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'backgroundTypeWallpaper',
    'is_blurred': isBlurred,
    'is_moving': isMoving,
  };

  factory BackgroundTypeWallpaper.fromJson(Map<String, dynamic> json) => BackgroundTypeWallpaper(
    isBlurred: json['is_blurred'],
    isMoving: json['is_moving'],
  );
}

/// A PNG or TGV (gzipped subset of SVG with MIME type "application/x-tgwallpattern") pattern to be combined with the background fill chosen by the user
class BackgroundTypePattern extends a.BackgroundType {
  /// Description of the background fill
  final a.BackgroundFill fill;
  /// Intensity of the pattern when it is shown above the filled background; 0-100
  final int intensity;
  /// True, if the background needs to be slightly moved when device is tilted
  final bool isMoving;

  BackgroundTypePattern({
    required this.fill,
    required this.intensity,
    required this.isMoving,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'backgroundTypePattern',
    'fill': fill,
    'intensity': intensity,
    'is_moving': isMoving,
  };

  factory BackgroundTypePattern.fromJson(Map<String, dynamic> json) => BackgroundTypePattern(
    fill: b.TdBase.fromJson(json['fill']) as a.BackgroundFill,
    intensity: json['intensity'],
    isMoving: json['is_moving'],
  );
}

/// A filled background
class BackgroundTypeFill extends a.BackgroundType {
  /// Description of the background fill
  final a.BackgroundFill fill;

  BackgroundTypeFill({
    required this.fill,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'backgroundTypeFill',
    'fill': fill,
  };

  factory BackgroundTypeFill.fromJson(Map<String, dynamic> json) => BackgroundTypeFill(
    fill: b.TdBase.fromJson(json['fill']) as a.BackgroundFill,
  );
}

/// Describes a chat background
class Background extends a.Background {
  /// Unique background identifier
  final int id;
  /// True, if this is one of default backgrounds
  final bool isDefault;
  /// True, if the background is dark and is recommended to be used with dark theme
  final bool isDark;
  /// Unique background name
  final String name;
  /// Document with the background; may be null. Null only for filled backgrounds
  final Document document;
  /// Type of the background
  final a.BackgroundType type;

  Background({
    required this.id,
    required this.isDefault,
    required this.isDark,
    required this.name,
    required this.document,
    required this.type,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'background',
    'id': id,
    'is_default': isDefault,
    'is_dark': isDark,
    'name': name,
    'document': document,
    'type': type,
  };

  factory Background.fromJson(Map<String, dynamic> json) => Background(
    id: int.parse(json['id']),
    isDefault: json['is_default'],
    isDark: json['is_dark'],
    name: json['name'],
    document: b.TdBase.fromJson(json['document']) as Document,
    type: b.TdBase.fromJson(json['type']) as a.BackgroundType,
  );
}

/// Contains a list of backgrounds
class Backgrounds extends a.Backgrounds {
  /// A list of backgrounds
  final List<Background> backgrounds;

  Backgrounds({
    required this.backgrounds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'backgrounds',
    'backgrounds': backgrounds,
  };

  factory Backgrounds.fromJson(Map<String, dynamic> json) => Backgrounds(
    backgrounds: (json['backgrounds'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as Background).toList(growable: false),
  );
}

/// A background from a local file
class InputBackgroundLocal extends a.InputBackground {
  /// Background file to use. Only inputFileLocal and inputFileGenerated are supported. The file must be in JPEG format for wallpapers and in PNG format for patterns
  final a.InputFile background;

  InputBackgroundLocal({
    required this.background,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputBackgroundLocal',
    'background': background,
  };

  factory InputBackgroundLocal.fromJson(Map<String, dynamic> json) => InputBackgroundLocal(
    background: b.TdBase.fromJson(json['background']) as a.InputFile,
  );
}

/// A background from the server
class InputBackgroundRemote extends a.InputBackground {
  /// The background identifier
  final int backgroundId;

  InputBackgroundRemote({
    required this.backgroundId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputBackgroundRemote',
    'background_id': backgroundId,
  };

  factory InputBackgroundRemote.fromJson(Map<String, dynamic> json) => InputBackgroundRemote(
    backgroundId: int.parse(json['background_id']),
  );
}

/// Contains a list of hashtags
class Hashtags extends a.Hashtags {
  /// A list of hashtags
  final List<String> hashtags;

  Hashtags({
    required this.hashtags,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'hashtags',
    'hashtags': hashtags,
  };

  factory Hashtags.fromJson(Map<String, dynamic> json) => Hashtags(
    hashtags: (json['hashtags'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as String).toList(growable: false),
  );
}

/// The session can be used
class CanTransferOwnershipResultOk extends a.CanTransferOwnershipResult {
  CanTransferOwnershipResultOk();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'canTransferOwnershipResultOk',
  };

  factory CanTransferOwnershipResultOk.fromJson(Map<String, dynamic> json) => CanTransferOwnershipResultOk(
  );
}

/// The 2-step verification needs to be enabled first
class CanTransferOwnershipResultPasswordNeeded extends a.CanTransferOwnershipResult {
  CanTransferOwnershipResultPasswordNeeded();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'canTransferOwnershipResultPasswordNeeded',
  };

  factory CanTransferOwnershipResultPasswordNeeded.fromJson(Map<String, dynamic> json) => CanTransferOwnershipResultPasswordNeeded(
  );
}

/// The 2-step verification was enabled recently, user needs to wait
class CanTransferOwnershipResultPasswordTooFresh extends a.CanTransferOwnershipResult {
  /// Time left before the session can be used to transfer ownership of a chat, in seconds
  final int retryAfter;

  CanTransferOwnershipResultPasswordTooFresh({
    required this.retryAfter,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'canTransferOwnershipResultPasswordTooFresh',
    'retry_after': retryAfter,
  };

  factory CanTransferOwnershipResultPasswordTooFresh.fromJson(Map<String, dynamic> json) => CanTransferOwnershipResultPasswordTooFresh(
    retryAfter: json['retry_after'],
  );
}

/// The session was created recently, user needs to wait
class CanTransferOwnershipResultSessionTooFresh extends a.CanTransferOwnershipResult {
  /// Time left before the session can be used to transfer ownership of a chat, in seconds
  final int retryAfter;

  CanTransferOwnershipResultSessionTooFresh({
    required this.retryAfter,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'canTransferOwnershipResultSessionTooFresh',
    'retry_after': retryAfter,
  };

  factory CanTransferOwnershipResultSessionTooFresh.fromJson(Map<String, dynamic> json) => CanTransferOwnershipResultSessionTooFresh(
    retryAfter: json['retry_after'],
  );
}

/// The username can be set
class CheckChatUsernameResultOk extends a.CheckChatUsernameResult {
  CheckChatUsernameResultOk();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkChatUsernameResultOk',
  };

  factory CheckChatUsernameResultOk.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultOk(
  );
}

/// The username is invalid
class CheckChatUsernameResultUsernameInvalid extends a.CheckChatUsernameResult {
  CheckChatUsernameResultUsernameInvalid();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkChatUsernameResultUsernameInvalid',
  };

  factory CheckChatUsernameResultUsernameInvalid.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultUsernameInvalid(
  );
}

/// The username is occupied
class CheckChatUsernameResultUsernameOccupied extends a.CheckChatUsernameResult {
  CheckChatUsernameResultUsernameOccupied();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkChatUsernameResultUsernameOccupied',
  };

  factory CheckChatUsernameResultUsernameOccupied.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultUsernameOccupied(
  );
}

/// The user has too much chats with username, one of them should be made private first
class CheckChatUsernameResultPublicChatsTooMuch extends a.CheckChatUsernameResult {
  CheckChatUsernameResultPublicChatsTooMuch();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkChatUsernameResultPublicChatsTooMuch',
  };

  factory CheckChatUsernameResultPublicChatsTooMuch.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultPublicChatsTooMuch(
  );
}

/// The user can't be a member of a public supergroup
class CheckChatUsernameResultPublicGroupsUnavailable extends a.CheckChatUsernameResult {
  CheckChatUsernameResultPublicGroupsUnavailable();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'checkChatUsernameResultPublicGroupsUnavailable',
  };

  factory CheckChatUsernameResultPublicGroupsUnavailable.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultPublicGroupsUnavailable(
  );
}

/// The messages was exported from a private chat
class MessageFileTypePrivate extends a.MessageFileType {
  /// Name of the other party; may be empty if unrecognized
  final String name;

  MessageFileTypePrivate({
    required this.name,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageFileTypePrivate',
    'name': name,
  };

  factory MessageFileTypePrivate.fromJson(Map<String, dynamic> json) => MessageFileTypePrivate(
    name: json['name'],
  );
}

/// The messages was exported from a group chat
class MessageFileTypeGroup extends a.MessageFileType {
  /// Title of the group chat; may be empty if unrecognized
  final String title;

  MessageFileTypeGroup({
    required this.title,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageFileTypeGroup',
    'title': title,
  };

  factory MessageFileTypeGroup.fromJson(Map<String, dynamic> json) => MessageFileTypeGroup(
    title: json['title'],
  );
}

/// The messages was exported from a chat of unknown type
class MessageFileTypeUnknown extends a.MessageFileType {
  MessageFileTypeUnknown();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageFileTypeUnknown',
  };

  factory MessageFileTypeUnknown.fromJson(Map<String, dynamic> json) => MessageFileTypeUnknown(
  );
}

/// A general message with hidden content
class PushMessageContentHidden extends a.PushMessageContent {
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentHidden({
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentHidden',
    'is_pinned': isPinned,
  };

  factory PushMessageContentHidden.fromJson(Map<String, dynamic> json) => PushMessageContentHidden(
    isPinned: json['is_pinned'],
  );
}

/// An animation message (GIF-style).
class PushMessageContentAnimation extends a.PushMessageContent {
  /// Message content; may be null
  final Animation animation;
  /// Animation caption
  final String caption;
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentAnimation({
    required this.animation,
    required this.caption,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentAnimation',
    'animation': animation,
    'caption': caption,
    'is_pinned': isPinned,
  };

  factory PushMessageContentAnimation.fromJson(Map<String, dynamic> json) => PushMessageContentAnimation(
    animation: b.TdBase.fromJson(json['animation']) as Animation,
    caption: json['caption'],
    isPinned: json['is_pinned'],
  );
}

/// An audio message
class PushMessageContentAudio extends a.PushMessageContent {
  /// Message content; may be null
  final Audio audio;
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentAudio({
    required this.audio,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentAudio',
    'audio': audio,
    'is_pinned': isPinned,
  };

  factory PushMessageContentAudio.fromJson(Map<String, dynamic> json) => PushMessageContentAudio(
    audio: b.TdBase.fromJson(json['audio']) as Audio,
    isPinned: json['is_pinned'],
  );
}

/// A message with a user contact
class PushMessageContentContact extends a.PushMessageContent {
  /// Contact's name
  final String name;
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentContact({
    required this.name,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentContact',
    'name': name,
    'is_pinned': isPinned,
  };

  factory PushMessageContentContact.fromJson(Map<String, dynamic> json) => PushMessageContentContact(
    name: json['name'],
    isPinned: json['is_pinned'],
  );
}

/// A contact has registered with Telegram
class PushMessageContentContactRegistered extends a.PushMessageContent {
  PushMessageContentContactRegistered();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentContactRegistered',
  };

  factory PushMessageContentContactRegistered.fromJson(Map<String, dynamic> json) => PushMessageContentContactRegistered(
  );
}

/// A document message (a general file)
class PushMessageContentDocument extends a.PushMessageContent {
  /// Message content; may be null
  final Document document;
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentDocument({
    required this.document,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentDocument',
    'document': document,
    'is_pinned': isPinned,
  };

  factory PushMessageContentDocument.fromJson(Map<String, dynamic> json) => PushMessageContentDocument(
    document: b.TdBase.fromJson(json['document']) as Document,
    isPinned: json['is_pinned'],
  );
}

/// A message with a game
class PushMessageContentGame extends a.PushMessageContent {
  /// Game title, empty for pinned game message
  final String title;
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentGame({
    required this.title,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentGame',
    'title': title,
    'is_pinned': isPinned,
  };

  factory PushMessageContentGame.fromJson(Map<String, dynamic> json) => PushMessageContentGame(
    title: json['title'],
    isPinned: json['is_pinned'],
  );
}

/// A new high score was achieved in a game
class PushMessageContentGameScore extends a.PushMessageContent {
  /// Game title, empty for pinned message
  final String title;
  /// New score, 0 for pinned message
  final int score;
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentGameScore({
    required this.title,
    required this.score,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentGameScore',
    'title': title,
    'score': score,
    'is_pinned': isPinned,
  };

  factory PushMessageContentGameScore.fromJson(Map<String, dynamic> json) => PushMessageContentGameScore(
    title: json['title'],
    score: json['score'],
    isPinned: json['is_pinned'],
  );
}

/// A message with an invoice from a bot
class PushMessageContentInvoice extends a.PushMessageContent {
  /// Product price
  final String price;
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentInvoice({
    required this.price,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentInvoice',
    'price': price,
    'is_pinned': isPinned,
  };

  factory PushMessageContentInvoice.fromJson(Map<String, dynamic> json) => PushMessageContentInvoice(
    price: json['price'],
    isPinned: json['is_pinned'],
  );
}

/// A message with a location
class PushMessageContentLocation extends a.PushMessageContent {
  /// True, if the location is live
  final bool isLive;
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentLocation({
    required this.isLive,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentLocation',
    'is_live': isLive,
    'is_pinned': isPinned,
  };

  factory PushMessageContentLocation.fromJson(Map<String, dynamic> json) => PushMessageContentLocation(
    isLive: json['is_live'],
    isPinned: json['is_pinned'],
  );
}

/// A photo message
class PushMessageContentPhoto extends a.PushMessageContent {
  /// Message content; may be null
  final Photo photo;
  /// Photo caption
  final String caption;
  /// True, if the photo is secret
  final bool isSecret;
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentPhoto({
    required this.photo,
    required this.caption,
    required this.isSecret,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentPhoto',
    'photo': photo,
    'caption': caption,
    'is_secret': isSecret,
    'is_pinned': isPinned,
  };

  factory PushMessageContentPhoto.fromJson(Map<String, dynamic> json) => PushMessageContentPhoto(
    photo: b.TdBase.fromJson(json['photo']) as Photo,
    caption: json['caption'],
    isSecret: json['is_secret'],
    isPinned: json['is_pinned'],
  );
}

/// A message with a poll
class PushMessageContentPoll extends a.PushMessageContent {
  /// Poll question
  final String question;
  /// True, if the poll is regular and not in quiz mode
  final bool isRegular;
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentPoll({
    required this.question,
    required this.isRegular,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentPoll',
    'question': question,
    'is_regular': isRegular,
    'is_pinned': isPinned,
  };

  factory PushMessageContentPoll.fromJson(Map<String, dynamic> json) => PushMessageContentPoll(
    question: json['question'],
    isRegular: json['is_regular'],
    isPinned: json['is_pinned'],
  );
}

/// A screenshot of a message in the chat has been taken
class PushMessageContentScreenshotTaken extends a.PushMessageContent {
  PushMessageContentScreenshotTaken();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentScreenshotTaken',
  };

  factory PushMessageContentScreenshotTaken.fromJson(Map<String, dynamic> json) => PushMessageContentScreenshotTaken(
  );
}

/// A message with a sticker
class PushMessageContentSticker extends a.PushMessageContent {
  /// Message content; may be null
  final Sticker sticker;
  /// Emoji corresponding to the sticker; may be empty
  final String emoji;
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentSticker({
    required this.sticker,
    required this.emoji,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentSticker',
    'sticker': sticker,
    'emoji': emoji,
    'is_pinned': isPinned,
  };

  factory PushMessageContentSticker.fromJson(Map<String, dynamic> json) => PushMessageContentSticker(
    sticker: b.TdBase.fromJson(json['sticker']) as Sticker,
    emoji: json['emoji'],
    isPinned: json['is_pinned'],
  );
}

/// A text message
class PushMessageContentText extends a.PushMessageContent {
  /// Message text
  final String text;
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentText({
    required this.text,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentText',
    'text': text,
    'is_pinned': isPinned,
  };

  factory PushMessageContentText.fromJson(Map<String, dynamic> json) => PushMessageContentText(
    text: json['text'],
    isPinned: json['is_pinned'],
  );
}

/// A video message
class PushMessageContentVideo extends a.PushMessageContent {
  /// Message content; may be null
  final Video video;
  /// Video caption
  final String caption;
  /// True, if the video is secret
  final bool isSecret;
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentVideo({
    required this.video,
    required this.caption,
    required this.isSecret,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentVideo',
    'video': video,
    'caption': caption,
    'is_secret': isSecret,
    'is_pinned': isPinned,
  };

  factory PushMessageContentVideo.fromJson(Map<String, dynamic> json) => PushMessageContentVideo(
    video: b.TdBase.fromJson(json['video']) as Video,
    caption: json['caption'],
    isSecret: json['is_secret'],
    isPinned: json['is_pinned'],
  );
}

/// A video note message
class PushMessageContentVideoNote extends a.PushMessageContent {
  /// Message content; may be null
  final VideoNote videoNote;
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentVideoNote({
    required this.videoNote,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentVideoNote',
    'video_note': videoNote,
    'is_pinned': isPinned,
  };

  factory PushMessageContentVideoNote.fromJson(Map<String, dynamic> json) => PushMessageContentVideoNote(
    videoNote: b.TdBase.fromJson(json['video_note']) as VideoNote,
    isPinned: json['is_pinned'],
  );
}

/// A voice note message
class PushMessageContentVoiceNote extends a.PushMessageContent {
  /// Message content; may be null
  final VoiceNote voiceNote;
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;

  PushMessageContentVoiceNote({
    required this.voiceNote,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentVoiceNote',
    'voice_note': voiceNote,
    'is_pinned': isPinned,
  };

  factory PushMessageContentVoiceNote.fromJson(Map<String, dynamic> json) => PushMessageContentVoiceNote(
    voiceNote: b.TdBase.fromJson(json['voice_note']) as VoiceNote,
    isPinned: json['is_pinned'],
  );
}

/// A newly created basic group
class PushMessageContentBasicGroupChatCreate extends a.PushMessageContent {
  PushMessageContentBasicGroupChatCreate();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentBasicGroupChatCreate',
  };

  factory PushMessageContentBasicGroupChatCreate.fromJson(Map<String, dynamic> json) => PushMessageContentBasicGroupChatCreate(
  );
}

/// New chat members were invited to a group
class PushMessageContentChatAddMembers extends a.PushMessageContent {
  /// Name of the added member
  final String memberName;
  /// True, if the current user was added to the group
  final bool isCurrentUser;
  /// True, if the user has returned to the group themself
  final bool isReturned;

  PushMessageContentChatAddMembers({
    required this.memberName,
    required this.isCurrentUser,
    required this.isReturned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentChatAddMembers',
    'member_name': memberName,
    'is_current_user': isCurrentUser,
    'is_returned': isReturned,
  };

  factory PushMessageContentChatAddMembers.fromJson(Map<String, dynamic> json) => PushMessageContentChatAddMembers(
    memberName: json['member_name'],
    isCurrentUser: json['is_current_user'],
    isReturned: json['is_returned'],
  );
}

/// A chat photo was edited
class PushMessageContentChatChangePhoto extends a.PushMessageContent {
  PushMessageContentChatChangePhoto();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentChatChangePhoto',
  };

  factory PushMessageContentChatChangePhoto.fromJson(Map<String, dynamic> json) => PushMessageContentChatChangePhoto(
  );
}

/// A chat title was edited
class PushMessageContentChatChangeTitle extends a.PushMessageContent {
  /// New chat title
  final String title;

  PushMessageContentChatChangeTitle({
    required this.title,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentChatChangeTitle',
    'title': title,
  };

  factory PushMessageContentChatChangeTitle.fromJson(Map<String, dynamic> json) => PushMessageContentChatChangeTitle(
    title: json['title'],
  );
}

/// A chat member was deleted
class PushMessageContentChatDeleteMember extends a.PushMessageContent {
  /// Name of the deleted member
  final String memberName;
  /// True, if the current user was deleted from the group
  final bool isCurrentUser;
  /// True, if the user has left the group themself
  final bool isLeft;

  PushMessageContentChatDeleteMember({
    required this.memberName,
    required this.isCurrentUser,
    required this.isLeft,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentChatDeleteMember',
    'member_name': memberName,
    'is_current_user': isCurrentUser,
    'is_left': isLeft,
  };

  factory PushMessageContentChatDeleteMember.fromJson(Map<String, dynamic> json) => PushMessageContentChatDeleteMember(
    memberName: json['member_name'],
    isCurrentUser: json['is_current_user'],
    isLeft: json['is_left'],
  );
}

/// A new member joined the chat by invite link
class PushMessageContentChatJoinByLink extends a.PushMessageContent {
  PushMessageContentChatJoinByLink();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentChatJoinByLink',
  };

  factory PushMessageContentChatJoinByLink.fromJson(Map<String, dynamic> json) => PushMessageContentChatJoinByLink(
  );
}

/// A forwarded messages
class PushMessageContentMessageForwards extends a.PushMessageContent {
  /// Number of forwarded messages
  final int totalCount;

  PushMessageContentMessageForwards({
    required this.totalCount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentMessageForwards',
    'total_count': totalCount,
  };

  factory PushMessageContentMessageForwards.fromJson(Map<String, dynamic> json) => PushMessageContentMessageForwards(
    totalCount: json['total_count'],
  );
}

/// A media album
class PushMessageContentMediaAlbum extends a.PushMessageContent {
  /// Number of messages in the album
  final int totalCount;
  /// True, if the album has at least one photo
  final bool hasPhotos;
  /// True, if the album has at least one video
  final bool hasVideos;
  /// True, if the album has at least one audio file
  final bool hasAudios;
  /// True, if the album has at least one document
  final bool hasDocuments;

  PushMessageContentMediaAlbum({
    required this.totalCount,
    required this.hasPhotos,
    required this.hasVideos,
    required this.hasAudios,
    required this.hasDocuments,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'pushMessageContentMediaAlbum',
    'total_count': totalCount,
    'has_photos': hasPhotos,
    'has_videos': hasVideos,
    'has_audios': hasAudios,
    'has_documents': hasDocuments,
  };

  factory PushMessageContentMediaAlbum.fromJson(Map<String, dynamic> json) => PushMessageContentMediaAlbum(
    totalCount: json['total_count'],
    hasPhotos: json['has_photos'],
    hasVideos: json['has_videos'],
    hasAudios: json['has_audios'],
    hasDocuments: json['has_documents'],
  );
}

/// New message was received
class NotificationTypeNewMessage extends a.NotificationType {
  /// The message
  final Message message;

  NotificationTypeNewMessage({
    required this.message,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'notificationTypeNewMessage',
    'message': message,
  };

  factory NotificationTypeNewMessage.fromJson(Map<String, dynamic> json) => NotificationTypeNewMessage(
    message: b.TdBase.fromJson(json['message']) as Message,
  );
}

/// New secret chat was created
class NotificationTypeNewSecretChat extends a.NotificationType {
  NotificationTypeNewSecretChat();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'notificationTypeNewSecretChat',
  };

  factory NotificationTypeNewSecretChat.fromJson(Map<String, dynamic> json) => NotificationTypeNewSecretChat(
  );
}

/// New call was received
class NotificationTypeNewCall extends a.NotificationType {
  /// Call identifier
  final int callId;

  NotificationTypeNewCall({
    required this.callId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'notificationTypeNewCall',
    'call_id': callId,
  };

  factory NotificationTypeNewCall.fromJson(Map<String, dynamic> json) => NotificationTypeNewCall(
    callId: json['call_id'],
  );
}

/// New message was received through a push notification
class NotificationTypeNewPushMessage extends a.NotificationType {
  /// The message identifier. The message will not be available in the chat history, but the ID can be used in viewMessages, or as reply_to_message_id
  final int messageId;
  /// The sender of the message. Corresponding user or chat may be inaccessible
  final a.MessageSender sender;
  /// Name of the sender
  final String senderName;
  /// True, if the message is outgoing
  final bool isOutgoing;
  /// Push message content
  final a.PushMessageContent content;

  NotificationTypeNewPushMessage({
    required this.messageId,
    required this.sender,
    required this.senderName,
    required this.isOutgoing,
    required this.content,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'notificationTypeNewPushMessage',
    'message_id': messageId,
    'sender': sender,
    'sender_name': senderName,
    'is_outgoing': isOutgoing,
    'content': content,
  };

  factory NotificationTypeNewPushMessage.fromJson(Map<String, dynamic> json) => NotificationTypeNewPushMessage(
    messageId: json['message_id'],
    sender: b.TdBase.fromJson(json['sender']) as a.MessageSender,
    senderName: json['sender_name'],
    isOutgoing: json['is_outgoing'],
    content: b.TdBase.fromJson(json['content']) as a.PushMessageContent,
  );
}

/// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with ordinary unread messages
class NotificationGroupTypeMessages extends a.NotificationGroupType {
  NotificationGroupTypeMessages();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'notificationGroupTypeMessages',
  };

  factory NotificationGroupTypeMessages.fromJson(Map<String, dynamic> json) => NotificationGroupTypeMessages(
  );
}

/// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with unread mentions of the current user, replies to their messages, or a pinned message
class NotificationGroupTypeMentions extends a.NotificationGroupType {
  NotificationGroupTypeMentions();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'notificationGroupTypeMentions',
  };

  factory NotificationGroupTypeMentions.fromJson(Map<String, dynamic> json) => NotificationGroupTypeMentions(
  );
}

/// A group containing a notification of type notificationTypeNewSecretChat
class NotificationGroupTypeSecretChat extends a.NotificationGroupType {
  NotificationGroupTypeSecretChat();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'notificationGroupTypeSecretChat',
  };

  factory NotificationGroupTypeSecretChat.fromJson(Map<String, dynamic> json) => NotificationGroupTypeSecretChat(
  );
}

/// A group containing notifications of type notificationTypeNewCall
class NotificationGroupTypeCalls extends a.NotificationGroupType {
  NotificationGroupTypeCalls();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'notificationGroupTypeCalls',
  };

  factory NotificationGroupTypeCalls.fromJson(Map<String, dynamic> json) => NotificationGroupTypeCalls(
  );
}

/// Contains information about a notification
class Notification extends a.Notification {
  /// Unique persistent identifier of this notification
  final int id;
  /// Notification date
  final int date;
  /// True, if the notification was initially silent
  final bool isSilent;
  /// Notification type
  final a.NotificationType type;

  Notification({
    required this.id,
    required this.date,
    required this.isSilent,
    required this.type,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'notification',
    'id': id,
    'date': date,
    'is_silent': isSilent,
    'type': type,
  };

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
    id: json['id'],
    date: json['date'],
    isSilent: json['is_silent'],
    type: b.TdBase.fromJson(json['type']) as a.NotificationType,
  );
}

/// Describes a group of notifications
class NotificationGroup extends a.NotificationGroup {
  /// Unique persistent auto-incremented from 1 identifier of the notification group
  final int id;
  /// Type of the group
  final a.NotificationGroupType type;
  /// Identifier of a chat to which all notifications in the group belong
  final int chatId;
  /// Total number of active notifications in the group
  final int totalCount;
  /// The list of active notifications
  final List<Notification> notifications;

  NotificationGroup({
    required this.id,
    required this.type,
    required this.chatId,
    required this.totalCount,
    required this.notifications,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'notificationGroup',
    'id': id,
    'type': type,
    'chat_id': chatId,
    'total_count': totalCount,
    'notifications': notifications,
  };

  factory NotificationGroup.fromJson(Map<String, dynamic> json) => NotificationGroup(
    id: json['id'],
    type: b.TdBase.fromJson(json['type']) as a.NotificationGroupType,
    chatId: json['chat_id'],
    totalCount: json['total_count'],
    notifications: (json['notifications'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as Notification).toList(growable: false),
  );
}

/// Represents a boolean option
class OptionValueBoolean extends a.OptionValue {
  /// The value of the option
  final bool value;

  OptionValueBoolean({
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'optionValueBoolean',
    'value': value,
  };

  factory OptionValueBoolean.fromJson(Map<String, dynamic> json) => OptionValueBoolean(
    value: json['value'],
  );
}

/// Represents an unknown option or an option which has a default value
class OptionValueEmpty extends a.OptionValue {
  OptionValueEmpty();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'optionValueEmpty',
  };

  factory OptionValueEmpty.fromJson(Map<String, dynamic> json) => OptionValueEmpty(
  );
}

/// Represents an integer option
class OptionValueInteger extends a.OptionValue {
  /// The value of the option
  final int value;

  OptionValueInteger({
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'optionValueInteger',
    'value': value,
  };

  factory OptionValueInteger.fromJson(Map<String, dynamic> json) => OptionValueInteger(
    value: int.parse(json['value']),
  );
}

/// Represents a string option
class OptionValueString extends a.OptionValue {
  /// The value of the option
  final String value;

  OptionValueString({
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'optionValueString',
    'value': value,
  };

  factory OptionValueString.fromJson(Map<String, dynamic> json) => OptionValueString(
    value: json['value'],
  );
}

/// Represents one member of a JSON object
class JsonObjectMember extends a.JsonObjectMember {
  /// Member's key
  final String key;
  /// Member's value
  final a.JsonValue value;

  JsonObjectMember({
    required this.key,
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'jsonObjectMember',
    'key': key,
    'value': value,
  };

  factory JsonObjectMember.fromJson(Map<String, dynamic> json) => JsonObjectMember(
    key: json['key'],
    value: b.TdBase.fromJson(json['value']) as a.JsonValue,
  );
}

/// Represents a null JSON value
class JsonValueNull extends a.JsonValue {
  JsonValueNull();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'jsonValueNull',
  };

  factory JsonValueNull.fromJson(Map<String, dynamic> json) => JsonValueNull(
  );
}

/// Represents a boolean JSON value
class JsonValueBoolean extends a.JsonValue {
  /// The value
  final bool value;

  JsonValueBoolean({
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'jsonValueBoolean',
    'value': value,
  };

  factory JsonValueBoolean.fromJson(Map<String, dynamic> json) => JsonValueBoolean(
    value: json['value'],
  );
}

/// Represents a numeric JSON value
class JsonValueNumber extends a.JsonValue {
  /// The value
  final double value;

  JsonValueNumber({
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'jsonValueNumber',
    'value': value,
  };

  factory JsonValueNumber.fromJson(Map<String, dynamic> json) => JsonValueNumber(
    value: json['value'],
  );
}

/// Represents a string JSON value
class JsonValueString extends a.JsonValue {
  /// The value
  final String value;

  JsonValueString({
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'jsonValueString',
    'value': value,
  };

  factory JsonValueString.fromJson(Map<String, dynamic> json) => JsonValueString(
    value: json['value'],
  );
}

/// Represents a JSON array
class JsonValueArray extends a.JsonValue {
  /// The list of array elements
  final List<a.JsonValue> values;

  JsonValueArray({
    required this.values,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'jsonValueArray',
    'values': values,
  };

  factory JsonValueArray.fromJson(Map<String, dynamic> json) => JsonValueArray(
    values: (json['values'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.JsonValue).toList(growable: false),
  );
}

/// Represents a JSON object
class JsonValueObject extends a.JsonValue {
  /// The list of object members
  final List<JsonObjectMember> members;

  JsonValueObject({
    required this.members,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'jsonValueObject',
    'members': members,
  };

  factory JsonValueObject.fromJson(Map<String, dynamic> json) => JsonValueObject(
    members: (json['members'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as JsonObjectMember).toList(growable: false),
  );
}

/// A rule to allow all users to do something
class UserPrivacySettingRuleAllowAll extends a.UserPrivacySettingRule {
  UserPrivacySettingRuleAllowAll();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingRuleAllowAll',
  };

  factory UserPrivacySettingRuleAllowAll.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleAllowAll(
  );
}

/// A rule to allow all of a user's contacts to do something
class UserPrivacySettingRuleAllowContacts extends a.UserPrivacySettingRule {
  UserPrivacySettingRuleAllowContacts();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingRuleAllowContacts',
  };

  factory UserPrivacySettingRuleAllowContacts.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleAllowContacts(
  );
}

/// A rule to allow certain specified users to do something
class UserPrivacySettingRuleAllowUsers extends a.UserPrivacySettingRule {
  /// The user identifiers, total number of users in all rules must not exceed 1000
  final List<int> userIds;

  UserPrivacySettingRuleAllowUsers({
    required this.userIds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingRuleAllowUsers',
    'user_ids': userIds,
  };

  factory UserPrivacySettingRuleAllowUsers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleAllowUsers(
    userIds: (json['user_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// A rule to allow all members of certain specified basic groups and supergroups to doing something
class UserPrivacySettingRuleAllowChatMembers extends a.UserPrivacySettingRule {
  /// The chat identifiers, total number of chats in all rules must not exceed 20
  final List<int> chatIds;

  UserPrivacySettingRuleAllowChatMembers({
    required this.chatIds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingRuleAllowChatMembers',
    'chat_ids': chatIds,
  };

  factory UserPrivacySettingRuleAllowChatMembers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleAllowChatMembers(
    chatIds: (json['chat_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// A rule to restrict all users from doing something
class UserPrivacySettingRuleRestrictAll extends a.UserPrivacySettingRule {
  UserPrivacySettingRuleRestrictAll();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingRuleRestrictAll',
  };

  factory UserPrivacySettingRuleRestrictAll.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleRestrictAll(
  );
}

/// A rule to restrict all contacts of a user from doing something
class UserPrivacySettingRuleRestrictContacts extends a.UserPrivacySettingRule {
  UserPrivacySettingRuleRestrictContacts();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingRuleRestrictContacts',
  };

  factory UserPrivacySettingRuleRestrictContacts.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleRestrictContacts(
  );
}

/// A rule to restrict all specified users from doing something
class UserPrivacySettingRuleRestrictUsers extends a.UserPrivacySettingRule {
  /// The user identifiers, total number of users in all rules must not exceed 1000
  final List<int> userIds;

  UserPrivacySettingRuleRestrictUsers({
    required this.userIds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingRuleRestrictUsers',
    'user_ids': userIds,
  };

  factory UserPrivacySettingRuleRestrictUsers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleRestrictUsers(
    userIds: (json['user_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// A rule to restrict all members of specified basic groups and supergroups from doing something
class UserPrivacySettingRuleRestrictChatMembers extends a.UserPrivacySettingRule {
  /// The chat identifiers, total number of chats in all rules must not exceed 20
  final List<int> chatIds;

  UserPrivacySettingRuleRestrictChatMembers({
    required this.chatIds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingRuleRestrictChatMembers',
    'chat_ids': chatIds,
  };

  factory UserPrivacySettingRuleRestrictChatMembers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleRestrictChatMembers(
    chatIds: (json['chat_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// A list of privacy rules. Rules are matched in the specified order. The first matched rule defines the privacy setting for a given user. If no rule matches, the action is not allowed
class UserPrivacySettingRules extends a.UserPrivacySettingRules {
  /// A list of rules
  final List<a.UserPrivacySettingRule> rules;

  UserPrivacySettingRules({
    required this.rules,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingRules',
    'rules': rules,
  };

  factory UserPrivacySettingRules.fromJson(Map<String, dynamic> json) => UserPrivacySettingRules(
    rules: (json['rules'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.UserPrivacySettingRule).toList(growable: false),
  );
}

/// A privacy setting for managing whether the user's online status is visible
class UserPrivacySettingShowStatus extends a.UserPrivacySetting {
  UserPrivacySettingShowStatus();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingShowStatus',
  };

  factory UserPrivacySettingShowStatus.fromJson(Map<String, dynamic> json) => UserPrivacySettingShowStatus(
  );
}

/// A privacy setting for managing whether the user's profile photo is visible
class UserPrivacySettingShowProfilePhoto extends a.UserPrivacySetting {
  UserPrivacySettingShowProfilePhoto();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingShowProfilePhoto',
  };

  factory UserPrivacySettingShowProfilePhoto.fromJson(Map<String, dynamic> json) => UserPrivacySettingShowProfilePhoto(
  );
}

/// A privacy setting for managing whether a link to the user's account is included in forwarded messages
class UserPrivacySettingShowLinkInForwardedMessages extends a.UserPrivacySetting {
  UserPrivacySettingShowLinkInForwardedMessages();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingShowLinkInForwardedMessages',
  };

  factory UserPrivacySettingShowLinkInForwardedMessages.fromJson(Map<String, dynamic> json) => UserPrivacySettingShowLinkInForwardedMessages(
  );
}

/// A privacy setting for managing whether the user's phone number is visible
class UserPrivacySettingShowPhoneNumber extends a.UserPrivacySetting {
  UserPrivacySettingShowPhoneNumber();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingShowPhoneNumber',
  };

  factory UserPrivacySettingShowPhoneNumber.fromJson(Map<String, dynamic> json) => UserPrivacySettingShowPhoneNumber(
  );
}

/// A privacy setting for managing whether the user can be invited to chats
class UserPrivacySettingAllowChatInvites extends a.UserPrivacySetting {
  UserPrivacySettingAllowChatInvites();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingAllowChatInvites',
  };

  factory UserPrivacySettingAllowChatInvites.fromJson(Map<String, dynamic> json) => UserPrivacySettingAllowChatInvites(
  );
}

/// A privacy setting for managing whether the user can be called
class UserPrivacySettingAllowCalls extends a.UserPrivacySetting {
  UserPrivacySettingAllowCalls();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingAllowCalls',
  };

  factory UserPrivacySettingAllowCalls.fromJson(Map<String, dynamic> json) => UserPrivacySettingAllowCalls(
  );
}

/// A privacy setting for managing whether peer-to-peer connections can be used for calls
class UserPrivacySettingAllowPeerToPeerCalls extends a.UserPrivacySetting {
  UserPrivacySettingAllowPeerToPeerCalls();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingAllowPeerToPeerCalls',
  };

  factory UserPrivacySettingAllowPeerToPeerCalls.fromJson(Map<String, dynamic> json) => UserPrivacySettingAllowPeerToPeerCalls(
  );
}

/// A privacy setting for managing whether the user can be found by their phone number. Checked only if the phone number is not known to the other user. Can be set only to "Allow contacts" or "Allow all"
class UserPrivacySettingAllowFindingByPhoneNumber extends a.UserPrivacySetting {
  UserPrivacySettingAllowFindingByPhoneNumber();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'userPrivacySettingAllowFindingByPhoneNumber',
  };

  factory UserPrivacySettingAllowFindingByPhoneNumber.fromJson(Map<String, dynamic> json) => UserPrivacySettingAllowFindingByPhoneNumber(
  );
}

/// Contains information about the period of inactivity after which the current user's account will automatically be deleted
class AccountTtl extends a.AccountTtl {
  /// Number of days of inactivity before the account will be flagged for deletion; should range from 30-366 days
  final int days;

  AccountTtl({
    required this.days,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'accountTtl',
    'days': days,
  };

  factory AccountTtl.fromJson(Map<String, dynamic> json) => AccountTtl(
    days: json['days'],
  );
}

/// Contains information about one session in a Telegram application used by the current user. Sessions should be shown to the user in the returned order
class Session extends a.Session {
  /// Session identifier
  final int id;
  /// True, if this session is the current session
  final bool isCurrent;
  /// True, if a password is needed to complete authorization of the session
  final bool isPasswordPending;
  /// Telegram API identifier, as provided by the application
  final int apiId;
  /// Name of the application, as provided by the application
  final String applicationName;
  /// The version of the application, as provided by the application
  final String applicationVersion;
  /// True, if the application is an official application or uses the api_id of an official application
  final bool isOfficialApplication;
  /// Model of the device the application has been run or is running on, as provided by the application
  final String deviceModel;
  /// Operating system the application has been run or is running on, as provided by the application
  final String platform;
  /// Version of the operating system the application has been run or is running on, as provided by the application
  final String systemVersion;
  /// Point in time (Unix timestamp) when the user has logged in
  final int logInDate;
  /// Point in time (Unix timestamp) when the session was last used
  final int lastActiveDate;
  /// IP address from which the session was created, in human-readable format
  final String ip;
  /// A two-letter country code for the country from which the session was created, based on the IP address
  final String country;
  /// Region code from which the session was created, based on the IP address
  final String region;

  Session({
    required this.id,
    required this.isCurrent,
    required this.isPasswordPending,
    required this.apiId,
    required this.applicationName,
    required this.applicationVersion,
    required this.isOfficialApplication,
    required this.deviceModel,
    required this.platform,
    required this.systemVersion,
    required this.logInDate,
    required this.lastActiveDate,
    required this.ip,
    required this.country,
    required this.region,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'session',
    'id': id,
    'is_current': isCurrent,
    'is_password_pending': isPasswordPending,
    'api_id': apiId,
    'application_name': applicationName,
    'application_version': applicationVersion,
    'is_official_application': isOfficialApplication,
    'device_model': deviceModel,
    'platform': platform,
    'system_version': systemVersion,
    'log_in_date': logInDate,
    'last_active_date': lastActiveDate,
    'ip': ip,
    'country': country,
    'region': region,
  };

  factory Session.fromJson(Map<String, dynamic> json) => Session(
    id: int.parse(json['id']),
    isCurrent: json['is_current'],
    isPasswordPending: json['is_password_pending'],
    apiId: json['api_id'],
    applicationName: json['application_name'],
    applicationVersion: json['application_version'],
    isOfficialApplication: json['is_official_application'],
    deviceModel: json['device_model'],
    platform: json['platform'],
    systemVersion: json['system_version'],
    logInDate: json['log_in_date'],
    lastActiveDate: json['last_active_date'],
    ip: json['ip'],
    country: json['country'],
    region: json['region'],
  );
}

/// Contains a list of sessions
class Sessions extends a.Sessions {
  /// List of sessions
  final List<Session> sessions;

  Sessions({
    required this.sessions,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'sessions',
    'sessions': sessions,
  };

  factory Sessions.fromJson(Map<String, dynamic> json) => Sessions(
    sessions: (json['sessions'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as Session).toList(growable: false),
  );
}

/// Contains information about one website the current user is logged in with Telegram
class ConnectedWebsite extends a.ConnectedWebsite {
  /// Website identifier
  final int id;
  /// The domain name of the website
  final String domainName;
  /// User identifier of a bot linked with the website
  final int botUserId;
  /// The version of a browser used to log in
  final String browser;
  /// Operating system the browser is running on
  final String platform;
  /// Point in time (Unix timestamp) when the user was logged in
  final int logInDate;
  /// Point in time (Unix timestamp) when obtained authorization was last used
  final int lastActiveDate;
  /// IP address from which the user was logged in, in human-readable format
  final String ip;
  /// Human-readable description of a country and a region, from which the user was logged in, based on the IP address
  final String location;

  ConnectedWebsite({
    required this.id,
    required this.domainName,
    required this.botUserId,
    required this.browser,
    required this.platform,
    required this.logInDate,
    required this.lastActiveDate,
    required this.ip,
    required this.location,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'connectedWebsite',
    'id': id,
    'domain_name': domainName,
    'bot_user_id': botUserId,
    'browser': browser,
    'platform': platform,
    'log_in_date': logInDate,
    'last_active_date': lastActiveDate,
    'ip': ip,
    'location': location,
  };

  factory ConnectedWebsite.fromJson(Map<String, dynamic> json) => ConnectedWebsite(
    id: int.parse(json['id']),
    domainName: json['domain_name'],
    botUserId: json['bot_user_id'],
    browser: json['browser'],
    platform: json['platform'],
    logInDate: json['log_in_date'],
    lastActiveDate: json['last_active_date'],
    ip: json['ip'],
    location: json['location'],
  );
}

/// Contains a list of websites the current user is logged in with Telegram
class ConnectedWebsites extends a.ConnectedWebsites {
  /// List of connected websites
  final List<ConnectedWebsite> websites;

  ConnectedWebsites({
    required this.websites,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'connectedWebsites',
    'websites': websites,
  };

  factory ConnectedWebsites.fromJson(Map<String, dynamic> json) => ConnectedWebsites(
    websites: (json['websites'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ConnectedWebsite).toList(growable: false),
  );
}

/// The chat contains spam messages
class ChatReportReasonSpam extends a.ChatReportReason {
  ChatReportReasonSpam();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatReportReasonSpam',
  };

  factory ChatReportReasonSpam.fromJson(Map<String, dynamic> json) => ChatReportReasonSpam(
  );
}

/// The chat promotes violence
class ChatReportReasonViolence extends a.ChatReportReason {
  ChatReportReasonViolence();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatReportReasonViolence',
  };

  factory ChatReportReasonViolence.fromJson(Map<String, dynamic> json) => ChatReportReasonViolence(
  );
}

/// The chat contains pornographic messages
class ChatReportReasonPornography extends a.ChatReportReason {
  ChatReportReasonPornography();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatReportReasonPornography',
  };

  factory ChatReportReasonPornography.fromJson(Map<String, dynamic> json) => ChatReportReasonPornography(
  );
}

/// The chat has child abuse related content
class ChatReportReasonChildAbuse extends a.ChatReportReason {
  ChatReportReasonChildAbuse();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatReportReasonChildAbuse',
  };

  factory ChatReportReasonChildAbuse.fromJson(Map<String, dynamic> json) => ChatReportReasonChildAbuse(
  );
}

/// The chat contains copyrighted content
class ChatReportReasonCopyright extends a.ChatReportReason {
  ChatReportReasonCopyright();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatReportReasonCopyright',
  };

  factory ChatReportReasonCopyright.fromJson(Map<String, dynamic> json) => ChatReportReasonCopyright(
  );
}

/// The location-based chat is unrelated to its stated location
class ChatReportReasonUnrelatedLocation extends a.ChatReportReason {
  ChatReportReasonUnrelatedLocation();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatReportReasonUnrelatedLocation',
  };

  factory ChatReportReasonUnrelatedLocation.fromJson(Map<String, dynamic> json) => ChatReportReasonUnrelatedLocation(
  );
}

/// The chat represents a fake account
class ChatReportReasonFake extends a.ChatReportReason {
  ChatReportReasonFake();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatReportReasonFake',
  };

  factory ChatReportReasonFake.fromJson(Map<String, dynamic> json) => ChatReportReasonFake(
  );
}

/// A custom reason provided by the user
class ChatReportReasonCustom extends a.ChatReportReason {
  ChatReportReasonCustom();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatReportReasonCustom',
  };

  factory ChatReportReasonCustom.fromJson(Map<String, dynamic> json) => ChatReportReasonCustom(
  );
}

/// Contains an HTTPS link to a message in a supergroup or channel
class MessageLink extends a.MessageLink {
  /// Message link
  final String link;
  /// True, if the link will work for non-members of the chat
  final bool isPublic;

  MessageLink({
    required this.link,
    required this.isPublic,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageLink',
    'link': link,
    'is_public': isPublic,
  };

  factory MessageLink.fromJson(Map<String, dynamic> json) => MessageLink(
    link: json['link'],
    isPublic: json['is_public'],
  );
}

/// Contains information about a link to a message in a chat
class MessageLinkInfo extends a.MessageLinkInfo {
  /// True, if the link is a public link for a message in a chat
  final bool isPublic;
  /// If found, identifier of the chat to which the message belongs, 0 otherwise
  final int chatId;
  /// If found, the linked message; may be null
  final Message message;
  /// True, if the whole media album to which the message belongs is linked
  final bool forAlbum;
  /// True, if the message is linked as a channel post comment or from a message thread
  final bool forComment;

  MessageLinkInfo({
    required this.isPublic,
    required this.chatId,
    required this.message,
    required this.forAlbum,
    required this.forComment,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageLinkInfo',
    'is_public': isPublic,
    'chat_id': chatId,
    'message': message,
    'for_album': forAlbum,
    'for_comment': forComment,
  };

  factory MessageLinkInfo.fromJson(Map<String, dynamic> json) => MessageLinkInfo(
    isPublic: json['is_public'],
    chatId: json['chat_id'],
    message: b.TdBase.fromJson(json['message']) as Message,
    forAlbum: json['for_album'],
    forComment: json['for_comment'],
  );
}

/// Contains a part of a file
class FilePart extends a.FilePart {
  /// File bytes
  final Uint8List data;

  FilePart({
    required this.data,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'filePart',
    'data': data,
  };

  factory FilePart.fromJson(Map<String, dynamic> json) => FilePart(
    data: base64.decode(json['data']),
  );
}

/// The data is not a file
class FileTypeNone extends a.FileType {
  FileTypeNone();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypeNone',
  };

  factory FileTypeNone.fromJson(Map<String, dynamic> json) => FileTypeNone(
  );
}

/// The file is an animation
class FileTypeAnimation extends a.FileType {
  FileTypeAnimation();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypeAnimation',
  };

  factory FileTypeAnimation.fromJson(Map<String, dynamic> json) => FileTypeAnimation(
  );
}

/// The file is an audio file
class FileTypeAudio extends a.FileType {
  FileTypeAudio();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypeAudio',
  };

  factory FileTypeAudio.fromJson(Map<String, dynamic> json) => FileTypeAudio(
  );
}

/// The file is a document
class FileTypeDocument extends a.FileType {
  FileTypeDocument();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypeDocument',
  };

  factory FileTypeDocument.fromJson(Map<String, dynamic> json) => FileTypeDocument(
  );
}

/// The file is a photo
class FileTypePhoto extends a.FileType {
  FileTypePhoto();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypePhoto',
  };

  factory FileTypePhoto.fromJson(Map<String, dynamic> json) => FileTypePhoto(
  );
}

/// The file is a profile photo
class FileTypeProfilePhoto extends a.FileType {
  FileTypeProfilePhoto();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypeProfilePhoto',
  };

  factory FileTypeProfilePhoto.fromJson(Map<String, dynamic> json) => FileTypeProfilePhoto(
  );
}

/// The file was sent to a secret chat (the file type is not known to the server)
class FileTypeSecret extends a.FileType {
  FileTypeSecret();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypeSecret',
  };

  factory FileTypeSecret.fromJson(Map<String, dynamic> json) => FileTypeSecret(
  );
}

/// The file is a thumbnail of a file from a secret chat
class FileTypeSecretThumbnail extends a.FileType {
  FileTypeSecretThumbnail();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypeSecretThumbnail',
  };

  factory FileTypeSecretThumbnail.fromJson(Map<String, dynamic> json) => FileTypeSecretThumbnail(
  );
}

/// The file is a file from Secure storage used for storing Telegram Passport files
class FileTypeSecure extends a.FileType {
  FileTypeSecure();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypeSecure',
  };

  factory FileTypeSecure.fromJson(Map<String, dynamic> json) => FileTypeSecure(
  );
}

/// The file is a sticker
class FileTypeSticker extends a.FileType {
  FileTypeSticker();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypeSticker',
  };

  factory FileTypeSticker.fromJson(Map<String, dynamic> json) => FileTypeSticker(
  );
}

/// The file is a thumbnail of another file
class FileTypeThumbnail extends a.FileType {
  FileTypeThumbnail();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypeThumbnail',
  };

  factory FileTypeThumbnail.fromJson(Map<String, dynamic> json) => FileTypeThumbnail(
  );
}

/// The file type is not yet known
class FileTypeUnknown extends a.FileType {
  FileTypeUnknown();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypeUnknown',
  };

  factory FileTypeUnknown.fromJson(Map<String, dynamic> json) => FileTypeUnknown(
  );
}

/// The file is a video
class FileTypeVideo extends a.FileType {
  FileTypeVideo();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypeVideo',
  };

  factory FileTypeVideo.fromJson(Map<String, dynamic> json) => FileTypeVideo(
  );
}

/// The file is a video note
class FileTypeVideoNote extends a.FileType {
  FileTypeVideoNote();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypeVideoNote',
  };

  factory FileTypeVideoNote.fromJson(Map<String, dynamic> json) => FileTypeVideoNote(
  );
}

/// The file is a voice note
class FileTypeVoiceNote extends a.FileType {
  FileTypeVoiceNote();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypeVoiceNote',
  };

  factory FileTypeVoiceNote.fromJson(Map<String, dynamic> json) => FileTypeVoiceNote(
  );
}

/// The file is a wallpaper or a background pattern
class FileTypeWallpaper extends a.FileType {
  FileTypeWallpaper();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'fileTypeWallpaper',
  };

  factory FileTypeWallpaper.fromJson(Map<String, dynamic> json) => FileTypeWallpaper(
  );
}

/// Contains the storage usage statistics for a specific file type
class StorageStatisticsByFileType extends a.StorageStatisticsByFileType {
  /// File type
  final a.FileType fileType;
  /// Total size of the files
  final int size;
  /// Total number of files
  final int count;

  StorageStatisticsByFileType({
    required this.fileType,
    required this.size,
    required this.count,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'storageStatisticsByFileType',
    'file_type': fileType,
    'size': size,
    'count': count,
  };

  factory StorageStatisticsByFileType.fromJson(Map<String, dynamic> json) => StorageStatisticsByFileType(
    fileType: b.TdBase.fromJson(json['file_type']) as a.FileType,
    size: json['size'],
    count: json['count'],
  );
}

/// Contains the storage usage statistics for a specific chat
class StorageStatisticsByChat extends a.StorageStatisticsByChat {
  /// Chat identifier; 0 if none
  final int chatId;
  /// Total size of the files in the chat
  final int size;
  /// Total number of files in the chat
  final int count;
  /// Statistics split by file types
  final List<StorageStatisticsByFileType> byFileType;

  StorageStatisticsByChat({
    required this.chatId,
    required this.size,
    required this.count,
    required this.byFileType,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'storageStatisticsByChat',
    'chat_id': chatId,
    'size': size,
    'count': count,
    'by_file_type': byFileType,
  };

  factory StorageStatisticsByChat.fromJson(Map<String, dynamic> json) => StorageStatisticsByChat(
    chatId: json['chat_id'],
    size: json['size'],
    count: json['count'],
    byFileType: (json['by_file_type'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as StorageStatisticsByFileType).toList(growable: false),
  );
}

/// Contains the exact storage usage statistics split by chats and file type
class StorageStatistics extends a.StorageStatistics {
  /// Total size of files
  final int size;
  /// Total number of files
  final int count;
  /// Statistics split by chats
  final List<StorageStatisticsByChat> byChat;

  StorageStatistics({
    required this.size,
    required this.count,
    required this.byChat,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'storageStatistics',
    'size': size,
    'count': count,
    'by_chat': byChat,
  };

  factory StorageStatistics.fromJson(Map<String, dynamic> json) => StorageStatistics(
    size: json['size'],
    count: json['count'],
    byChat: (json['by_chat'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as StorageStatisticsByChat).toList(growable: false),
  );
}

/// Contains approximate storage usage statistics, excluding files of unknown file type
class StorageStatisticsFast extends a.StorageStatisticsFast {
  /// Approximate total size of files
  final int filesSize;
  /// Approximate number of files
  final int fileCount;
  /// Size of the database
  final int databaseSize;
  /// Size of the language pack database
  final int languagePackDatabaseSize;
  /// Size of the TDLib internal log
  final int logSize;

  StorageStatisticsFast({
    required this.filesSize,
    required this.fileCount,
    required this.databaseSize,
    required this.languagePackDatabaseSize,
    required this.logSize,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'storageStatisticsFast',
    'files_size': filesSize,
    'file_count': fileCount,
    'database_size': databaseSize,
    'language_pack_database_size': languagePackDatabaseSize,
    'log_size': logSize,
  };

  factory StorageStatisticsFast.fromJson(Map<String, dynamic> json) => StorageStatisticsFast(
    filesSize: json['files_size'],
    fileCount: json['file_count'],
    databaseSize: json['database_size'],
    languagePackDatabaseSize: json['language_pack_database_size'],
    logSize: json['log_size'],
  );
}

/// Contains database statistics
class DatabaseStatistics extends a.DatabaseStatistics {
  /// Database statistics in an unspecified human-readable format
  final String statistics;

  DatabaseStatistics({
    required this.statistics,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'databaseStatistics',
    'statistics': statistics,
  };

  factory DatabaseStatistics.fromJson(Map<String, dynamic> json) => DatabaseStatistics(
    statistics: json['statistics'],
  );
}

/// The network is not available
class NetworkTypeNone extends a.NetworkType {
  NetworkTypeNone();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'networkTypeNone',
  };

  factory NetworkTypeNone.fromJson(Map<String, dynamic> json) => NetworkTypeNone(
  );
}

/// A mobile network
class NetworkTypeMobile extends a.NetworkType {
  NetworkTypeMobile();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'networkTypeMobile',
  };

  factory NetworkTypeMobile.fromJson(Map<String, dynamic> json) => NetworkTypeMobile(
  );
}

/// A mobile roaming network
class NetworkTypeMobileRoaming extends a.NetworkType {
  NetworkTypeMobileRoaming();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'networkTypeMobileRoaming',
  };

  factory NetworkTypeMobileRoaming.fromJson(Map<String, dynamic> json) => NetworkTypeMobileRoaming(
  );
}

/// A Wi-Fi network
class NetworkTypeWiFi extends a.NetworkType {
  NetworkTypeWiFi();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'networkTypeWiFi',
  };

  factory NetworkTypeWiFi.fromJson(Map<String, dynamic> json) => NetworkTypeWiFi(
  );
}

/// A different network type (e.g., Ethernet network)
class NetworkTypeOther extends a.NetworkType {
  NetworkTypeOther();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'networkTypeOther',
  };

  factory NetworkTypeOther.fromJson(Map<String, dynamic> json) => NetworkTypeOther(
  );
}

/// Contains information about the total amount of data that was used to send and receive files
class NetworkStatisticsEntryFile extends a.NetworkStatisticsEntry {
  /// Type of the file the data is part of
  final a.FileType fileType;
  /// Type of the network the data was sent through. Call setNetworkType to maintain the actual network type
  final a.NetworkType networkType;
  /// Total number of bytes sent
  final int sentBytes;
  /// Total number of bytes received
  final int receivedBytes;

  NetworkStatisticsEntryFile({
    required this.fileType,
    required this.networkType,
    required this.sentBytes,
    required this.receivedBytes,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'networkStatisticsEntryFile',
    'file_type': fileType,
    'network_type': networkType,
    'sent_bytes': sentBytes,
    'received_bytes': receivedBytes,
  };

  factory NetworkStatisticsEntryFile.fromJson(Map<String, dynamic> json) => NetworkStatisticsEntryFile(
    fileType: b.TdBase.fromJson(json['file_type']) as a.FileType,
    networkType: b.TdBase.fromJson(json['network_type']) as a.NetworkType,
    sentBytes: json['sent_bytes'],
    receivedBytes: json['received_bytes'],
  );
}

/// Contains information about the total amount of data that was used for calls
class NetworkStatisticsEntryCall extends a.NetworkStatisticsEntry {
  /// Type of the network the data was sent through. Call setNetworkType to maintain the actual network type
  final a.NetworkType networkType;
  /// Total number of bytes sent
  final int sentBytes;
  /// Total number of bytes received
  final int receivedBytes;
  /// Total call duration, in seconds
  final double duration;

  NetworkStatisticsEntryCall({
    required this.networkType,
    required this.sentBytes,
    required this.receivedBytes,
    required this.duration,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'networkStatisticsEntryCall',
    'network_type': networkType,
    'sent_bytes': sentBytes,
    'received_bytes': receivedBytes,
    'duration': duration,
  };

  factory NetworkStatisticsEntryCall.fromJson(Map<String, dynamic> json) => NetworkStatisticsEntryCall(
    networkType: b.TdBase.fromJson(json['network_type']) as a.NetworkType,
    sentBytes: json['sent_bytes'],
    receivedBytes: json['received_bytes'],
    duration: json['duration'],
  );
}

/// A full list of available network statistic entries
class NetworkStatistics extends a.NetworkStatistics {
  /// Point in time (Unix timestamp) from which the statistics are collected
  final int sinceDate;
  /// Network statistics entries
  final List<a.NetworkStatisticsEntry> entries;

  NetworkStatistics({
    required this.sinceDate,
    required this.entries,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'networkStatistics',
    'since_date': sinceDate,
    'entries': entries,
  };

  factory NetworkStatistics.fromJson(Map<String, dynamic> json) => NetworkStatistics(
    sinceDate: json['since_date'],
    entries: (json['entries'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.NetworkStatisticsEntry).toList(growable: false),
  );
}

/// Contains auto-download settings
class AutoDownloadSettings extends a.AutoDownloadSettings {
  /// True, if the auto-download is enabled
  final bool isAutoDownloadEnabled;
  /// The maximum size of a photo file to be auto-downloaded
  final int maxPhotoFileSize;
  /// The maximum size of a video file to be auto-downloaded
  final int maxVideoFileSize;
  /// The maximum size of other file types to be auto-downloaded
  final int maxOtherFileSize;
  /// The maximum suggested bitrate for uploaded videos
  final int videoUploadBitrate;
  /// True, if the beginning of video files needs to be preloaded for instant playback
  final bool preloadLargeVideos;
  /// True, if the next audio track needs to be preloaded while the user is listening to an audio file
  final bool preloadNextAudio;
  /// True, if "use less data for calls" option needs to be enabled
  final bool useLessDataForCalls;

  AutoDownloadSettings({
    required this.isAutoDownloadEnabled,
    required this.maxPhotoFileSize,
    required this.maxVideoFileSize,
    required this.maxOtherFileSize,
    required this.videoUploadBitrate,
    required this.preloadLargeVideos,
    required this.preloadNextAudio,
    required this.useLessDataForCalls,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'autoDownloadSettings',
    'is_auto_download_enabled': isAutoDownloadEnabled,
    'max_photo_file_size': maxPhotoFileSize,
    'max_video_file_size': maxVideoFileSize,
    'max_other_file_size': maxOtherFileSize,
    'video_upload_bitrate': videoUploadBitrate,
    'preload_large_videos': preloadLargeVideos,
    'preload_next_audio': preloadNextAudio,
    'use_less_data_for_calls': useLessDataForCalls,
  };

  factory AutoDownloadSettings.fromJson(Map<String, dynamic> json) => AutoDownloadSettings(
    isAutoDownloadEnabled: json['is_auto_download_enabled'],
    maxPhotoFileSize: json['max_photo_file_size'],
    maxVideoFileSize: json['max_video_file_size'],
    maxOtherFileSize: json['max_other_file_size'],
    videoUploadBitrate: json['video_upload_bitrate'],
    preloadLargeVideos: json['preload_large_videos'],
    preloadNextAudio: json['preload_next_audio'],
    useLessDataForCalls: json['use_less_data_for_calls'],
  );
}

/// Contains auto-download settings presets for the user
class AutoDownloadSettingsPresets extends a.AutoDownloadSettingsPresets {
  /// Preset with lowest settings; supposed to be used by default when roaming
  final AutoDownloadSettings low;
  /// Preset with medium settings; supposed to be used by default when using mobile data
  final AutoDownloadSettings medium;
  /// Preset with highest settings; supposed to be used by default when connected on Wi-Fi
  final AutoDownloadSettings high;

  AutoDownloadSettingsPresets({
    required this.low,
    required this.medium,
    required this.high,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'autoDownloadSettingsPresets',
    'low': low,
    'medium': medium,
    'high': high,
  };

  factory AutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json) => AutoDownloadSettingsPresets(
    low: b.TdBase.fromJson(json['low']) as AutoDownloadSettings,
    medium: b.TdBase.fromJson(json['medium']) as AutoDownloadSettings,
    high: b.TdBase.fromJson(json['high']) as AutoDownloadSettings,
  );
}

/// Currently waiting for the network to become available. Use setNetworkType to change the available network type
class ConnectionStateWaitingForNetwork extends a.ConnectionState {
  ConnectionStateWaitingForNetwork();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'connectionStateWaitingForNetwork',
  };

  factory ConnectionStateWaitingForNetwork.fromJson(Map<String, dynamic> json) => ConnectionStateWaitingForNetwork(
  );
}

/// Currently establishing a connection with a proxy server
class ConnectionStateConnectingToProxy extends a.ConnectionState {
  ConnectionStateConnectingToProxy();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'connectionStateConnectingToProxy',
  };

  factory ConnectionStateConnectingToProxy.fromJson(Map<String, dynamic> json) => ConnectionStateConnectingToProxy(
  );
}

/// Currently establishing a connection to the Telegram servers
class ConnectionStateConnecting extends a.ConnectionState {
  ConnectionStateConnecting();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'connectionStateConnecting',
  };

  factory ConnectionStateConnecting.fromJson(Map<String, dynamic> json) => ConnectionStateConnecting(
  );
}

/// Downloading data received while the application was offline
class ConnectionStateUpdating extends a.ConnectionState {
  ConnectionStateUpdating();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'connectionStateUpdating',
  };

  factory ConnectionStateUpdating.fromJson(Map<String, dynamic> json) => ConnectionStateUpdating(
  );
}

/// There is a working connection to the Telegram servers
class ConnectionStateReady extends a.ConnectionState {
  ConnectionStateReady();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'connectionStateReady',
  };

  factory ConnectionStateReady.fromJson(Map<String, dynamic> json) => ConnectionStateReady(
  );
}

/// A category containing frequently used private chats with non-bot users
class TopChatCategoryUsers extends a.TopChatCategory {
  TopChatCategoryUsers();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'topChatCategoryUsers',
  };

  factory TopChatCategoryUsers.fromJson(Map<String, dynamic> json) => TopChatCategoryUsers(
  );
}

/// A category containing frequently used private chats with bot users
class TopChatCategoryBots extends a.TopChatCategory {
  TopChatCategoryBots();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'topChatCategoryBots',
  };

  factory TopChatCategoryBots.fromJson(Map<String, dynamic> json) => TopChatCategoryBots(
  );
}

/// A category containing frequently used basic groups and supergroups
class TopChatCategoryGroups extends a.TopChatCategory {
  TopChatCategoryGroups();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'topChatCategoryGroups',
  };

  factory TopChatCategoryGroups.fromJson(Map<String, dynamic> json) => TopChatCategoryGroups(
  );
}

/// A category containing frequently used channels
class TopChatCategoryChannels extends a.TopChatCategory {
  TopChatCategoryChannels();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'topChatCategoryChannels',
  };

  factory TopChatCategoryChannels.fromJson(Map<String, dynamic> json) => TopChatCategoryChannels(
  );
}

/// A category containing frequently used chats with inline bots sorted by their usage in inline mode
class TopChatCategoryInlineBots extends a.TopChatCategory {
  TopChatCategoryInlineBots();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'topChatCategoryInlineBots',
  };

  factory TopChatCategoryInlineBots.fromJson(Map<String, dynamic> json) => TopChatCategoryInlineBots(
  );
}

/// A category containing frequently used chats used for calls
class TopChatCategoryCalls extends a.TopChatCategory {
  TopChatCategoryCalls();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'topChatCategoryCalls',
  };

  factory TopChatCategoryCalls.fromJson(Map<String, dynamic> json) => TopChatCategoryCalls(
  );
}

/// A category containing frequently used chats used to forward messages
class TopChatCategoryForwardChats extends a.TopChatCategory {
  TopChatCategoryForwardChats();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'topChatCategoryForwardChats',
  };

  factory TopChatCategoryForwardChats.fromJson(Map<String, dynamic> json) => TopChatCategoryForwardChats(
  );
}

/// A URL linking to a user
class TMeUrlTypeUser extends a.TMeUrlType {
  /// Identifier of the user
  final int userId;

  TMeUrlTypeUser({
    required this.userId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'tMeUrlTypeUser',
    'user_id': userId,
  };

  factory TMeUrlTypeUser.fromJson(Map<String, dynamic> json) => TMeUrlTypeUser(
    userId: json['user_id'],
  );
}

/// A URL linking to a public supergroup or channel
class TMeUrlTypeSupergroup extends a.TMeUrlType {
  /// Identifier of the supergroup or channel
  final int supergroupId;

  TMeUrlTypeSupergroup({
    required this.supergroupId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'tMeUrlTypeSupergroup',
    'supergroup_id': supergroupId,
  };

  factory TMeUrlTypeSupergroup.fromJson(Map<String, dynamic> json) => TMeUrlTypeSupergroup(
    supergroupId: json['supergroup_id'],
  );
}

/// A chat invite link
class TMeUrlTypeChatInvite extends a.TMeUrlType {
  /// Chat invite link info
  final ChatInviteLinkInfo info;

  TMeUrlTypeChatInvite({
    required this.info,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'tMeUrlTypeChatInvite',
    'info': info,
  };

  factory TMeUrlTypeChatInvite.fromJson(Map<String, dynamic> json) => TMeUrlTypeChatInvite(
    info: b.TdBase.fromJson(json['info']) as ChatInviteLinkInfo,
  );
}

/// A URL linking to a sticker set
class TMeUrlTypeStickerSet extends a.TMeUrlType {
  /// Identifier of the sticker set
  final int stickerSetId;

  TMeUrlTypeStickerSet({
    required this.stickerSetId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'tMeUrlTypeStickerSet',
    'sticker_set_id': stickerSetId,
  };

  factory TMeUrlTypeStickerSet.fromJson(Map<String, dynamic> json) => TMeUrlTypeStickerSet(
    stickerSetId: int.parse(json['sticker_set_id']),
  );
}

/// Represents a URL linking to an internal Telegram entity
class TMeUrl extends a.TMeUrl {
  /// URL
  final String url;
  /// Type of the URL
  final a.TMeUrlType type;

  TMeUrl({
    required this.url,
    required this.type,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'tMeUrl',
    'url': url,
    'type': type,
  };

  factory TMeUrl.fromJson(Map<String, dynamic> json) => TMeUrl(
    url: json['url'],
    type: b.TdBase.fromJson(json['type']) as a.TMeUrlType,
  );
}

/// Contains a list of t.me URLs
class TMeUrls extends a.TMeUrls {
  /// List of URLs
  final List<TMeUrl> urls;

  TMeUrls({
    required this.urls,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'tMeUrls',
    'urls': urls,
  };

  factory TMeUrls.fromJson(Map<String, dynamic> json) => TMeUrls(
    urls: (json['urls'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as TMeUrl).toList(growable: false),
  );
}

/// Suggests the user to enable "archive_and_mute_new_chats_from_unknown_users" option
class SuggestedActionEnableArchiveAndMuteNewChats extends a.SuggestedAction {
  SuggestedActionEnableArchiveAndMuteNewChats();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'suggestedActionEnableArchiveAndMuteNewChats',
  };

  factory SuggestedActionEnableArchiveAndMuteNewChats.fromJson(Map<String, dynamic> json) => SuggestedActionEnableArchiveAndMuteNewChats(
  );
}

/// Suggests the user to check authorization phone number and change the phone number if it is inaccessible
class SuggestedActionCheckPhoneNumber extends a.SuggestedAction {
  SuggestedActionCheckPhoneNumber();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'suggestedActionCheckPhoneNumber',
  };

  factory SuggestedActionCheckPhoneNumber.fromJson(Map<String, dynamic> json) => SuggestedActionCheckPhoneNumber(
  );
}

/// Suggests the user to see a hint about meaning of one and two ticks on sent message
class SuggestedActionSeeTicksHint extends a.SuggestedAction {
  SuggestedActionSeeTicksHint();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'suggestedActionSeeTicksHint',
  };

  factory SuggestedActionSeeTicksHint.fromJson(Map<String, dynamic> json) => SuggestedActionSeeTicksHint(
  );
}

/// Suggests the user to convert specified supergroup to a broadcast group
class SuggestedActionConvertToBroadcastGroup extends a.SuggestedAction {
  /// Supergroup identifier
  final int supergroupId;

  SuggestedActionConvertToBroadcastGroup({
    required this.supergroupId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'suggestedActionConvertToBroadcastGroup',
    'supergroup_id': supergroupId,
  };

  factory SuggestedActionConvertToBroadcastGroup.fromJson(Map<String, dynamic> json) => SuggestedActionConvertToBroadcastGroup(
    supergroupId: json['supergroup_id'],
  );
}

/// Contains a counter
class Count extends a.Count {
  /// Count
  final int count;

  Count({
    required this.count,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'count',
    'count': count,
  };

  factory Count.fromJson(Map<String, dynamic> json) => Count(
    count: json['count'],
  );
}

/// Contains some text
class Text extends a.Text {
  /// Text
  final String text;

  Text({
    required this.text,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'text',
    'text': text,
  };

  factory Text.fromJson(Map<String, dynamic> json) => Text(
    text: json['text'],
  );
}

/// Contains a value representing a number of seconds
class Seconds extends a.Seconds {
  /// Number of seconds
  final double seconds;

  Seconds({
    required this.seconds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'seconds',
    'seconds': seconds,
  };

  factory Seconds.fromJson(Map<String, dynamic> json) => Seconds(
    seconds: json['seconds'],
  );
}

/// Contains information about a tg:// deep link
class DeepLinkInfo extends a.DeepLinkInfo {
  /// Text to be shown to the user
  final FormattedText text;
  /// True, if user should be asked to update the application
  final bool needUpdateApplication;

  DeepLinkInfo({
    required this.text,
    required this.needUpdateApplication,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'deepLinkInfo',
    'text': text,
    'need_update_application': needUpdateApplication,
  };

  factory DeepLinkInfo.fromJson(Map<String, dynamic> json) => DeepLinkInfo(
    text: b.TdBase.fromJson(json['text']) as FormattedText,
    needUpdateApplication: json['need_update_application'],
  );
}

/// The text uses Markdown-style formatting
class TextParseModeMarkdown extends a.TextParseMode {
  /// Version of the parser: 0 or 1 - Telegram Bot API "Markdown" parse mode, 2 - Telegram Bot API "MarkdownV2" parse mode
  final int version;

  TextParseModeMarkdown({
    required this.version,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textParseModeMarkdown',
    'version': version,
  };

  factory TextParseModeMarkdown.fromJson(Map<String, dynamic> json) => TextParseModeMarkdown(
    version: json['version'],
  );
}

/// The text uses HTML-style formatting. The same as Telegram Bot API "HTML" parse mode
class TextParseModeHTML extends a.TextParseMode {
  TextParseModeHTML();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'textParseModeHTML',
  };

  factory TextParseModeHTML.fromJson(Map<String, dynamic> json) => TextParseModeHTML(
  );
}

/// A SOCKS5 proxy server
class ProxyTypeSocks5 extends a.ProxyType {
  /// Username for logging in; may be empty
  final String username;
  /// Password for logging in; may be empty
  final String password;

  ProxyTypeSocks5({
    required this.username,
    required this.password,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'proxyTypeSocks5',
    'username': username,
    'password': password,
  };

  factory ProxyTypeSocks5.fromJson(Map<String, dynamic> json) => ProxyTypeSocks5(
    username: json['username'],
    password: json['password'],
  );
}

/// A HTTP transparent proxy server
class ProxyTypeHttp extends a.ProxyType {
  /// Username for logging in; may be empty
  final String username;
  /// Password for logging in; may be empty
  final String password;
  /// Pass true if the proxy supports only HTTP requests and doesn't support transparent TCP connections via HTTP CONNECT method
  final bool httpOnly;

  ProxyTypeHttp({
    required this.username,
    required this.password,
    required this.httpOnly,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'proxyTypeHttp',
    'username': username,
    'password': password,
    'http_only': httpOnly,
  };

  factory ProxyTypeHttp.fromJson(Map<String, dynamic> json) => ProxyTypeHttp(
    username: json['username'],
    password: json['password'],
    httpOnly: json['http_only'],
  );
}

/// An MTProto proxy server
class ProxyTypeMtproto extends a.ProxyType {
  /// The proxy's secret in hexadecimal encoding
  final String secret;

  ProxyTypeMtproto({
    required this.secret,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'proxyTypeMtproto',
    'secret': secret,
  };

  factory ProxyTypeMtproto.fromJson(Map<String, dynamic> json) => ProxyTypeMtproto(
    secret: json['secret'],
  );
}

/// Contains information about a proxy server
class Proxy extends a.Proxy {
  /// Unique identifier of the proxy
  final int id;
  /// Proxy server IP address
  final String server;
  /// Proxy server port
  final int port;
  /// Point in time (Unix timestamp) when the proxy was last used; 0 if never
  final int lastUsedDate;
  /// True, if the proxy is enabled now
  final bool isEnabled;
  /// Type of the proxy
  final a.ProxyType type;

  Proxy({
    required this.id,
    required this.server,
    required this.port,
    required this.lastUsedDate,
    required this.isEnabled,
    required this.type,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'proxy',
    'id': id,
    'server': server,
    'port': port,
    'last_used_date': lastUsedDate,
    'is_enabled': isEnabled,
    'type': type,
  };

  factory Proxy.fromJson(Map<String, dynamic> json) => Proxy(
    id: json['id'],
    server: json['server'],
    port: json['port'],
    lastUsedDate: json['last_used_date'],
    isEnabled: json['is_enabled'],
    type: b.TdBase.fromJson(json['type']) as a.ProxyType,
  );
}

/// Represents a list of proxy servers
class Proxies extends a.Proxies {
  /// List of proxy servers
  final List<Proxy> proxies;

  Proxies({
    required this.proxies,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'proxies',
    'proxies': proxies,
  };

  factory Proxies.fromJson(Map<String, dynamic> json) => Proxies(
    proxies: (json['proxies'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as Proxy).toList(growable: false),
  );
}

/// A static sticker in PNG format, which will be converted to WEBP server-side
class InputStickerStatic extends a.InputSticker {
  /// PNG image with the sticker; must be up to 512 KB in size and fit in a 512x512 square
  final a.InputFile sticker;
  /// Emojis corresponding to the sticker
  final String emojis;
  /// For masks, position where the mask should be placed; may be null
  final MaskPosition maskPosition;

  InputStickerStatic({
    required this.sticker,
    required this.emojis,
    required this.maskPosition,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputStickerStatic',
    'sticker': sticker,
    'emojis': emojis,
    'mask_position': maskPosition,
  };

  factory InputStickerStatic.fromJson(Map<String, dynamic> json) => InputStickerStatic(
    sticker: b.TdBase.fromJson(json['sticker']) as a.InputFile,
    emojis: json['emojis'],
    maskPosition: b.TdBase.fromJson(json['mask_position']) as MaskPosition,
  );
}

/// An animated sticker in TGS format
class InputStickerAnimated extends a.InputSticker {
  /// File with the animated sticker. Only local or uploaded within a week files are supported. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements
  final a.InputFile sticker;
  /// Emojis corresponding to the sticker
  final String emojis;

  InputStickerAnimated({
    required this.sticker,
    required this.emojis,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'inputStickerAnimated',
    'sticker': sticker,
    'emojis': emojis,
  };

  factory InputStickerAnimated.fromJson(Map<String, dynamic> json) => InputStickerAnimated(
    sticker: b.TdBase.fromJson(json['sticker']) as a.InputFile,
    emojis: json['emojis'],
  );
}

/// Represents a date range
class DateRange extends a.DateRange {
  /// Point in time (Unix timestamp) at which the date range begins
  final int startDate;
  /// Point in time (Unix timestamp) at which the date range ends
  final int endDate;

  DateRange({
    required this.startDate,
    required this.endDate,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'dateRange',
    'start_date': startDate,
    'end_date': endDate,
  };

  factory DateRange.fromJson(Map<String, dynamic> json) => DateRange(
    startDate: json['start_date'],
    endDate: json['end_date'],
  );
}

/// A value with information about its recent changes
class StatisticalValue extends a.StatisticalValue {
  /// The current value
  final double value;
  /// The value for the previous day
  final double previousValue;
  /// The growth rate of the value, as a percentage
  final double growthRatePercentage;

  StatisticalValue({
    required this.value,
    required this.previousValue,
    required this.growthRatePercentage,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'statisticalValue',
    'value': value,
    'previous_value': previousValue,
    'growth_rate_percentage': growthRatePercentage,
  };

  factory StatisticalValue.fromJson(Map<String, dynamic> json) => StatisticalValue(
    value: json['value'],
    previousValue: json['previous_value'],
    growthRatePercentage: json['growth_rate_percentage'],
  );
}

/// A graph data
class StatisticalGraphData extends a.StatisticalGraph {
  /// Graph data in JSON format
  final String jsonData;
  /// If non-empty, a token which can be used to receive a zoomed in graph
  final String zoomToken;

  StatisticalGraphData({
    required this.jsonData,
    required this.zoomToken,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'statisticalGraphData',
    'json_data': jsonData,
    'zoom_token': zoomToken,
  };

  factory StatisticalGraphData.fromJson(Map<String, dynamic> json) => StatisticalGraphData(
    jsonData: json['json_data'],
    zoomToken: json['zoom_token'],
  );
}

/// The graph data to be asynchronously loaded through getStatisticalGraph
class StatisticalGraphAsync extends a.StatisticalGraph {
  /// The token to use for data loading
  final String token;

  StatisticalGraphAsync({
    required this.token,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'statisticalGraphAsync',
    'token': token,
  };

  factory StatisticalGraphAsync.fromJson(Map<String, dynamic> json) => StatisticalGraphAsync(
    token: json['token'],
  );
}

/// An error message to be shown to the user instead of the graph
class StatisticalGraphError extends a.StatisticalGraph {
  /// The error message
  final String errorMessage;

  StatisticalGraphError({
    required this.errorMessage,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'statisticalGraphError',
    'error_message': errorMessage,
  };

  factory StatisticalGraphError.fromJson(Map<String, dynamic> json) => StatisticalGraphError(
    errorMessage: json['error_message'],
  );
}

/// Contains statistics about interactions with a message
class ChatStatisticsMessageInteractionInfo extends a.ChatStatisticsMessageInteractionInfo {
  /// Message identifier
  final int messageId;
  /// Number of times the message was viewed
  final int viewCount;
  /// Number of times the message was forwarded
  final int forwardCount;

  ChatStatisticsMessageInteractionInfo({
    required this.messageId,
    required this.viewCount,
    required this.forwardCount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatStatisticsMessageInteractionInfo',
    'message_id': messageId,
    'view_count': viewCount,
    'forward_count': forwardCount,
  };

  factory ChatStatisticsMessageInteractionInfo.fromJson(Map<String, dynamic> json) => ChatStatisticsMessageInteractionInfo(
    messageId: json['message_id'],
    viewCount: json['view_count'],
    forwardCount: json['forward_count'],
  );
}

/// Contains statistics about messages sent by a user
class ChatStatisticsMessageSenderInfo extends a.ChatStatisticsMessageSenderInfo {
  /// User identifier
  final int userId;
  /// Number of sent messages
  final int sentMessageCount;
  /// Average number of characters in sent messages
  final int averageCharacterCount;

  ChatStatisticsMessageSenderInfo({
    required this.userId,
    required this.sentMessageCount,
    required this.averageCharacterCount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatStatisticsMessageSenderInfo',
    'user_id': userId,
    'sent_message_count': sentMessageCount,
    'average_character_count': averageCharacterCount,
  };

  factory ChatStatisticsMessageSenderInfo.fromJson(Map<String, dynamic> json) => ChatStatisticsMessageSenderInfo(
    userId: json['user_id'],
    sentMessageCount: json['sent_message_count'],
    averageCharacterCount: json['average_character_count'],
  );
}

/// Contains statistics about administrator actions done by a user
class ChatStatisticsAdministratorActionsInfo extends a.ChatStatisticsAdministratorActionsInfo {
  /// Administrator user identifier
  final int userId;
  /// Number of messages deleted by the administrator
  final int deletedMessageCount;
  /// Number of users banned by the administrator
  final int bannedUserCount;
  /// Number of users restricted by the administrator
  final int restrictedUserCount;

  ChatStatisticsAdministratorActionsInfo({
    required this.userId,
    required this.deletedMessageCount,
    required this.bannedUserCount,
    required this.restrictedUserCount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatStatisticsAdministratorActionsInfo',
    'user_id': userId,
    'deleted_message_count': deletedMessageCount,
    'banned_user_count': bannedUserCount,
    'restricted_user_count': restrictedUserCount,
  };

  factory ChatStatisticsAdministratorActionsInfo.fromJson(Map<String, dynamic> json) => ChatStatisticsAdministratorActionsInfo(
    userId: json['user_id'],
    deletedMessageCount: json['deleted_message_count'],
    bannedUserCount: json['banned_user_count'],
    restrictedUserCount: json['restricted_user_count'],
  );
}

/// Contains statistics about number of new members invited by a user
class ChatStatisticsInviterInfo extends a.ChatStatisticsInviterInfo {
  /// User identifier
  final int userId;
  /// Number of new members invited by the user
  final int addedMemberCount;

  ChatStatisticsInviterInfo({
    required this.userId,
    required this.addedMemberCount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatStatisticsInviterInfo',
    'user_id': userId,
    'added_member_count': addedMemberCount,
  };

  factory ChatStatisticsInviterInfo.fromJson(Map<String, dynamic> json) => ChatStatisticsInviterInfo(
    userId: json['user_id'],
    addedMemberCount: json['added_member_count'],
  );
}

/// A detailed statistics about a supergroup chat
class ChatStatisticsSupergroup extends a.ChatStatistics {
  /// A period to which the statistics applies
  final DateRange period;
  /// Number of members in the chat
  final StatisticalValue memberCount;
  /// Number of messages sent to the chat
  final StatisticalValue messageCount;
  /// Number of users who viewed messages in the chat
  final StatisticalValue viewerCount;
  /// Number of users who sent messages to the chat
  final StatisticalValue senderCount;
  /// A graph containing number of members in the chat
  final a.StatisticalGraph memberCountGraph;
  /// A graph containing number of members joined and left the chat
  final a.StatisticalGraph joinGraph;
  /// A graph containing number of new member joins per source
  final a.StatisticalGraph joinBySourceGraph;
  /// A graph containing distribution of active users per language
  final a.StatisticalGraph languageGraph;
  /// A graph containing distribution of sent messages by content type
  final a.StatisticalGraph messageContentGraph;
  /// A graph containing number of different actions in the chat
  final a.StatisticalGraph actionGraph;
  /// A graph containing distribution of message views per hour
  final a.StatisticalGraph dayGraph;
  /// A graph containing distribution of message views per day of week
  final a.StatisticalGraph weekGraph;
  /// List of users sent most messages in the last week
  final List<ChatStatisticsMessageSenderInfo> topSenders;
  /// List of most active administrators in the last week
  final List<ChatStatisticsAdministratorActionsInfo> topAdministrators;
  /// List of most active inviters of new members in the last week
  final List<ChatStatisticsInviterInfo> topInviters;

  ChatStatisticsSupergroup({
    required this.period,
    required this.memberCount,
    required this.messageCount,
    required this.viewerCount,
    required this.senderCount,
    required this.memberCountGraph,
    required this.joinGraph,
    required this.joinBySourceGraph,
    required this.languageGraph,
    required this.messageContentGraph,
    required this.actionGraph,
    required this.dayGraph,
    required this.weekGraph,
    required this.topSenders,
    required this.topAdministrators,
    required this.topInviters,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatStatisticsSupergroup',
    'period': period,
    'member_count': memberCount,
    'message_count': messageCount,
    'viewer_count': viewerCount,
    'sender_count': senderCount,
    'member_count_graph': memberCountGraph,
    'join_graph': joinGraph,
    'join_by_source_graph': joinBySourceGraph,
    'language_graph': languageGraph,
    'message_content_graph': messageContentGraph,
    'action_graph': actionGraph,
    'day_graph': dayGraph,
    'week_graph': weekGraph,
    'top_senders': topSenders,
    'top_administrators': topAdministrators,
    'top_inviters': topInviters,
  };

  factory ChatStatisticsSupergroup.fromJson(Map<String, dynamic> json) => ChatStatisticsSupergroup(
    period: b.TdBase.fromJson(json['period']) as DateRange,
    memberCount: b.TdBase.fromJson(json['member_count']) as StatisticalValue,
    messageCount: b.TdBase.fromJson(json['message_count']) as StatisticalValue,
    viewerCount: b.TdBase.fromJson(json['viewer_count']) as StatisticalValue,
    senderCount: b.TdBase.fromJson(json['sender_count']) as StatisticalValue,
    memberCountGraph: b.TdBase.fromJson(json['member_count_graph']) as a.StatisticalGraph,
    joinGraph: b.TdBase.fromJson(json['join_graph']) as a.StatisticalGraph,
    joinBySourceGraph: b.TdBase.fromJson(json['join_by_source_graph']) as a.StatisticalGraph,
    languageGraph: b.TdBase.fromJson(json['language_graph']) as a.StatisticalGraph,
    messageContentGraph: b.TdBase.fromJson(json['message_content_graph']) as a.StatisticalGraph,
    actionGraph: b.TdBase.fromJson(json['action_graph']) as a.StatisticalGraph,
    dayGraph: b.TdBase.fromJson(json['day_graph']) as a.StatisticalGraph,
    weekGraph: b.TdBase.fromJson(json['week_graph']) as a.StatisticalGraph,
    topSenders: (json['top_senders'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatStatisticsMessageSenderInfo).toList(growable: false),
    topAdministrators: (json['top_administrators'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatStatisticsAdministratorActionsInfo).toList(growable: false),
    topInviters: (json['top_inviters'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatStatisticsInviterInfo).toList(growable: false),
  );
}

/// A detailed statistics about a channel chat
class ChatStatisticsChannel extends a.ChatStatistics {
  /// A period to which the statistics applies
  final DateRange period;
  /// Number of members in the chat
  final StatisticalValue memberCount;
  /// Mean number of times the recently sent messages was viewed
  final StatisticalValue meanViewCount;
  /// Mean number of times the recently sent messages was shared
  final StatisticalValue meanShareCount;
  /// A percentage of users with enabled notifications for the chat
  final double enabledNotificationsPercentage;
  /// A graph containing number of members in the chat
  final a.StatisticalGraph memberCountGraph;
  /// A graph containing number of members joined and left the chat
  final a.StatisticalGraph joinGraph;
  /// A graph containing number of members muted and unmuted the chat
  final a.StatisticalGraph muteGraph;
  /// A graph containing number of message views in a given hour in the last two weeks
  final a.StatisticalGraph viewCountByHourGraph;
  /// A graph containing number of message views per source
  final a.StatisticalGraph viewCountBySourceGraph;
  /// A graph containing number of new member joins per source
  final a.StatisticalGraph joinBySourceGraph;
  /// A graph containing number of users viewed chat messages per language
  final a.StatisticalGraph languageGraph;
  /// A graph containing number of chat message views and shares
  final a.StatisticalGraph messageInteractionGraph;
  /// A graph containing number of views of associated with the chat instant views
  final a.StatisticalGraph instantViewInteractionGraph;
  /// Detailed statistics about number of views and shares of recently sent messages
  final List<ChatStatisticsMessageInteractionInfo> recentMessageInteractions;

  ChatStatisticsChannel({
    required this.period,
    required this.memberCount,
    required this.meanViewCount,
    required this.meanShareCount,
    required this.enabledNotificationsPercentage,
    required this.memberCountGraph,
    required this.joinGraph,
    required this.muteGraph,
    required this.viewCountByHourGraph,
    required this.viewCountBySourceGraph,
    required this.joinBySourceGraph,
    required this.languageGraph,
    required this.messageInteractionGraph,
    required this.instantViewInteractionGraph,
    required this.recentMessageInteractions,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'chatStatisticsChannel',
    'period': period,
    'member_count': memberCount,
    'mean_view_count': meanViewCount,
    'mean_share_count': meanShareCount,
    'enabled_notifications_percentage': enabledNotificationsPercentage,
    'member_count_graph': memberCountGraph,
    'join_graph': joinGraph,
    'mute_graph': muteGraph,
    'view_count_by_hour_graph': viewCountByHourGraph,
    'view_count_by_source_graph': viewCountBySourceGraph,
    'join_by_source_graph': joinBySourceGraph,
    'language_graph': languageGraph,
    'message_interaction_graph': messageInteractionGraph,
    'instant_view_interaction_graph': instantViewInteractionGraph,
    'recent_message_interactions': recentMessageInteractions,
  };

  factory ChatStatisticsChannel.fromJson(Map<String, dynamic> json) => ChatStatisticsChannel(
    period: b.TdBase.fromJson(json['period']) as DateRange,
    memberCount: b.TdBase.fromJson(json['member_count']) as StatisticalValue,
    meanViewCount: b.TdBase.fromJson(json['mean_view_count']) as StatisticalValue,
    meanShareCount: b.TdBase.fromJson(json['mean_share_count']) as StatisticalValue,
    enabledNotificationsPercentage: json['enabled_notifications_percentage'],
    memberCountGraph: b.TdBase.fromJson(json['member_count_graph']) as a.StatisticalGraph,
    joinGraph: b.TdBase.fromJson(json['join_graph']) as a.StatisticalGraph,
    muteGraph: b.TdBase.fromJson(json['mute_graph']) as a.StatisticalGraph,
    viewCountByHourGraph: b.TdBase.fromJson(json['view_count_by_hour_graph']) as a.StatisticalGraph,
    viewCountBySourceGraph: b.TdBase.fromJson(json['view_count_by_source_graph']) as a.StatisticalGraph,
    joinBySourceGraph: b.TdBase.fromJson(json['join_by_source_graph']) as a.StatisticalGraph,
    languageGraph: b.TdBase.fromJson(json['language_graph']) as a.StatisticalGraph,
    messageInteractionGraph: b.TdBase.fromJson(json['message_interaction_graph']) as a.StatisticalGraph,
    instantViewInteractionGraph: b.TdBase.fromJson(json['instant_view_interaction_graph']) as a.StatisticalGraph,
    recentMessageInteractions: (json['recent_message_interactions'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatStatisticsMessageInteractionInfo).toList(growable: false),
  );
}

/// A detailed statistics about a message
class MessageStatistics extends a.MessageStatistics {
  /// A graph containing number of message views and shares
  final a.StatisticalGraph messageInteractionGraph;

  MessageStatistics({
    required this.messageInteractionGraph,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'messageStatistics',
    'message_interaction_graph': messageInteractionGraph,
  };

  factory MessageStatistics.fromJson(Map<String, dynamic> json) => MessageStatistics(
    messageInteractionGraph: b.TdBase.fromJson(json['message_interaction_graph']) as a.StatisticalGraph,
  );
}

/// A point on a Cartesian plane
class Point extends a.Point {
  /// The point's first coordinate
  final double x;
  /// The point's second coordinate
  final double y;

  Point({
    required this.x,
    required this.y,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'point',
    'x': x,
    'y': y,
  };

  factory Point.fromJson(Map<String, dynamic> json) => Point(
    x: json['x'],
    y: json['y'],
  );
}

/// A straight line to a given point
class VectorPathCommandLine extends a.VectorPathCommand {
  /// The end point of the straight line
  final Point endPoint;

  VectorPathCommandLine({
    required this.endPoint,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'vectorPathCommandLine',
    'end_point': endPoint,
  };

  factory VectorPathCommandLine.fromJson(Map<String, dynamic> json) => VectorPathCommandLine(
    endPoint: b.TdBase.fromJson(json['end_point']) as Point,
  );
}

/// A cubic Bézier curve to a given point
class VectorPathCommandCubicBezierCurve extends a.VectorPathCommand {
  /// The start control point of the curve
  final Point startControlPoint;
  /// The end control point of the curve
  final Point endControlPoint;
  /// The end point of the curve
  final Point endPoint;

  VectorPathCommandCubicBezierCurve({
    required this.startControlPoint,
    required this.endControlPoint,
    required this.endPoint,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'vectorPathCommandCubicBezierCurve',
    'start_control_point': startControlPoint,
    'end_control_point': endControlPoint,
    'end_point': endPoint,
  };

  factory VectorPathCommandCubicBezierCurve.fromJson(Map<String, dynamic> json) => VectorPathCommandCubicBezierCurve(
    startControlPoint: b.TdBase.fromJson(json['start_control_point']) as Point,
    endControlPoint: b.TdBase.fromJson(json['end_control_point']) as Point,
    endPoint: b.TdBase.fromJson(json['end_point']) as Point,
  );
}

/// The user authorization state has changed
class UpdateAuthorizationState extends a.Update {
  /// New authorization state
  final a.AuthorizationState authorizationState;

  UpdateAuthorizationState({
    required this.authorizationState,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateAuthorizationState',
    'authorization_state': authorizationState,
  };

  factory UpdateAuthorizationState.fromJson(Map<String, dynamic> json) => UpdateAuthorizationState(
    authorizationState: b.TdBase.fromJson(json['authorization_state']) as a.AuthorizationState,
  );
}

/// A new message was received; can also be an outgoing message
class UpdateNewMessage extends a.Update {
  /// The new message
  final Message message;

  UpdateNewMessage({
    required this.message,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateNewMessage',
    'message': message,
  };

  factory UpdateNewMessage.fromJson(Map<String, dynamic> json) => UpdateNewMessage(
    message: b.TdBase.fromJson(json['message']) as Message,
  );
}

/// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully or even that the send message request will be processed. This update will be sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message
class UpdateMessageSendAcknowledged extends a.Update {
  /// The chat identifier of the sent message
  final int chatId;
  /// A temporary message identifier
  final int messageId;

  UpdateMessageSendAcknowledged({
    required this.chatId,
    required this.messageId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateMessageSendAcknowledged',
    'chat_id': chatId,
    'message_id': messageId,
  };

  factory UpdateMessageSendAcknowledged.fromJson(Map<String, dynamic> json) => UpdateMessageSendAcknowledged(
    chatId: json['chat_id'],
    messageId: json['message_id'],
  );
}

/// A message has been successfully sent
class UpdateMessageSendSucceeded extends a.Update {
  /// Information about the sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change
  final Message message;
  /// The previous temporary message identifier
  final int oldMessageId;

  UpdateMessageSendSucceeded({
    required this.message,
    required this.oldMessageId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateMessageSendSucceeded',
    'message': message,
    'old_message_id': oldMessageId,
  };

  factory UpdateMessageSendSucceeded.fromJson(Map<String, dynamic> json) => UpdateMessageSendSucceeded(
    message: b.TdBase.fromJson(json['message']) as Message,
    oldMessageId: json['old_message_id'],
  );
}

/// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update
class UpdateMessageSendFailed extends a.Update {
  /// Contains information about the message which failed to send
  final Message message;
  /// The previous temporary message identifier
  final int oldMessageId;
  /// An error code
  final int errorCode;
  /// Error message
  final String errorMessage;

  UpdateMessageSendFailed({
    required this.message,
    required this.oldMessageId,
    required this.errorCode,
    required this.errorMessage,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateMessageSendFailed',
    'message': message,
    'old_message_id': oldMessageId,
    'error_code': errorCode,
    'error_message': errorMessage,
  };

  factory UpdateMessageSendFailed.fromJson(Map<String, dynamic> json) => UpdateMessageSendFailed(
    message: b.TdBase.fromJson(json['message']) as Message,
    oldMessageId: json['old_message_id'],
    errorCode: json['error_code'],
    errorMessage: json['error_message'],
  );
}

/// The message content has changed
class UpdateMessageContent extends a.Update {
  /// Chat identifier
  final int chatId;
  /// Message identifier
  final int messageId;
  /// New message content
  final a.MessageContent newContent;

  UpdateMessageContent({
    required this.chatId,
    required this.messageId,
    required this.newContent,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateMessageContent',
    'chat_id': chatId,
    'message_id': messageId,
    'new_content': newContent,
  };

  factory UpdateMessageContent.fromJson(Map<String, dynamic> json) => UpdateMessageContent(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    newContent: b.TdBase.fromJson(json['new_content']) as a.MessageContent,
  );
}

/// A message was edited. Changes in the message content will come in a separate updateMessageContent
class UpdateMessageEdited extends a.Update {
  /// Chat identifier
  final int chatId;
  /// Message identifier
  final int messageId;
  /// Point in time (Unix timestamp) when the message was edited
  final int editDate;
  /// New message reply markup; may be null
  final a.ReplyMarkup replyMarkup;

  UpdateMessageEdited({
    required this.chatId,
    required this.messageId,
    required this.editDate,
    required this.replyMarkup,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateMessageEdited',
    'chat_id': chatId,
    'message_id': messageId,
    'edit_date': editDate,
    'reply_markup': replyMarkup,
  };

  factory UpdateMessageEdited.fromJson(Map<String, dynamic> json) => UpdateMessageEdited(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    editDate: json['edit_date'],
    replyMarkup: b.TdBase.fromJson(json['reply_markup']) as a.ReplyMarkup,
  );
}

/// The message pinned state was changed
class UpdateMessageIsPinned extends a.Update {
  /// Chat identifier
  final int chatId;
  /// The message identifier
  final int messageId;
  /// True, if the message is pinned
  final bool isPinned;

  UpdateMessageIsPinned({
    required this.chatId,
    required this.messageId,
    required this.isPinned,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateMessageIsPinned',
    'chat_id': chatId,
    'message_id': messageId,
    'is_pinned': isPinned,
  };

  factory UpdateMessageIsPinned.fromJson(Map<String, dynamic> json) => UpdateMessageIsPinned(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    isPinned: json['is_pinned'],
  );
}

/// The information about interactions with a message has changed
class UpdateMessageInteractionInfo extends a.Update {
  /// Chat identifier
  final int chatId;
  /// Message identifier
  final int messageId;
  /// New information about interactions with the message; may be null
  final MessageInteractionInfo interactionInfo;

  UpdateMessageInteractionInfo({
    required this.chatId,
    required this.messageId,
    required this.interactionInfo,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateMessageInteractionInfo',
    'chat_id': chatId,
    'message_id': messageId,
    'interaction_info': interactionInfo,
  };

  factory UpdateMessageInteractionInfo.fromJson(Map<String, dynamic> json) => UpdateMessageInteractionInfo(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    interactionInfo: b.TdBase.fromJson(json['interaction_info']) as MessageInteractionInfo,
  );
}

/// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the TTL timer for self-destructing messages
class UpdateMessageContentOpened extends a.Update {
  /// Chat identifier
  final int chatId;
  /// Message identifier
  final int messageId;

  UpdateMessageContentOpened({
    required this.chatId,
    required this.messageId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateMessageContentOpened',
    'chat_id': chatId,
    'message_id': messageId,
  };

  factory UpdateMessageContentOpened.fromJson(Map<String, dynamic> json) => UpdateMessageContentOpened(
    chatId: json['chat_id'],
    messageId: json['message_id'],
  );
}

/// A message with an unread mention was read
class UpdateMessageMentionRead extends a.Update {
  /// Chat identifier
  final int chatId;
  /// Message identifier
  final int messageId;
  /// The new number of unread mention messages left in the chat
  final int unreadMentionCount;

  UpdateMessageMentionRead({
    required this.chatId,
    required this.messageId,
    required this.unreadMentionCount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateMessageMentionRead',
    'chat_id': chatId,
    'message_id': messageId,
    'unread_mention_count': unreadMentionCount,
  };

  factory UpdateMessageMentionRead.fromJson(Map<String, dynamic> json) => UpdateMessageMentionRead(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    unreadMentionCount: json['unread_mention_count'],
  );
}

/// A message with a live location was viewed. When the update is received, the application is supposed to update the live location
class UpdateMessageLiveLocationViewed extends a.Update {
  /// Identifier of the chat with the live location message
  final int chatId;
  /// Identifier of the message with live location
  final int messageId;

  UpdateMessageLiveLocationViewed({
    required this.chatId,
    required this.messageId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateMessageLiveLocationViewed',
    'chat_id': chatId,
    'message_id': messageId,
  };

  factory UpdateMessageLiveLocationViewed.fromJson(Map<String, dynamic> json) => UpdateMessageLiveLocationViewed(
    chatId: json['chat_id'],
    messageId: json['message_id'],
  );
}

/// A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates
class UpdateNewChat extends a.Update {
  /// The chat
  final Chat chat;

  UpdateNewChat({
    required this.chat,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateNewChat',
    'chat': chat,
  };

  factory UpdateNewChat.fromJson(Map<String, dynamic> json) => UpdateNewChat(
    chat: b.TdBase.fromJson(json['chat']) as Chat,
  );
}

/// The title of a chat was changed
class UpdateChatTitle extends a.Update {
  /// Chat identifier
  final int chatId;
  /// The new chat title
  final String title;

  UpdateChatTitle({
    required this.chatId,
    required this.title,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatTitle',
    'chat_id': chatId,
    'title': title,
  };

  factory UpdateChatTitle.fromJson(Map<String, dynamic> json) => UpdateChatTitle(
    chatId: json['chat_id'],
    title: json['title'],
  );
}

/// A chat photo was changed
class UpdateChatPhoto extends a.Update {
  /// Chat identifier
  final int chatId;
  /// The new chat photo; may be null
  final ChatPhotoInfo photo;

  UpdateChatPhoto({
    required this.chatId,
    required this.photo,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatPhoto',
    'chat_id': chatId,
    'photo': photo,
  };

  factory UpdateChatPhoto.fromJson(Map<String, dynamic> json) => UpdateChatPhoto(
    chatId: json['chat_id'],
    photo: b.TdBase.fromJson(json['photo']) as ChatPhotoInfo,
  );
}

/// Chat permissions was changed
class UpdateChatPermissions extends a.Update {
  /// Chat identifier
  final int chatId;
  /// The new chat permissions
  final ChatPermissions permissions;

  UpdateChatPermissions({
    required this.chatId,
    required this.permissions,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatPermissions',
    'chat_id': chatId,
    'permissions': permissions,
  };

  factory UpdateChatPermissions.fromJson(Map<String, dynamic> json) => UpdateChatPermissions(
    chatId: json['chat_id'],
    permissions: b.TdBase.fromJson(json['permissions']) as ChatPermissions,
  );
}

/// The last message of a chat was changed. If last_message is null, then the last message in the chat became unknown. Some new unknown messages might be added to the chat in this case
class UpdateChatLastMessage extends a.Update {
  /// Chat identifier
  final int chatId;
  /// The new last message in the chat; may be null
  final Message lastMessage;
  /// The new chat positions in the chat lists
  final List<ChatPosition> positions;

  UpdateChatLastMessage({
    required this.chatId,
    required this.lastMessage,
    required this.positions,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatLastMessage',
    'chat_id': chatId,
    'last_message': lastMessage,
    'positions': positions,
  };

  factory UpdateChatLastMessage.fromJson(Map<String, dynamic> json) => UpdateChatLastMessage(
    chatId: json['chat_id'],
    lastMessage: b.TdBase.fromJson(json['last_message']) as Message,
    positions: (json['positions'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatPosition).toList(growable: false),
  );
}

/// The position of a chat in a chat list has changed. Instead of this update updateChatLastMessage or updateChatDraftMessage might be sent
class UpdateChatPosition extends a.Update {
  /// Chat identifier
  final int chatId;
  /// New chat position. If new order is 0, then the chat needs to be removed from the list
  final ChatPosition position;

  UpdateChatPosition({
    required this.chatId,
    required this.position,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatPosition',
    'chat_id': chatId,
    'position': position,
  };

  factory UpdateChatPosition.fromJson(Map<String, dynamic> json) => UpdateChatPosition(
    chatId: json['chat_id'],
    position: b.TdBase.fromJson(json['position']) as ChatPosition,
  );
}

/// A chat was marked as unread or was read
class UpdateChatIsMarkedAsUnread extends a.Update {
  /// Chat identifier
  final int chatId;
  /// New value of is_marked_as_unread
  final bool isMarkedAsUnread;

  UpdateChatIsMarkedAsUnread({
    required this.chatId,
    required this.isMarkedAsUnread,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatIsMarkedAsUnread',
    'chat_id': chatId,
    'is_marked_as_unread': isMarkedAsUnread,
  };

  factory UpdateChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json) => UpdateChatIsMarkedAsUnread(
    chatId: json['chat_id'],
    isMarkedAsUnread: json['is_marked_as_unread'],
  );
}

/// A chat was blocked or unblocked
class UpdateChatIsBlocked extends a.Update {
  /// Chat identifier
  final int chatId;
  /// New value of is_blocked
  final bool isBlocked;

  UpdateChatIsBlocked({
    required this.chatId,
    required this.isBlocked,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatIsBlocked',
    'chat_id': chatId,
    'is_blocked': isBlocked,
  };

  factory UpdateChatIsBlocked.fromJson(Map<String, dynamic> json) => UpdateChatIsBlocked(
    chatId: json['chat_id'],
    isBlocked: json['is_blocked'],
  );
}

/// A chat's has_scheduled_messages field has changed
class UpdateChatHasScheduledMessages extends a.Update {
  /// Chat identifier
  final int chatId;
  /// New value of has_scheduled_messages
  final bool hasScheduledMessages;

  UpdateChatHasScheduledMessages({
    required this.chatId,
    required this.hasScheduledMessages,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatHasScheduledMessages',
    'chat_id': chatId,
    'has_scheduled_messages': hasScheduledMessages,
  };

  factory UpdateChatHasScheduledMessages.fromJson(Map<String, dynamic> json) => UpdateChatHasScheduledMessages(
    chatId: json['chat_id'],
    hasScheduledMessages: json['has_scheduled_messages'],
  );
}

/// A chat voice chat state has changed
class UpdateChatVoiceChat extends a.Update {
  /// Chat identifier
  final int chatId;
  /// New value of voice_chat
  final VoiceChat voiceChat;

  UpdateChatVoiceChat({
    required this.chatId,
    required this.voiceChat,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatVoiceChat',
    'chat_id': chatId,
    'voice_chat': voiceChat,
  };

  factory UpdateChatVoiceChat.fromJson(Map<String, dynamic> json) => UpdateChatVoiceChat(
    chatId: json['chat_id'],
    voiceChat: b.TdBase.fromJson(json['voice_chat']) as VoiceChat,
  );
}

/// The value of the default disable_notification parameter, used when a message is sent to the chat, was changed
class UpdateChatDefaultDisableNotification extends a.Update {
  /// Chat identifier
  final int chatId;
  /// The new default_disable_notification value
  final bool defaultDisableNotification;

  UpdateChatDefaultDisableNotification({
    required this.chatId,
    required this.defaultDisableNotification,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatDefaultDisableNotification',
    'chat_id': chatId,
    'default_disable_notification': defaultDisableNotification,
  };

  factory UpdateChatDefaultDisableNotification.fromJson(Map<String, dynamic> json) => UpdateChatDefaultDisableNotification(
    chatId: json['chat_id'],
    defaultDisableNotification: json['default_disable_notification'],
  );
}

/// Incoming messages were read or number of unread messages has been changed
class UpdateChatReadInbox extends a.Update {
  /// Chat identifier
  final int chatId;
  /// Identifier of the last read incoming message
  final int lastReadInboxMessageId;
  /// The number of unread messages left in the chat
  final int unreadCount;

  UpdateChatReadInbox({
    required this.chatId,
    required this.lastReadInboxMessageId,
    required this.unreadCount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatReadInbox',
    'chat_id': chatId,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'unread_count': unreadCount,
  };

  factory UpdateChatReadInbox.fromJson(Map<String, dynamic> json) => UpdateChatReadInbox(
    chatId: json['chat_id'],
    lastReadInboxMessageId: json['last_read_inbox_message_id'],
    unreadCount: json['unread_count'],
  );
}

/// Outgoing messages were read
class UpdateChatReadOutbox extends a.Update {
  /// Chat identifier
  final int chatId;
  /// Identifier of last read outgoing message
  final int lastReadOutboxMessageId;

  UpdateChatReadOutbox({
    required this.chatId,
    required this.lastReadOutboxMessageId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatReadOutbox',
    'chat_id': chatId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
  };

  factory UpdateChatReadOutbox.fromJson(Map<String, dynamic> json) => UpdateChatReadOutbox(
    chatId: json['chat_id'],
    lastReadOutboxMessageId: json['last_read_outbox_message_id'],
  );
}

/// The chat unread_mention_count has changed
class UpdateChatUnreadMentionCount extends a.Update {
  /// Chat identifier
  final int chatId;
  /// The number of unread mention messages left in the chat
  final int unreadMentionCount;

  UpdateChatUnreadMentionCount({
    required this.chatId,
    required this.unreadMentionCount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatUnreadMentionCount',
    'chat_id': chatId,
    'unread_mention_count': unreadMentionCount,
  };

  factory UpdateChatUnreadMentionCount.fromJson(Map<String, dynamic> json) => UpdateChatUnreadMentionCount(
    chatId: json['chat_id'],
    unreadMentionCount: json['unread_mention_count'],
  );
}

/// Notification settings for a chat were changed
class UpdateChatNotificationSettings extends a.Update {
  /// Chat identifier
  final int chatId;
  /// The new notification settings
  final ChatNotificationSettings notificationSettings;

  UpdateChatNotificationSettings({
    required this.chatId,
    required this.notificationSettings,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatNotificationSettings',
    'chat_id': chatId,
    'notification_settings': notificationSettings,
  };

  factory UpdateChatNotificationSettings.fromJson(Map<String, dynamic> json) => UpdateChatNotificationSettings(
    chatId: json['chat_id'],
    notificationSettings: b.TdBase.fromJson(json['notification_settings']) as ChatNotificationSettings,
  );
}

/// Notification settings for some type of chats were updated
class UpdateScopeNotificationSettings extends a.Update {
  /// Types of chats for which notification settings were updated
  final a.NotificationSettingsScope scope;
  /// The new notification settings
  final ScopeNotificationSettings notificationSettings;

  UpdateScopeNotificationSettings({
    required this.scope,
    required this.notificationSettings,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateScopeNotificationSettings',
    'scope': scope,
    'notification_settings': notificationSettings,
  };

  factory UpdateScopeNotificationSettings.fromJson(Map<String, dynamic> json) => UpdateScopeNotificationSettings(
    scope: b.TdBase.fromJson(json['scope']) as a.NotificationSettingsScope,
    notificationSettings: b.TdBase.fromJson(json['notification_settings']) as ScopeNotificationSettings,
  );
}

/// The message Time To Live setting for a chat was changed
class UpdateChatMessageTtlSetting extends a.Update {
  /// Chat identifier
  final int chatId;
  /// New value of message_ttl_setting
  final int messageTtlSetting;

  UpdateChatMessageTtlSetting({
    required this.chatId,
    required this.messageTtlSetting,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatMessageTtlSetting',
    'chat_id': chatId,
    'message_ttl_setting': messageTtlSetting,
  };

  factory UpdateChatMessageTtlSetting.fromJson(Map<String, dynamic> json) => UpdateChatMessageTtlSetting(
    chatId: json['chat_id'],
    messageTtlSetting: json['message_ttl_setting'],
  );
}

/// The chat action bar was changed
class UpdateChatActionBar extends a.Update {
  /// Chat identifier
  final int chatId;
  /// The new value of the action bar; may be null
  final a.ChatActionBar actionBar;

  UpdateChatActionBar({
    required this.chatId,
    required this.actionBar,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatActionBar',
    'chat_id': chatId,
    'action_bar': actionBar,
  };

  factory UpdateChatActionBar.fromJson(Map<String, dynamic> json) => UpdateChatActionBar(
    chatId: json['chat_id'],
    actionBar: b.TdBase.fromJson(json['action_bar']) as a.ChatActionBar,
  );
}

/// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user
class UpdateChatReplyMarkup extends a.Update {
  /// Chat identifier
  final int chatId;
  /// Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
  final int replyMarkupMessageId;

  UpdateChatReplyMarkup({
    required this.chatId,
    required this.replyMarkupMessageId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatReplyMarkup',
    'chat_id': chatId,
    'reply_markup_message_id': replyMarkupMessageId,
  };

  factory UpdateChatReplyMarkup.fromJson(Map<String, dynamic> json) => UpdateChatReplyMarkup(
    chatId: json['chat_id'],
    replyMarkupMessageId: json['reply_markup_message_id'],
  );
}

/// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update shouldn't be applied
class UpdateChatDraftMessage extends a.Update {
  /// Chat identifier
  final int chatId;
  /// The new draft message; may be null
  final DraftMessage draftMessage;
  /// The new chat positions in the chat lists
  final List<ChatPosition> positions;

  UpdateChatDraftMessage({
    required this.chatId,
    required this.draftMessage,
    required this.positions,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatDraftMessage',
    'chat_id': chatId,
    'draft_message': draftMessage,
    'positions': positions,
  };

  factory UpdateChatDraftMessage.fromJson(Map<String, dynamic> json) => UpdateChatDraftMessage(
    chatId: json['chat_id'],
    draftMessage: b.TdBase.fromJson(json['draft_message']) as DraftMessage,
    positions: (json['positions'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatPosition).toList(growable: false),
  );
}

/// The list of chat filters or a chat filter has changed
class UpdateChatFilters extends a.Update {
  /// The new list of chat filters
  final List<ChatFilterInfo> chatFilters;

  UpdateChatFilters({
    required this.chatFilters,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatFilters',
    'chat_filters': chatFilters,
  };

  factory UpdateChatFilters.fromJson(Map<String, dynamic> json) => UpdateChatFilters(
    chatFilters: (json['chat_filters'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatFilterInfo).toList(growable: false),
  );
}

/// The number of online group members has changed. This update with non-zero count is sent only for currently opened chats. There is no guarantee that it will be sent just after the count has changed
class UpdateChatOnlineMemberCount extends a.Update {
  /// Identifier of the chat
  final int chatId;
  /// New number of online members in the chat, or 0 if unknown
  final int onlineMemberCount;

  UpdateChatOnlineMemberCount({
    required this.chatId,
    required this.onlineMemberCount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatOnlineMemberCount',
    'chat_id': chatId,
    'online_member_count': onlineMemberCount,
  };

  factory UpdateChatOnlineMemberCount.fromJson(Map<String, dynamic> json) => UpdateChatOnlineMemberCount(
    chatId: json['chat_id'],
    onlineMemberCount: json['online_member_count'],
  );
}

/// A notification was changed
class UpdateNotification extends a.Update {
  /// Unique notification group identifier
  final int notificationGroupId;
  /// Changed notification
  final Notification notification;

  UpdateNotification({
    required this.notificationGroupId,
    required this.notification,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateNotification',
    'notification_group_id': notificationGroupId,
    'notification': notification,
  };

  factory UpdateNotification.fromJson(Map<String, dynamic> json) => UpdateNotification(
    notificationGroupId: json['notification_group_id'],
    notification: b.TdBase.fromJson(json['notification']) as Notification,
  );
}

/// A list of active notifications in a notification group has changed
class UpdateNotificationGroup extends a.Update {
  /// Unique notification group identifier
  final int notificationGroupId;
  /// New type of the notification group
  final a.NotificationGroupType type;
  /// Identifier of a chat to which all notifications in the group belong
  final int chatId;
  /// Chat identifier, which notification settings must be applied to the added notifications
  final int notificationSettingsChatId;
  /// True, if the notifications should be shown without sound
  final bool isSilent;
  /// Total number of unread notifications in the group, can be bigger than number of active notifications
  final int totalCount;
  /// List of added group notifications, sorted by notification ID
  final List<Notification> addedNotifications;
  /// Identifiers of removed group notifications, sorted by notification ID
  final List<int> removedNotificationIds;

  UpdateNotificationGroup({
    required this.notificationGroupId,
    required this.type,
    required this.chatId,
    required this.notificationSettingsChatId,
    required this.isSilent,
    required this.totalCount,
    required this.addedNotifications,
    required this.removedNotificationIds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateNotificationGroup',
    'notification_group_id': notificationGroupId,
    'type': type,
    'chat_id': chatId,
    'notification_settings_chat_id': notificationSettingsChatId,
    'is_silent': isSilent,
    'total_count': totalCount,
    'added_notifications': addedNotifications,
    'removed_notification_ids': removedNotificationIds,
  };

  factory UpdateNotificationGroup.fromJson(Map<String, dynamic> json) => UpdateNotificationGroup(
    notificationGroupId: json['notification_group_id'],
    type: b.TdBase.fromJson(json['type']) as a.NotificationGroupType,
    chatId: json['chat_id'],
    notificationSettingsChatId: json['notification_settings_chat_id'],
    isSilent: json['is_silent'],
    totalCount: json['total_count'],
    addedNotifications: (json['added_notifications'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as Notification).toList(growable: false),
    removedNotificationIds: (json['removed_notification_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// Contains active notifications that was shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update
class UpdateActiveNotifications extends a.Update {
  /// Lists of active notification groups
  final List<NotificationGroup> groups;

  UpdateActiveNotifications({
    required this.groups,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateActiveNotifications',
    'groups': groups,
  };

  factory UpdateActiveNotifications.fromJson(Map<String, dynamic> json) => UpdateActiveNotifications(
    groups: (json['groups'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as NotificationGroup).toList(growable: false),
  );
}

/// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications
class UpdateHavePendingNotifications extends a.Update {
  /// True, if there are some delayed notification updates, which will be sent soon
  final bool haveDelayedNotifications;
  /// True, if there can be some yet unreceived notifications, which are being fetched from the server
  final bool haveUnreceivedNotifications;

  UpdateHavePendingNotifications({
    required this.haveDelayedNotifications,
    required this.haveUnreceivedNotifications,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateHavePendingNotifications',
    'have_delayed_notifications': haveDelayedNotifications,
    'have_unreceived_notifications': haveUnreceivedNotifications,
  };

  factory UpdateHavePendingNotifications.fromJson(Map<String, dynamic> json) => UpdateHavePendingNotifications(
    haveDelayedNotifications: json['have_delayed_notifications'],
    haveUnreceivedNotifications: json['have_unreceived_notifications'],
  );
}

/// Some messages were deleted
class UpdateDeleteMessages extends a.Update {
  /// Chat identifier
  final int chatId;
  /// Identifiers of the deleted messages
  final List<int> messageIds;
  /// True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible)
  final bool isPermanent;
  /// True, if the messages are deleted only from the cache and can possibly be retrieved again in the future
  final bool fromCache;

  UpdateDeleteMessages({
    required this.chatId,
    required this.messageIds,
    required this.isPermanent,
    required this.fromCache,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateDeleteMessages',
    'chat_id': chatId,
    'message_ids': messageIds,
    'is_permanent': isPermanent,
    'from_cache': fromCache,
  };

  factory UpdateDeleteMessages.fromJson(Map<String, dynamic> json) => UpdateDeleteMessages(
    chatId: json['chat_id'],
    messageIds: (json['message_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
    isPermanent: json['is_permanent'],
    fromCache: json['from_cache'],
  );
}

/// User activity in the chat has changed
class UpdateUserChatAction extends a.Update {
  /// Chat identifier
  final int chatId;
  /// If not 0, a message thread identifier in which the action was performed
  final int messageThreadId;
  /// Identifier of a user performing an action
  final int userId;
  /// The action description
  final a.ChatAction action;

  UpdateUserChatAction({
    required this.chatId,
    required this.messageThreadId,
    required this.userId,
    required this.action,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateUserChatAction',
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'user_id': userId,
    'action': action,
  };

  factory UpdateUserChatAction.fromJson(Map<String, dynamic> json) => UpdateUserChatAction(
    chatId: json['chat_id'],
    messageThreadId: json['message_thread_id'],
    userId: json['user_id'],
    action: b.TdBase.fromJson(json['action']) as a.ChatAction,
  );
}

/// The user went online or offline
class UpdateUserStatus extends a.Update {
  /// User identifier
  final int userId;
  /// New status of the user
  final a.UserStatus status;

  UpdateUserStatus({
    required this.userId,
    required this.status,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateUserStatus',
    'user_id': userId,
    'status': status,
  };

  factory UpdateUserStatus.fromJson(Map<String, dynamic> json) => UpdateUserStatus(
    userId: json['user_id'],
    status: b.TdBase.fromJson(json['status']) as a.UserStatus,
  );
}

/// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application
class UpdateUser extends a.Update {
  /// New data about the user
  final User user;

  UpdateUser({
    required this.user,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateUser',
    'user': user,
  };

  factory UpdateUser.fromJson(Map<String, dynamic> json) => UpdateUser(
    user: b.TdBase.fromJson(json['user']) as User,
  );
}

/// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application
class UpdateBasicGroup extends a.Update {
  /// New data about the group
  final BasicGroup basicGroup;

  UpdateBasicGroup({
    required this.basicGroup,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateBasicGroup',
    'basic_group': basicGroup,
  };

  factory UpdateBasicGroup.fromJson(Map<String, dynamic> json) => UpdateBasicGroup(
    basicGroup: b.TdBase.fromJson(json['basic_group']) as BasicGroup,
  );
}

/// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application
class UpdateSupergroup extends a.Update {
  /// New data about the supergroup
  final Supergroup supergroup;

  UpdateSupergroup({
    required this.supergroup,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateSupergroup',
    'supergroup': supergroup,
  };

  factory UpdateSupergroup.fromJson(Map<String, dynamic> json) => UpdateSupergroup(
    supergroup: b.TdBase.fromJson(json['supergroup']) as Supergroup,
  );
}

/// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application
class UpdateSecretChat extends a.Update {
  /// New data about the secret chat
  final SecretChat secretChat;

  UpdateSecretChat({
    required this.secretChat,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateSecretChat',
    'secret_chat': secretChat,
  };

  factory UpdateSecretChat.fromJson(Map<String, dynamic> json) => UpdateSecretChat(
    secretChat: b.TdBase.fromJson(json['secret_chat']) as SecretChat,
  );
}

/// Some data from userFullInfo has been changed
class UpdateUserFullInfo extends a.Update {
  /// User identifier
  final int userId;
  /// New full information about the user
  final UserFullInfo userFullInfo;

  UpdateUserFullInfo({
    required this.userId,
    required this.userFullInfo,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateUserFullInfo',
    'user_id': userId,
    'user_full_info': userFullInfo,
  };

  factory UpdateUserFullInfo.fromJson(Map<String, dynamic> json) => UpdateUserFullInfo(
    userId: json['user_id'],
    userFullInfo: b.TdBase.fromJson(json['user_full_info']) as UserFullInfo,
  );
}

/// Some data from basicGroupFullInfo has been changed
class UpdateBasicGroupFullInfo extends a.Update {
  /// Identifier of a basic group
  final int basicGroupId;
  /// New full information about the group
  final BasicGroupFullInfo basicGroupFullInfo;

  UpdateBasicGroupFullInfo({
    required this.basicGroupId,
    required this.basicGroupFullInfo,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateBasicGroupFullInfo',
    'basic_group_id': basicGroupId,
    'basic_group_full_info': basicGroupFullInfo,
  };

  factory UpdateBasicGroupFullInfo.fromJson(Map<String, dynamic> json) => UpdateBasicGroupFullInfo(
    basicGroupId: json['basic_group_id'],
    basicGroupFullInfo: b.TdBase.fromJson(json['basic_group_full_info']) as BasicGroupFullInfo,
  );
}

/// Some data from supergroupFullInfo has been changed
class UpdateSupergroupFullInfo extends a.Update {
  /// Identifier of the supergroup or channel
  final int supergroupId;
  /// New full information about the supergroup
  final SupergroupFullInfo supergroupFullInfo;

  UpdateSupergroupFullInfo({
    required this.supergroupId,
    required this.supergroupFullInfo,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateSupergroupFullInfo',
    'supergroup_id': supergroupId,
    'supergroup_full_info': supergroupFullInfo,
  };

  factory UpdateSupergroupFullInfo.fromJson(Map<String, dynamic> json) => UpdateSupergroupFullInfo(
    supergroupId: json['supergroup_id'],
    supergroupFullInfo: b.TdBase.fromJson(json['supergroup_full_info']) as SupergroupFullInfo,
  );
}

/// Service notification from the server. Upon receiving this the application must show a popup with the content of the notification
class UpdateServiceNotification extends a.Update {
  /// Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" should be shown under notification; if user presses the second, all local data should be destroyed using Destroy method
  final String type;
  /// Notification content
  final a.MessageContent content;

  UpdateServiceNotification({
    required this.type,
    required this.content,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateServiceNotification',
    'type': type,
    'content': content,
  };

  factory UpdateServiceNotification.fromJson(Map<String, dynamic> json) => UpdateServiceNotification(
    type: json['type'],
    content: b.TdBase.fromJson(json['content']) as a.MessageContent,
  );
}

/// Information about a file was updated
class UpdateFile extends a.Update {
  /// New data about the file
  final File file;

  UpdateFile({
    required this.file,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateFile',
    'file': file,
  };

  factory UpdateFile.fromJson(Map<String, dynamic> json) => UpdateFile(
    file: b.TdBase.fromJson(json['file']) as File,
  );
}

/// The file generation process needs to be started by the application
class UpdateFileGenerationStart extends a.Update {
  /// Unique identifier for the generation process
  final int generationId;
  /// The path to a file from which a new file is generated; may be empty
  final String originalPath;
  /// The path to a file that should be created and where the new file should be generated
  final String destinationPath;
  /// String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which should be downloaded by the application
  final String conversion;

  UpdateFileGenerationStart({
    required this.generationId,
    required this.originalPath,
    required this.destinationPath,
    required this.conversion,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateFileGenerationStart',
    'generation_id': generationId,
    'original_path': originalPath,
    'destination_path': destinationPath,
    'conversion': conversion,
  };

  factory UpdateFileGenerationStart.fromJson(Map<String, dynamic> json) => UpdateFileGenerationStart(
    generationId: int.parse(json['generation_id']),
    originalPath: json['original_path'],
    destinationPath: json['destination_path'],
    conversion: json['conversion'],
  );
}

/// File generation is no longer needed
class UpdateFileGenerationStop extends a.Update {
  /// Unique identifier for the generation process
  final int generationId;

  UpdateFileGenerationStop({
    required this.generationId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateFileGenerationStop',
    'generation_id': generationId,
  };

  factory UpdateFileGenerationStop.fromJson(Map<String, dynamic> json) => UpdateFileGenerationStop(
    generationId: int.parse(json['generation_id']),
  );
}

/// New call was created or information about a call was updated
class UpdateCall extends a.Update {
  /// New data about a call
  final Call call;

  UpdateCall({
    required this.call,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateCall',
    'call': call,
  };

  factory UpdateCall.fromJson(Map<String, dynamic> json) => UpdateCall(
    call: b.TdBase.fromJson(json['call']) as Call,
  );
}

/// Information about a group call was updated
class UpdateGroupCall extends a.Update {
  /// New data about a group call
  final GroupCall groupCall;

  UpdateGroupCall({
    required this.groupCall,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateGroupCall',
    'group_call': groupCall,
  };

  factory UpdateGroupCall.fromJson(Map<String, dynamic> json) => UpdateGroupCall(
    groupCall: b.TdBase.fromJson(json['group_call']) as GroupCall,
  );
}

/// Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined
class UpdateGroupCallParticipant extends a.Update {
  /// Identifier of group call
  final int groupCallId;
  /// New data about a participant
  final GroupCallParticipant participant;

  UpdateGroupCallParticipant({
    required this.groupCallId,
    required this.participant,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateGroupCallParticipant',
    'group_call_id': groupCallId,
    'participant': participant,
  };

  factory UpdateGroupCallParticipant.fromJson(Map<String, dynamic> json) => UpdateGroupCallParticipant(
    groupCallId: json['group_call_id'],
    participant: b.TdBase.fromJson(json['participant']) as GroupCallParticipant,
  );
}

/// New call signaling data arrived
class UpdateNewCallSignalingData extends a.Update {
  /// The call identifier
  final int callId;
  /// The data
  final Uint8List data;

  UpdateNewCallSignalingData({
    required this.callId,
    required this.data,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateNewCallSignalingData',
    'call_id': callId,
    'data': data,
  };

  factory UpdateNewCallSignalingData.fromJson(Map<String, dynamic> json) => UpdateNewCallSignalingData(
    callId: json['call_id'],
    data: base64.decode(json['data']),
  );
}

/// Some privacy setting rules have been changed
class UpdateUserPrivacySettingRules extends a.Update {
  /// The privacy setting
  final a.UserPrivacySetting setting;
  /// New privacy rules
  final UserPrivacySettingRules rules;

  UpdateUserPrivacySettingRules({
    required this.setting,
    required this.rules,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateUserPrivacySettingRules',
    'setting': setting,
    'rules': rules,
  };

  factory UpdateUserPrivacySettingRules.fromJson(Map<String, dynamic> json) => UpdateUserPrivacySettingRules(
    setting: b.TdBase.fromJson(json['setting']) as a.UserPrivacySetting,
    rules: b.TdBase.fromJson(json['rules']) as UserPrivacySettingRules,
  );
}

/// Number of unread messages in a chat list has changed. This update is sent only if the message database is used
class UpdateUnreadMessageCount extends a.Update {
  /// The chat list with changed number of unread messages
  final a.ChatList chatList;
  /// Total number of unread messages
  final int unreadCount;
  /// Total number of unread messages in unmuted chats
  final int unreadUnmutedCount;

  UpdateUnreadMessageCount({
    required this.chatList,
    required this.unreadCount,
    required this.unreadUnmutedCount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateUnreadMessageCount',
    'chat_list': chatList,
    'unread_count': unreadCount,
    'unread_unmuted_count': unreadUnmutedCount,
  };

  factory UpdateUnreadMessageCount.fromJson(Map<String, dynamic> json) => UpdateUnreadMessageCount(
    chatList: b.TdBase.fromJson(json['chat_list']) as a.ChatList,
    unreadCount: json['unread_count'],
    unreadUnmutedCount: json['unread_unmuted_count'],
  );
}

/// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used
class UpdateUnreadChatCount extends a.Update {
  /// The chat list with changed number of unread messages
  final a.ChatList chatList;
  /// Approximate total number of chats in the chat list
  final int totalCount;
  /// Total number of unread chats
  final int unreadCount;
  /// Total number of unread unmuted chats
  final int unreadUnmutedCount;
  /// Total number of chats marked as unread
  final int markedAsUnreadCount;
  /// Total number of unmuted chats marked as unread
  final int markedAsUnreadUnmutedCount;

  UpdateUnreadChatCount({
    required this.chatList,
    required this.totalCount,
    required this.unreadCount,
    required this.unreadUnmutedCount,
    required this.markedAsUnreadCount,
    required this.markedAsUnreadUnmutedCount,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateUnreadChatCount',
    'chat_list': chatList,
    'total_count': totalCount,
    'unread_count': unreadCount,
    'unread_unmuted_count': unreadUnmutedCount,
    'marked_as_unread_count': markedAsUnreadCount,
    'marked_as_unread_unmuted_count': markedAsUnreadUnmutedCount,
  };

  factory UpdateUnreadChatCount.fromJson(Map<String, dynamic> json) => UpdateUnreadChatCount(
    chatList: b.TdBase.fromJson(json['chat_list']) as a.ChatList,
    totalCount: json['total_count'],
    unreadCount: json['unread_count'],
    unreadUnmutedCount: json['unread_unmuted_count'],
    markedAsUnreadCount: json['marked_as_unread_count'],
    markedAsUnreadUnmutedCount: json['marked_as_unread_unmuted_count'],
  );
}

/// An option changed its value
class UpdateOption extends a.Update {
  /// The option name
  final String name;
  /// The new option value
  final a.OptionValue value;

  UpdateOption({
    required this.name,
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateOption',
    'name': name,
    'value': value,
  };

  factory UpdateOption.fromJson(Map<String, dynamic> json) => UpdateOption(
    name: json['name'],
    value: b.TdBase.fromJson(json['value']) as a.OptionValue,
  );
}

/// A sticker set has changed
class UpdateStickerSet extends a.Update {
  /// The sticker set
  final StickerSet stickerSet;

  UpdateStickerSet({
    required this.stickerSet,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateStickerSet',
    'sticker_set': stickerSet,
  };

  factory UpdateStickerSet.fromJson(Map<String, dynamic> json) => UpdateStickerSet(
    stickerSet: b.TdBase.fromJson(json['sticker_set']) as StickerSet,
  );
}

/// The list of installed sticker sets was updated
class UpdateInstalledStickerSets extends a.Update {
  /// True, if the list of installed mask sticker sets was updated
  final bool isMasks;
  /// The new list of installed ordinary sticker sets
  final List<int> stickerSetIds;

  UpdateInstalledStickerSets({
    required this.isMasks,
    required this.stickerSetIds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateInstalledStickerSets',
    'is_masks': isMasks,
    'sticker_set_ids': stickerSetIds,
  };

  factory UpdateInstalledStickerSets.fromJson(Map<String, dynamic> json) => UpdateInstalledStickerSets(
    isMasks: json['is_masks'],
    stickerSetIds: (json['sticker_set_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// The list of trending sticker sets was updated or some of them were viewed
class UpdateTrendingStickerSets extends a.Update {
  /// The prefix of the list of trending sticker sets with the newest trending sticker sets
  final StickerSets stickerSets;

  UpdateTrendingStickerSets({
    required this.stickerSets,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateTrendingStickerSets',
    'sticker_sets': stickerSets,
  };

  factory UpdateTrendingStickerSets.fromJson(Map<String, dynamic> json) => UpdateTrendingStickerSets(
    stickerSets: b.TdBase.fromJson(json['sticker_sets']) as StickerSets,
  );
}

/// The list of recently used stickers was updated
class UpdateRecentStickers extends a.Update {
  /// True, if the list of stickers attached to photo or video files was updated, otherwise the list of sent stickers is updated
  final bool isAttached;
  /// The new list of file identifiers of recently used stickers
  final List<int> stickerIds;

  UpdateRecentStickers({
    required this.isAttached,
    required this.stickerIds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateRecentStickers',
    'is_attached': isAttached,
    'sticker_ids': stickerIds,
  };

  factory UpdateRecentStickers.fromJson(Map<String, dynamic> json) => UpdateRecentStickers(
    isAttached: json['is_attached'],
    stickerIds: (json['sticker_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// The list of favorite stickers was updated
class UpdateFavoriteStickers extends a.Update {
  /// The new list of file identifiers of favorite stickers
  final List<int> stickerIds;

  UpdateFavoriteStickers({
    required this.stickerIds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateFavoriteStickers',
    'sticker_ids': stickerIds,
  };

  factory UpdateFavoriteStickers.fromJson(Map<String, dynamic> json) => UpdateFavoriteStickers(
    stickerIds: (json['sticker_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// The list of saved animations was updated
class UpdateSavedAnimations extends a.Update {
  /// The new list of file identifiers of saved animations
  final List<int> animationIds;

  UpdateSavedAnimations({
    required this.animationIds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateSavedAnimations',
    'animation_ids': animationIds,
  };

  factory UpdateSavedAnimations.fromJson(Map<String, dynamic> json) => UpdateSavedAnimations(
    animationIds: (json['animation_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// The selected background has changed
class UpdateSelectedBackground extends a.Update {
  /// True, if background for dark theme has changed
  final bool forDarkTheme;
  /// The new selected background; may be null
  final Background background;

  UpdateSelectedBackground({
    required this.forDarkTheme,
    required this.background,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateSelectedBackground',
    'for_dark_theme': forDarkTheme,
    'background': background,
  };

  factory UpdateSelectedBackground.fromJson(Map<String, dynamic> json) => UpdateSelectedBackground(
    forDarkTheme: json['for_dark_theme'],
    background: b.TdBase.fromJson(json['background']) as Background,
  );
}

/// Some language pack strings have been updated
class UpdateLanguagePackStrings extends a.Update {
  /// Localization target to which the language pack belongs
  final String localizationTarget;
  /// Identifier of the updated language pack
  final String languagePackId;
  /// List of changed language pack strings
  final List<LanguagePackString> strings;

  UpdateLanguagePackStrings({
    required this.localizationTarget,
    required this.languagePackId,
    required this.strings,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateLanguagePackStrings',
    'localization_target': localizationTarget,
    'language_pack_id': languagePackId,
    'strings': strings,
  };

  factory UpdateLanguagePackStrings.fromJson(Map<String, dynamic> json) => UpdateLanguagePackStrings(
    localizationTarget: json['localization_target'],
    languagePackId: json['language_pack_id'],
    strings: (json['strings'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as LanguagePackString).toList(growable: false),
  );
}

/// The connection state has changed. This update must be used only to show a human-readable description of the connection state
class UpdateConnectionState extends a.Update {
  /// The new connection state
  final a.ConnectionState state;

  UpdateConnectionState({
    required this.state,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateConnectionState',
    'state': state,
  };

  factory UpdateConnectionState.fromJson(Map<String, dynamic> json) => UpdateConnectionState(
    state: b.TdBase.fromJson(json['state']) as a.ConnectionState,
  );
}

/// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method should be called with the reason "Decline ToS update"
class UpdateTermsOfService extends a.Update {
  /// Identifier of the terms of service
  final String termsOfServiceId;
  /// The new terms of service
  final TermsOfService termsOfService;

  UpdateTermsOfService({
    required this.termsOfServiceId,
    required this.termsOfService,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateTermsOfService',
    'terms_of_service_id': termsOfServiceId,
    'terms_of_service': termsOfService,
  };

  factory UpdateTermsOfService.fromJson(Map<String, dynamic> json) => UpdateTermsOfService(
    termsOfServiceId: json['terms_of_service_id'],
    termsOfService: b.TdBase.fromJson(json['terms_of_service']) as TermsOfService,
  );
}

/// The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request
class UpdateUsersNearby extends a.Update {
  /// The new list of users nearby
  final List<ChatNearby> usersNearby;

  UpdateUsersNearby({
    required this.usersNearby,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateUsersNearby',
    'users_nearby': usersNearby,
  };

  factory UpdateUsersNearby.fromJson(Map<String, dynamic> json) => UpdateUsersNearby(
    usersNearby: (json['users_nearby'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as ChatNearby).toList(growable: false),
  );
}

/// The list of supported dice emojis has changed
class UpdateDiceEmojis extends a.Update {
  /// The new list of supported dice emojis
  final List<String> emojis;

  UpdateDiceEmojis({
    required this.emojis,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateDiceEmojis',
    'emojis': emojis,
  };

  factory UpdateDiceEmojis.fromJson(Map<String, dynamic> json) => UpdateDiceEmojis(
    emojis: (json['emojis'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as String).toList(growable: false),
  );
}

/// The parameters of animation search through GetOption("animation_search_bot_username") bot has changed
class UpdateAnimationSearchParameters extends a.Update {
  /// Name of the animation search provider
  final String provider;
  /// The new list of emojis suggested for searching
  final List<String> emojis;

  UpdateAnimationSearchParameters({
    required this.provider,
    required this.emojis,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateAnimationSearchParameters',
    'provider': provider,
    'emojis': emojis,
  };

  factory UpdateAnimationSearchParameters.fromJson(Map<String, dynamic> json) => UpdateAnimationSearchParameters(
    provider: json['provider'],
    emojis: (json['emojis'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as String).toList(growable: false),
  );
}

/// The list of suggested to the user actions has changed
class UpdateSuggestedActions extends a.Update {
  /// Added suggested actions
  final List<a.SuggestedAction> addedActions;
  /// Removed suggested actions
  final List<a.SuggestedAction> removedActions;

  UpdateSuggestedActions({
    required this.addedActions,
    required this.removedActions,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateSuggestedActions',
    'added_actions': addedActions,
    'removed_actions': removedActions,
  };

  factory UpdateSuggestedActions.fromJson(Map<String, dynamic> json) => UpdateSuggestedActions(
    addedActions: (json['added_actions'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.SuggestedAction).toList(growable: false),
    removedActions: (json['removed_actions'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.SuggestedAction).toList(growable: false),
  );
}

/// A new incoming inline query; for bots only
class UpdateNewInlineQuery extends a.Update {
  /// Unique query identifier
  final int id;
  /// Identifier of the user who sent the query
  final int senderUserId;
  /// User location; may be null
  final Location userLocation;
  /// Contains information about the type of the chat, from which the query originated; may be null if unknown
  final a.ChatType chatType;
  /// Text of the query
  final String query;
  /// Offset of the first entry to return
  final String offset;

  UpdateNewInlineQuery({
    required this.id,
    required this.senderUserId,
    required this.userLocation,
    required this.chatType,
    required this.query,
    required this.offset,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateNewInlineQuery',
    'id': id,
    'sender_user_id': senderUserId,
    'user_location': userLocation,
    'chat_type': chatType,
    'query': query,
    'offset': offset,
  };

  factory UpdateNewInlineQuery.fromJson(Map<String, dynamic> json) => UpdateNewInlineQuery(
    id: int.parse(json['id']),
    senderUserId: json['sender_user_id'],
    userLocation: b.TdBase.fromJson(json['user_location']) as Location,
    chatType: b.TdBase.fromJson(json['chat_type']) as a.ChatType,
    query: json['query'],
    offset: json['offset'],
  );
}

/// The user has chosen a result of an inline query; for bots only
class UpdateNewChosenInlineResult extends a.Update {
  /// Identifier of the user who sent the query
  final int senderUserId;
  /// User location; may be null
  final Location userLocation;
  /// Text of the query
  final String query;
  /// Identifier of the chosen result
  final String resultId;
  /// Identifier of the sent inline message, if known
  final String inlineMessageId;

  UpdateNewChosenInlineResult({
    required this.senderUserId,
    required this.userLocation,
    required this.query,
    required this.resultId,
    required this.inlineMessageId,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateNewChosenInlineResult',
    'sender_user_id': senderUserId,
    'user_location': userLocation,
    'query': query,
    'result_id': resultId,
    'inline_message_id': inlineMessageId,
  };

  factory UpdateNewChosenInlineResult.fromJson(Map<String, dynamic> json) => UpdateNewChosenInlineResult(
    senderUserId: json['sender_user_id'],
    userLocation: b.TdBase.fromJson(json['user_location']) as Location,
    query: json['query'],
    resultId: json['result_id'],
    inlineMessageId: json['inline_message_id'],
  );
}

/// A new incoming callback query; for bots only
class UpdateNewCallbackQuery extends a.Update {
  /// Unique query identifier
  final int id;
  /// Identifier of the user who sent the query
  final int senderUserId;
  /// Identifier of the chat where the query was sent
  final int chatId;
  /// Identifier of the message, from which the query originated
  final int messageId;
  /// Identifier that uniquely corresponds to the chat to which the message was sent
  final int chatInstance;
  /// Query payload
  final a.CallbackQueryPayload payload;

  UpdateNewCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.chatId,
    required this.messageId,
    required this.chatInstance,
    required this.payload,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateNewCallbackQuery',
    'id': id,
    'sender_user_id': senderUserId,
    'chat_id': chatId,
    'message_id': messageId,
    'chat_instance': chatInstance,
    'payload': payload,
  };

  factory UpdateNewCallbackQuery.fromJson(Map<String, dynamic> json) => UpdateNewCallbackQuery(
    id: int.parse(json['id']),
    senderUserId: json['sender_user_id'],
    chatId: json['chat_id'],
    messageId: json['message_id'],
    chatInstance: int.parse(json['chat_instance']),
    payload: b.TdBase.fromJson(json['payload']) as a.CallbackQueryPayload,
  );
}

/// A new incoming callback query from a message sent via a bot; for bots only
class UpdateNewInlineCallbackQuery extends a.Update {
  /// Unique query identifier
  final int id;
  /// Identifier of the user who sent the query
  final int senderUserId;
  /// Identifier of the inline message, from which the query originated
  final String inlineMessageId;
  /// An identifier uniquely corresponding to the chat a message was sent to
  final int chatInstance;
  /// Query payload
  final a.CallbackQueryPayload payload;

  UpdateNewInlineCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.inlineMessageId,
    required this.chatInstance,
    required this.payload,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateNewInlineCallbackQuery',
    'id': id,
    'sender_user_id': senderUserId,
    'inline_message_id': inlineMessageId,
    'chat_instance': chatInstance,
    'payload': payload,
  };

  factory UpdateNewInlineCallbackQuery.fromJson(Map<String, dynamic> json) => UpdateNewInlineCallbackQuery(
    id: int.parse(json['id']),
    senderUserId: json['sender_user_id'],
    inlineMessageId: json['inline_message_id'],
    chatInstance: int.parse(json['chat_instance']),
    payload: b.TdBase.fromJson(json['payload']) as a.CallbackQueryPayload,
  );
}

/// A new incoming shipping query; for bots only. Only for invoices with flexible price
class UpdateNewShippingQuery extends a.Update {
  /// Unique query identifier
  final int id;
  /// Identifier of the user who sent the query
  final int senderUserId;
  /// Invoice payload
  final String invoicePayload;
  /// User shipping address
  final Address shippingAddress;

  UpdateNewShippingQuery({
    required this.id,
    required this.senderUserId,
    required this.invoicePayload,
    required this.shippingAddress,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateNewShippingQuery',
    'id': id,
    'sender_user_id': senderUserId,
    'invoice_payload': invoicePayload,
    'shipping_address': shippingAddress,
  };

  factory UpdateNewShippingQuery.fromJson(Map<String, dynamic> json) => UpdateNewShippingQuery(
    id: int.parse(json['id']),
    senderUserId: json['sender_user_id'],
    invoicePayload: json['invoice_payload'],
    shippingAddress: b.TdBase.fromJson(json['shipping_address']) as Address,
  );
}

/// A new incoming pre-checkout query; for bots only. Contains full information about a checkout
class UpdateNewPreCheckoutQuery extends a.Update {
  /// Unique query identifier
  final int id;
  /// Identifier of the user who sent the query
  final int senderUserId;
  /// Currency for the product price
  final String currency;
  /// Total price for the product, in the smallest units of the currency
  final int totalAmount;
  /// Invoice payload
  final Uint8List invoicePayload;
  /// Identifier of a shipping option chosen by the user; may be empty if not applicable
  final String shippingOptionId;
  /// Information about the order; may be null
  final OrderInfo orderInfo;

  UpdateNewPreCheckoutQuery({
    required this.id,
    required this.senderUserId,
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    required this.shippingOptionId,
    required this.orderInfo,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateNewPreCheckoutQuery',
    'id': id,
    'sender_user_id': senderUserId,
    'currency': currency,
    'total_amount': totalAmount,
    'invoice_payload': invoicePayload,
    'shipping_option_id': shippingOptionId,
    'order_info': orderInfo,
  };

  factory UpdateNewPreCheckoutQuery.fromJson(Map<String, dynamic> json) => UpdateNewPreCheckoutQuery(
    id: int.parse(json['id']),
    senderUserId: json['sender_user_id'],
    currency: json['currency'],
    totalAmount: json['total_amount'],
    invoicePayload: base64.decode(json['invoice_payload']),
    shippingOptionId: json['shipping_option_id'],
    orderInfo: b.TdBase.fromJson(json['order_info']) as OrderInfo,
  );
}

/// A new incoming event; for bots only
class UpdateNewCustomEvent extends a.Update {
  /// A JSON-serialized event
  final String event;

  UpdateNewCustomEvent({
    required this.event,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateNewCustomEvent',
    'event': event,
  };

  factory UpdateNewCustomEvent.fromJson(Map<String, dynamic> json) => UpdateNewCustomEvent(
    event: json['event'],
  );
}

/// A new incoming query; for bots only
class UpdateNewCustomQuery extends a.Update {
  /// The query identifier
  final int id;
  /// JSON-serialized query data
  final String data;
  /// Query timeout
  final int timeout;

  UpdateNewCustomQuery({
    required this.id,
    required this.data,
    required this.timeout,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateNewCustomQuery',
    'id': id,
    'data': data,
    'timeout': timeout,
  };

  factory UpdateNewCustomQuery.fromJson(Map<String, dynamic> json) => UpdateNewCustomQuery(
    id: int.parse(json['id']),
    data: json['data'],
    timeout: json['timeout'],
  );
}

/// A poll was updated; for bots only
class UpdatePoll extends a.Update {
  /// New data about the poll
  final Poll poll;

  UpdatePoll({
    required this.poll,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updatePoll',
    'poll': poll,
  };

  factory UpdatePoll.fromJson(Map<String, dynamic> json) => UpdatePoll(
    poll: b.TdBase.fromJson(json['poll']) as Poll,
  );
}

/// A user changed the answer to a poll; for bots only
class UpdatePollAnswer extends a.Update {
  /// Unique poll identifier
  final int pollId;
  /// The user, who changed the answer to the poll
  final int userId;
  /// 0-based identifiers of answer options, chosen by the user
  final List<int> optionIds;

  UpdatePollAnswer({
    required this.pollId,
    required this.userId,
    required this.optionIds,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updatePollAnswer',
    'poll_id': pollId,
    'user_id': userId,
    'option_ids': optionIds,
  };

  factory UpdatePollAnswer.fromJson(Map<String, dynamic> json) => UpdatePollAnswer(
    pollId: int.parse(json['poll_id']),
    userId: json['user_id'],
    optionIds: (json['option_ids'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// User rights changed in a chat; for bots only
class UpdateChatMember extends a.Update {
  /// Chat identifier
  final int chatId;
  /// Identifier of the user, changing the rights
  final int actorUserId;
  /// Point in time (Unix timestamp) when the user rights was changed
  final int date;
  /// If user has joined the chat using an invite link, the invite link; may be null
  final ChatInviteLink inviteLink;
  /// Previous chat member
  final ChatMember oldChatMember;
  /// New chat member
  final ChatMember newChatMember;

  UpdateChatMember({
    required this.chatId,
    required this.actorUserId,
    required this.date,
    required this.inviteLink,
    required this.oldChatMember,
    required this.newChatMember,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updateChatMember',
    'chat_id': chatId,
    'actor_user_id': actorUserId,
    'date': date,
    'invite_link': inviteLink,
    'old_chat_member': oldChatMember,
    'new_chat_member': newChatMember,
  };

  factory UpdateChatMember.fromJson(Map<String, dynamic> json) => UpdateChatMember(
    chatId: json['chat_id'],
    actorUserId: json['actor_user_id'],
    date: json['date'],
    inviteLink: b.TdBase.fromJson(json['invite_link']) as ChatInviteLink,
    oldChatMember: b.TdBase.fromJson(json['old_chat_member']) as ChatMember,
    newChatMember: b.TdBase.fromJson(json['new_chat_member']) as ChatMember,
  );
}

/// Contains a list of updates
class Updates extends a.Updates {
  /// List of updates
  final List<a.Update> updates;

  Updates({
    required this.updates,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'updates',
    'updates': updates,
  };

  factory Updates.fromJson(Map<String, dynamic> json) => Updates(
    updates: (json['updates'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as a.Update).toList(growable: false),
  );
}

/// The log is written to stderr or an OS specific log
class LogStreamDefault extends a.LogStream {
  LogStreamDefault();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'logStreamDefault',
  };

  factory LogStreamDefault.fromJson(Map<String, dynamic> json) => LogStreamDefault(
  );
}

/// The log is written to a file
class LogStreamFile extends a.LogStream {
  /// Path to the file to where the internal TDLib log will be written
  final String path;
  /// The maximum size of the file to where the internal TDLib log is written before the file will be auto-rotated
  final int maxFileSize;
  /// Pass true to additionally redirect stderr to the log file. Ignored on Windows
  final bool redirectStderr;

  LogStreamFile({
    required this.path,
    required this.maxFileSize,
    required this.redirectStderr,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'logStreamFile',
    'path': path,
    'max_file_size': maxFileSize,
    'redirect_stderr': redirectStderr,
  };

  factory LogStreamFile.fromJson(Map<String, dynamic> json) => LogStreamFile(
    path: json['path'],
    maxFileSize: json['max_file_size'],
    redirectStderr: json['redirect_stderr'],
  );
}

/// The log is written nowhere
class LogStreamEmpty extends a.LogStream {
  LogStreamEmpty();

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'logStreamEmpty',
  };

  factory LogStreamEmpty.fromJson(Map<String, dynamic> json) => LogStreamEmpty(
  );
}

/// Contains a TDLib internal log verbosity level
class LogVerbosityLevel extends a.LogVerbosityLevel {
  /// Log verbosity level
  final int verbosityLevel;

  LogVerbosityLevel({
    required this.verbosityLevel,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'logVerbosityLevel',
    'verbosity_level': verbosityLevel,
  };

  factory LogVerbosityLevel.fromJson(Map<String, dynamic> json) => LogVerbosityLevel(
    verbosityLevel: json['verbosity_level'],
  );
}

/// Contains a list of available TDLib internal log tags
class LogTags extends a.LogTags {
  /// List of log tags
  final List<String> tags;

  LogTags({
    required this.tags,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'logTags',
    'tags': tags,
  };

  factory LogTags.fromJson(Map<String, dynamic> json) => LogTags(
    tags: (json['tags'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as String).toList(growable: false),
  );
}

/// A simple object containing a number; for testing only
class TestInt extends a.TestInt {
  /// Number
  final int value;

  TestInt({
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testInt',
    'value': value,
  };

  factory TestInt.fromJson(Map<String, dynamic> json) => TestInt(
    value: json['value'],
  );
}

/// A simple object containing a string; for testing only
class TestString extends a.TestString {
  /// String
  final String value;

  TestString({
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testString',
    'value': value,
  };

  factory TestString.fromJson(Map<String, dynamic> json) => TestString(
    value: json['value'],
  );
}

/// A simple object containing a sequence of bytes; for testing only
class TestBytes extends a.TestBytes {
  /// Bytes
  final Uint8List value;

  TestBytes({
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testBytes',
    'value': value,
  };

  factory TestBytes.fromJson(Map<String, dynamic> json) => TestBytes(
    value: base64.decode(json['value']),
  );
}

/// A simple object containing a vector of numbers; for testing only
class TestVectorInt extends a.TestVectorInt {
  /// Vector of numbers
  final List<int> value;

  TestVectorInt({
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testVectorInt',
    'value': value,
  };

  factory TestVectorInt.fromJson(Map<String, dynamic> json) => TestVectorInt(
    value: (json['value'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as int).toList(growable: false),
  );
}

/// A simple object containing a vector of objects that hold a number; for testing only
class TestVectorIntObject extends a.TestVectorIntObject {
  /// Vector of objects
  final List<TestInt> value;

  TestVectorIntObject({
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testVectorIntObject',
    'value': value,
  };

  factory TestVectorIntObject.fromJson(Map<String, dynamic> json) => TestVectorIntObject(
    value: (json['value'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as TestInt).toList(growable: false),
  );
}

/// A simple object containing a vector of strings; for testing only
class TestVectorString extends a.TestVectorString {
  /// Vector of strings
  final List<String> value;

  TestVectorString({
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testVectorString',
    'value': value,
  };

  factory TestVectorString.fromJson(Map<String, dynamic> json) => TestVectorString(
    value: (json['value'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as String).toList(growable: false),
  );
}

/// A simple object containing a vector of objects that hold a string; for testing only
class TestVectorStringObject extends a.TestVectorStringObject {
  /// Vector of objects
  final List<TestString> value;

  TestVectorStringObject({
    required this.value,
  });

  @override
  Map<String, dynamic> toJson() => {
    '@type': 'testVectorStringObject',
    'value': value,
  };

  factory TestVectorStringObject.fromJson(Map<String, dynamic> json) => TestVectorStringObject(
    value: (json['value'] as List<dynamic>).map((e) => b.TdBase.fromJson(e) as TestString).toList(growable: false),
  );
}

