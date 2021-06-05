import 'dart:core' as dc show Error;

import 'base.dart' as b;
import 'obj.dart' as o;

typedef Func1<T, TResult> = TResult Function(T);

class MatchError extends dc.Error {}

/// 
abstract class Error extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Error, TResult>? isError,
    Func1<Error, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Error) {
      if (isError != null) {
        return isError(this as o.Error);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Ok extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Ok, TResult>? isOk,
    Func1<Ok, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Ok) {
      if (isOk != null) {
        return isOk(this as o.Ok);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class TdlibParameters extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TdlibParameters, TResult>? isTdlibParameters,
    Func1<TdlibParameters, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TdlibParameters) {
      if (isTdlibParameters != null) {
        return isTdlibParameters(this as o.TdlibParameters);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Provides information about the method by which an authentication code is delivered to the user
abstract class AuthenticationCodeType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.AuthenticationCodeTypeTelegramMessage, TResult>? isAuthenticationCodeTypeTelegramMessage,
    Func1<o.AuthenticationCodeTypeSms, TResult>? isAuthenticationCodeTypeSms,
    Func1<o.AuthenticationCodeTypeCall, TResult>? isAuthenticationCodeTypeCall,
    Func1<o.AuthenticationCodeTypeFlashCall, TResult>? isAuthenticationCodeTypeFlashCall,
    Func1<AuthenticationCodeType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.AuthenticationCodeTypeTelegramMessage) {
      if (isAuthenticationCodeTypeTelegramMessage != null) {
        return isAuthenticationCodeTypeTelegramMessage(this as o.AuthenticationCodeTypeTelegramMessage);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.AuthenticationCodeTypeSms) {
      if (isAuthenticationCodeTypeSms != null) {
        return isAuthenticationCodeTypeSms(this as o.AuthenticationCodeTypeSms);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.AuthenticationCodeTypeCall) {
      if (isAuthenticationCodeTypeCall != null) {
        return isAuthenticationCodeTypeCall(this as o.AuthenticationCodeTypeCall);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.AuthenticationCodeTypeFlashCall) {
      if (isAuthenticationCodeTypeFlashCall != null) {
        return isAuthenticationCodeTypeFlashCall(this as o.AuthenticationCodeTypeFlashCall);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class AuthenticationCodeInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.AuthenticationCodeInfo, TResult>? isAuthenticationCodeInfo,
    Func1<AuthenticationCodeInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.AuthenticationCodeInfo) {
      if (isAuthenticationCodeInfo != null) {
        return isAuthenticationCodeInfo(this as o.AuthenticationCodeInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class EmailAddressAuthenticationCodeInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.EmailAddressAuthenticationCodeInfo, TResult>? isEmailAddressAuthenticationCodeInfo,
    Func1<EmailAddressAuthenticationCodeInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.EmailAddressAuthenticationCodeInfo) {
      if (isEmailAddressAuthenticationCodeInfo != null) {
        return isEmailAddressAuthenticationCodeInfo(this as o.EmailAddressAuthenticationCodeInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class TextEntity extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TextEntity, TResult>? isTextEntity,
    Func1<TextEntity, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TextEntity) {
      if (isTextEntity != null) {
        return isTextEntity(this as o.TextEntity);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class TextEntities extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TextEntities, TResult>? isTextEntities,
    Func1<TextEntities, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TextEntities) {
      if (isTextEntities != null) {
        return isTextEntities(this as o.TextEntities);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class FormattedText extends b.TdBase {
  TResult match<TResult>({
    Func1<o.FormattedText, TResult>? isFormattedText,
    Func1<FormattedText, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.FormattedText) {
      if (isFormattedText != null) {
        return isFormattedText(this as o.FormattedText);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class TermsOfService extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TermsOfService, TResult>? isTermsOfService,
    Func1<TermsOfService, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TermsOfService) {
      if (isTermsOfService != null) {
        return isTermsOfService(this as o.TermsOfService);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents the current authorization state of the TDLib client
abstract class AuthorizationState extends b.TdBase {
  TResult match<TResult>({
    Func1<o.AuthorizationStateWaitTdlibParameters, TResult>? isAuthorizationStateWaitTdlibParameters,
    Func1<o.AuthorizationStateWaitEncryptionKey, TResult>? isAuthorizationStateWaitEncryptionKey,
    Func1<o.AuthorizationStateWaitPhoneNumber, TResult>? isAuthorizationStateWaitPhoneNumber,
    Func1<o.AuthorizationStateWaitCode, TResult>? isAuthorizationStateWaitCode,
    Func1<o.AuthorizationStateWaitOtherDeviceConfirmation, TResult>? isAuthorizationStateWaitOtherDeviceConfirmation,
    Func1<o.AuthorizationStateWaitRegistration, TResult>? isAuthorizationStateWaitRegistration,
    Func1<o.AuthorizationStateWaitPassword, TResult>? isAuthorizationStateWaitPassword,
    Func1<o.AuthorizationStateReady, TResult>? isAuthorizationStateReady,
    Func1<o.AuthorizationStateLoggingOut, TResult>? isAuthorizationStateLoggingOut,
    Func1<o.AuthorizationStateClosing, TResult>? isAuthorizationStateClosing,
    Func1<o.AuthorizationStateClosed, TResult>? isAuthorizationStateClosed,
    Func1<AuthorizationState, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.AuthorizationStateWaitTdlibParameters) {
      if (isAuthorizationStateWaitTdlibParameters != null) {
        return isAuthorizationStateWaitTdlibParameters(this as o.AuthorizationStateWaitTdlibParameters);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateWaitEncryptionKey) {
      if (isAuthorizationStateWaitEncryptionKey != null) {
        return isAuthorizationStateWaitEncryptionKey(this as o.AuthorizationStateWaitEncryptionKey);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateWaitPhoneNumber) {
      if (isAuthorizationStateWaitPhoneNumber != null) {
        return isAuthorizationStateWaitPhoneNumber(this as o.AuthorizationStateWaitPhoneNumber);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateWaitCode) {
      if (isAuthorizationStateWaitCode != null) {
        return isAuthorizationStateWaitCode(this as o.AuthorizationStateWaitCode);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateWaitOtherDeviceConfirmation) {
      if (isAuthorizationStateWaitOtherDeviceConfirmation != null) {
        return isAuthorizationStateWaitOtherDeviceConfirmation(this as o.AuthorizationStateWaitOtherDeviceConfirmation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateWaitRegistration) {
      if (isAuthorizationStateWaitRegistration != null) {
        return isAuthorizationStateWaitRegistration(this as o.AuthorizationStateWaitRegistration);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateWaitPassword) {
      if (isAuthorizationStateWaitPassword != null) {
        return isAuthorizationStateWaitPassword(this as o.AuthorizationStateWaitPassword);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateReady) {
      if (isAuthorizationStateReady != null) {
        return isAuthorizationStateReady(this as o.AuthorizationStateReady);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateLoggingOut) {
      if (isAuthorizationStateLoggingOut != null) {
        return isAuthorizationStateLoggingOut(this as o.AuthorizationStateLoggingOut);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateClosing) {
      if (isAuthorizationStateClosing != null) {
        return isAuthorizationStateClosing(this as o.AuthorizationStateClosing);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateClosed) {
      if (isAuthorizationStateClosed != null) {
        return isAuthorizationStateClosed(this as o.AuthorizationStateClosed);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PasswordState extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PasswordState, TResult>? isPasswordState,
    Func1<PasswordState, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PasswordState) {
      if (isPasswordState != null) {
        return isPasswordState(this as o.PasswordState);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class RecoveryEmailAddress extends b.TdBase {
  TResult match<TResult>({
    Func1<o.RecoveryEmailAddress, TResult>? isRecoveryEmailAddress,
    Func1<RecoveryEmailAddress, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.RecoveryEmailAddress) {
      if (isRecoveryEmailAddress != null) {
        return isRecoveryEmailAddress(this as o.RecoveryEmailAddress);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class TemporaryPasswordState extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TemporaryPasswordState, TResult>? isTemporaryPasswordState,
    Func1<TemporaryPasswordState, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TemporaryPasswordState) {
      if (isTemporaryPasswordState != null) {
        return isTemporaryPasswordState(this as o.TemporaryPasswordState);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class LocalFile extends b.TdBase {
  TResult match<TResult>({
    Func1<o.LocalFile, TResult>? isLocalFile,
    Func1<LocalFile, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LocalFile) {
      if (isLocalFile != null) {
        return isLocalFile(this as o.LocalFile);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class RemoteFile extends b.TdBase {
  TResult match<TResult>({
    Func1<o.RemoteFile, TResult>? isRemoteFile,
    Func1<RemoteFile, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.RemoteFile) {
      if (isRemoteFile != null) {
        return isRemoteFile(this as o.RemoteFile);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class File extends b.TdBase {
  TResult match<TResult>({
    Func1<o.File, TResult>? isFile,
    Func1<File, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.File) {
      if (isFile != null) {
        return isFile(this as o.File);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Points to a file
abstract class InputFile extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InputFileId, TResult>? isInputFileId,
    Func1<o.InputFileRemote, TResult>? isInputFileRemote,
    Func1<o.InputFileLocal, TResult>? isInputFileLocal,
    Func1<o.InputFileGenerated, TResult>? isInputFileGenerated,
    Func1<InputFile, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputFileId) {
      if (isInputFileId != null) {
        return isInputFileId(this as o.InputFileId);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputFileRemote) {
      if (isInputFileRemote != null) {
        return isInputFileRemote(this as o.InputFileRemote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputFileLocal) {
      if (isInputFileLocal != null) {
        return isInputFileLocal(this as o.InputFileLocal);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputFileGenerated) {
      if (isInputFileGenerated != null) {
        return isInputFileGenerated(this as o.InputFileGenerated);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PhotoSize extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PhotoSize, TResult>? isPhotoSize,
    Func1<PhotoSize, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PhotoSize) {
      if (isPhotoSize != null) {
        return isPhotoSize(this as o.PhotoSize);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Minithumbnail extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Minithumbnail, TResult>? isMinithumbnail,
    Func1<Minithumbnail, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Minithumbnail) {
      if (isMinithumbnail != null) {
        return isMinithumbnail(this as o.Minithumbnail);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes format of the thumbnail
abstract class ThumbnailFormat extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ThumbnailFormatJpeg, TResult>? isThumbnailFormatJpeg,
    Func1<o.ThumbnailFormatPng, TResult>? isThumbnailFormatPng,
    Func1<o.ThumbnailFormatWebp, TResult>? isThumbnailFormatWebp,
    Func1<o.ThumbnailFormatGif, TResult>? isThumbnailFormatGif,
    Func1<o.ThumbnailFormatTgs, TResult>? isThumbnailFormatTgs,
    Func1<o.ThumbnailFormatMpeg4, TResult>? isThumbnailFormatMpeg4,
    Func1<ThumbnailFormat, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ThumbnailFormatJpeg) {
      if (isThumbnailFormatJpeg != null) {
        return isThumbnailFormatJpeg(this as o.ThumbnailFormatJpeg);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ThumbnailFormatPng) {
      if (isThumbnailFormatPng != null) {
        return isThumbnailFormatPng(this as o.ThumbnailFormatPng);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ThumbnailFormatWebp) {
      if (isThumbnailFormatWebp != null) {
        return isThumbnailFormatWebp(this as o.ThumbnailFormatWebp);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ThumbnailFormatGif) {
      if (isThumbnailFormatGif != null) {
        return isThumbnailFormatGif(this as o.ThumbnailFormatGif);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ThumbnailFormatTgs) {
      if (isThumbnailFormatTgs != null) {
        return isThumbnailFormatTgs(this as o.ThumbnailFormatTgs);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ThumbnailFormatMpeg4) {
      if (isThumbnailFormatMpeg4 != null) {
        return isThumbnailFormatMpeg4(this as o.ThumbnailFormatMpeg4);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Thumbnail extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Thumbnail, TResult>? isThumbnail,
    Func1<Thumbnail, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Thumbnail) {
      if (isThumbnail != null) {
        return isThumbnail(this as o.Thumbnail);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Part of the face, relative to which a mask should be placed
abstract class MaskPoint extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MaskPointForehead, TResult>? isMaskPointForehead,
    Func1<o.MaskPointEyes, TResult>? isMaskPointEyes,
    Func1<o.MaskPointMouth, TResult>? isMaskPointMouth,
    Func1<o.MaskPointChin, TResult>? isMaskPointChin,
    Func1<MaskPoint, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MaskPointForehead) {
      if (isMaskPointForehead != null) {
        return isMaskPointForehead(this as o.MaskPointForehead);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MaskPointEyes) {
      if (isMaskPointEyes != null) {
        return isMaskPointEyes(this as o.MaskPointEyes);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MaskPointMouth) {
      if (isMaskPointMouth != null) {
        return isMaskPointMouth(this as o.MaskPointMouth);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MaskPointChin) {
      if (isMaskPointChin != null) {
        return isMaskPointChin(this as o.MaskPointChin);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class MaskPosition extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MaskPosition, TResult>? isMaskPosition,
    Func1<MaskPosition, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MaskPosition) {
      if (isMaskPosition != null) {
        return isMaskPosition(this as o.MaskPosition);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ClosedVectorPath extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ClosedVectorPath, TResult>? isClosedVectorPath,
    Func1<ClosedVectorPath, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ClosedVectorPath) {
      if (isClosedVectorPath != null) {
        return isClosedVectorPath(this as o.ClosedVectorPath);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PollOption extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PollOption, TResult>? isPollOption,
    Func1<PollOption, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PollOption) {
      if (isPollOption != null) {
        return isPollOption(this as o.PollOption);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the type of a poll
abstract class PollType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PollTypeRegular, TResult>? isPollTypeRegular,
    Func1<o.PollTypeQuiz, TResult>? isPollTypeQuiz,
    Func1<PollType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PollTypeRegular) {
      if (isPollTypeRegular != null) {
        return isPollTypeRegular(this as o.PollTypeRegular);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PollTypeQuiz) {
      if (isPollTypeQuiz != null) {
        return isPollTypeQuiz(this as o.PollTypeQuiz);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Animation extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Animation, TResult>? isAnimation,
    Func1<Animation, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Animation) {
      if (isAnimation != null) {
        return isAnimation(this as o.Animation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Audio extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Audio, TResult>? isAudio,
    Func1<Audio, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Audio) {
      if (isAudio != null) {
        return isAudio(this as o.Audio);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Document extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Document, TResult>? isDocument,
    Func1<Document, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Document) {
      if (isDocument != null) {
        return isDocument(this as o.Document);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Photo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Photo, TResult>? isPhoto,
    Func1<Photo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Photo) {
      if (isPhoto != null) {
        return isPhoto(this as o.Photo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Sticker extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Sticker, TResult>? isSticker,
    Func1<Sticker, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Sticker) {
      if (isSticker != null) {
        return isSticker(this as o.Sticker);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Video extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Video, TResult>? isVideo,
    Func1<Video, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Video) {
      if (isVideo != null) {
        return isVideo(this as o.Video);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class VideoNote extends b.TdBase {
  TResult match<TResult>({
    Func1<o.VideoNote, TResult>? isVideoNote,
    Func1<VideoNote, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.VideoNote) {
      if (isVideoNote != null) {
        return isVideoNote(this as o.VideoNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class VoiceNote extends b.TdBase {
  TResult match<TResult>({
    Func1<o.VoiceNote, TResult>? isVoiceNote,
    Func1<VoiceNote, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.VoiceNote) {
      if (isVoiceNote != null) {
        return isVoiceNote(this as o.VoiceNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Contact extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Contact, TResult>? isContact,
    Func1<Contact, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Contact) {
      if (isContact != null) {
        return isContact(this as o.Contact);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Location extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Location, TResult>? isLocation,
    Func1<Location, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Location) {
      if (isLocation != null) {
        return isLocation(this as o.Location);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Venue extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Venue, TResult>? isVenue,
    Func1<Venue, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Venue) {
      if (isVenue != null) {
        return isVenue(this as o.Venue);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Game extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Game, TResult>? isGame,
    Func1<Game, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Game) {
      if (isGame != null) {
        return isGame(this as o.Game);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Poll extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Poll, TResult>? isPoll,
    Func1<Poll, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Poll) {
      if (isPoll != null) {
        return isPoll(this as o.Poll);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ProfilePhoto extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ProfilePhoto, TResult>? isProfilePhoto,
    Func1<ProfilePhoto, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ProfilePhoto) {
      if (isProfilePhoto != null) {
        return isProfilePhoto(this as o.ProfilePhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatPhotoInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatPhotoInfo, TResult>? isChatPhotoInfo,
    Func1<ChatPhotoInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatPhotoInfo) {
      if (isChatPhotoInfo != null) {
        return isChatPhotoInfo(this as o.ChatPhotoInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents the type of a user. The following types are possible: regular users, deleted users and bots
abstract class UserType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.UserTypeRegular, TResult>? isUserTypeRegular,
    Func1<o.UserTypeDeleted, TResult>? isUserTypeDeleted,
    Func1<o.UserTypeBot, TResult>? isUserTypeBot,
    Func1<o.UserTypeUnknown, TResult>? isUserTypeUnknown,
    Func1<UserType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.UserTypeRegular) {
      if (isUserTypeRegular != null) {
        return isUserTypeRegular(this as o.UserTypeRegular);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserTypeDeleted) {
      if (isUserTypeDeleted != null) {
        return isUserTypeDeleted(this as o.UserTypeDeleted);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserTypeBot) {
      if (isUserTypeBot != null) {
        return isUserTypeBot(this as o.UserTypeBot);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserTypeUnknown) {
      if (isUserTypeUnknown != null) {
        return isUserTypeUnknown(this as o.UserTypeUnknown);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class BotCommand extends b.TdBase {
  TResult match<TResult>({
    Func1<o.BotCommand, TResult>? isBotCommand,
    Func1<BotCommand, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BotCommand) {
      if (isBotCommand != null) {
        return isBotCommand(this as o.BotCommand);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class BotInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.BotInfo, TResult>? isBotInfo,
    Func1<BotInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BotInfo) {
      if (isBotInfo != null) {
        return isBotInfo(this as o.BotInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatLocation extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatLocation, TResult>? isChatLocation,
    Func1<ChatLocation, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatLocation) {
      if (isChatLocation != null) {
        return isChatLocation(this as o.ChatLocation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class AnimatedChatPhoto extends b.TdBase {
  TResult match<TResult>({
    Func1<o.AnimatedChatPhoto, TResult>? isAnimatedChatPhoto,
    Func1<AnimatedChatPhoto, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.AnimatedChatPhoto) {
      if (isAnimatedChatPhoto != null) {
        return isAnimatedChatPhoto(this as o.AnimatedChatPhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatPhoto extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatPhoto, TResult>? isChatPhoto,
    Func1<ChatPhoto, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatPhoto) {
      if (isChatPhoto != null) {
        return isChatPhoto(this as o.ChatPhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatPhotos extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatPhotos, TResult>? isChatPhotos,
    Func1<ChatPhotos, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatPhotos) {
      if (isChatPhotos != null) {
        return isChatPhotos(this as o.ChatPhotos);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes a photo to be set as a user profile or chat photo
abstract class InputChatPhoto extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InputChatPhotoPrevious, TResult>? isInputChatPhotoPrevious,
    Func1<o.InputChatPhotoStatic, TResult>? isInputChatPhotoStatic,
    Func1<o.InputChatPhotoAnimation, TResult>? isInputChatPhotoAnimation,
    Func1<InputChatPhoto, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputChatPhotoPrevious) {
      if (isInputChatPhotoPrevious != null) {
        return isInputChatPhotoPrevious(this as o.InputChatPhotoPrevious);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputChatPhotoStatic) {
      if (isInputChatPhotoStatic != null) {
        return isInputChatPhotoStatic(this as o.InputChatPhotoStatic);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputChatPhotoAnimation) {
      if (isInputChatPhotoAnimation != null) {
        return isInputChatPhotoAnimation(this as o.InputChatPhotoAnimation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class User extends b.TdBase {
  TResult match<TResult>({
    Func1<o.User, TResult>? isUser,
    Func1<User, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.User) {
      if (isUser != null) {
        return isUser(this as o.User);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class UserFullInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.UserFullInfo, TResult>? isUserFullInfo,
    Func1<UserFullInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.UserFullInfo) {
      if (isUserFullInfo != null) {
        return isUserFullInfo(this as o.UserFullInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Users extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Users, TResult>? isUsers,
    Func1<Users, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Users) {
      if (isUsers != null) {
        return isUsers(this as o.Users);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatAdministrator extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatAdministrator, TResult>? isChatAdministrator,
    Func1<ChatAdministrator, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatAdministrator) {
      if (isChatAdministrator != null) {
        return isChatAdministrator(this as o.ChatAdministrator);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatAdministrators extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatAdministrators, TResult>? isChatAdministrators,
    Func1<ChatAdministrators, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatAdministrators) {
      if (isChatAdministrators != null) {
        return isChatAdministrators(this as o.ChatAdministrators);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatPermissions extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatPermissions, TResult>? isChatPermissions,
    Func1<ChatPermissions, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatPermissions) {
      if (isChatPermissions != null) {
        return isChatPermissions(this as o.ChatPermissions);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Provides information about the status of a member in a chat
abstract class ChatMemberStatus extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatMemberStatusCreator, TResult>? isChatMemberStatusCreator,
    Func1<o.ChatMemberStatusAdministrator, TResult>? isChatMemberStatusAdministrator,
    Func1<o.ChatMemberStatusMember, TResult>? isChatMemberStatusMember,
    Func1<o.ChatMemberStatusRestricted, TResult>? isChatMemberStatusRestricted,
    Func1<o.ChatMemberStatusLeft, TResult>? isChatMemberStatusLeft,
    Func1<o.ChatMemberStatusBanned, TResult>? isChatMemberStatusBanned,
    Func1<ChatMemberStatus, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatMemberStatusCreator) {
      if (isChatMemberStatusCreator != null) {
        return isChatMemberStatusCreator(this as o.ChatMemberStatusCreator);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatMemberStatusAdministrator) {
      if (isChatMemberStatusAdministrator != null) {
        return isChatMemberStatusAdministrator(this as o.ChatMemberStatusAdministrator);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatMemberStatusMember) {
      if (isChatMemberStatusMember != null) {
        return isChatMemberStatusMember(this as o.ChatMemberStatusMember);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatMemberStatusRestricted) {
      if (isChatMemberStatusRestricted != null) {
        return isChatMemberStatusRestricted(this as o.ChatMemberStatusRestricted);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatMemberStatusLeft) {
      if (isChatMemberStatusLeft != null) {
        return isChatMemberStatusLeft(this as o.ChatMemberStatusLeft);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatMemberStatusBanned) {
      if (isChatMemberStatusBanned != null) {
        return isChatMemberStatusBanned(this as o.ChatMemberStatusBanned);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatMember extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatMember, TResult>? isChatMember,
    Func1<ChatMember, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatMember) {
      if (isChatMember != null) {
        return isChatMember(this as o.ChatMember);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatMembers extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatMembers, TResult>? isChatMembers,
    Func1<ChatMembers, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatMembers) {
      if (isChatMembers != null) {
        return isChatMembers(this as o.ChatMembers);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Specifies the kind of chat members to return in searchChatMembers
abstract class ChatMembersFilter extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatMembersFilterContacts, TResult>? isChatMembersFilterContacts,
    Func1<o.ChatMembersFilterAdministrators, TResult>? isChatMembersFilterAdministrators,
    Func1<o.ChatMembersFilterMembers, TResult>? isChatMembersFilterMembers,
    Func1<o.ChatMembersFilterMention, TResult>? isChatMembersFilterMention,
    Func1<o.ChatMembersFilterRestricted, TResult>? isChatMembersFilterRestricted,
    Func1<o.ChatMembersFilterBanned, TResult>? isChatMembersFilterBanned,
    Func1<o.ChatMembersFilterBots, TResult>? isChatMembersFilterBots,
    Func1<ChatMembersFilter, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatMembersFilterContacts) {
      if (isChatMembersFilterContacts != null) {
        return isChatMembersFilterContacts(this as o.ChatMembersFilterContacts);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatMembersFilterAdministrators) {
      if (isChatMembersFilterAdministrators != null) {
        return isChatMembersFilterAdministrators(this as o.ChatMembersFilterAdministrators);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatMembersFilterMembers) {
      if (isChatMembersFilterMembers != null) {
        return isChatMembersFilterMembers(this as o.ChatMembersFilterMembers);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatMembersFilterMention) {
      if (isChatMembersFilterMention != null) {
        return isChatMembersFilterMention(this as o.ChatMembersFilterMention);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatMembersFilterRestricted) {
      if (isChatMembersFilterRestricted != null) {
        return isChatMembersFilterRestricted(this as o.ChatMembersFilterRestricted);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatMembersFilterBanned) {
      if (isChatMembersFilterBanned != null) {
        return isChatMembersFilterBanned(this as o.ChatMembersFilterBanned);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatMembersFilterBots) {
      if (isChatMembersFilterBots != null) {
        return isChatMembersFilterBots(this as o.ChatMembersFilterBots);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Specifies the kind of chat members to return in getSupergroupMembers
abstract class SupergroupMembersFilter extends b.TdBase {
  TResult match<TResult>({
    Func1<o.SupergroupMembersFilterRecent, TResult>? isSupergroupMembersFilterRecent,
    Func1<o.SupergroupMembersFilterContacts, TResult>? isSupergroupMembersFilterContacts,
    Func1<o.SupergroupMembersFilterAdministrators, TResult>? isSupergroupMembersFilterAdministrators,
    Func1<o.SupergroupMembersFilterSearch, TResult>? isSupergroupMembersFilterSearch,
    Func1<o.SupergroupMembersFilterRestricted, TResult>? isSupergroupMembersFilterRestricted,
    Func1<o.SupergroupMembersFilterBanned, TResult>? isSupergroupMembersFilterBanned,
    Func1<o.SupergroupMembersFilterMention, TResult>? isSupergroupMembersFilterMention,
    Func1<o.SupergroupMembersFilterBots, TResult>? isSupergroupMembersFilterBots,
    Func1<SupergroupMembersFilter, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.SupergroupMembersFilterRecent) {
      if (isSupergroupMembersFilterRecent != null) {
        return isSupergroupMembersFilterRecent(this as o.SupergroupMembersFilterRecent);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SupergroupMembersFilterContacts) {
      if (isSupergroupMembersFilterContacts != null) {
        return isSupergroupMembersFilterContacts(this as o.SupergroupMembersFilterContacts);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SupergroupMembersFilterAdministrators) {
      if (isSupergroupMembersFilterAdministrators != null) {
        return isSupergroupMembersFilterAdministrators(this as o.SupergroupMembersFilterAdministrators);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SupergroupMembersFilterSearch) {
      if (isSupergroupMembersFilterSearch != null) {
        return isSupergroupMembersFilterSearch(this as o.SupergroupMembersFilterSearch);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SupergroupMembersFilterRestricted) {
      if (isSupergroupMembersFilterRestricted != null) {
        return isSupergroupMembersFilterRestricted(this as o.SupergroupMembersFilterRestricted);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SupergroupMembersFilterBanned) {
      if (isSupergroupMembersFilterBanned != null) {
        return isSupergroupMembersFilterBanned(this as o.SupergroupMembersFilterBanned);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SupergroupMembersFilterMention) {
      if (isSupergroupMembersFilterMention != null) {
        return isSupergroupMembersFilterMention(this as o.SupergroupMembersFilterMention);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SupergroupMembersFilterBots) {
      if (isSupergroupMembersFilterBots != null) {
        return isSupergroupMembersFilterBots(this as o.SupergroupMembersFilterBots);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatInviteLink extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatInviteLink, TResult>? isChatInviteLink,
    Func1<ChatInviteLink, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatInviteLink) {
      if (isChatInviteLink != null) {
        return isChatInviteLink(this as o.ChatInviteLink);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatInviteLinks extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatInviteLinks, TResult>? isChatInviteLinks,
    Func1<ChatInviteLinks, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatInviteLinks) {
      if (isChatInviteLinks != null) {
        return isChatInviteLinks(this as o.ChatInviteLinks);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatInviteLinkCount extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatInviteLinkCount, TResult>? isChatInviteLinkCount,
    Func1<ChatInviteLinkCount, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatInviteLinkCount) {
      if (isChatInviteLinkCount != null) {
        return isChatInviteLinkCount(this as o.ChatInviteLinkCount);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatInviteLinkCounts extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatInviteLinkCounts, TResult>? isChatInviteLinkCounts,
    Func1<ChatInviteLinkCounts, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatInviteLinkCounts) {
      if (isChatInviteLinkCounts != null) {
        return isChatInviteLinkCounts(this as o.ChatInviteLinkCounts);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatInviteLinkMember extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatInviteLinkMember, TResult>? isChatInviteLinkMember,
    Func1<ChatInviteLinkMember, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatInviteLinkMember) {
      if (isChatInviteLinkMember != null) {
        return isChatInviteLinkMember(this as o.ChatInviteLinkMember);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatInviteLinkMembers extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatInviteLinkMembers, TResult>? isChatInviteLinkMembers,
    Func1<ChatInviteLinkMembers, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatInviteLinkMembers) {
      if (isChatInviteLinkMembers != null) {
        return isChatInviteLinkMembers(this as o.ChatInviteLinkMembers);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatInviteLinkInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatInviteLinkInfo, TResult>? isChatInviteLinkInfo,
    Func1<ChatInviteLinkInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatInviteLinkInfo) {
      if (isChatInviteLinkInfo != null) {
        return isChatInviteLinkInfo(this as o.ChatInviteLinkInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class BasicGroup extends b.TdBase {
  TResult match<TResult>({
    Func1<o.BasicGroup, TResult>? isBasicGroup,
    Func1<BasicGroup, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BasicGroup) {
      if (isBasicGroup != null) {
        return isBasicGroup(this as o.BasicGroup);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class BasicGroupFullInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.BasicGroupFullInfo, TResult>? isBasicGroupFullInfo,
    Func1<BasicGroupFullInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BasicGroupFullInfo) {
      if (isBasicGroupFullInfo != null) {
        return isBasicGroupFullInfo(this as o.BasicGroupFullInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Supergroup extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Supergroup, TResult>? isSupergroup,
    Func1<Supergroup, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Supergroup) {
      if (isSupergroup != null) {
        return isSupergroup(this as o.Supergroup);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class SupergroupFullInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.SupergroupFullInfo, TResult>? isSupergroupFullInfo,
    Func1<SupergroupFullInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.SupergroupFullInfo) {
      if (isSupergroupFullInfo != null) {
        return isSupergroupFullInfo(this as o.SupergroupFullInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the current secret chat state
abstract class SecretChatState extends b.TdBase {
  TResult match<TResult>({
    Func1<o.SecretChatStatePending, TResult>? isSecretChatStatePending,
    Func1<o.SecretChatStateReady, TResult>? isSecretChatStateReady,
    Func1<o.SecretChatStateClosed, TResult>? isSecretChatStateClosed,
    Func1<SecretChatState, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.SecretChatStatePending) {
      if (isSecretChatStatePending != null) {
        return isSecretChatStatePending(this as o.SecretChatStatePending);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SecretChatStateReady) {
      if (isSecretChatStateReady != null) {
        return isSecretChatStateReady(this as o.SecretChatStateReady);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SecretChatStateClosed) {
      if (isSecretChatStateClosed != null) {
        return isSecretChatStateClosed(this as o.SecretChatStateClosed);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class SecretChat extends b.TdBase {
  TResult match<TResult>({
    Func1<o.SecretChat, TResult>? isSecretChat,
    Func1<SecretChat, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.SecretChat) {
      if (isSecretChat != null) {
        return isSecretChat(this as o.SecretChat);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains information about the sender of a message
abstract class MessageSender extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageSenderUser, TResult>? isMessageSenderUser,
    Func1<o.MessageSenderChat, TResult>? isMessageSenderChat,
    Func1<MessageSender, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageSenderUser) {
      if (isMessageSenderUser != null) {
        return isMessageSenderUser(this as o.MessageSenderUser);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageSenderChat) {
      if (isMessageSenderChat != null) {
        return isMessageSenderChat(this as o.MessageSenderChat);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class MessageSenders extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageSenders, TResult>? isMessageSenders,
    Func1<MessageSenders, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageSenders) {
      if (isMessageSenders != null) {
        return isMessageSenders(this as o.MessageSenders);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains information about the origin of a forwarded message
abstract class MessageForwardOrigin extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageForwardOriginUser, TResult>? isMessageForwardOriginUser,
    Func1<o.MessageForwardOriginChat, TResult>? isMessageForwardOriginChat,
    Func1<o.MessageForwardOriginHiddenUser, TResult>? isMessageForwardOriginHiddenUser,
    Func1<o.MessageForwardOriginChannel, TResult>? isMessageForwardOriginChannel,
    Func1<o.MessageForwardOriginMessageImport, TResult>? isMessageForwardOriginMessageImport,
    Func1<MessageForwardOrigin, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageForwardOriginUser) {
      if (isMessageForwardOriginUser != null) {
        return isMessageForwardOriginUser(this as o.MessageForwardOriginUser);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageForwardOriginChat) {
      if (isMessageForwardOriginChat != null) {
        return isMessageForwardOriginChat(this as o.MessageForwardOriginChat);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageForwardOriginHiddenUser) {
      if (isMessageForwardOriginHiddenUser != null) {
        return isMessageForwardOriginHiddenUser(this as o.MessageForwardOriginHiddenUser);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageForwardOriginChannel) {
      if (isMessageForwardOriginChannel != null) {
        return isMessageForwardOriginChannel(this as o.MessageForwardOriginChannel);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageForwardOriginMessageImport) {
      if (isMessageForwardOriginMessageImport != null) {
        return isMessageForwardOriginMessageImport(this as o.MessageForwardOriginMessageImport);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class MessageForwardInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageForwardInfo, TResult>? isMessageForwardInfo,
    Func1<MessageForwardInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageForwardInfo) {
      if (isMessageForwardInfo != null) {
        return isMessageForwardInfo(this as o.MessageForwardInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class MessageReplyInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageReplyInfo, TResult>? isMessageReplyInfo,
    Func1<MessageReplyInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageReplyInfo) {
      if (isMessageReplyInfo != null) {
        return isMessageReplyInfo(this as o.MessageReplyInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class MessageInteractionInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageInteractionInfo, TResult>? isMessageInteractionInfo,
    Func1<MessageInteractionInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageInteractionInfo) {
      if (isMessageInteractionInfo != null) {
        return isMessageInteractionInfo(this as o.MessageInteractionInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains information about the sending state of the message
abstract class MessageSendingState extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageSendingStatePending, TResult>? isMessageSendingStatePending,
    Func1<o.MessageSendingStateFailed, TResult>? isMessageSendingStateFailed,
    Func1<MessageSendingState, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageSendingStatePending) {
      if (isMessageSendingStatePending != null) {
        return isMessageSendingStatePending(this as o.MessageSendingStatePending);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageSendingStateFailed) {
      if (isMessageSendingStateFailed != null) {
        return isMessageSendingStateFailed(this as o.MessageSendingStateFailed);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Message extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Message, TResult>? isMessage,
    Func1<Message, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Message) {
      if (isMessage != null) {
        return isMessage(this as o.Message);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Messages extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Messages, TResult>? isMessages,
    Func1<Messages, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Messages) {
      if (isMessages != null) {
        return isMessages(this as o.Messages);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class FoundMessages extends b.TdBase {
  TResult match<TResult>({
    Func1<o.FoundMessages, TResult>? isFoundMessages,
    Func1<FoundMessages, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.FoundMessages) {
      if (isFoundMessages != null) {
        return isFoundMessages(this as o.FoundMessages);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the types of chats to which notification settings are applied
abstract class NotificationSettingsScope extends b.TdBase {
  TResult match<TResult>({
    Func1<o.NotificationSettingsScopePrivateChats, TResult>? isNotificationSettingsScopePrivateChats,
    Func1<o.NotificationSettingsScopeGroupChats, TResult>? isNotificationSettingsScopeGroupChats,
    Func1<o.NotificationSettingsScopeChannelChats, TResult>? isNotificationSettingsScopeChannelChats,
    Func1<NotificationSettingsScope, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.NotificationSettingsScopePrivateChats) {
      if (isNotificationSettingsScopePrivateChats != null) {
        return isNotificationSettingsScopePrivateChats(this as o.NotificationSettingsScopePrivateChats);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.NotificationSettingsScopeGroupChats) {
      if (isNotificationSettingsScopeGroupChats != null) {
        return isNotificationSettingsScopeGroupChats(this as o.NotificationSettingsScopeGroupChats);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.NotificationSettingsScopeChannelChats) {
      if (isNotificationSettingsScopeChannelChats != null) {
        return isNotificationSettingsScopeChannelChats(this as o.NotificationSettingsScopeChannelChats);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatNotificationSettings extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatNotificationSettings, TResult>? isChatNotificationSettings,
    Func1<ChatNotificationSettings, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatNotificationSettings) {
      if (isChatNotificationSettings != null) {
        return isChatNotificationSettings(this as o.ChatNotificationSettings);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ScopeNotificationSettings extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ScopeNotificationSettings, TResult>? isScopeNotificationSettings,
    Func1<ScopeNotificationSettings, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ScopeNotificationSettings) {
      if (isScopeNotificationSettings != null) {
        return isScopeNotificationSettings(this as o.ScopeNotificationSettings);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class DraftMessage extends b.TdBase {
  TResult match<TResult>({
    Func1<o.DraftMessage, TResult>? isDraftMessage,
    Func1<DraftMessage, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.DraftMessage) {
      if (isDraftMessage != null) {
        return isDraftMessage(this as o.DraftMessage);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the type of a chat
abstract class ChatType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatTypePrivate, TResult>? isChatTypePrivate,
    Func1<o.ChatTypeBasicGroup, TResult>? isChatTypeBasicGroup,
    Func1<o.ChatTypeSupergroup, TResult>? isChatTypeSupergroup,
    Func1<o.ChatTypeSecret, TResult>? isChatTypeSecret,
    Func1<ChatType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatTypePrivate) {
      if (isChatTypePrivate != null) {
        return isChatTypePrivate(this as o.ChatTypePrivate);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatTypeBasicGroup) {
      if (isChatTypeBasicGroup != null) {
        return isChatTypeBasicGroup(this as o.ChatTypeBasicGroup);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatTypeSupergroup) {
      if (isChatTypeSupergroup != null) {
        return isChatTypeSupergroup(this as o.ChatTypeSupergroup);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatTypeSecret) {
      if (isChatTypeSecret != null) {
        return isChatTypeSecret(this as o.ChatTypeSecret);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatFilter extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatFilter, TResult>? isChatFilter,
    Func1<ChatFilter, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatFilter) {
      if (isChatFilter != null) {
        return isChatFilter(this as o.ChatFilter);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatFilterInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatFilterInfo, TResult>? isChatFilterInfo,
    Func1<ChatFilterInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatFilterInfo) {
      if (isChatFilterInfo != null) {
        return isChatFilterInfo(this as o.ChatFilterInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class RecommendedChatFilter extends b.TdBase {
  TResult match<TResult>({
    Func1<o.RecommendedChatFilter, TResult>? isRecommendedChatFilter,
    Func1<RecommendedChatFilter, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.RecommendedChatFilter) {
      if (isRecommendedChatFilter != null) {
        return isRecommendedChatFilter(this as o.RecommendedChatFilter);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class RecommendedChatFilters extends b.TdBase {
  TResult match<TResult>({
    Func1<o.RecommendedChatFilters, TResult>? isRecommendedChatFilters,
    Func1<RecommendedChatFilters, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.RecommendedChatFilters) {
      if (isRecommendedChatFilters != null) {
        return isRecommendedChatFilters(this as o.RecommendedChatFilters);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes a list of chats
abstract class ChatList extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatListMain, TResult>? isChatListMain,
    Func1<o.ChatListArchive, TResult>? isChatListArchive,
    Func1<o.ChatListFilter, TResult>? isChatListFilter,
    Func1<ChatList, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatListMain) {
      if (isChatListMain != null) {
        return isChatListMain(this as o.ChatListMain);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatListArchive) {
      if (isChatListArchive != null) {
        return isChatListArchive(this as o.ChatListArchive);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatListFilter) {
      if (isChatListFilter != null) {
        return isChatListFilter(this as o.ChatListFilter);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatLists extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatLists, TResult>? isChatLists,
    Func1<ChatLists, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatLists) {
      if (isChatLists != null) {
        return isChatLists(this as o.ChatLists);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes a reason why an external chat is shown in a chat list
abstract class ChatSource extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatSourceMtprotoProxy, TResult>? isChatSourceMtprotoProxy,
    Func1<o.ChatSourcePublicServiceAnnouncement, TResult>? isChatSourcePublicServiceAnnouncement,
    Func1<ChatSource, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatSourceMtprotoProxy) {
      if (isChatSourceMtprotoProxy != null) {
        return isChatSourceMtprotoProxy(this as o.ChatSourceMtprotoProxy);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatSourcePublicServiceAnnouncement) {
      if (isChatSourcePublicServiceAnnouncement != null) {
        return isChatSourcePublicServiceAnnouncement(this as o.ChatSourcePublicServiceAnnouncement);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatPosition extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatPosition, TResult>? isChatPosition,
    Func1<ChatPosition, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatPosition) {
      if (isChatPosition != null) {
        return isChatPosition(this as o.ChatPosition);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class VoiceChat extends b.TdBase {
  TResult match<TResult>({
    Func1<o.VoiceChat, TResult>? isVoiceChat,
    Func1<VoiceChat, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.VoiceChat) {
      if (isVoiceChat != null) {
        return isVoiceChat(this as o.VoiceChat);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Chat extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Chat, TResult>? isChat,
    Func1<Chat, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Chat) {
      if (isChat != null) {
        return isChat(this as o.Chat);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Chats extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Chats, TResult>? isChats,
    Func1<Chats, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Chats) {
      if (isChats != null) {
        return isChats(this as o.Chats);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatNearby extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatNearby, TResult>? isChatNearby,
    Func1<ChatNearby, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatNearby) {
      if (isChatNearby != null) {
        return isChatNearby(this as o.ChatNearby);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatsNearby extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatsNearby, TResult>? isChatsNearby,
    Func1<ChatsNearby, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatsNearby) {
      if (isChatsNearby != null) {
        return isChatsNearby(this as o.ChatsNearby);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes a type of public chats
abstract class PublicChatType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PublicChatTypeHasUsername, TResult>? isPublicChatTypeHasUsername,
    Func1<o.PublicChatTypeIsLocationBased, TResult>? isPublicChatTypeIsLocationBased,
    Func1<PublicChatType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PublicChatTypeHasUsername) {
      if (isPublicChatTypeHasUsername != null) {
        return isPublicChatTypeHasUsername(this as o.PublicChatTypeHasUsername);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PublicChatTypeIsLocationBased) {
      if (isPublicChatTypeIsLocationBased != null) {
        return isPublicChatTypeIsLocationBased(this as o.PublicChatTypeIsLocationBased);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes actions which should be possible to do through a chat action bar
abstract class ChatActionBar extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatActionBarReportSpam, TResult>? isChatActionBarReportSpam,
    Func1<o.ChatActionBarReportUnrelatedLocation, TResult>? isChatActionBarReportUnrelatedLocation,
    Func1<o.ChatActionBarInviteMembers, TResult>? isChatActionBarInviteMembers,
    Func1<o.ChatActionBarReportAddBlock, TResult>? isChatActionBarReportAddBlock,
    Func1<o.ChatActionBarAddContact, TResult>? isChatActionBarAddContact,
    Func1<o.ChatActionBarSharePhoneNumber, TResult>? isChatActionBarSharePhoneNumber,
    Func1<ChatActionBar, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatActionBarReportSpam) {
      if (isChatActionBarReportSpam != null) {
        return isChatActionBarReportSpam(this as o.ChatActionBarReportSpam);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionBarReportUnrelatedLocation) {
      if (isChatActionBarReportUnrelatedLocation != null) {
        return isChatActionBarReportUnrelatedLocation(this as o.ChatActionBarReportUnrelatedLocation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionBarInviteMembers) {
      if (isChatActionBarInviteMembers != null) {
        return isChatActionBarInviteMembers(this as o.ChatActionBarInviteMembers);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionBarReportAddBlock) {
      if (isChatActionBarReportAddBlock != null) {
        return isChatActionBarReportAddBlock(this as o.ChatActionBarReportAddBlock);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionBarAddContact) {
      if (isChatActionBarAddContact != null) {
        return isChatActionBarAddContact(this as o.ChatActionBarAddContact);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionBarSharePhoneNumber) {
      if (isChatActionBarSharePhoneNumber != null) {
        return isChatActionBarSharePhoneNumber(this as o.ChatActionBarSharePhoneNumber);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes a keyboard button type
abstract class KeyboardButtonType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.KeyboardButtonTypeText, TResult>? isKeyboardButtonTypeText,
    Func1<o.KeyboardButtonTypeRequestPhoneNumber, TResult>? isKeyboardButtonTypeRequestPhoneNumber,
    Func1<o.KeyboardButtonTypeRequestLocation, TResult>? isKeyboardButtonTypeRequestLocation,
    Func1<o.KeyboardButtonTypeRequestPoll, TResult>? isKeyboardButtonTypeRequestPoll,
    Func1<KeyboardButtonType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.KeyboardButtonTypeText) {
      if (isKeyboardButtonTypeText != null) {
        return isKeyboardButtonTypeText(this as o.KeyboardButtonTypeText);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.KeyboardButtonTypeRequestPhoneNumber) {
      if (isKeyboardButtonTypeRequestPhoneNumber != null) {
        return isKeyboardButtonTypeRequestPhoneNumber(this as o.KeyboardButtonTypeRequestPhoneNumber);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.KeyboardButtonTypeRequestLocation) {
      if (isKeyboardButtonTypeRequestLocation != null) {
        return isKeyboardButtonTypeRequestLocation(this as o.KeyboardButtonTypeRequestLocation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.KeyboardButtonTypeRequestPoll) {
      if (isKeyboardButtonTypeRequestPoll != null) {
        return isKeyboardButtonTypeRequestPoll(this as o.KeyboardButtonTypeRequestPoll);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class KeyboardButton extends b.TdBase {
  TResult match<TResult>({
    Func1<o.KeyboardButton, TResult>? isKeyboardButton,
    Func1<KeyboardButton, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.KeyboardButton) {
      if (isKeyboardButton != null) {
        return isKeyboardButton(this as o.KeyboardButton);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the type of an inline keyboard button
abstract class InlineKeyboardButtonType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InlineKeyboardButtonTypeUrl, TResult>? isInlineKeyboardButtonTypeUrl,
    Func1<o.InlineKeyboardButtonTypeLoginUrl, TResult>? isInlineKeyboardButtonTypeLoginUrl,
    Func1<o.InlineKeyboardButtonTypeCallback, TResult>? isInlineKeyboardButtonTypeCallback,
    Func1<o.InlineKeyboardButtonTypeCallbackWithPassword, TResult>? isInlineKeyboardButtonTypeCallbackWithPassword,
    Func1<o.InlineKeyboardButtonTypeCallbackGame, TResult>? isInlineKeyboardButtonTypeCallbackGame,
    Func1<o.InlineKeyboardButtonTypeSwitchInline, TResult>? isInlineKeyboardButtonTypeSwitchInline,
    Func1<o.InlineKeyboardButtonTypeBuy, TResult>? isInlineKeyboardButtonTypeBuy,
    Func1<InlineKeyboardButtonType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InlineKeyboardButtonTypeUrl) {
      if (isInlineKeyboardButtonTypeUrl != null) {
        return isInlineKeyboardButtonTypeUrl(this as o.InlineKeyboardButtonTypeUrl);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineKeyboardButtonTypeLoginUrl) {
      if (isInlineKeyboardButtonTypeLoginUrl != null) {
        return isInlineKeyboardButtonTypeLoginUrl(this as o.InlineKeyboardButtonTypeLoginUrl);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineKeyboardButtonTypeCallback) {
      if (isInlineKeyboardButtonTypeCallback != null) {
        return isInlineKeyboardButtonTypeCallback(this as o.InlineKeyboardButtonTypeCallback);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineKeyboardButtonTypeCallbackWithPassword) {
      if (isInlineKeyboardButtonTypeCallbackWithPassword != null) {
        return isInlineKeyboardButtonTypeCallbackWithPassword(this as o.InlineKeyboardButtonTypeCallbackWithPassword);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineKeyboardButtonTypeCallbackGame) {
      if (isInlineKeyboardButtonTypeCallbackGame != null) {
        return isInlineKeyboardButtonTypeCallbackGame(this as o.InlineKeyboardButtonTypeCallbackGame);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineKeyboardButtonTypeSwitchInline) {
      if (isInlineKeyboardButtonTypeSwitchInline != null) {
        return isInlineKeyboardButtonTypeSwitchInline(this as o.InlineKeyboardButtonTypeSwitchInline);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineKeyboardButtonTypeBuy) {
      if (isInlineKeyboardButtonTypeBuy != null) {
        return isInlineKeyboardButtonTypeBuy(this as o.InlineKeyboardButtonTypeBuy);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class InlineKeyboardButton extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InlineKeyboardButton, TResult>? isInlineKeyboardButton,
    Func1<InlineKeyboardButton, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InlineKeyboardButton) {
      if (isInlineKeyboardButton != null) {
        return isInlineKeyboardButton(this as o.InlineKeyboardButton);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains a description of a custom keyboard and actions that can be done with it to quickly reply to bots
abstract class ReplyMarkup extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ReplyMarkupRemoveKeyboard, TResult>? isReplyMarkupRemoveKeyboard,
    Func1<o.ReplyMarkupForceReply, TResult>? isReplyMarkupForceReply,
    Func1<o.ReplyMarkupShowKeyboard, TResult>? isReplyMarkupShowKeyboard,
    Func1<o.ReplyMarkupInlineKeyboard, TResult>? isReplyMarkupInlineKeyboard,
    Func1<ReplyMarkup, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ReplyMarkupRemoveKeyboard) {
      if (isReplyMarkupRemoveKeyboard != null) {
        return isReplyMarkupRemoveKeyboard(this as o.ReplyMarkupRemoveKeyboard);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ReplyMarkupForceReply) {
      if (isReplyMarkupForceReply != null) {
        return isReplyMarkupForceReply(this as o.ReplyMarkupForceReply);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ReplyMarkupShowKeyboard) {
      if (isReplyMarkupShowKeyboard != null) {
        return isReplyMarkupShowKeyboard(this as o.ReplyMarkupShowKeyboard);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ReplyMarkupInlineKeyboard) {
      if (isReplyMarkupInlineKeyboard != null) {
        return isReplyMarkupInlineKeyboard(this as o.ReplyMarkupInlineKeyboard);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains information about an inline button of type inlineKeyboardButtonTypeLoginUrl
abstract class LoginUrlInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.LoginUrlInfoOpen, TResult>? isLoginUrlInfoOpen,
    Func1<o.LoginUrlInfoRequestConfirmation, TResult>? isLoginUrlInfoRequestConfirmation,
    Func1<LoginUrlInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LoginUrlInfoOpen) {
      if (isLoginUrlInfoOpen != null) {
        return isLoginUrlInfoOpen(this as o.LoginUrlInfoOpen);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.LoginUrlInfoRequestConfirmation) {
      if (isLoginUrlInfoRequestConfirmation != null) {
        return isLoginUrlInfoRequestConfirmation(this as o.LoginUrlInfoRequestConfirmation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class MessageThreadInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageThreadInfo, TResult>? isMessageThreadInfo,
    Func1<MessageThreadInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageThreadInfo) {
      if (isMessageThreadInfo != null) {
        return isMessageThreadInfo(this as o.MessageThreadInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes a text object inside an instant-view web page
abstract class RichText extends b.TdBase {
  TResult match<TResult>({
    Func1<o.RichTextPlain, TResult>? isRichTextPlain,
    Func1<o.RichTextBold, TResult>? isRichTextBold,
    Func1<o.RichTextItalic, TResult>? isRichTextItalic,
    Func1<o.RichTextUnderline, TResult>? isRichTextUnderline,
    Func1<o.RichTextStrikethrough, TResult>? isRichTextStrikethrough,
    Func1<o.RichTextFixed, TResult>? isRichTextFixed,
    Func1<o.RichTextUrl, TResult>? isRichTextUrl,
    Func1<o.RichTextEmailAddress, TResult>? isRichTextEmailAddress,
    Func1<o.RichTextSubscript, TResult>? isRichTextSubscript,
    Func1<o.RichTextSuperscript, TResult>? isRichTextSuperscript,
    Func1<o.RichTextMarked, TResult>? isRichTextMarked,
    Func1<o.RichTextPhoneNumber, TResult>? isRichTextPhoneNumber,
    Func1<o.RichTextIcon, TResult>? isRichTextIcon,
    Func1<o.RichTextReference, TResult>? isRichTextReference,
    Func1<o.RichTextAnchor, TResult>? isRichTextAnchor,
    Func1<o.RichTextAnchorLink, TResult>? isRichTextAnchorLink,
    Func1<o.RichTexts, TResult>? isRichTexts,
    Func1<RichText, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.RichTextPlain) {
      if (isRichTextPlain != null) {
        return isRichTextPlain(this as o.RichTextPlain);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTextBold) {
      if (isRichTextBold != null) {
        return isRichTextBold(this as o.RichTextBold);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTextItalic) {
      if (isRichTextItalic != null) {
        return isRichTextItalic(this as o.RichTextItalic);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTextUnderline) {
      if (isRichTextUnderline != null) {
        return isRichTextUnderline(this as o.RichTextUnderline);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTextStrikethrough) {
      if (isRichTextStrikethrough != null) {
        return isRichTextStrikethrough(this as o.RichTextStrikethrough);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTextFixed) {
      if (isRichTextFixed != null) {
        return isRichTextFixed(this as o.RichTextFixed);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTextUrl) {
      if (isRichTextUrl != null) {
        return isRichTextUrl(this as o.RichTextUrl);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTextEmailAddress) {
      if (isRichTextEmailAddress != null) {
        return isRichTextEmailAddress(this as o.RichTextEmailAddress);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTextSubscript) {
      if (isRichTextSubscript != null) {
        return isRichTextSubscript(this as o.RichTextSubscript);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTextSuperscript) {
      if (isRichTextSuperscript != null) {
        return isRichTextSuperscript(this as o.RichTextSuperscript);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTextMarked) {
      if (isRichTextMarked != null) {
        return isRichTextMarked(this as o.RichTextMarked);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTextPhoneNumber) {
      if (isRichTextPhoneNumber != null) {
        return isRichTextPhoneNumber(this as o.RichTextPhoneNumber);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTextIcon) {
      if (isRichTextIcon != null) {
        return isRichTextIcon(this as o.RichTextIcon);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTextReference) {
      if (isRichTextReference != null) {
        return isRichTextReference(this as o.RichTextReference);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTextAnchor) {
      if (isRichTextAnchor != null) {
        return isRichTextAnchor(this as o.RichTextAnchor);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTextAnchorLink) {
      if (isRichTextAnchorLink != null) {
        return isRichTextAnchorLink(this as o.RichTextAnchorLink);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.RichTexts) {
      if (isRichTexts != null) {
        return isRichTexts(this as o.RichTexts);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PageBlockCaption extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PageBlockCaption, TResult>? isPageBlockCaption,
    Func1<PageBlockCaption, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PageBlockCaption) {
      if (isPageBlockCaption != null) {
        return isPageBlockCaption(this as o.PageBlockCaption);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PageBlockListItem extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PageBlockListItem, TResult>? isPageBlockListItem,
    Func1<PageBlockListItem, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PageBlockListItem) {
      if (isPageBlockListItem != null) {
        return isPageBlockListItem(this as o.PageBlockListItem);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes a horizontal alignment of a table cell content
abstract class PageBlockHorizontalAlignment extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PageBlockHorizontalAlignmentLeft, TResult>? isPageBlockHorizontalAlignmentLeft,
    Func1<o.PageBlockHorizontalAlignmentCenter, TResult>? isPageBlockHorizontalAlignmentCenter,
    Func1<o.PageBlockHorizontalAlignmentRight, TResult>? isPageBlockHorizontalAlignmentRight,
    Func1<PageBlockHorizontalAlignment, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PageBlockHorizontalAlignmentLeft) {
      if (isPageBlockHorizontalAlignmentLeft != null) {
        return isPageBlockHorizontalAlignmentLeft(this as o.PageBlockHorizontalAlignmentLeft);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockHorizontalAlignmentCenter) {
      if (isPageBlockHorizontalAlignmentCenter != null) {
        return isPageBlockHorizontalAlignmentCenter(this as o.PageBlockHorizontalAlignmentCenter);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockHorizontalAlignmentRight) {
      if (isPageBlockHorizontalAlignmentRight != null) {
        return isPageBlockHorizontalAlignmentRight(this as o.PageBlockHorizontalAlignmentRight);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes a Vertical alignment of a table cell content
abstract class PageBlockVerticalAlignment extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PageBlockVerticalAlignmentTop, TResult>? isPageBlockVerticalAlignmentTop,
    Func1<o.PageBlockVerticalAlignmentMiddle, TResult>? isPageBlockVerticalAlignmentMiddle,
    Func1<o.PageBlockVerticalAlignmentBottom, TResult>? isPageBlockVerticalAlignmentBottom,
    Func1<PageBlockVerticalAlignment, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PageBlockVerticalAlignmentTop) {
      if (isPageBlockVerticalAlignmentTop != null) {
        return isPageBlockVerticalAlignmentTop(this as o.PageBlockVerticalAlignmentTop);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockVerticalAlignmentMiddle) {
      if (isPageBlockVerticalAlignmentMiddle != null) {
        return isPageBlockVerticalAlignmentMiddle(this as o.PageBlockVerticalAlignmentMiddle);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockVerticalAlignmentBottom) {
      if (isPageBlockVerticalAlignmentBottom != null) {
        return isPageBlockVerticalAlignmentBottom(this as o.PageBlockVerticalAlignmentBottom);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PageBlockTableCell extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PageBlockTableCell, TResult>? isPageBlockTableCell,
    Func1<PageBlockTableCell, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PageBlockTableCell) {
      if (isPageBlockTableCell != null) {
        return isPageBlockTableCell(this as o.PageBlockTableCell);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PageBlockRelatedArticle extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PageBlockRelatedArticle, TResult>? isPageBlockRelatedArticle,
    Func1<PageBlockRelatedArticle, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PageBlockRelatedArticle) {
      if (isPageBlockRelatedArticle != null) {
        return isPageBlockRelatedArticle(this as o.PageBlockRelatedArticle);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes a block of an instant view web page
abstract class PageBlock extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PageBlockTitle, TResult>? isPageBlockTitle,
    Func1<o.PageBlockSubtitle, TResult>? isPageBlockSubtitle,
    Func1<o.PageBlockAuthorDate, TResult>? isPageBlockAuthorDate,
    Func1<o.PageBlockHeader, TResult>? isPageBlockHeader,
    Func1<o.PageBlockSubheader, TResult>? isPageBlockSubheader,
    Func1<o.PageBlockKicker, TResult>? isPageBlockKicker,
    Func1<o.PageBlockParagraph, TResult>? isPageBlockParagraph,
    Func1<o.PageBlockPreformatted, TResult>? isPageBlockPreformatted,
    Func1<o.PageBlockFooter, TResult>? isPageBlockFooter,
    Func1<o.PageBlockDivider, TResult>? isPageBlockDivider,
    Func1<o.PageBlockAnchor, TResult>? isPageBlockAnchor,
    Func1<o.PageBlockList, TResult>? isPageBlockList,
    Func1<o.PageBlockBlockQuote, TResult>? isPageBlockBlockQuote,
    Func1<o.PageBlockPullQuote, TResult>? isPageBlockPullQuote,
    Func1<o.PageBlockAnimation, TResult>? isPageBlockAnimation,
    Func1<o.PageBlockAudio, TResult>? isPageBlockAudio,
    Func1<o.PageBlockPhoto, TResult>? isPageBlockPhoto,
    Func1<o.PageBlockVideo, TResult>? isPageBlockVideo,
    Func1<o.PageBlockVoiceNote, TResult>? isPageBlockVoiceNote,
    Func1<o.PageBlockCover, TResult>? isPageBlockCover,
    Func1<o.PageBlockEmbedded, TResult>? isPageBlockEmbedded,
    Func1<o.PageBlockEmbeddedPost, TResult>? isPageBlockEmbeddedPost,
    Func1<o.PageBlockCollage, TResult>? isPageBlockCollage,
    Func1<o.PageBlockSlideshow, TResult>? isPageBlockSlideshow,
    Func1<o.PageBlockChatLink, TResult>? isPageBlockChatLink,
    Func1<o.PageBlockTable, TResult>? isPageBlockTable,
    Func1<o.PageBlockDetails, TResult>? isPageBlockDetails,
    Func1<o.PageBlockRelatedArticles, TResult>? isPageBlockRelatedArticles,
    Func1<o.PageBlockMap, TResult>? isPageBlockMap,
    Func1<PageBlock, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PageBlockTitle) {
      if (isPageBlockTitle != null) {
        return isPageBlockTitle(this as o.PageBlockTitle);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockSubtitle) {
      if (isPageBlockSubtitle != null) {
        return isPageBlockSubtitle(this as o.PageBlockSubtitle);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockAuthorDate) {
      if (isPageBlockAuthorDate != null) {
        return isPageBlockAuthorDate(this as o.PageBlockAuthorDate);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockHeader) {
      if (isPageBlockHeader != null) {
        return isPageBlockHeader(this as o.PageBlockHeader);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockSubheader) {
      if (isPageBlockSubheader != null) {
        return isPageBlockSubheader(this as o.PageBlockSubheader);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockKicker) {
      if (isPageBlockKicker != null) {
        return isPageBlockKicker(this as o.PageBlockKicker);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockParagraph) {
      if (isPageBlockParagraph != null) {
        return isPageBlockParagraph(this as o.PageBlockParagraph);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockPreformatted) {
      if (isPageBlockPreformatted != null) {
        return isPageBlockPreformatted(this as o.PageBlockPreformatted);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockFooter) {
      if (isPageBlockFooter != null) {
        return isPageBlockFooter(this as o.PageBlockFooter);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockDivider) {
      if (isPageBlockDivider != null) {
        return isPageBlockDivider(this as o.PageBlockDivider);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockAnchor) {
      if (isPageBlockAnchor != null) {
        return isPageBlockAnchor(this as o.PageBlockAnchor);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockList) {
      if (isPageBlockList != null) {
        return isPageBlockList(this as o.PageBlockList);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockBlockQuote) {
      if (isPageBlockBlockQuote != null) {
        return isPageBlockBlockQuote(this as o.PageBlockBlockQuote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockPullQuote) {
      if (isPageBlockPullQuote != null) {
        return isPageBlockPullQuote(this as o.PageBlockPullQuote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockAnimation) {
      if (isPageBlockAnimation != null) {
        return isPageBlockAnimation(this as o.PageBlockAnimation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockAudio) {
      if (isPageBlockAudio != null) {
        return isPageBlockAudio(this as o.PageBlockAudio);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockPhoto) {
      if (isPageBlockPhoto != null) {
        return isPageBlockPhoto(this as o.PageBlockPhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockVideo) {
      if (isPageBlockVideo != null) {
        return isPageBlockVideo(this as o.PageBlockVideo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockVoiceNote) {
      if (isPageBlockVoiceNote != null) {
        return isPageBlockVoiceNote(this as o.PageBlockVoiceNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockCover) {
      if (isPageBlockCover != null) {
        return isPageBlockCover(this as o.PageBlockCover);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockEmbedded) {
      if (isPageBlockEmbedded != null) {
        return isPageBlockEmbedded(this as o.PageBlockEmbedded);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockEmbeddedPost) {
      if (isPageBlockEmbeddedPost != null) {
        return isPageBlockEmbeddedPost(this as o.PageBlockEmbeddedPost);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockCollage) {
      if (isPageBlockCollage != null) {
        return isPageBlockCollage(this as o.PageBlockCollage);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockSlideshow) {
      if (isPageBlockSlideshow != null) {
        return isPageBlockSlideshow(this as o.PageBlockSlideshow);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockChatLink) {
      if (isPageBlockChatLink != null) {
        return isPageBlockChatLink(this as o.PageBlockChatLink);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockTable) {
      if (isPageBlockTable != null) {
        return isPageBlockTable(this as o.PageBlockTable);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockDetails) {
      if (isPageBlockDetails != null) {
        return isPageBlockDetails(this as o.PageBlockDetails);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockRelatedArticles) {
      if (isPageBlockRelatedArticles != null) {
        return isPageBlockRelatedArticles(this as o.PageBlockRelatedArticles);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PageBlockMap) {
      if (isPageBlockMap != null) {
        return isPageBlockMap(this as o.PageBlockMap);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class WebPageInstantView extends b.TdBase {
  TResult match<TResult>({
    Func1<o.WebPageInstantView, TResult>? isWebPageInstantView,
    Func1<WebPageInstantView, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.WebPageInstantView) {
      if (isWebPageInstantView != null) {
        return isWebPageInstantView(this as o.WebPageInstantView);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class WebPage extends b.TdBase {
  TResult match<TResult>({
    Func1<o.WebPage, TResult>? isWebPage,
    Func1<WebPage, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.WebPage) {
      if (isWebPage != null) {
        return isWebPage(this as o.WebPage);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class CountryInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.CountryInfo, TResult>? isCountryInfo,
    Func1<CountryInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CountryInfo) {
      if (isCountryInfo != null) {
        return isCountryInfo(this as o.CountryInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Countries extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Countries, TResult>? isCountries,
    Func1<Countries, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Countries) {
      if (isCountries != null) {
        return isCountries(this as o.Countries);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PhoneNumberInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PhoneNumberInfo, TResult>? isPhoneNumberInfo,
    Func1<PhoneNumberInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PhoneNumberInfo) {
      if (isPhoneNumberInfo != null) {
        return isPhoneNumberInfo(this as o.PhoneNumberInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class BankCardActionOpenUrl extends b.TdBase {
  TResult match<TResult>({
    Func1<o.BankCardActionOpenUrl, TResult>? isBankCardActionOpenUrl,
    Func1<BankCardActionOpenUrl, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BankCardActionOpenUrl) {
      if (isBankCardActionOpenUrl != null) {
        return isBankCardActionOpenUrl(this as o.BankCardActionOpenUrl);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class BankCardInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.BankCardInfo, TResult>? isBankCardInfo,
    Func1<BankCardInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BankCardInfo) {
      if (isBankCardInfo != null) {
        return isBankCardInfo(this as o.BankCardInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Address extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Address, TResult>? isAddress,
    Func1<Address, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Address) {
      if (isAddress != null) {
        return isAddress(this as o.Address);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class LabeledPricePart extends b.TdBase {
  TResult match<TResult>({
    Func1<o.LabeledPricePart, TResult>? isLabeledPricePart,
    Func1<LabeledPricePart, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LabeledPricePart) {
      if (isLabeledPricePart != null) {
        return isLabeledPricePart(this as o.LabeledPricePart);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Invoice extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Invoice, TResult>? isInvoice,
    Func1<Invoice, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Invoice) {
      if (isInvoice != null) {
        return isInvoice(this as o.Invoice);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class OrderInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.OrderInfo, TResult>? isOrderInfo,
    Func1<OrderInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.OrderInfo) {
      if (isOrderInfo != null) {
        return isOrderInfo(this as o.OrderInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ShippingOption extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ShippingOption, TResult>? isShippingOption,
    Func1<ShippingOption, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ShippingOption) {
      if (isShippingOption != null) {
        return isShippingOption(this as o.ShippingOption);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class SavedCredentials extends b.TdBase {
  TResult match<TResult>({
    Func1<o.SavedCredentials, TResult>? isSavedCredentials,
    Func1<SavedCredentials, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.SavedCredentials) {
      if (isSavedCredentials != null) {
        return isSavedCredentials(this as o.SavedCredentials);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains information about the payment method chosen by the user
abstract class InputCredentials extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InputCredentialsSaved, TResult>? isInputCredentialsSaved,
    Func1<o.InputCredentialsNew, TResult>? isInputCredentialsNew,
    Func1<o.InputCredentialsApplePay, TResult>? isInputCredentialsApplePay,
    Func1<o.InputCredentialsGooglePay, TResult>? isInputCredentialsGooglePay,
    Func1<InputCredentials, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputCredentialsSaved) {
      if (isInputCredentialsSaved != null) {
        return isInputCredentialsSaved(this as o.InputCredentialsSaved);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputCredentialsNew) {
      if (isInputCredentialsNew != null) {
        return isInputCredentialsNew(this as o.InputCredentialsNew);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputCredentialsApplePay) {
      if (isInputCredentialsApplePay != null) {
        return isInputCredentialsApplePay(this as o.InputCredentialsApplePay);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputCredentialsGooglePay) {
      if (isInputCredentialsGooglePay != null) {
        return isInputCredentialsGooglePay(this as o.InputCredentialsGooglePay);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PaymentsProviderStripe extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PaymentsProviderStripe, TResult>? isPaymentsProviderStripe,
    Func1<PaymentsProviderStripe, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PaymentsProviderStripe) {
      if (isPaymentsProviderStripe != null) {
        return isPaymentsProviderStripe(this as o.PaymentsProviderStripe);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PaymentFormTheme extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PaymentFormTheme, TResult>? isPaymentFormTheme,
    Func1<PaymentFormTheme, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PaymentFormTheme) {
      if (isPaymentFormTheme != null) {
        return isPaymentFormTheme(this as o.PaymentFormTheme);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PaymentForm extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PaymentForm, TResult>? isPaymentForm,
    Func1<PaymentForm, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PaymentForm) {
      if (isPaymentForm != null) {
        return isPaymentForm(this as o.PaymentForm);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ValidatedOrderInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ValidatedOrderInfo, TResult>? isValidatedOrderInfo,
    Func1<ValidatedOrderInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ValidatedOrderInfo) {
      if (isValidatedOrderInfo != null) {
        return isValidatedOrderInfo(this as o.ValidatedOrderInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PaymentResult extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PaymentResult, TResult>? isPaymentResult,
    Func1<PaymentResult, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PaymentResult) {
      if (isPaymentResult != null) {
        return isPaymentResult(this as o.PaymentResult);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PaymentReceipt extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PaymentReceipt, TResult>? isPaymentReceipt,
    Func1<PaymentReceipt, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PaymentReceipt) {
      if (isPaymentReceipt != null) {
        return isPaymentReceipt(this as o.PaymentReceipt);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class DatedFile extends b.TdBase {
  TResult match<TResult>({
    Func1<o.DatedFile, TResult>? isDatedFile,
    Func1<DatedFile, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.DatedFile) {
      if (isDatedFile != null) {
        return isDatedFile(this as o.DatedFile);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains the type of a Telegram Passport element
abstract class PassportElementType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PassportElementTypePersonalDetails, TResult>? isPassportElementTypePersonalDetails,
    Func1<o.PassportElementTypePassport, TResult>? isPassportElementTypePassport,
    Func1<o.PassportElementTypeDriverLicense, TResult>? isPassportElementTypeDriverLicense,
    Func1<o.PassportElementTypeIdentityCard, TResult>? isPassportElementTypeIdentityCard,
    Func1<o.PassportElementTypeInternalPassport, TResult>? isPassportElementTypeInternalPassport,
    Func1<o.PassportElementTypeAddress, TResult>? isPassportElementTypeAddress,
    Func1<o.PassportElementTypeUtilityBill, TResult>? isPassportElementTypeUtilityBill,
    Func1<o.PassportElementTypeBankStatement, TResult>? isPassportElementTypeBankStatement,
    Func1<o.PassportElementTypeRentalAgreement, TResult>? isPassportElementTypeRentalAgreement,
    Func1<o.PassportElementTypePassportRegistration, TResult>? isPassportElementTypePassportRegistration,
    Func1<o.PassportElementTypeTemporaryRegistration, TResult>? isPassportElementTypeTemporaryRegistration,
    Func1<o.PassportElementTypePhoneNumber, TResult>? isPassportElementTypePhoneNumber,
    Func1<o.PassportElementTypeEmailAddress, TResult>? isPassportElementTypeEmailAddress,
    Func1<PassportElementType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportElementTypePersonalDetails) {
      if (isPassportElementTypePersonalDetails != null) {
        return isPassportElementTypePersonalDetails(this as o.PassportElementTypePersonalDetails);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementTypePassport) {
      if (isPassportElementTypePassport != null) {
        return isPassportElementTypePassport(this as o.PassportElementTypePassport);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeDriverLicense) {
      if (isPassportElementTypeDriverLicense != null) {
        return isPassportElementTypeDriverLicense(this as o.PassportElementTypeDriverLicense);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeIdentityCard) {
      if (isPassportElementTypeIdentityCard != null) {
        return isPassportElementTypeIdentityCard(this as o.PassportElementTypeIdentityCard);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeInternalPassport) {
      if (isPassportElementTypeInternalPassport != null) {
        return isPassportElementTypeInternalPassport(this as o.PassportElementTypeInternalPassport);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeAddress) {
      if (isPassportElementTypeAddress != null) {
        return isPassportElementTypeAddress(this as o.PassportElementTypeAddress);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeUtilityBill) {
      if (isPassportElementTypeUtilityBill != null) {
        return isPassportElementTypeUtilityBill(this as o.PassportElementTypeUtilityBill);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeBankStatement) {
      if (isPassportElementTypeBankStatement != null) {
        return isPassportElementTypeBankStatement(this as o.PassportElementTypeBankStatement);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeRentalAgreement) {
      if (isPassportElementTypeRentalAgreement != null) {
        return isPassportElementTypeRentalAgreement(this as o.PassportElementTypeRentalAgreement);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementTypePassportRegistration) {
      if (isPassportElementTypePassportRegistration != null) {
        return isPassportElementTypePassportRegistration(this as o.PassportElementTypePassportRegistration);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeTemporaryRegistration) {
      if (isPassportElementTypeTemporaryRegistration != null) {
        return isPassportElementTypeTemporaryRegistration(this as o.PassportElementTypeTemporaryRegistration);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementTypePhoneNumber) {
      if (isPassportElementTypePhoneNumber != null) {
        return isPassportElementTypePhoneNumber(this as o.PassportElementTypePhoneNumber);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeEmailAddress) {
      if (isPassportElementTypeEmailAddress != null) {
        return isPassportElementTypeEmailAddress(this as o.PassportElementTypeEmailAddress);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Date extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Date, TResult>? isDate,
    Func1<Date, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Date) {
      if (isDate != null) {
        return isDate(this as o.Date);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PersonalDetails extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PersonalDetails, TResult>? isPersonalDetails,
    Func1<PersonalDetails, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PersonalDetails) {
      if (isPersonalDetails != null) {
        return isPersonalDetails(this as o.PersonalDetails);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class IdentityDocument extends b.TdBase {
  TResult match<TResult>({
    Func1<o.IdentityDocument, TResult>? isIdentityDocument,
    Func1<IdentityDocument, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.IdentityDocument) {
      if (isIdentityDocument != null) {
        return isIdentityDocument(this as o.IdentityDocument);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class InputIdentityDocument extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InputIdentityDocument, TResult>? isInputIdentityDocument,
    Func1<InputIdentityDocument, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputIdentityDocument) {
      if (isInputIdentityDocument != null) {
        return isInputIdentityDocument(this as o.InputIdentityDocument);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PersonalDocument extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PersonalDocument, TResult>? isPersonalDocument,
    Func1<PersonalDocument, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PersonalDocument) {
      if (isPersonalDocument != null) {
        return isPersonalDocument(this as o.PersonalDocument);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class InputPersonalDocument extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InputPersonalDocument, TResult>? isInputPersonalDocument,
    Func1<InputPersonalDocument, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputPersonalDocument) {
      if (isInputPersonalDocument != null) {
        return isInputPersonalDocument(this as o.InputPersonalDocument);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains information about a Telegram Passport element
abstract class PassportElement extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PassportElementPersonalDetails, TResult>? isPassportElementPersonalDetails,
    Func1<o.PassportElementPassport, TResult>? isPassportElementPassport,
    Func1<o.PassportElementDriverLicense, TResult>? isPassportElementDriverLicense,
    Func1<o.PassportElementIdentityCard, TResult>? isPassportElementIdentityCard,
    Func1<o.PassportElementInternalPassport, TResult>? isPassportElementInternalPassport,
    Func1<o.PassportElementAddress, TResult>? isPassportElementAddress,
    Func1<o.PassportElementUtilityBill, TResult>? isPassportElementUtilityBill,
    Func1<o.PassportElementBankStatement, TResult>? isPassportElementBankStatement,
    Func1<o.PassportElementRentalAgreement, TResult>? isPassportElementRentalAgreement,
    Func1<o.PassportElementPassportRegistration, TResult>? isPassportElementPassportRegistration,
    Func1<o.PassportElementTemporaryRegistration, TResult>? isPassportElementTemporaryRegistration,
    Func1<o.PassportElementPhoneNumber, TResult>? isPassportElementPhoneNumber,
    Func1<o.PassportElementEmailAddress, TResult>? isPassportElementEmailAddress,
    Func1<PassportElement, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportElementPersonalDetails) {
      if (isPassportElementPersonalDetails != null) {
        return isPassportElementPersonalDetails(this as o.PassportElementPersonalDetails);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementPassport) {
      if (isPassportElementPassport != null) {
        return isPassportElementPassport(this as o.PassportElementPassport);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementDriverLicense) {
      if (isPassportElementDriverLicense != null) {
        return isPassportElementDriverLicense(this as o.PassportElementDriverLicense);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementIdentityCard) {
      if (isPassportElementIdentityCard != null) {
        return isPassportElementIdentityCard(this as o.PassportElementIdentityCard);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementInternalPassport) {
      if (isPassportElementInternalPassport != null) {
        return isPassportElementInternalPassport(this as o.PassportElementInternalPassport);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementAddress) {
      if (isPassportElementAddress != null) {
        return isPassportElementAddress(this as o.PassportElementAddress);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementUtilityBill) {
      if (isPassportElementUtilityBill != null) {
        return isPassportElementUtilityBill(this as o.PassportElementUtilityBill);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementBankStatement) {
      if (isPassportElementBankStatement != null) {
        return isPassportElementBankStatement(this as o.PassportElementBankStatement);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementRentalAgreement) {
      if (isPassportElementRentalAgreement != null) {
        return isPassportElementRentalAgreement(this as o.PassportElementRentalAgreement);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementPassportRegistration) {
      if (isPassportElementPassportRegistration != null) {
        return isPassportElementPassportRegistration(this as o.PassportElementPassportRegistration);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementTemporaryRegistration) {
      if (isPassportElementTemporaryRegistration != null) {
        return isPassportElementTemporaryRegistration(this as o.PassportElementTemporaryRegistration);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementPhoneNumber) {
      if (isPassportElementPhoneNumber != null) {
        return isPassportElementPhoneNumber(this as o.PassportElementPhoneNumber);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementEmailAddress) {
      if (isPassportElementEmailAddress != null) {
        return isPassportElementEmailAddress(this as o.PassportElementEmailAddress);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains information about a Telegram Passport element to be saved
abstract class InputPassportElement extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InputPassportElementPersonalDetails, TResult>? isInputPassportElementPersonalDetails,
    Func1<o.InputPassportElementPassport, TResult>? isInputPassportElementPassport,
    Func1<o.InputPassportElementDriverLicense, TResult>? isInputPassportElementDriverLicense,
    Func1<o.InputPassportElementIdentityCard, TResult>? isInputPassportElementIdentityCard,
    Func1<o.InputPassportElementInternalPassport, TResult>? isInputPassportElementInternalPassport,
    Func1<o.InputPassportElementAddress, TResult>? isInputPassportElementAddress,
    Func1<o.InputPassportElementUtilityBill, TResult>? isInputPassportElementUtilityBill,
    Func1<o.InputPassportElementBankStatement, TResult>? isInputPassportElementBankStatement,
    Func1<o.InputPassportElementRentalAgreement, TResult>? isInputPassportElementRentalAgreement,
    Func1<o.InputPassportElementPassportRegistration, TResult>? isInputPassportElementPassportRegistration,
    Func1<o.InputPassportElementTemporaryRegistration, TResult>? isInputPassportElementTemporaryRegistration,
    Func1<o.InputPassportElementPhoneNumber, TResult>? isInputPassportElementPhoneNumber,
    Func1<o.InputPassportElementEmailAddress, TResult>? isInputPassportElementEmailAddress,
    Func1<InputPassportElement, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputPassportElementPersonalDetails) {
      if (isInputPassportElementPersonalDetails != null) {
        return isInputPassportElementPersonalDetails(this as o.InputPassportElementPersonalDetails);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementPassport) {
      if (isInputPassportElementPassport != null) {
        return isInputPassportElementPassport(this as o.InputPassportElementPassport);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementDriverLicense) {
      if (isInputPassportElementDriverLicense != null) {
        return isInputPassportElementDriverLicense(this as o.InputPassportElementDriverLicense);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementIdentityCard) {
      if (isInputPassportElementIdentityCard != null) {
        return isInputPassportElementIdentityCard(this as o.InputPassportElementIdentityCard);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementInternalPassport) {
      if (isInputPassportElementInternalPassport != null) {
        return isInputPassportElementInternalPassport(this as o.InputPassportElementInternalPassport);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementAddress) {
      if (isInputPassportElementAddress != null) {
        return isInputPassportElementAddress(this as o.InputPassportElementAddress);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementUtilityBill) {
      if (isInputPassportElementUtilityBill != null) {
        return isInputPassportElementUtilityBill(this as o.InputPassportElementUtilityBill);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementBankStatement) {
      if (isInputPassportElementBankStatement != null) {
        return isInputPassportElementBankStatement(this as o.InputPassportElementBankStatement);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementRentalAgreement) {
      if (isInputPassportElementRentalAgreement != null) {
        return isInputPassportElementRentalAgreement(this as o.InputPassportElementRentalAgreement);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementPassportRegistration) {
      if (isInputPassportElementPassportRegistration != null) {
        return isInputPassportElementPassportRegistration(this as o.InputPassportElementPassportRegistration);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementTemporaryRegistration) {
      if (isInputPassportElementTemporaryRegistration != null) {
        return isInputPassportElementTemporaryRegistration(this as o.InputPassportElementTemporaryRegistration);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementPhoneNumber) {
      if (isInputPassportElementPhoneNumber != null) {
        return isInputPassportElementPhoneNumber(this as o.InputPassportElementPhoneNumber);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementEmailAddress) {
      if (isInputPassportElementEmailAddress != null) {
        return isInputPassportElementEmailAddress(this as o.InputPassportElementEmailAddress);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PassportElements extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PassportElements, TResult>? isPassportElements,
    Func1<PassportElements, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportElements) {
      if (isPassportElements != null) {
        return isPassportElements(this as o.PassportElements);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains the description of an error in a Telegram Passport element
abstract class PassportElementErrorSource extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PassportElementErrorSourceUnspecified, TResult>? isPassportElementErrorSourceUnspecified,
    Func1<o.PassportElementErrorSourceDataField, TResult>? isPassportElementErrorSourceDataField,
    Func1<o.PassportElementErrorSourceFrontSide, TResult>? isPassportElementErrorSourceFrontSide,
    Func1<o.PassportElementErrorSourceReverseSide, TResult>? isPassportElementErrorSourceReverseSide,
    Func1<o.PassportElementErrorSourceSelfie, TResult>? isPassportElementErrorSourceSelfie,
    Func1<o.PassportElementErrorSourceTranslationFile, TResult>? isPassportElementErrorSourceTranslationFile,
    Func1<o.PassportElementErrorSourceTranslationFiles, TResult>? isPassportElementErrorSourceTranslationFiles,
    Func1<o.PassportElementErrorSourceFile, TResult>? isPassportElementErrorSourceFile,
    Func1<o.PassportElementErrorSourceFiles, TResult>? isPassportElementErrorSourceFiles,
    Func1<PassportElementErrorSource, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportElementErrorSourceUnspecified) {
      if (isPassportElementErrorSourceUnspecified != null) {
        return isPassportElementErrorSourceUnspecified(this as o.PassportElementErrorSourceUnspecified);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceDataField) {
      if (isPassportElementErrorSourceDataField != null) {
        return isPassportElementErrorSourceDataField(this as o.PassportElementErrorSourceDataField);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceFrontSide) {
      if (isPassportElementErrorSourceFrontSide != null) {
        return isPassportElementErrorSourceFrontSide(this as o.PassportElementErrorSourceFrontSide);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceReverseSide) {
      if (isPassportElementErrorSourceReverseSide != null) {
        return isPassportElementErrorSourceReverseSide(this as o.PassportElementErrorSourceReverseSide);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceSelfie) {
      if (isPassportElementErrorSourceSelfie != null) {
        return isPassportElementErrorSourceSelfie(this as o.PassportElementErrorSourceSelfie);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceTranslationFile) {
      if (isPassportElementErrorSourceTranslationFile != null) {
        return isPassportElementErrorSourceTranslationFile(this as o.PassportElementErrorSourceTranslationFile);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceTranslationFiles) {
      if (isPassportElementErrorSourceTranslationFiles != null) {
        return isPassportElementErrorSourceTranslationFiles(this as o.PassportElementErrorSourceTranslationFiles);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceFile) {
      if (isPassportElementErrorSourceFile != null) {
        return isPassportElementErrorSourceFile(this as o.PassportElementErrorSourceFile);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceFiles) {
      if (isPassportElementErrorSourceFiles != null) {
        return isPassportElementErrorSourceFiles(this as o.PassportElementErrorSourceFiles);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PassportElementError extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PassportElementError, TResult>? isPassportElementError,
    Func1<PassportElementError, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportElementError) {
      if (isPassportElementError != null) {
        return isPassportElementError(this as o.PassportElementError);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PassportSuitableElement extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PassportSuitableElement, TResult>? isPassportSuitableElement,
    Func1<PassportSuitableElement, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportSuitableElement) {
      if (isPassportSuitableElement != null) {
        return isPassportSuitableElement(this as o.PassportSuitableElement);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PassportRequiredElement extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PassportRequiredElement, TResult>? isPassportRequiredElement,
    Func1<PassportRequiredElement, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportRequiredElement) {
      if (isPassportRequiredElement != null) {
        return isPassportRequiredElement(this as o.PassportRequiredElement);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PassportAuthorizationForm extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PassportAuthorizationForm, TResult>? isPassportAuthorizationForm,
    Func1<PassportAuthorizationForm, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportAuthorizationForm) {
      if (isPassportAuthorizationForm != null) {
        return isPassportAuthorizationForm(this as o.PassportAuthorizationForm);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PassportElementsWithErrors extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PassportElementsWithErrors, TResult>? isPassportElementsWithErrors,
    Func1<PassportElementsWithErrors, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportElementsWithErrors) {
      if (isPassportElementsWithErrors != null) {
        return isPassportElementsWithErrors(this as o.PassportElementsWithErrors);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class EncryptedCredentials extends b.TdBase {
  TResult match<TResult>({
    Func1<o.EncryptedCredentials, TResult>? isEncryptedCredentials,
    Func1<EncryptedCredentials, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.EncryptedCredentials) {
      if (isEncryptedCredentials != null) {
        return isEncryptedCredentials(this as o.EncryptedCredentials);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class EncryptedPassportElement extends b.TdBase {
  TResult match<TResult>({
    Func1<o.EncryptedPassportElement, TResult>? isEncryptedPassportElement,
    Func1<EncryptedPassportElement, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.EncryptedPassportElement) {
      if (isEncryptedPassportElement != null) {
        return isEncryptedPassportElement(this as o.EncryptedPassportElement);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains the description of an error in a Telegram Passport element; for bots only
abstract class InputPassportElementErrorSource extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InputPassportElementErrorSourceUnspecified, TResult>? isInputPassportElementErrorSourceUnspecified,
    Func1<o.InputPassportElementErrorSourceDataField, TResult>? isInputPassportElementErrorSourceDataField,
    Func1<o.InputPassportElementErrorSourceFrontSide, TResult>? isInputPassportElementErrorSourceFrontSide,
    Func1<o.InputPassportElementErrorSourceReverseSide, TResult>? isInputPassportElementErrorSourceReverseSide,
    Func1<o.InputPassportElementErrorSourceSelfie, TResult>? isInputPassportElementErrorSourceSelfie,
    Func1<o.InputPassportElementErrorSourceTranslationFile, TResult>? isInputPassportElementErrorSourceTranslationFile,
    Func1<o.InputPassportElementErrorSourceTranslationFiles, TResult>? isInputPassportElementErrorSourceTranslationFiles,
    Func1<o.InputPassportElementErrorSourceFile, TResult>? isInputPassportElementErrorSourceFile,
    Func1<o.InputPassportElementErrorSourceFiles, TResult>? isInputPassportElementErrorSourceFiles,
    Func1<InputPassportElementErrorSource, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputPassportElementErrorSourceUnspecified) {
      if (isInputPassportElementErrorSourceUnspecified != null) {
        return isInputPassportElementErrorSourceUnspecified(this as o.InputPassportElementErrorSourceUnspecified);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceDataField) {
      if (isInputPassportElementErrorSourceDataField != null) {
        return isInputPassportElementErrorSourceDataField(this as o.InputPassportElementErrorSourceDataField);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceFrontSide) {
      if (isInputPassportElementErrorSourceFrontSide != null) {
        return isInputPassportElementErrorSourceFrontSide(this as o.InputPassportElementErrorSourceFrontSide);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceReverseSide) {
      if (isInputPassportElementErrorSourceReverseSide != null) {
        return isInputPassportElementErrorSourceReverseSide(this as o.InputPassportElementErrorSourceReverseSide);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceSelfie) {
      if (isInputPassportElementErrorSourceSelfie != null) {
        return isInputPassportElementErrorSourceSelfie(this as o.InputPassportElementErrorSourceSelfie);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceTranslationFile) {
      if (isInputPassportElementErrorSourceTranslationFile != null) {
        return isInputPassportElementErrorSourceTranslationFile(this as o.InputPassportElementErrorSourceTranslationFile);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceTranslationFiles) {
      if (isInputPassportElementErrorSourceTranslationFiles != null) {
        return isInputPassportElementErrorSourceTranslationFiles(this as o.InputPassportElementErrorSourceTranslationFiles);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceFile) {
      if (isInputPassportElementErrorSourceFile != null) {
        return isInputPassportElementErrorSourceFile(this as o.InputPassportElementErrorSourceFile);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceFiles) {
      if (isInputPassportElementErrorSourceFiles != null) {
        return isInputPassportElementErrorSourceFiles(this as o.InputPassportElementErrorSourceFiles);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class InputPassportElementError extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InputPassportElementError, TResult>? isInputPassportElementError,
    Func1<InputPassportElementError, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputPassportElementError) {
      if (isInputPassportElementError != null) {
        return isInputPassportElementError(this as o.InputPassportElementError);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains the content of a message
abstract class MessageContent extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageText, TResult>? isMessageText,
    Func1<o.MessageAnimation, TResult>? isMessageAnimation,
    Func1<o.MessageAudio, TResult>? isMessageAudio,
    Func1<o.MessageDocument, TResult>? isMessageDocument,
    Func1<o.MessagePhoto, TResult>? isMessagePhoto,
    Func1<o.MessageExpiredPhoto, TResult>? isMessageExpiredPhoto,
    Func1<o.MessageSticker, TResult>? isMessageSticker,
    Func1<o.MessageVideo, TResult>? isMessageVideo,
    Func1<o.MessageExpiredVideo, TResult>? isMessageExpiredVideo,
    Func1<o.MessageVideoNote, TResult>? isMessageVideoNote,
    Func1<o.MessageVoiceNote, TResult>? isMessageVoiceNote,
    Func1<o.MessageLocation, TResult>? isMessageLocation,
    Func1<o.MessageVenue, TResult>? isMessageVenue,
    Func1<o.MessageContact, TResult>? isMessageContact,
    Func1<o.MessageDice, TResult>? isMessageDice,
    Func1<o.MessageGame, TResult>? isMessageGame,
    Func1<o.MessagePoll, TResult>? isMessagePoll,
    Func1<o.MessageInvoice, TResult>? isMessageInvoice,
    Func1<o.MessageCall, TResult>? isMessageCall,
    Func1<o.MessageVoiceChatScheduled, TResult>? isMessageVoiceChatScheduled,
    Func1<o.MessageVoiceChatStarted, TResult>? isMessageVoiceChatStarted,
    Func1<o.MessageVoiceChatEnded, TResult>? isMessageVoiceChatEnded,
    Func1<o.MessageInviteVoiceChatParticipants, TResult>? isMessageInviteVoiceChatParticipants,
    Func1<o.MessageBasicGroupChatCreate, TResult>? isMessageBasicGroupChatCreate,
    Func1<o.MessageSupergroupChatCreate, TResult>? isMessageSupergroupChatCreate,
    Func1<o.MessageChatChangeTitle, TResult>? isMessageChatChangeTitle,
    Func1<o.MessageChatChangePhoto, TResult>? isMessageChatChangePhoto,
    Func1<o.MessageChatDeletePhoto, TResult>? isMessageChatDeletePhoto,
    Func1<o.MessageChatAddMembers, TResult>? isMessageChatAddMembers,
    Func1<o.MessageChatJoinByLink, TResult>? isMessageChatJoinByLink,
    Func1<o.MessageChatDeleteMember, TResult>? isMessageChatDeleteMember,
    Func1<o.MessageChatUpgradeTo, TResult>? isMessageChatUpgradeTo,
    Func1<o.MessageChatUpgradeFrom, TResult>? isMessageChatUpgradeFrom,
    Func1<o.MessagePinMessage, TResult>? isMessagePinMessage,
    Func1<o.MessageScreenshotTaken, TResult>? isMessageScreenshotTaken,
    Func1<o.MessageChatSetTtl, TResult>? isMessageChatSetTtl,
    Func1<o.MessageCustomServiceAction, TResult>? isMessageCustomServiceAction,
    Func1<o.MessageGameScore, TResult>? isMessageGameScore,
    Func1<o.MessagePaymentSuccessful, TResult>? isMessagePaymentSuccessful,
    Func1<o.MessagePaymentSuccessfulBot, TResult>? isMessagePaymentSuccessfulBot,
    Func1<o.MessageContactRegistered, TResult>? isMessageContactRegistered,
    Func1<o.MessageWebsiteConnected, TResult>? isMessageWebsiteConnected,
    Func1<o.MessagePassportDataSent, TResult>? isMessagePassportDataSent,
    Func1<o.MessagePassportDataReceived, TResult>? isMessagePassportDataReceived,
    Func1<o.MessageProximityAlertTriggered, TResult>? isMessageProximityAlertTriggered,
    Func1<o.MessageUnsupported, TResult>? isMessageUnsupported,
    Func1<MessageContent, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageText) {
      if (isMessageText != null) {
        return isMessageText(this as o.MessageText);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageAnimation) {
      if (isMessageAnimation != null) {
        return isMessageAnimation(this as o.MessageAnimation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageAudio) {
      if (isMessageAudio != null) {
        return isMessageAudio(this as o.MessageAudio);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageDocument) {
      if (isMessageDocument != null) {
        return isMessageDocument(this as o.MessageDocument);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessagePhoto) {
      if (isMessagePhoto != null) {
        return isMessagePhoto(this as o.MessagePhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageExpiredPhoto) {
      if (isMessageExpiredPhoto != null) {
        return isMessageExpiredPhoto(this as o.MessageExpiredPhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageSticker) {
      if (isMessageSticker != null) {
        return isMessageSticker(this as o.MessageSticker);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageVideo) {
      if (isMessageVideo != null) {
        return isMessageVideo(this as o.MessageVideo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageExpiredVideo) {
      if (isMessageExpiredVideo != null) {
        return isMessageExpiredVideo(this as o.MessageExpiredVideo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageVideoNote) {
      if (isMessageVideoNote != null) {
        return isMessageVideoNote(this as o.MessageVideoNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageVoiceNote) {
      if (isMessageVoiceNote != null) {
        return isMessageVoiceNote(this as o.MessageVoiceNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageLocation) {
      if (isMessageLocation != null) {
        return isMessageLocation(this as o.MessageLocation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageVenue) {
      if (isMessageVenue != null) {
        return isMessageVenue(this as o.MessageVenue);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageContact) {
      if (isMessageContact != null) {
        return isMessageContact(this as o.MessageContact);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageDice) {
      if (isMessageDice != null) {
        return isMessageDice(this as o.MessageDice);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageGame) {
      if (isMessageGame != null) {
        return isMessageGame(this as o.MessageGame);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessagePoll) {
      if (isMessagePoll != null) {
        return isMessagePoll(this as o.MessagePoll);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageInvoice) {
      if (isMessageInvoice != null) {
        return isMessageInvoice(this as o.MessageInvoice);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageCall) {
      if (isMessageCall != null) {
        return isMessageCall(this as o.MessageCall);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageVoiceChatScheduled) {
      if (isMessageVoiceChatScheduled != null) {
        return isMessageVoiceChatScheduled(this as o.MessageVoiceChatScheduled);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageVoiceChatStarted) {
      if (isMessageVoiceChatStarted != null) {
        return isMessageVoiceChatStarted(this as o.MessageVoiceChatStarted);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageVoiceChatEnded) {
      if (isMessageVoiceChatEnded != null) {
        return isMessageVoiceChatEnded(this as o.MessageVoiceChatEnded);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageInviteVoiceChatParticipants) {
      if (isMessageInviteVoiceChatParticipants != null) {
        return isMessageInviteVoiceChatParticipants(this as o.MessageInviteVoiceChatParticipants);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageBasicGroupChatCreate) {
      if (isMessageBasicGroupChatCreate != null) {
        return isMessageBasicGroupChatCreate(this as o.MessageBasicGroupChatCreate);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageSupergroupChatCreate) {
      if (isMessageSupergroupChatCreate != null) {
        return isMessageSupergroupChatCreate(this as o.MessageSupergroupChatCreate);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageChatChangeTitle) {
      if (isMessageChatChangeTitle != null) {
        return isMessageChatChangeTitle(this as o.MessageChatChangeTitle);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageChatChangePhoto) {
      if (isMessageChatChangePhoto != null) {
        return isMessageChatChangePhoto(this as o.MessageChatChangePhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageChatDeletePhoto) {
      if (isMessageChatDeletePhoto != null) {
        return isMessageChatDeletePhoto(this as o.MessageChatDeletePhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageChatAddMembers) {
      if (isMessageChatAddMembers != null) {
        return isMessageChatAddMembers(this as o.MessageChatAddMembers);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageChatJoinByLink) {
      if (isMessageChatJoinByLink != null) {
        return isMessageChatJoinByLink(this as o.MessageChatJoinByLink);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageChatDeleteMember) {
      if (isMessageChatDeleteMember != null) {
        return isMessageChatDeleteMember(this as o.MessageChatDeleteMember);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageChatUpgradeTo) {
      if (isMessageChatUpgradeTo != null) {
        return isMessageChatUpgradeTo(this as o.MessageChatUpgradeTo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageChatUpgradeFrom) {
      if (isMessageChatUpgradeFrom != null) {
        return isMessageChatUpgradeFrom(this as o.MessageChatUpgradeFrom);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessagePinMessage) {
      if (isMessagePinMessage != null) {
        return isMessagePinMessage(this as o.MessagePinMessage);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageScreenshotTaken) {
      if (isMessageScreenshotTaken != null) {
        return isMessageScreenshotTaken(this as o.MessageScreenshotTaken);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageChatSetTtl) {
      if (isMessageChatSetTtl != null) {
        return isMessageChatSetTtl(this as o.MessageChatSetTtl);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageCustomServiceAction) {
      if (isMessageCustomServiceAction != null) {
        return isMessageCustomServiceAction(this as o.MessageCustomServiceAction);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageGameScore) {
      if (isMessageGameScore != null) {
        return isMessageGameScore(this as o.MessageGameScore);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessagePaymentSuccessful) {
      if (isMessagePaymentSuccessful != null) {
        return isMessagePaymentSuccessful(this as o.MessagePaymentSuccessful);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessagePaymentSuccessfulBot) {
      if (isMessagePaymentSuccessfulBot != null) {
        return isMessagePaymentSuccessfulBot(this as o.MessagePaymentSuccessfulBot);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageContactRegistered) {
      if (isMessageContactRegistered != null) {
        return isMessageContactRegistered(this as o.MessageContactRegistered);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageWebsiteConnected) {
      if (isMessageWebsiteConnected != null) {
        return isMessageWebsiteConnected(this as o.MessageWebsiteConnected);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessagePassportDataSent) {
      if (isMessagePassportDataSent != null) {
        return isMessagePassportDataSent(this as o.MessagePassportDataSent);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessagePassportDataReceived) {
      if (isMessagePassportDataReceived != null) {
        return isMessagePassportDataReceived(this as o.MessagePassportDataReceived);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageProximityAlertTriggered) {
      if (isMessageProximityAlertTriggered != null) {
        return isMessageProximityAlertTriggered(this as o.MessageProximityAlertTriggered);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageUnsupported) {
      if (isMessageUnsupported != null) {
        return isMessageUnsupported(this as o.MessageUnsupported);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents a part of the text which must be formatted differently
abstract class TextEntityType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TextEntityTypeMention, TResult>? isTextEntityTypeMention,
    Func1<o.TextEntityTypeHashtag, TResult>? isTextEntityTypeHashtag,
    Func1<o.TextEntityTypeCashtag, TResult>? isTextEntityTypeCashtag,
    Func1<o.TextEntityTypeBotCommand, TResult>? isTextEntityTypeBotCommand,
    Func1<o.TextEntityTypeUrl, TResult>? isTextEntityTypeUrl,
    Func1<o.TextEntityTypeEmailAddress, TResult>? isTextEntityTypeEmailAddress,
    Func1<o.TextEntityTypePhoneNumber, TResult>? isTextEntityTypePhoneNumber,
    Func1<o.TextEntityTypeBankCardNumber, TResult>? isTextEntityTypeBankCardNumber,
    Func1<o.TextEntityTypeBold, TResult>? isTextEntityTypeBold,
    Func1<o.TextEntityTypeItalic, TResult>? isTextEntityTypeItalic,
    Func1<o.TextEntityTypeUnderline, TResult>? isTextEntityTypeUnderline,
    Func1<o.TextEntityTypeStrikethrough, TResult>? isTextEntityTypeStrikethrough,
    Func1<o.TextEntityTypeCode, TResult>? isTextEntityTypeCode,
    Func1<o.TextEntityTypePre, TResult>? isTextEntityTypePre,
    Func1<o.TextEntityTypePreCode, TResult>? isTextEntityTypePreCode,
    Func1<o.TextEntityTypeTextUrl, TResult>? isTextEntityTypeTextUrl,
    Func1<o.TextEntityTypeMentionName, TResult>? isTextEntityTypeMentionName,
    Func1<TextEntityType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TextEntityTypeMention) {
      if (isTextEntityTypeMention != null) {
        return isTextEntityTypeMention(this as o.TextEntityTypeMention);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeHashtag) {
      if (isTextEntityTypeHashtag != null) {
        return isTextEntityTypeHashtag(this as o.TextEntityTypeHashtag);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeCashtag) {
      if (isTextEntityTypeCashtag != null) {
        return isTextEntityTypeCashtag(this as o.TextEntityTypeCashtag);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeBotCommand) {
      if (isTextEntityTypeBotCommand != null) {
        return isTextEntityTypeBotCommand(this as o.TextEntityTypeBotCommand);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeUrl) {
      if (isTextEntityTypeUrl != null) {
        return isTextEntityTypeUrl(this as o.TextEntityTypeUrl);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeEmailAddress) {
      if (isTextEntityTypeEmailAddress != null) {
        return isTextEntityTypeEmailAddress(this as o.TextEntityTypeEmailAddress);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypePhoneNumber) {
      if (isTextEntityTypePhoneNumber != null) {
        return isTextEntityTypePhoneNumber(this as o.TextEntityTypePhoneNumber);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeBankCardNumber) {
      if (isTextEntityTypeBankCardNumber != null) {
        return isTextEntityTypeBankCardNumber(this as o.TextEntityTypeBankCardNumber);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeBold) {
      if (isTextEntityTypeBold != null) {
        return isTextEntityTypeBold(this as o.TextEntityTypeBold);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeItalic) {
      if (isTextEntityTypeItalic != null) {
        return isTextEntityTypeItalic(this as o.TextEntityTypeItalic);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeUnderline) {
      if (isTextEntityTypeUnderline != null) {
        return isTextEntityTypeUnderline(this as o.TextEntityTypeUnderline);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeStrikethrough) {
      if (isTextEntityTypeStrikethrough != null) {
        return isTextEntityTypeStrikethrough(this as o.TextEntityTypeStrikethrough);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeCode) {
      if (isTextEntityTypeCode != null) {
        return isTextEntityTypeCode(this as o.TextEntityTypeCode);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypePre) {
      if (isTextEntityTypePre != null) {
        return isTextEntityTypePre(this as o.TextEntityTypePre);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypePreCode) {
      if (isTextEntityTypePreCode != null) {
        return isTextEntityTypePreCode(this as o.TextEntityTypePreCode);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeTextUrl) {
      if (isTextEntityTypeTextUrl != null) {
        return isTextEntityTypeTextUrl(this as o.TextEntityTypeTextUrl);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeMentionName) {
      if (isTextEntityTypeMentionName != null) {
        return isTextEntityTypeMentionName(this as o.TextEntityTypeMentionName);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class InputThumbnail extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InputThumbnail, TResult>? isInputThumbnail,
    Func1<InputThumbnail, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputThumbnail) {
      if (isInputThumbnail != null) {
        return isInputThumbnail(this as o.InputThumbnail);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains information about the time when a scheduled message will be sent
abstract class MessageSchedulingState extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageSchedulingStateSendAtDate, TResult>? isMessageSchedulingStateSendAtDate,
    Func1<o.MessageSchedulingStateSendWhenOnline, TResult>? isMessageSchedulingStateSendWhenOnline,
    Func1<MessageSchedulingState, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageSchedulingStateSendAtDate) {
      if (isMessageSchedulingStateSendAtDate != null) {
        return isMessageSchedulingStateSendAtDate(this as o.MessageSchedulingStateSendAtDate);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageSchedulingStateSendWhenOnline) {
      if (isMessageSchedulingStateSendWhenOnline != null) {
        return isMessageSchedulingStateSendWhenOnline(this as o.MessageSchedulingStateSendWhenOnline);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class MessageSendOptions extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageSendOptions, TResult>? isMessageSendOptions,
    Func1<MessageSendOptions, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageSendOptions) {
      if (isMessageSendOptions != null) {
        return isMessageSendOptions(this as o.MessageSendOptions);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class MessageCopyOptions extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageCopyOptions, TResult>? isMessageCopyOptions,
    Func1<MessageCopyOptions, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageCopyOptions) {
      if (isMessageCopyOptions != null) {
        return isMessageCopyOptions(this as o.MessageCopyOptions);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// The content of a message to send
abstract class InputMessageContent extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InputMessageText, TResult>? isInputMessageText,
    Func1<o.InputMessageAnimation, TResult>? isInputMessageAnimation,
    Func1<o.InputMessageAudio, TResult>? isInputMessageAudio,
    Func1<o.InputMessageDocument, TResult>? isInputMessageDocument,
    Func1<o.InputMessagePhoto, TResult>? isInputMessagePhoto,
    Func1<o.InputMessageSticker, TResult>? isInputMessageSticker,
    Func1<o.InputMessageVideo, TResult>? isInputMessageVideo,
    Func1<o.InputMessageVideoNote, TResult>? isInputMessageVideoNote,
    Func1<o.InputMessageVoiceNote, TResult>? isInputMessageVoiceNote,
    Func1<o.InputMessageLocation, TResult>? isInputMessageLocation,
    Func1<o.InputMessageVenue, TResult>? isInputMessageVenue,
    Func1<o.InputMessageContact, TResult>? isInputMessageContact,
    Func1<o.InputMessageDice, TResult>? isInputMessageDice,
    Func1<o.InputMessageGame, TResult>? isInputMessageGame,
    Func1<o.InputMessageInvoice, TResult>? isInputMessageInvoice,
    Func1<o.InputMessagePoll, TResult>? isInputMessagePoll,
    Func1<o.InputMessageForwarded, TResult>? isInputMessageForwarded,
    Func1<InputMessageContent, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputMessageText) {
      if (isInputMessageText != null) {
        return isInputMessageText(this as o.InputMessageText);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessageAnimation) {
      if (isInputMessageAnimation != null) {
        return isInputMessageAnimation(this as o.InputMessageAnimation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessageAudio) {
      if (isInputMessageAudio != null) {
        return isInputMessageAudio(this as o.InputMessageAudio);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessageDocument) {
      if (isInputMessageDocument != null) {
        return isInputMessageDocument(this as o.InputMessageDocument);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessagePhoto) {
      if (isInputMessagePhoto != null) {
        return isInputMessagePhoto(this as o.InputMessagePhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessageSticker) {
      if (isInputMessageSticker != null) {
        return isInputMessageSticker(this as o.InputMessageSticker);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessageVideo) {
      if (isInputMessageVideo != null) {
        return isInputMessageVideo(this as o.InputMessageVideo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessageVideoNote) {
      if (isInputMessageVideoNote != null) {
        return isInputMessageVideoNote(this as o.InputMessageVideoNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessageVoiceNote) {
      if (isInputMessageVoiceNote != null) {
        return isInputMessageVoiceNote(this as o.InputMessageVoiceNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessageLocation) {
      if (isInputMessageLocation != null) {
        return isInputMessageLocation(this as o.InputMessageLocation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessageVenue) {
      if (isInputMessageVenue != null) {
        return isInputMessageVenue(this as o.InputMessageVenue);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessageContact) {
      if (isInputMessageContact != null) {
        return isInputMessageContact(this as o.InputMessageContact);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessageDice) {
      if (isInputMessageDice != null) {
        return isInputMessageDice(this as o.InputMessageDice);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessageGame) {
      if (isInputMessageGame != null) {
        return isInputMessageGame(this as o.InputMessageGame);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessageInvoice) {
      if (isInputMessageInvoice != null) {
        return isInputMessageInvoice(this as o.InputMessageInvoice);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessagePoll) {
      if (isInputMessagePoll != null) {
        return isInputMessagePoll(this as o.InputMessagePoll);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputMessageForwarded) {
      if (isInputMessageForwarded != null) {
        return isInputMessageForwarded(this as o.InputMessageForwarded);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents a filter for message search results
abstract class SearchMessagesFilter extends b.TdBase {
  TResult match<TResult>({
    Func1<o.SearchMessagesFilterEmpty, TResult>? isSearchMessagesFilterEmpty,
    Func1<o.SearchMessagesFilterAnimation, TResult>? isSearchMessagesFilterAnimation,
    Func1<o.SearchMessagesFilterAudio, TResult>? isSearchMessagesFilterAudio,
    Func1<o.SearchMessagesFilterDocument, TResult>? isSearchMessagesFilterDocument,
    Func1<o.SearchMessagesFilterPhoto, TResult>? isSearchMessagesFilterPhoto,
    Func1<o.SearchMessagesFilterVideo, TResult>? isSearchMessagesFilterVideo,
    Func1<o.SearchMessagesFilterVoiceNote, TResult>? isSearchMessagesFilterVoiceNote,
    Func1<o.SearchMessagesFilterPhotoAndVideo, TResult>? isSearchMessagesFilterPhotoAndVideo,
    Func1<o.SearchMessagesFilterUrl, TResult>? isSearchMessagesFilterUrl,
    Func1<o.SearchMessagesFilterChatPhoto, TResult>? isSearchMessagesFilterChatPhoto,
    Func1<o.SearchMessagesFilterCall, TResult>? isSearchMessagesFilterCall,
    Func1<o.SearchMessagesFilterMissedCall, TResult>? isSearchMessagesFilterMissedCall,
    Func1<o.SearchMessagesFilterVideoNote, TResult>? isSearchMessagesFilterVideoNote,
    Func1<o.SearchMessagesFilterVoiceAndVideoNote, TResult>? isSearchMessagesFilterVoiceAndVideoNote,
    Func1<o.SearchMessagesFilterMention, TResult>? isSearchMessagesFilterMention,
    Func1<o.SearchMessagesFilterUnreadMention, TResult>? isSearchMessagesFilterUnreadMention,
    Func1<o.SearchMessagesFilterFailedToSend, TResult>? isSearchMessagesFilterFailedToSend,
    Func1<o.SearchMessagesFilterPinned, TResult>? isSearchMessagesFilterPinned,
    Func1<SearchMessagesFilter, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.SearchMessagesFilterEmpty) {
      if (isSearchMessagesFilterEmpty != null) {
        return isSearchMessagesFilterEmpty(this as o.SearchMessagesFilterEmpty);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterAnimation) {
      if (isSearchMessagesFilterAnimation != null) {
        return isSearchMessagesFilterAnimation(this as o.SearchMessagesFilterAnimation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterAudio) {
      if (isSearchMessagesFilterAudio != null) {
        return isSearchMessagesFilterAudio(this as o.SearchMessagesFilterAudio);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterDocument) {
      if (isSearchMessagesFilterDocument != null) {
        return isSearchMessagesFilterDocument(this as o.SearchMessagesFilterDocument);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterPhoto) {
      if (isSearchMessagesFilterPhoto != null) {
        return isSearchMessagesFilterPhoto(this as o.SearchMessagesFilterPhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterVideo) {
      if (isSearchMessagesFilterVideo != null) {
        return isSearchMessagesFilterVideo(this as o.SearchMessagesFilterVideo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterVoiceNote) {
      if (isSearchMessagesFilterVoiceNote != null) {
        return isSearchMessagesFilterVoiceNote(this as o.SearchMessagesFilterVoiceNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterPhotoAndVideo) {
      if (isSearchMessagesFilterPhotoAndVideo != null) {
        return isSearchMessagesFilterPhotoAndVideo(this as o.SearchMessagesFilterPhotoAndVideo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterUrl) {
      if (isSearchMessagesFilterUrl != null) {
        return isSearchMessagesFilterUrl(this as o.SearchMessagesFilterUrl);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterChatPhoto) {
      if (isSearchMessagesFilterChatPhoto != null) {
        return isSearchMessagesFilterChatPhoto(this as o.SearchMessagesFilterChatPhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterCall) {
      if (isSearchMessagesFilterCall != null) {
        return isSearchMessagesFilterCall(this as o.SearchMessagesFilterCall);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterMissedCall) {
      if (isSearchMessagesFilterMissedCall != null) {
        return isSearchMessagesFilterMissedCall(this as o.SearchMessagesFilterMissedCall);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterVideoNote) {
      if (isSearchMessagesFilterVideoNote != null) {
        return isSearchMessagesFilterVideoNote(this as o.SearchMessagesFilterVideoNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterVoiceAndVideoNote) {
      if (isSearchMessagesFilterVoiceAndVideoNote != null) {
        return isSearchMessagesFilterVoiceAndVideoNote(this as o.SearchMessagesFilterVoiceAndVideoNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterMention) {
      if (isSearchMessagesFilterMention != null) {
        return isSearchMessagesFilterMention(this as o.SearchMessagesFilterMention);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterUnreadMention) {
      if (isSearchMessagesFilterUnreadMention != null) {
        return isSearchMessagesFilterUnreadMention(this as o.SearchMessagesFilterUnreadMention);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterFailedToSend) {
      if (isSearchMessagesFilterFailedToSend != null) {
        return isSearchMessagesFilterFailedToSend(this as o.SearchMessagesFilterFailedToSend);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterPinned) {
      if (isSearchMessagesFilterPinned != null) {
        return isSearchMessagesFilterPinned(this as o.SearchMessagesFilterPinned);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the different types of activity in a chat
abstract class ChatAction extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatActionTyping, TResult>? isChatActionTyping,
    Func1<o.ChatActionRecordingVideo, TResult>? isChatActionRecordingVideo,
    Func1<o.ChatActionUploadingVideo, TResult>? isChatActionUploadingVideo,
    Func1<o.ChatActionRecordingVoiceNote, TResult>? isChatActionRecordingVoiceNote,
    Func1<o.ChatActionUploadingVoiceNote, TResult>? isChatActionUploadingVoiceNote,
    Func1<o.ChatActionUploadingPhoto, TResult>? isChatActionUploadingPhoto,
    Func1<o.ChatActionUploadingDocument, TResult>? isChatActionUploadingDocument,
    Func1<o.ChatActionChoosingLocation, TResult>? isChatActionChoosingLocation,
    Func1<o.ChatActionChoosingContact, TResult>? isChatActionChoosingContact,
    Func1<o.ChatActionStartPlayingGame, TResult>? isChatActionStartPlayingGame,
    Func1<o.ChatActionRecordingVideoNote, TResult>? isChatActionRecordingVideoNote,
    Func1<o.ChatActionUploadingVideoNote, TResult>? isChatActionUploadingVideoNote,
    Func1<o.ChatActionCancel, TResult>? isChatActionCancel,
    Func1<ChatAction, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatActionTyping) {
      if (isChatActionTyping != null) {
        return isChatActionTyping(this as o.ChatActionTyping);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionRecordingVideo) {
      if (isChatActionRecordingVideo != null) {
        return isChatActionRecordingVideo(this as o.ChatActionRecordingVideo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionUploadingVideo) {
      if (isChatActionUploadingVideo != null) {
        return isChatActionUploadingVideo(this as o.ChatActionUploadingVideo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionRecordingVoiceNote) {
      if (isChatActionRecordingVoiceNote != null) {
        return isChatActionRecordingVoiceNote(this as o.ChatActionRecordingVoiceNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionUploadingVoiceNote) {
      if (isChatActionUploadingVoiceNote != null) {
        return isChatActionUploadingVoiceNote(this as o.ChatActionUploadingVoiceNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionUploadingPhoto) {
      if (isChatActionUploadingPhoto != null) {
        return isChatActionUploadingPhoto(this as o.ChatActionUploadingPhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionUploadingDocument) {
      if (isChatActionUploadingDocument != null) {
        return isChatActionUploadingDocument(this as o.ChatActionUploadingDocument);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionChoosingLocation) {
      if (isChatActionChoosingLocation != null) {
        return isChatActionChoosingLocation(this as o.ChatActionChoosingLocation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionChoosingContact) {
      if (isChatActionChoosingContact != null) {
        return isChatActionChoosingContact(this as o.ChatActionChoosingContact);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionStartPlayingGame) {
      if (isChatActionStartPlayingGame != null) {
        return isChatActionStartPlayingGame(this as o.ChatActionStartPlayingGame);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionRecordingVideoNote) {
      if (isChatActionRecordingVideoNote != null) {
        return isChatActionRecordingVideoNote(this as o.ChatActionRecordingVideoNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionUploadingVideoNote) {
      if (isChatActionUploadingVideoNote != null) {
        return isChatActionUploadingVideoNote(this as o.ChatActionUploadingVideoNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatActionCancel) {
      if (isChatActionCancel != null) {
        return isChatActionCancel(this as o.ChatActionCancel);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the last time the user was online
abstract class UserStatus extends b.TdBase {
  TResult match<TResult>({
    Func1<o.UserStatusEmpty, TResult>? isUserStatusEmpty,
    Func1<o.UserStatusOnline, TResult>? isUserStatusOnline,
    Func1<o.UserStatusOffline, TResult>? isUserStatusOffline,
    Func1<o.UserStatusRecently, TResult>? isUserStatusRecently,
    Func1<o.UserStatusLastWeek, TResult>? isUserStatusLastWeek,
    Func1<o.UserStatusLastMonth, TResult>? isUserStatusLastMonth,
    Func1<UserStatus, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.UserStatusEmpty) {
      if (isUserStatusEmpty != null) {
        return isUserStatusEmpty(this as o.UserStatusEmpty);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserStatusOnline) {
      if (isUserStatusOnline != null) {
        return isUserStatusOnline(this as o.UserStatusOnline);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserStatusOffline) {
      if (isUserStatusOffline != null) {
        return isUserStatusOffline(this as o.UserStatusOffline);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserStatusRecently) {
      if (isUserStatusRecently != null) {
        return isUserStatusRecently(this as o.UserStatusRecently);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserStatusLastWeek) {
      if (isUserStatusLastWeek != null) {
        return isUserStatusLastWeek(this as o.UserStatusLastWeek);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserStatusLastMonth) {
      if (isUserStatusLastMonth != null) {
        return isUserStatusLastMonth(this as o.UserStatusLastMonth);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Stickers extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Stickers, TResult>? isStickers,
    Func1<Stickers, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Stickers) {
      if (isStickers != null) {
        return isStickers(this as o.Stickers);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Emojis extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Emojis, TResult>? isEmojis,
    Func1<Emojis, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Emojis) {
      if (isEmojis != null) {
        return isEmojis(this as o.Emojis);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class StickerSet extends b.TdBase {
  TResult match<TResult>({
    Func1<o.StickerSet, TResult>? isStickerSet,
    Func1<StickerSet, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StickerSet) {
      if (isStickerSet != null) {
        return isStickerSet(this as o.StickerSet);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class StickerSetInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.StickerSetInfo, TResult>? isStickerSetInfo,
    Func1<StickerSetInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StickerSetInfo) {
      if (isStickerSetInfo != null) {
        return isStickerSetInfo(this as o.StickerSetInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class StickerSets extends b.TdBase {
  TResult match<TResult>({
    Func1<o.StickerSets, TResult>? isStickerSets,
    Func1<StickerSets, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StickerSets) {
      if (isStickerSets != null) {
        return isStickerSets(this as o.StickerSets);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the reason why a call was discarded
abstract class CallDiscardReason extends b.TdBase {
  TResult match<TResult>({
    Func1<o.CallDiscardReasonEmpty, TResult>? isCallDiscardReasonEmpty,
    Func1<o.CallDiscardReasonMissed, TResult>? isCallDiscardReasonMissed,
    Func1<o.CallDiscardReasonDeclined, TResult>? isCallDiscardReasonDeclined,
    Func1<o.CallDiscardReasonDisconnected, TResult>? isCallDiscardReasonDisconnected,
    Func1<o.CallDiscardReasonHungUp, TResult>? isCallDiscardReasonHungUp,
    Func1<CallDiscardReason, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallDiscardReasonEmpty) {
      if (isCallDiscardReasonEmpty != null) {
        return isCallDiscardReasonEmpty(this as o.CallDiscardReasonEmpty);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallDiscardReasonMissed) {
      if (isCallDiscardReasonMissed != null) {
        return isCallDiscardReasonMissed(this as o.CallDiscardReasonMissed);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallDiscardReasonDeclined) {
      if (isCallDiscardReasonDeclined != null) {
        return isCallDiscardReasonDeclined(this as o.CallDiscardReasonDeclined);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallDiscardReasonDisconnected) {
      if (isCallDiscardReasonDisconnected != null) {
        return isCallDiscardReasonDisconnected(this as o.CallDiscardReasonDisconnected);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallDiscardReasonHungUp) {
      if (isCallDiscardReasonHungUp != null) {
        return isCallDiscardReasonHungUp(this as o.CallDiscardReasonHungUp);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class CallProtocol extends b.TdBase {
  TResult match<TResult>({
    Func1<o.CallProtocol, TResult>? isCallProtocol,
    Func1<CallProtocol, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallProtocol) {
      if (isCallProtocol != null) {
        return isCallProtocol(this as o.CallProtocol);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the type of a call server
abstract class CallServerType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.CallServerTypeTelegramReflector, TResult>? isCallServerTypeTelegramReflector,
    Func1<o.CallServerTypeWebrtc, TResult>? isCallServerTypeWebrtc,
    Func1<CallServerType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallServerTypeTelegramReflector) {
      if (isCallServerTypeTelegramReflector != null) {
        return isCallServerTypeTelegramReflector(this as o.CallServerTypeTelegramReflector);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallServerTypeWebrtc) {
      if (isCallServerTypeWebrtc != null) {
        return isCallServerTypeWebrtc(this as o.CallServerTypeWebrtc);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class CallServer extends b.TdBase {
  TResult match<TResult>({
    Func1<o.CallServer, TResult>? isCallServer,
    Func1<CallServer, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallServer) {
      if (isCallServer != null) {
        return isCallServer(this as o.CallServer);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class CallId extends b.TdBase {
  TResult match<TResult>({
    Func1<o.CallId, TResult>? isCallId,
    Func1<CallId, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallId) {
      if (isCallId != null) {
        return isCallId(this as o.CallId);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class GroupCallId extends b.TdBase {
  TResult match<TResult>({
    Func1<o.GroupCallId, TResult>? isGroupCallId,
    Func1<GroupCallId, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCallId) {
      if (isGroupCallId != null) {
        return isGroupCallId(this as o.GroupCallId);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the current call state
abstract class CallState extends b.TdBase {
  TResult match<TResult>({
    Func1<o.CallStatePending, TResult>? isCallStatePending,
    Func1<o.CallStateExchangingKeys, TResult>? isCallStateExchangingKeys,
    Func1<o.CallStateReady, TResult>? isCallStateReady,
    Func1<o.CallStateHangingUp, TResult>? isCallStateHangingUp,
    Func1<o.CallStateDiscarded, TResult>? isCallStateDiscarded,
    Func1<o.CallStateError, TResult>? isCallStateError,
    Func1<CallState, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallStatePending) {
      if (isCallStatePending != null) {
        return isCallStatePending(this as o.CallStatePending);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallStateExchangingKeys) {
      if (isCallStateExchangingKeys != null) {
        return isCallStateExchangingKeys(this as o.CallStateExchangingKeys);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallStateReady) {
      if (isCallStateReady != null) {
        return isCallStateReady(this as o.CallStateReady);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallStateHangingUp) {
      if (isCallStateHangingUp != null) {
        return isCallStateHangingUp(this as o.CallStateHangingUp);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallStateDiscarded) {
      if (isCallStateDiscarded != null) {
        return isCallStateDiscarded(this as o.CallStateDiscarded);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallStateError) {
      if (isCallStateError != null) {
        return isCallStateError(this as o.CallStateError);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class GroupCallRecentSpeaker extends b.TdBase {
  TResult match<TResult>({
    Func1<o.GroupCallRecentSpeaker, TResult>? isGroupCallRecentSpeaker,
    Func1<GroupCallRecentSpeaker, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCallRecentSpeaker) {
      if (isGroupCallRecentSpeaker != null) {
        return isGroupCallRecentSpeaker(this as o.GroupCallRecentSpeaker);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class GroupCall extends b.TdBase {
  TResult match<TResult>({
    Func1<o.GroupCall, TResult>? isGroupCall,
    Func1<GroupCall, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCall) {
      if (isGroupCall != null) {
        return isGroupCall(this as o.GroupCall);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class GroupCallPayloadFingerprint extends b.TdBase {
  TResult match<TResult>({
    Func1<o.GroupCallPayloadFingerprint, TResult>? isGroupCallPayloadFingerprint,
    Func1<GroupCallPayloadFingerprint, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCallPayloadFingerprint) {
      if (isGroupCallPayloadFingerprint != null) {
        return isGroupCallPayloadFingerprint(this as o.GroupCallPayloadFingerprint);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class GroupCallPayload extends b.TdBase {
  TResult match<TResult>({
    Func1<o.GroupCallPayload, TResult>? isGroupCallPayload,
    Func1<GroupCallPayload, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCallPayload) {
      if (isGroupCallPayload != null) {
        return isGroupCallPayload(this as o.GroupCallPayload);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class GroupCallJoinResponseCandidate extends b.TdBase {
  TResult match<TResult>({
    Func1<o.GroupCallJoinResponseCandidate, TResult>? isGroupCallJoinResponseCandidate,
    Func1<GroupCallJoinResponseCandidate, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCallJoinResponseCandidate) {
      if (isGroupCallJoinResponseCandidate != null) {
        return isGroupCallJoinResponseCandidate(this as o.GroupCallJoinResponseCandidate);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes a group call join response
abstract class GroupCallJoinResponse extends b.TdBase {
  TResult match<TResult>({
    Func1<o.GroupCallJoinResponseWebrtc, TResult>? isGroupCallJoinResponseWebrtc,
    Func1<o.GroupCallJoinResponseStream, TResult>? isGroupCallJoinResponseStream,
    Func1<GroupCallJoinResponse, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCallJoinResponseWebrtc) {
      if (isGroupCallJoinResponseWebrtc != null) {
        return isGroupCallJoinResponseWebrtc(this as o.GroupCallJoinResponseWebrtc);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.GroupCallJoinResponseStream) {
      if (isGroupCallJoinResponseStream != null) {
        return isGroupCallJoinResponseStream(this as o.GroupCallJoinResponseStream);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class GroupCallParticipant extends b.TdBase {
  TResult match<TResult>({
    Func1<o.GroupCallParticipant, TResult>? isGroupCallParticipant,
    Func1<GroupCallParticipant, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCallParticipant) {
      if (isGroupCallParticipant != null) {
        return isGroupCallParticipant(this as o.GroupCallParticipant);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the exact type of a problem with a call
abstract class CallProblem extends b.TdBase {
  TResult match<TResult>({
    Func1<o.CallProblemEcho, TResult>? isCallProblemEcho,
    Func1<o.CallProblemNoise, TResult>? isCallProblemNoise,
    Func1<o.CallProblemInterruptions, TResult>? isCallProblemInterruptions,
    Func1<o.CallProblemDistortedSpeech, TResult>? isCallProblemDistortedSpeech,
    Func1<o.CallProblemSilentLocal, TResult>? isCallProblemSilentLocal,
    Func1<o.CallProblemSilentRemote, TResult>? isCallProblemSilentRemote,
    Func1<o.CallProblemDropped, TResult>? isCallProblemDropped,
    Func1<o.CallProblemDistortedVideo, TResult>? isCallProblemDistortedVideo,
    Func1<o.CallProblemPixelatedVideo, TResult>? isCallProblemPixelatedVideo,
    Func1<CallProblem, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallProblemEcho) {
      if (isCallProblemEcho != null) {
        return isCallProblemEcho(this as o.CallProblemEcho);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallProblemNoise) {
      if (isCallProblemNoise != null) {
        return isCallProblemNoise(this as o.CallProblemNoise);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallProblemInterruptions) {
      if (isCallProblemInterruptions != null) {
        return isCallProblemInterruptions(this as o.CallProblemInterruptions);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallProblemDistortedSpeech) {
      if (isCallProblemDistortedSpeech != null) {
        return isCallProblemDistortedSpeech(this as o.CallProblemDistortedSpeech);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallProblemSilentLocal) {
      if (isCallProblemSilentLocal != null) {
        return isCallProblemSilentLocal(this as o.CallProblemSilentLocal);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallProblemSilentRemote) {
      if (isCallProblemSilentRemote != null) {
        return isCallProblemSilentRemote(this as o.CallProblemSilentRemote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallProblemDropped) {
      if (isCallProblemDropped != null) {
        return isCallProblemDropped(this as o.CallProblemDropped);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallProblemDistortedVideo) {
      if (isCallProblemDistortedVideo != null) {
        return isCallProblemDistortedVideo(this as o.CallProblemDistortedVideo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallProblemPixelatedVideo) {
      if (isCallProblemPixelatedVideo != null) {
        return isCallProblemPixelatedVideo(this as o.CallProblemPixelatedVideo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Call extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Call, TResult>? isCall,
    Func1<Call, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Call) {
      if (isCall != null) {
        return isCall(this as o.Call);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PhoneNumberAuthenticationSettings extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PhoneNumberAuthenticationSettings, TResult>? isPhoneNumberAuthenticationSettings,
    Func1<PhoneNumberAuthenticationSettings, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PhoneNumberAuthenticationSettings) {
      if (isPhoneNumberAuthenticationSettings != null) {
        return isPhoneNumberAuthenticationSettings(this as o.PhoneNumberAuthenticationSettings);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Animations extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Animations, TResult>? isAnimations,
    Func1<Animations, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Animations) {
      if (isAnimations != null) {
        return isAnimations(this as o.Animations);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains animated stickers which should be used for dice animation rendering
abstract class DiceStickers extends b.TdBase {
  TResult match<TResult>({
    Func1<o.DiceStickersRegular, TResult>? isDiceStickersRegular,
    Func1<o.DiceStickersSlotMachine, TResult>? isDiceStickersSlotMachine,
    Func1<DiceStickers, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.DiceStickersRegular) {
      if (isDiceStickersRegular != null) {
        return isDiceStickersRegular(this as o.DiceStickersRegular);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.DiceStickersSlotMachine) {
      if (isDiceStickersSlotMachine != null) {
        return isDiceStickersSlotMachine(this as o.DiceStickersSlotMachine);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ImportedContacts extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ImportedContacts, TResult>? isImportedContacts,
    Func1<ImportedContacts, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ImportedContacts) {
      if (isImportedContacts != null) {
        return isImportedContacts(this as o.ImportedContacts);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class HttpUrl extends b.TdBase {
  TResult match<TResult>({
    Func1<o.HttpUrl, TResult>? isHttpUrl,
    Func1<HttpUrl, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.HttpUrl) {
      if (isHttpUrl != null) {
        return isHttpUrl(this as o.HttpUrl);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents a single result of an inline query; for bots only
abstract class InputInlineQueryResult extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InputInlineQueryResultAnimation, TResult>? isInputInlineQueryResultAnimation,
    Func1<o.InputInlineQueryResultArticle, TResult>? isInputInlineQueryResultArticle,
    Func1<o.InputInlineQueryResultAudio, TResult>? isInputInlineQueryResultAudio,
    Func1<o.InputInlineQueryResultContact, TResult>? isInputInlineQueryResultContact,
    Func1<o.InputInlineQueryResultDocument, TResult>? isInputInlineQueryResultDocument,
    Func1<o.InputInlineQueryResultGame, TResult>? isInputInlineQueryResultGame,
    Func1<o.InputInlineQueryResultLocation, TResult>? isInputInlineQueryResultLocation,
    Func1<o.InputInlineQueryResultPhoto, TResult>? isInputInlineQueryResultPhoto,
    Func1<o.InputInlineQueryResultSticker, TResult>? isInputInlineQueryResultSticker,
    Func1<o.InputInlineQueryResultVenue, TResult>? isInputInlineQueryResultVenue,
    Func1<o.InputInlineQueryResultVideo, TResult>? isInputInlineQueryResultVideo,
    Func1<o.InputInlineQueryResultVoiceNote, TResult>? isInputInlineQueryResultVoiceNote,
    Func1<InputInlineQueryResult, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputInlineQueryResultAnimation) {
      if (isInputInlineQueryResultAnimation != null) {
        return isInputInlineQueryResultAnimation(this as o.InputInlineQueryResultAnimation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultArticle) {
      if (isInputInlineQueryResultArticle != null) {
        return isInputInlineQueryResultArticle(this as o.InputInlineQueryResultArticle);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultAudio) {
      if (isInputInlineQueryResultAudio != null) {
        return isInputInlineQueryResultAudio(this as o.InputInlineQueryResultAudio);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultContact) {
      if (isInputInlineQueryResultContact != null) {
        return isInputInlineQueryResultContact(this as o.InputInlineQueryResultContact);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultDocument) {
      if (isInputInlineQueryResultDocument != null) {
        return isInputInlineQueryResultDocument(this as o.InputInlineQueryResultDocument);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultGame) {
      if (isInputInlineQueryResultGame != null) {
        return isInputInlineQueryResultGame(this as o.InputInlineQueryResultGame);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultLocation) {
      if (isInputInlineQueryResultLocation != null) {
        return isInputInlineQueryResultLocation(this as o.InputInlineQueryResultLocation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultPhoto) {
      if (isInputInlineQueryResultPhoto != null) {
        return isInputInlineQueryResultPhoto(this as o.InputInlineQueryResultPhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultSticker) {
      if (isInputInlineQueryResultSticker != null) {
        return isInputInlineQueryResultSticker(this as o.InputInlineQueryResultSticker);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultVenue) {
      if (isInputInlineQueryResultVenue != null) {
        return isInputInlineQueryResultVenue(this as o.InputInlineQueryResultVenue);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultVideo) {
      if (isInputInlineQueryResultVideo != null) {
        return isInputInlineQueryResultVideo(this as o.InputInlineQueryResultVideo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultVoiceNote) {
      if (isInputInlineQueryResultVoiceNote != null) {
        return isInputInlineQueryResultVoiceNote(this as o.InputInlineQueryResultVoiceNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents a single result of an inline query
abstract class InlineQueryResult extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InlineQueryResultArticle, TResult>? isInlineQueryResultArticle,
    Func1<o.InlineQueryResultContact, TResult>? isInlineQueryResultContact,
    Func1<o.InlineQueryResultLocation, TResult>? isInlineQueryResultLocation,
    Func1<o.InlineQueryResultVenue, TResult>? isInlineQueryResultVenue,
    Func1<o.InlineQueryResultGame, TResult>? isInlineQueryResultGame,
    Func1<o.InlineQueryResultAnimation, TResult>? isInlineQueryResultAnimation,
    Func1<o.InlineQueryResultAudio, TResult>? isInlineQueryResultAudio,
    Func1<o.InlineQueryResultDocument, TResult>? isInlineQueryResultDocument,
    Func1<o.InlineQueryResultPhoto, TResult>? isInlineQueryResultPhoto,
    Func1<o.InlineQueryResultSticker, TResult>? isInlineQueryResultSticker,
    Func1<o.InlineQueryResultVideo, TResult>? isInlineQueryResultVideo,
    Func1<o.InlineQueryResultVoiceNote, TResult>? isInlineQueryResultVoiceNote,
    Func1<InlineQueryResult, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InlineQueryResultArticle) {
      if (isInlineQueryResultArticle != null) {
        return isInlineQueryResultArticle(this as o.InlineQueryResultArticle);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultContact) {
      if (isInlineQueryResultContact != null) {
        return isInlineQueryResultContact(this as o.InlineQueryResultContact);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultLocation) {
      if (isInlineQueryResultLocation != null) {
        return isInlineQueryResultLocation(this as o.InlineQueryResultLocation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultVenue) {
      if (isInlineQueryResultVenue != null) {
        return isInlineQueryResultVenue(this as o.InlineQueryResultVenue);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultGame) {
      if (isInlineQueryResultGame != null) {
        return isInlineQueryResultGame(this as o.InlineQueryResultGame);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultAnimation) {
      if (isInlineQueryResultAnimation != null) {
        return isInlineQueryResultAnimation(this as o.InlineQueryResultAnimation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultAudio) {
      if (isInlineQueryResultAudio != null) {
        return isInlineQueryResultAudio(this as o.InlineQueryResultAudio);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultDocument) {
      if (isInlineQueryResultDocument != null) {
        return isInlineQueryResultDocument(this as o.InlineQueryResultDocument);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultPhoto) {
      if (isInlineQueryResultPhoto != null) {
        return isInlineQueryResultPhoto(this as o.InlineQueryResultPhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultSticker) {
      if (isInlineQueryResultSticker != null) {
        return isInlineQueryResultSticker(this as o.InlineQueryResultSticker);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultVideo) {
      if (isInlineQueryResultVideo != null) {
        return isInlineQueryResultVideo(this as o.InlineQueryResultVideo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultVoiceNote) {
      if (isInlineQueryResultVoiceNote != null) {
        return isInlineQueryResultVoiceNote(this as o.InlineQueryResultVoiceNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class InlineQueryResults extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InlineQueryResults, TResult>? isInlineQueryResults,
    Func1<InlineQueryResults, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InlineQueryResults) {
      if (isInlineQueryResults != null) {
        return isInlineQueryResults(this as o.InlineQueryResults);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents a payload of a callback query
abstract class CallbackQueryPayload extends b.TdBase {
  TResult match<TResult>({
    Func1<o.CallbackQueryPayloadData, TResult>? isCallbackQueryPayloadData,
    Func1<o.CallbackQueryPayloadDataWithPassword, TResult>? isCallbackQueryPayloadDataWithPassword,
    Func1<o.CallbackQueryPayloadGame, TResult>? isCallbackQueryPayloadGame,
    Func1<CallbackQueryPayload, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallbackQueryPayloadData) {
      if (isCallbackQueryPayloadData != null) {
        return isCallbackQueryPayloadData(this as o.CallbackQueryPayloadData);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallbackQueryPayloadDataWithPassword) {
      if (isCallbackQueryPayloadDataWithPassword != null) {
        return isCallbackQueryPayloadDataWithPassword(this as o.CallbackQueryPayloadDataWithPassword);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CallbackQueryPayloadGame) {
      if (isCallbackQueryPayloadGame != null) {
        return isCallbackQueryPayloadGame(this as o.CallbackQueryPayloadGame);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class CallbackQueryAnswer extends b.TdBase {
  TResult match<TResult>({
    Func1<o.CallbackQueryAnswer, TResult>? isCallbackQueryAnswer,
    Func1<CallbackQueryAnswer, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallbackQueryAnswer) {
      if (isCallbackQueryAnswer != null) {
        return isCallbackQueryAnswer(this as o.CallbackQueryAnswer);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class CustomRequestResult extends b.TdBase {
  TResult match<TResult>({
    Func1<o.CustomRequestResult, TResult>? isCustomRequestResult,
    Func1<CustomRequestResult, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CustomRequestResult) {
      if (isCustomRequestResult != null) {
        return isCustomRequestResult(this as o.CustomRequestResult);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class GameHighScore extends b.TdBase {
  TResult match<TResult>({
    Func1<o.GameHighScore, TResult>? isGameHighScore,
    Func1<GameHighScore, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GameHighScore) {
      if (isGameHighScore != null) {
        return isGameHighScore(this as o.GameHighScore);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class GameHighScores extends b.TdBase {
  TResult match<TResult>({
    Func1<o.GameHighScores, TResult>? isGameHighScores,
    Func1<GameHighScores, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GameHighScores) {
      if (isGameHighScores != null) {
        return isGameHighScores(this as o.GameHighScores);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents a chat event
abstract class ChatEventAction extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatEventMessageEdited, TResult>? isChatEventMessageEdited,
    Func1<o.ChatEventMessageDeleted, TResult>? isChatEventMessageDeleted,
    Func1<o.ChatEventPollStopped, TResult>? isChatEventPollStopped,
    Func1<o.ChatEventMessagePinned, TResult>? isChatEventMessagePinned,
    Func1<o.ChatEventMessageUnpinned, TResult>? isChatEventMessageUnpinned,
    Func1<o.ChatEventMemberJoined, TResult>? isChatEventMemberJoined,
    Func1<o.ChatEventMemberJoinedByInviteLink, TResult>? isChatEventMemberJoinedByInviteLink,
    Func1<o.ChatEventMemberLeft, TResult>? isChatEventMemberLeft,
    Func1<o.ChatEventMemberInvited, TResult>? isChatEventMemberInvited,
    Func1<o.ChatEventMemberPromoted, TResult>? isChatEventMemberPromoted,
    Func1<o.ChatEventMemberRestricted, TResult>? isChatEventMemberRestricted,
    Func1<o.ChatEventTitleChanged, TResult>? isChatEventTitleChanged,
    Func1<o.ChatEventPermissionsChanged, TResult>? isChatEventPermissionsChanged,
    Func1<o.ChatEventDescriptionChanged, TResult>? isChatEventDescriptionChanged,
    Func1<o.ChatEventUsernameChanged, TResult>? isChatEventUsernameChanged,
    Func1<o.ChatEventPhotoChanged, TResult>? isChatEventPhotoChanged,
    Func1<o.ChatEventInvitesToggled, TResult>? isChatEventInvitesToggled,
    Func1<o.ChatEventLinkedChatChanged, TResult>? isChatEventLinkedChatChanged,
    Func1<o.ChatEventSlowModeDelayChanged, TResult>? isChatEventSlowModeDelayChanged,
    Func1<o.ChatEventMessageTtlSettingChanged, TResult>? isChatEventMessageTtlSettingChanged,
    Func1<o.ChatEventSignMessagesToggled, TResult>? isChatEventSignMessagesToggled,
    Func1<o.ChatEventStickerSetChanged, TResult>? isChatEventStickerSetChanged,
    Func1<o.ChatEventLocationChanged, TResult>? isChatEventLocationChanged,
    Func1<o.ChatEventIsAllHistoryAvailableToggled, TResult>? isChatEventIsAllHistoryAvailableToggled,
    Func1<o.ChatEventInviteLinkEdited, TResult>? isChatEventInviteLinkEdited,
    Func1<o.ChatEventInviteLinkRevoked, TResult>? isChatEventInviteLinkRevoked,
    Func1<o.ChatEventInviteLinkDeleted, TResult>? isChatEventInviteLinkDeleted,
    Func1<o.ChatEventVoiceChatCreated, TResult>? isChatEventVoiceChatCreated,
    Func1<o.ChatEventVoiceChatDiscarded, TResult>? isChatEventVoiceChatDiscarded,
    Func1<o.ChatEventVoiceChatParticipantIsMutedToggled, TResult>? isChatEventVoiceChatParticipantIsMutedToggled,
    Func1<o.ChatEventVoiceChatParticipantVolumeLevelChanged, TResult>? isChatEventVoiceChatParticipantVolumeLevelChanged,
    Func1<o.ChatEventVoiceChatMuteNewParticipantsToggled, TResult>? isChatEventVoiceChatMuteNewParticipantsToggled,
    Func1<ChatEventAction, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatEventMessageEdited) {
      if (isChatEventMessageEdited != null) {
        return isChatEventMessageEdited(this as o.ChatEventMessageEdited);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventMessageDeleted) {
      if (isChatEventMessageDeleted != null) {
        return isChatEventMessageDeleted(this as o.ChatEventMessageDeleted);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventPollStopped) {
      if (isChatEventPollStopped != null) {
        return isChatEventPollStopped(this as o.ChatEventPollStopped);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventMessagePinned) {
      if (isChatEventMessagePinned != null) {
        return isChatEventMessagePinned(this as o.ChatEventMessagePinned);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventMessageUnpinned) {
      if (isChatEventMessageUnpinned != null) {
        return isChatEventMessageUnpinned(this as o.ChatEventMessageUnpinned);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventMemberJoined) {
      if (isChatEventMemberJoined != null) {
        return isChatEventMemberJoined(this as o.ChatEventMemberJoined);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventMemberJoinedByInviteLink) {
      if (isChatEventMemberJoinedByInviteLink != null) {
        return isChatEventMemberJoinedByInviteLink(this as o.ChatEventMemberJoinedByInviteLink);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventMemberLeft) {
      if (isChatEventMemberLeft != null) {
        return isChatEventMemberLeft(this as o.ChatEventMemberLeft);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventMemberInvited) {
      if (isChatEventMemberInvited != null) {
        return isChatEventMemberInvited(this as o.ChatEventMemberInvited);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventMemberPromoted) {
      if (isChatEventMemberPromoted != null) {
        return isChatEventMemberPromoted(this as o.ChatEventMemberPromoted);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventMemberRestricted) {
      if (isChatEventMemberRestricted != null) {
        return isChatEventMemberRestricted(this as o.ChatEventMemberRestricted);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventTitleChanged) {
      if (isChatEventTitleChanged != null) {
        return isChatEventTitleChanged(this as o.ChatEventTitleChanged);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventPermissionsChanged) {
      if (isChatEventPermissionsChanged != null) {
        return isChatEventPermissionsChanged(this as o.ChatEventPermissionsChanged);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventDescriptionChanged) {
      if (isChatEventDescriptionChanged != null) {
        return isChatEventDescriptionChanged(this as o.ChatEventDescriptionChanged);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventUsernameChanged) {
      if (isChatEventUsernameChanged != null) {
        return isChatEventUsernameChanged(this as o.ChatEventUsernameChanged);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventPhotoChanged) {
      if (isChatEventPhotoChanged != null) {
        return isChatEventPhotoChanged(this as o.ChatEventPhotoChanged);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventInvitesToggled) {
      if (isChatEventInvitesToggled != null) {
        return isChatEventInvitesToggled(this as o.ChatEventInvitesToggled);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventLinkedChatChanged) {
      if (isChatEventLinkedChatChanged != null) {
        return isChatEventLinkedChatChanged(this as o.ChatEventLinkedChatChanged);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventSlowModeDelayChanged) {
      if (isChatEventSlowModeDelayChanged != null) {
        return isChatEventSlowModeDelayChanged(this as o.ChatEventSlowModeDelayChanged);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventMessageTtlSettingChanged) {
      if (isChatEventMessageTtlSettingChanged != null) {
        return isChatEventMessageTtlSettingChanged(this as o.ChatEventMessageTtlSettingChanged);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventSignMessagesToggled) {
      if (isChatEventSignMessagesToggled != null) {
        return isChatEventSignMessagesToggled(this as o.ChatEventSignMessagesToggled);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventStickerSetChanged) {
      if (isChatEventStickerSetChanged != null) {
        return isChatEventStickerSetChanged(this as o.ChatEventStickerSetChanged);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventLocationChanged) {
      if (isChatEventLocationChanged != null) {
        return isChatEventLocationChanged(this as o.ChatEventLocationChanged);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventIsAllHistoryAvailableToggled) {
      if (isChatEventIsAllHistoryAvailableToggled != null) {
        return isChatEventIsAllHistoryAvailableToggled(this as o.ChatEventIsAllHistoryAvailableToggled);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventInviteLinkEdited) {
      if (isChatEventInviteLinkEdited != null) {
        return isChatEventInviteLinkEdited(this as o.ChatEventInviteLinkEdited);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventInviteLinkRevoked) {
      if (isChatEventInviteLinkRevoked != null) {
        return isChatEventInviteLinkRevoked(this as o.ChatEventInviteLinkRevoked);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventInviteLinkDeleted) {
      if (isChatEventInviteLinkDeleted != null) {
        return isChatEventInviteLinkDeleted(this as o.ChatEventInviteLinkDeleted);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventVoiceChatCreated) {
      if (isChatEventVoiceChatCreated != null) {
        return isChatEventVoiceChatCreated(this as o.ChatEventVoiceChatCreated);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventVoiceChatDiscarded) {
      if (isChatEventVoiceChatDiscarded != null) {
        return isChatEventVoiceChatDiscarded(this as o.ChatEventVoiceChatDiscarded);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventVoiceChatParticipantIsMutedToggled) {
      if (isChatEventVoiceChatParticipantIsMutedToggled != null) {
        return isChatEventVoiceChatParticipantIsMutedToggled(this as o.ChatEventVoiceChatParticipantIsMutedToggled);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventVoiceChatParticipantVolumeLevelChanged) {
      if (isChatEventVoiceChatParticipantVolumeLevelChanged != null) {
        return isChatEventVoiceChatParticipantVolumeLevelChanged(this as o.ChatEventVoiceChatParticipantVolumeLevelChanged);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatEventVoiceChatMuteNewParticipantsToggled) {
      if (isChatEventVoiceChatMuteNewParticipantsToggled != null) {
        return isChatEventVoiceChatMuteNewParticipantsToggled(this as o.ChatEventVoiceChatMuteNewParticipantsToggled);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatEvent extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatEvent, TResult>? isChatEvent,
    Func1<ChatEvent, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatEvent) {
      if (isChatEvent != null) {
        return isChatEvent(this as o.ChatEvent);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatEvents extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatEvents, TResult>? isChatEvents,
    Func1<ChatEvents, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatEvents) {
      if (isChatEvents != null) {
        return isChatEvents(this as o.ChatEvents);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatEventLogFilters extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatEventLogFilters, TResult>? isChatEventLogFilters,
    Func1<ChatEventLogFilters, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatEventLogFilters) {
      if (isChatEventLogFilters != null) {
        return isChatEventLogFilters(this as o.ChatEventLogFilters);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents the value of a string in a language pack
abstract class LanguagePackStringValue extends b.TdBase {
  TResult match<TResult>({
    Func1<o.LanguagePackStringValueOrdinary, TResult>? isLanguagePackStringValueOrdinary,
    Func1<o.LanguagePackStringValuePluralized, TResult>? isLanguagePackStringValuePluralized,
    Func1<o.LanguagePackStringValueDeleted, TResult>? isLanguagePackStringValueDeleted,
    Func1<LanguagePackStringValue, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LanguagePackStringValueOrdinary) {
      if (isLanguagePackStringValueOrdinary != null) {
        return isLanguagePackStringValueOrdinary(this as o.LanguagePackStringValueOrdinary);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.LanguagePackStringValuePluralized) {
      if (isLanguagePackStringValuePluralized != null) {
        return isLanguagePackStringValuePluralized(this as o.LanguagePackStringValuePluralized);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.LanguagePackStringValueDeleted) {
      if (isLanguagePackStringValueDeleted != null) {
        return isLanguagePackStringValueDeleted(this as o.LanguagePackStringValueDeleted);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class LanguagePackString extends b.TdBase {
  TResult match<TResult>({
    Func1<o.LanguagePackString, TResult>? isLanguagePackString,
    Func1<LanguagePackString, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LanguagePackString) {
      if (isLanguagePackString != null) {
        return isLanguagePackString(this as o.LanguagePackString);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class LanguagePackStrings extends b.TdBase {
  TResult match<TResult>({
    Func1<o.LanguagePackStrings, TResult>? isLanguagePackStrings,
    Func1<LanguagePackStrings, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LanguagePackStrings) {
      if (isLanguagePackStrings != null) {
        return isLanguagePackStrings(this as o.LanguagePackStrings);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class LanguagePackInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.LanguagePackInfo, TResult>? isLanguagePackInfo,
    Func1<LanguagePackInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LanguagePackInfo) {
      if (isLanguagePackInfo != null) {
        return isLanguagePackInfo(this as o.LanguagePackInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class LocalizationTargetInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.LocalizationTargetInfo, TResult>? isLocalizationTargetInfo,
    Func1<LocalizationTargetInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LocalizationTargetInfo) {
      if (isLocalizationTargetInfo != null) {
        return isLocalizationTargetInfo(this as o.LocalizationTargetInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents a data needed to subscribe for push notifications through registerDevice method. To use specific push notification service, the correct application platform must be specified and a valid server authentication data must be uploaded at https://my.telegram.org
abstract class DeviceToken extends b.TdBase {
  TResult match<TResult>({
    Func1<o.DeviceTokenFirebaseCloudMessaging, TResult>? isDeviceTokenFirebaseCloudMessaging,
    Func1<o.DeviceTokenApplePush, TResult>? isDeviceTokenApplePush,
    Func1<o.DeviceTokenApplePushVoIP, TResult>? isDeviceTokenApplePushVoIP,
    Func1<o.DeviceTokenWindowsPush, TResult>? isDeviceTokenWindowsPush,
    Func1<o.DeviceTokenMicrosoftPush, TResult>? isDeviceTokenMicrosoftPush,
    Func1<o.DeviceTokenMicrosoftPushVoIP, TResult>? isDeviceTokenMicrosoftPushVoIP,
    Func1<o.DeviceTokenWebPush, TResult>? isDeviceTokenWebPush,
    Func1<o.DeviceTokenSimplePush, TResult>? isDeviceTokenSimplePush,
    Func1<o.DeviceTokenUbuntuPush, TResult>? isDeviceTokenUbuntuPush,
    Func1<o.DeviceTokenBlackBerryPush, TResult>? isDeviceTokenBlackBerryPush,
    Func1<o.DeviceTokenTizenPush, TResult>? isDeviceTokenTizenPush,
    Func1<DeviceToken, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.DeviceTokenFirebaseCloudMessaging) {
      if (isDeviceTokenFirebaseCloudMessaging != null) {
        return isDeviceTokenFirebaseCloudMessaging(this as o.DeviceTokenFirebaseCloudMessaging);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.DeviceTokenApplePush) {
      if (isDeviceTokenApplePush != null) {
        return isDeviceTokenApplePush(this as o.DeviceTokenApplePush);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.DeviceTokenApplePushVoIP) {
      if (isDeviceTokenApplePushVoIP != null) {
        return isDeviceTokenApplePushVoIP(this as o.DeviceTokenApplePushVoIP);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.DeviceTokenWindowsPush) {
      if (isDeviceTokenWindowsPush != null) {
        return isDeviceTokenWindowsPush(this as o.DeviceTokenWindowsPush);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.DeviceTokenMicrosoftPush) {
      if (isDeviceTokenMicrosoftPush != null) {
        return isDeviceTokenMicrosoftPush(this as o.DeviceTokenMicrosoftPush);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.DeviceTokenMicrosoftPushVoIP) {
      if (isDeviceTokenMicrosoftPushVoIP != null) {
        return isDeviceTokenMicrosoftPushVoIP(this as o.DeviceTokenMicrosoftPushVoIP);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.DeviceTokenWebPush) {
      if (isDeviceTokenWebPush != null) {
        return isDeviceTokenWebPush(this as o.DeviceTokenWebPush);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.DeviceTokenSimplePush) {
      if (isDeviceTokenSimplePush != null) {
        return isDeviceTokenSimplePush(this as o.DeviceTokenSimplePush);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.DeviceTokenUbuntuPush) {
      if (isDeviceTokenUbuntuPush != null) {
        return isDeviceTokenUbuntuPush(this as o.DeviceTokenUbuntuPush);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.DeviceTokenBlackBerryPush) {
      if (isDeviceTokenBlackBerryPush != null) {
        return isDeviceTokenBlackBerryPush(this as o.DeviceTokenBlackBerryPush);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.DeviceTokenTizenPush) {
      if (isDeviceTokenTizenPush != null) {
        return isDeviceTokenTizenPush(this as o.DeviceTokenTizenPush);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class PushReceiverId extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PushReceiverId, TResult>? isPushReceiverId,
    Func1<PushReceiverId, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PushReceiverId) {
      if (isPushReceiverId != null) {
        return isPushReceiverId(this as o.PushReceiverId);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes a fill of a background
abstract class BackgroundFill extends b.TdBase {
  TResult match<TResult>({
    Func1<o.BackgroundFillSolid, TResult>? isBackgroundFillSolid,
    Func1<o.BackgroundFillGradient, TResult>? isBackgroundFillGradient,
    Func1<BackgroundFill, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BackgroundFillSolid) {
      if (isBackgroundFillSolid != null) {
        return isBackgroundFillSolid(this as o.BackgroundFillSolid);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.BackgroundFillGradient) {
      if (isBackgroundFillGradient != null) {
        return isBackgroundFillGradient(this as o.BackgroundFillGradient);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the type of a background
abstract class BackgroundType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.BackgroundTypeWallpaper, TResult>? isBackgroundTypeWallpaper,
    Func1<o.BackgroundTypePattern, TResult>? isBackgroundTypePattern,
    Func1<o.BackgroundTypeFill, TResult>? isBackgroundTypeFill,
    Func1<BackgroundType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BackgroundTypeWallpaper) {
      if (isBackgroundTypeWallpaper != null) {
        return isBackgroundTypeWallpaper(this as o.BackgroundTypeWallpaper);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.BackgroundTypePattern) {
      if (isBackgroundTypePattern != null) {
        return isBackgroundTypePattern(this as o.BackgroundTypePattern);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.BackgroundTypeFill) {
      if (isBackgroundTypeFill != null) {
        return isBackgroundTypeFill(this as o.BackgroundTypeFill);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Background extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Background, TResult>? isBackground,
    Func1<Background, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Background) {
      if (isBackground != null) {
        return isBackground(this as o.Background);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Backgrounds extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Backgrounds, TResult>? isBackgrounds,
    Func1<Backgrounds, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Backgrounds) {
      if (isBackgrounds != null) {
        return isBackgrounds(this as o.Backgrounds);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains information about background to set
abstract class InputBackground extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InputBackgroundLocal, TResult>? isInputBackgroundLocal,
    Func1<o.InputBackgroundRemote, TResult>? isInputBackgroundRemote,
    Func1<InputBackground, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputBackgroundLocal) {
      if (isInputBackgroundLocal != null) {
        return isInputBackgroundLocal(this as o.InputBackgroundLocal);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputBackgroundRemote) {
      if (isInputBackgroundRemote != null) {
        return isInputBackgroundRemote(this as o.InputBackgroundRemote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Hashtags extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Hashtags, TResult>? isHashtags,
    Func1<Hashtags, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Hashtags) {
      if (isHashtags != null) {
        return isHashtags(this as o.Hashtags);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents result of checking whether the current session can be used to transfer a chat ownership to another user
abstract class CanTransferOwnershipResult extends b.TdBase {
  TResult match<TResult>({
    Func1<o.CanTransferOwnershipResultOk, TResult>? isCanTransferOwnershipResultOk,
    Func1<o.CanTransferOwnershipResultPasswordNeeded, TResult>? isCanTransferOwnershipResultPasswordNeeded,
    Func1<o.CanTransferOwnershipResultPasswordTooFresh, TResult>? isCanTransferOwnershipResultPasswordTooFresh,
    Func1<o.CanTransferOwnershipResultSessionTooFresh, TResult>? isCanTransferOwnershipResultSessionTooFresh,
    Func1<CanTransferOwnershipResult, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CanTransferOwnershipResultOk) {
      if (isCanTransferOwnershipResultOk != null) {
        return isCanTransferOwnershipResultOk(this as o.CanTransferOwnershipResultOk);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CanTransferOwnershipResultPasswordNeeded) {
      if (isCanTransferOwnershipResultPasswordNeeded != null) {
        return isCanTransferOwnershipResultPasswordNeeded(this as o.CanTransferOwnershipResultPasswordNeeded);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CanTransferOwnershipResultPasswordTooFresh) {
      if (isCanTransferOwnershipResultPasswordTooFresh != null) {
        return isCanTransferOwnershipResultPasswordTooFresh(this as o.CanTransferOwnershipResultPasswordTooFresh);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CanTransferOwnershipResultSessionTooFresh) {
      if (isCanTransferOwnershipResultSessionTooFresh != null) {
        return isCanTransferOwnershipResultSessionTooFresh(this as o.CanTransferOwnershipResultSessionTooFresh);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents result of checking whether a username can be set for a chat
abstract class CheckChatUsernameResult extends b.TdBase {
  TResult match<TResult>({
    Func1<o.CheckChatUsernameResultOk, TResult>? isCheckChatUsernameResultOk,
    Func1<o.CheckChatUsernameResultUsernameInvalid, TResult>? isCheckChatUsernameResultUsernameInvalid,
    Func1<o.CheckChatUsernameResultUsernameOccupied, TResult>? isCheckChatUsernameResultUsernameOccupied,
    Func1<o.CheckChatUsernameResultPublicChatsTooMuch, TResult>? isCheckChatUsernameResultPublicChatsTooMuch,
    Func1<o.CheckChatUsernameResultPublicGroupsUnavailable, TResult>? isCheckChatUsernameResultPublicGroupsUnavailable,
    Func1<CheckChatUsernameResult, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CheckChatUsernameResultOk) {
      if (isCheckChatUsernameResultOk != null) {
        return isCheckChatUsernameResultOk(this as o.CheckChatUsernameResultOk);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CheckChatUsernameResultUsernameInvalid) {
      if (isCheckChatUsernameResultUsernameInvalid != null) {
        return isCheckChatUsernameResultUsernameInvalid(this as o.CheckChatUsernameResultUsernameInvalid);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CheckChatUsernameResultUsernameOccupied) {
      if (isCheckChatUsernameResultUsernameOccupied != null) {
        return isCheckChatUsernameResultUsernameOccupied(this as o.CheckChatUsernameResultUsernameOccupied);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CheckChatUsernameResultPublicChatsTooMuch) {
      if (isCheckChatUsernameResultPublicChatsTooMuch != null) {
        return isCheckChatUsernameResultPublicChatsTooMuch(this as o.CheckChatUsernameResultPublicChatsTooMuch);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.CheckChatUsernameResultPublicGroupsUnavailable) {
      if (isCheckChatUsernameResultPublicGroupsUnavailable != null) {
        return isCheckChatUsernameResultPublicGroupsUnavailable(this as o.CheckChatUsernameResultPublicGroupsUnavailable);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains information about a file with messages exported from another app
abstract class MessageFileType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageFileTypePrivate, TResult>? isMessageFileTypePrivate,
    Func1<o.MessageFileTypeGroup, TResult>? isMessageFileTypeGroup,
    Func1<o.MessageFileTypeUnknown, TResult>? isMessageFileTypeUnknown,
    Func1<MessageFileType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageFileTypePrivate) {
      if (isMessageFileTypePrivate != null) {
        return isMessageFileTypePrivate(this as o.MessageFileTypePrivate);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageFileTypeGroup) {
      if (isMessageFileTypeGroup != null) {
        return isMessageFileTypeGroup(this as o.MessageFileTypeGroup);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.MessageFileTypeUnknown) {
      if (isMessageFileTypeUnknown != null) {
        return isMessageFileTypeUnknown(this as o.MessageFileTypeUnknown);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains content of a push message notification
abstract class PushMessageContent extends b.TdBase {
  TResult match<TResult>({
    Func1<o.PushMessageContentHidden, TResult>? isPushMessageContentHidden,
    Func1<o.PushMessageContentAnimation, TResult>? isPushMessageContentAnimation,
    Func1<o.PushMessageContentAudio, TResult>? isPushMessageContentAudio,
    Func1<o.PushMessageContentContact, TResult>? isPushMessageContentContact,
    Func1<o.PushMessageContentContactRegistered, TResult>? isPushMessageContentContactRegistered,
    Func1<o.PushMessageContentDocument, TResult>? isPushMessageContentDocument,
    Func1<o.PushMessageContentGame, TResult>? isPushMessageContentGame,
    Func1<o.PushMessageContentGameScore, TResult>? isPushMessageContentGameScore,
    Func1<o.PushMessageContentInvoice, TResult>? isPushMessageContentInvoice,
    Func1<o.PushMessageContentLocation, TResult>? isPushMessageContentLocation,
    Func1<o.PushMessageContentPhoto, TResult>? isPushMessageContentPhoto,
    Func1<o.PushMessageContentPoll, TResult>? isPushMessageContentPoll,
    Func1<o.PushMessageContentScreenshotTaken, TResult>? isPushMessageContentScreenshotTaken,
    Func1<o.PushMessageContentSticker, TResult>? isPushMessageContentSticker,
    Func1<o.PushMessageContentText, TResult>? isPushMessageContentText,
    Func1<o.PushMessageContentVideo, TResult>? isPushMessageContentVideo,
    Func1<o.PushMessageContentVideoNote, TResult>? isPushMessageContentVideoNote,
    Func1<o.PushMessageContentVoiceNote, TResult>? isPushMessageContentVoiceNote,
    Func1<o.PushMessageContentBasicGroupChatCreate, TResult>? isPushMessageContentBasicGroupChatCreate,
    Func1<o.PushMessageContentChatAddMembers, TResult>? isPushMessageContentChatAddMembers,
    Func1<o.PushMessageContentChatChangePhoto, TResult>? isPushMessageContentChatChangePhoto,
    Func1<o.PushMessageContentChatChangeTitle, TResult>? isPushMessageContentChatChangeTitle,
    Func1<o.PushMessageContentChatDeleteMember, TResult>? isPushMessageContentChatDeleteMember,
    Func1<o.PushMessageContentChatJoinByLink, TResult>? isPushMessageContentChatJoinByLink,
    Func1<o.PushMessageContentMessageForwards, TResult>? isPushMessageContentMessageForwards,
    Func1<o.PushMessageContentMediaAlbum, TResult>? isPushMessageContentMediaAlbum,
    Func1<PushMessageContent, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PushMessageContentHidden) {
      if (isPushMessageContentHidden != null) {
        return isPushMessageContentHidden(this as o.PushMessageContentHidden);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentAnimation) {
      if (isPushMessageContentAnimation != null) {
        return isPushMessageContentAnimation(this as o.PushMessageContentAnimation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentAudio) {
      if (isPushMessageContentAudio != null) {
        return isPushMessageContentAudio(this as o.PushMessageContentAudio);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentContact) {
      if (isPushMessageContentContact != null) {
        return isPushMessageContentContact(this as o.PushMessageContentContact);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentContactRegistered) {
      if (isPushMessageContentContactRegistered != null) {
        return isPushMessageContentContactRegistered(this as o.PushMessageContentContactRegistered);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentDocument) {
      if (isPushMessageContentDocument != null) {
        return isPushMessageContentDocument(this as o.PushMessageContentDocument);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentGame) {
      if (isPushMessageContentGame != null) {
        return isPushMessageContentGame(this as o.PushMessageContentGame);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentGameScore) {
      if (isPushMessageContentGameScore != null) {
        return isPushMessageContentGameScore(this as o.PushMessageContentGameScore);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentInvoice) {
      if (isPushMessageContentInvoice != null) {
        return isPushMessageContentInvoice(this as o.PushMessageContentInvoice);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentLocation) {
      if (isPushMessageContentLocation != null) {
        return isPushMessageContentLocation(this as o.PushMessageContentLocation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentPhoto) {
      if (isPushMessageContentPhoto != null) {
        return isPushMessageContentPhoto(this as o.PushMessageContentPhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentPoll) {
      if (isPushMessageContentPoll != null) {
        return isPushMessageContentPoll(this as o.PushMessageContentPoll);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentScreenshotTaken) {
      if (isPushMessageContentScreenshotTaken != null) {
        return isPushMessageContentScreenshotTaken(this as o.PushMessageContentScreenshotTaken);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentSticker) {
      if (isPushMessageContentSticker != null) {
        return isPushMessageContentSticker(this as o.PushMessageContentSticker);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentText) {
      if (isPushMessageContentText != null) {
        return isPushMessageContentText(this as o.PushMessageContentText);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentVideo) {
      if (isPushMessageContentVideo != null) {
        return isPushMessageContentVideo(this as o.PushMessageContentVideo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentVideoNote) {
      if (isPushMessageContentVideoNote != null) {
        return isPushMessageContentVideoNote(this as o.PushMessageContentVideoNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentVoiceNote) {
      if (isPushMessageContentVoiceNote != null) {
        return isPushMessageContentVoiceNote(this as o.PushMessageContentVoiceNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentBasicGroupChatCreate) {
      if (isPushMessageContentBasicGroupChatCreate != null) {
        return isPushMessageContentBasicGroupChatCreate(this as o.PushMessageContentBasicGroupChatCreate);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentChatAddMembers) {
      if (isPushMessageContentChatAddMembers != null) {
        return isPushMessageContentChatAddMembers(this as o.PushMessageContentChatAddMembers);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentChatChangePhoto) {
      if (isPushMessageContentChatChangePhoto != null) {
        return isPushMessageContentChatChangePhoto(this as o.PushMessageContentChatChangePhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentChatChangeTitle) {
      if (isPushMessageContentChatChangeTitle != null) {
        return isPushMessageContentChatChangeTitle(this as o.PushMessageContentChatChangeTitle);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentChatDeleteMember) {
      if (isPushMessageContentChatDeleteMember != null) {
        return isPushMessageContentChatDeleteMember(this as o.PushMessageContentChatDeleteMember);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentChatJoinByLink) {
      if (isPushMessageContentChatJoinByLink != null) {
        return isPushMessageContentChatJoinByLink(this as o.PushMessageContentChatJoinByLink);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentMessageForwards) {
      if (isPushMessageContentMessageForwards != null) {
        return isPushMessageContentMessageForwards(this as o.PushMessageContentMessageForwards);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.PushMessageContentMediaAlbum) {
      if (isPushMessageContentMediaAlbum != null) {
        return isPushMessageContentMediaAlbum(this as o.PushMessageContentMediaAlbum);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains detailed information about a notification
abstract class NotificationType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.NotificationTypeNewMessage, TResult>? isNotificationTypeNewMessage,
    Func1<o.NotificationTypeNewSecretChat, TResult>? isNotificationTypeNewSecretChat,
    Func1<o.NotificationTypeNewCall, TResult>? isNotificationTypeNewCall,
    Func1<o.NotificationTypeNewPushMessage, TResult>? isNotificationTypeNewPushMessage,
    Func1<NotificationType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.NotificationTypeNewMessage) {
      if (isNotificationTypeNewMessage != null) {
        return isNotificationTypeNewMessage(this as o.NotificationTypeNewMessage);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.NotificationTypeNewSecretChat) {
      if (isNotificationTypeNewSecretChat != null) {
        return isNotificationTypeNewSecretChat(this as o.NotificationTypeNewSecretChat);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.NotificationTypeNewCall) {
      if (isNotificationTypeNewCall != null) {
        return isNotificationTypeNewCall(this as o.NotificationTypeNewCall);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.NotificationTypeNewPushMessage) {
      if (isNotificationTypeNewPushMessage != null) {
        return isNotificationTypeNewPushMessage(this as o.NotificationTypeNewPushMessage);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the type of notifications in a notification group
abstract class NotificationGroupType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.NotificationGroupTypeMessages, TResult>? isNotificationGroupTypeMessages,
    Func1<o.NotificationGroupTypeMentions, TResult>? isNotificationGroupTypeMentions,
    Func1<o.NotificationGroupTypeSecretChat, TResult>? isNotificationGroupTypeSecretChat,
    Func1<o.NotificationGroupTypeCalls, TResult>? isNotificationGroupTypeCalls,
    Func1<NotificationGroupType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.NotificationGroupTypeMessages) {
      if (isNotificationGroupTypeMessages != null) {
        return isNotificationGroupTypeMessages(this as o.NotificationGroupTypeMessages);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.NotificationGroupTypeMentions) {
      if (isNotificationGroupTypeMentions != null) {
        return isNotificationGroupTypeMentions(this as o.NotificationGroupTypeMentions);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.NotificationGroupTypeSecretChat) {
      if (isNotificationGroupTypeSecretChat != null) {
        return isNotificationGroupTypeSecretChat(this as o.NotificationGroupTypeSecretChat);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.NotificationGroupTypeCalls) {
      if (isNotificationGroupTypeCalls != null) {
        return isNotificationGroupTypeCalls(this as o.NotificationGroupTypeCalls);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Notification extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Notification, TResult>? isNotification,
    Func1<Notification, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Notification) {
      if (isNotification != null) {
        return isNotification(this as o.Notification);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class NotificationGroup extends b.TdBase {
  TResult match<TResult>({
    Func1<o.NotificationGroup, TResult>? isNotificationGroup,
    Func1<NotificationGroup, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.NotificationGroup) {
      if (isNotificationGroup != null) {
        return isNotificationGroup(this as o.NotificationGroup);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents the value of an option
abstract class OptionValue extends b.TdBase {
  TResult match<TResult>({
    Func1<o.OptionValueBoolean, TResult>? isOptionValueBoolean,
    Func1<o.OptionValueEmpty, TResult>? isOptionValueEmpty,
    Func1<o.OptionValueInteger, TResult>? isOptionValueInteger,
    Func1<o.OptionValueString, TResult>? isOptionValueString,
    Func1<OptionValue, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.OptionValueBoolean) {
      if (isOptionValueBoolean != null) {
        return isOptionValueBoolean(this as o.OptionValueBoolean);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.OptionValueEmpty) {
      if (isOptionValueEmpty != null) {
        return isOptionValueEmpty(this as o.OptionValueEmpty);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.OptionValueInteger) {
      if (isOptionValueInteger != null) {
        return isOptionValueInteger(this as o.OptionValueInteger);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.OptionValueString) {
      if (isOptionValueString != null) {
        return isOptionValueString(this as o.OptionValueString);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class JsonObjectMember extends b.TdBase {
  TResult match<TResult>({
    Func1<o.JsonObjectMember, TResult>? isJsonObjectMember,
    Func1<JsonObjectMember, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.JsonObjectMember) {
      if (isJsonObjectMember != null) {
        return isJsonObjectMember(this as o.JsonObjectMember);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents a JSON value
abstract class JsonValue extends b.TdBase {
  TResult match<TResult>({
    Func1<o.JsonValueNull, TResult>? isJsonValueNull,
    Func1<o.JsonValueBoolean, TResult>? isJsonValueBoolean,
    Func1<o.JsonValueNumber, TResult>? isJsonValueNumber,
    Func1<o.JsonValueString, TResult>? isJsonValueString,
    Func1<o.JsonValueArray, TResult>? isJsonValueArray,
    Func1<o.JsonValueObject, TResult>? isJsonValueObject,
    Func1<JsonValue, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.JsonValueNull) {
      if (isJsonValueNull != null) {
        return isJsonValueNull(this as o.JsonValueNull);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.JsonValueBoolean) {
      if (isJsonValueBoolean != null) {
        return isJsonValueBoolean(this as o.JsonValueBoolean);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.JsonValueNumber) {
      if (isJsonValueNumber != null) {
        return isJsonValueNumber(this as o.JsonValueNumber);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.JsonValueString) {
      if (isJsonValueString != null) {
        return isJsonValueString(this as o.JsonValueString);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.JsonValueArray) {
      if (isJsonValueArray != null) {
        return isJsonValueArray(this as o.JsonValueArray);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.JsonValueObject) {
      if (isJsonValueObject != null) {
        return isJsonValueObject(this as o.JsonValueObject);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents a single rule for managing privacy settings
abstract class UserPrivacySettingRule extends b.TdBase {
  TResult match<TResult>({
    Func1<o.UserPrivacySettingRuleAllowAll, TResult>? isUserPrivacySettingRuleAllowAll,
    Func1<o.UserPrivacySettingRuleAllowContacts, TResult>? isUserPrivacySettingRuleAllowContacts,
    Func1<o.UserPrivacySettingRuleAllowUsers, TResult>? isUserPrivacySettingRuleAllowUsers,
    Func1<o.UserPrivacySettingRuleAllowChatMembers, TResult>? isUserPrivacySettingRuleAllowChatMembers,
    Func1<o.UserPrivacySettingRuleRestrictAll, TResult>? isUserPrivacySettingRuleRestrictAll,
    Func1<o.UserPrivacySettingRuleRestrictContacts, TResult>? isUserPrivacySettingRuleRestrictContacts,
    Func1<o.UserPrivacySettingRuleRestrictUsers, TResult>? isUserPrivacySettingRuleRestrictUsers,
    Func1<o.UserPrivacySettingRuleRestrictChatMembers, TResult>? isUserPrivacySettingRuleRestrictChatMembers,
    Func1<UserPrivacySettingRule, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.UserPrivacySettingRuleAllowAll) {
      if (isUserPrivacySettingRuleAllowAll != null) {
        return isUserPrivacySettingRuleAllowAll(this as o.UserPrivacySettingRuleAllowAll);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingRuleAllowContacts) {
      if (isUserPrivacySettingRuleAllowContacts != null) {
        return isUserPrivacySettingRuleAllowContacts(this as o.UserPrivacySettingRuleAllowContacts);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingRuleAllowUsers) {
      if (isUserPrivacySettingRuleAllowUsers != null) {
        return isUserPrivacySettingRuleAllowUsers(this as o.UserPrivacySettingRuleAllowUsers);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingRuleAllowChatMembers) {
      if (isUserPrivacySettingRuleAllowChatMembers != null) {
        return isUserPrivacySettingRuleAllowChatMembers(this as o.UserPrivacySettingRuleAllowChatMembers);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingRuleRestrictAll) {
      if (isUserPrivacySettingRuleRestrictAll != null) {
        return isUserPrivacySettingRuleRestrictAll(this as o.UserPrivacySettingRuleRestrictAll);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingRuleRestrictContacts) {
      if (isUserPrivacySettingRuleRestrictContacts != null) {
        return isUserPrivacySettingRuleRestrictContacts(this as o.UserPrivacySettingRuleRestrictContacts);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingRuleRestrictUsers) {
      if (isUserPrivacySettingRuleRestrictUsers != null) {
        return isUserPrivacySettingRuleRestrictUsers(this as o.UserPrivacySettingRuleRestrictUsers);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingRuleRestrictChatMembers) {
      if (isUserPrivacySettingRuleRestrictChatMembers != null) {
        return isUserPrivacySettingRuleRestrictChatMembers(this as o.UserPrivacySettingRuleRestrictChatMembers);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class UserPrivacySettingRules extends b.TdBase {
  TResult match<TResult>({
    Func1<o.UserPrivacySettingRules, TResult>? isUserPrivacySettingRules,
    Func1<UserPrivacySettingRules, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.UserPrivacySettingRules) {
      if (isUserPrivacySettingRules != null) {
        return isUserPrivacySettingRules(this as o.UserPrivacySettingRules);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes available user privacy settings
abstract class UserPrivacySetting extends b.TdBase {
  TResult match<TResult>({
    Func1<o.UserPrivacySettingShowStatus, TResult>? isUserPrivacySettingShowStatus,
    Func1<o.UserPrivacySettingShowProfilePhoto, TResult>? isUserPrivacySettingShowProfilePhoto,
    Func1<o.UserPrivacySettingShowLinkInForwardedMessages, TResult>? isUserPrivacySettingShowLinkInForwardedMessages,
    Func1<o.UserPrivacySettingShowPhoneNumber, TResult>? isUserPrivacySettingShowPhoneNumber,
    Func1<o.UserPrivacySettingAllowChatInvites, TResult>? isUserPrivacySettingAllowChatInvites,
    Func1<o.UserPrivacySettingAllowCalls, TResult>? isUserPrivacySettingAllowCalls,
    Func1<o.UserPrivacySettingAllowPeerToPeerCalls, TResult>? isUserPrivacySettingAllowPeerToPeerCalls,
    Func1<o.UserPrivacySettingAllowFindingByPhoneNumber, TResult>? isUserPrivacySettingAllowFindingByPhoneNumber,
    Func1<UserPrivacySetting, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.UserPrivacySettingShowStatus) {
      if (isUserPrivacySettingShowStatus != null) {
        return isUserPrivacySettingShowStatus(this as o.UserPrivacySettingShowStatus);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingShowProfilePhoto) {
      if (isUserPrivacySettingShowProfilePhoto != null) {
        return isUserPrivacySettingShowProfilePhoto(this as o.UserPrivacySettingShowProfilePhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingShowLinkInForwardedMessages) {
      if (isUserPrivacySettingShowLinkInForwardedMessages != null) {
        return isUserPrivacySettingShowLinkInForwardedMessages(this as o.UserPrivacySettingShowLinkInForwardedMessages);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingShowPhoneNumber) {
      if (isUserPrivacySettingShowPhoneNumber != null) {
        return isUserPrivacySettingShowPhoneNumber(this as o.UserPrivacySettingShowPhoneNumber);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingAllowChatInvites) {
      if (isUserPrivacySettingAllowChatInvites != null) {
        return isUserPrivacySettingAllowChatInvites(this as o.UserPrivacySettingAllowChatInvites);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingAllowCalls) {
      if (isUserPrivacySettingAllowCalls != null) {
        return isUserPrivacySettingAllowCalls(this as o.UserPrivacySettingAllowCalls);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingAllowPeerToPeerCalls) {
      if (isUserPrivacySettingAllowPeerToPeerCalls != null) {
        return isUserPrivacySettingAllowPeerToPeerCalls(this as o.UserPrivacySettingAllowPeerToPeerCalls);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingAllowFindingByPhoneNumber) {
      if (isUserPrivacySettingAllowFindingByPhoneNumber != null) {
        return isUserPrivacySettingAllowFindingByPhoneNumber(this as o.UserPrivacySettingAllowFindingByPhoneNumber);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class AccountTtl extends b.TdBase {
  TResult match<TResult>({
    Func1<o.AccountTtl, TResult>? isAccountTtl,
    Func1<AccountTtl, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.AccountTtl) {
      if (isAccountTtl != null) {
        return isAccountTtl(this as o.AccountTtl);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Session extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Session, TResult>? isSession,
    Func1<Session, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Session) {
      if (isSession != null) {
        return isSession(this as o.Session);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Sessions extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Sessions, TResult>? isSessions,
    Func1<Sessions, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Sessions) {
      if (isSessions != null) {
        return isSessions(this as o.Sessions);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ConnectedWebsite extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ConnectedWebsite, TResult>? isConnectedWebsite,
    Func1<ConnectedWebsite, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ConnectedWebsite) {
      if (isConnectedWebsite != null) {
        return isConnectedWebsite(this as o.ConnectedWebsite);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ConnectedWebsites extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ConnectedWebsites, TResult>? isConnectedWebsites,
    Func1<ConnectedWebsites, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ConnectedWebsites) {
      if (isConnectedWebsites != null) {
        return isConnectedWebsites(this as o.ConnectedWebsites);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the reason why a chat is reported
abstract class ChatReportReason extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatReportReasonSpam, TResult>? isChatReportReasonSpam,
    Func1<o.ChatReportReasonViolence, TResult>? isChatReportReasonViolence,
    Func1<o.ChatReportReasonPornography, TResult>? isChatReportReasonPornography,
    Func1<o.ChatReportReasonChildAbuse, TResult>? isChatReportReasonChildAbuse,
    Func1<o.ChatReportReasonCopyright, TResult>? isChatReportReasonCopyright,
    Func1<o.ChatReportReasonUnrelatedLocation, TResult>? isChatReportReasonUnrelatedLocation,
    Func1<o.ChatReportReasonFake, TResult>? isChatReportReasonFake,
    Func1<o.ChatReportReasonCustom, TResult>? isChatReportReasonCustom,
    Func1<ChatReportReason, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatReportReasonSpam) {
      if (isChatReportReasonSpam != null) {
        return isChatReportReasonSpam(this as o.ChatReportReasonSpam);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatReportReasonViolence) {
      if (isChatReportReasonViolence != null) {
        return isChatReportReasonViolence(this as o.ChatReportReasonViolence);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatReportReasonPornography) {
      if (isChatReportReasonPornography != null) {
        return isChatReportReasonPornography(this as o.ChatReportReasonPornography);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatReportReasonChildAbuse) {
      if (isChatReportReasonChildAbuse != null) {
        return isChatReportReasonChildAbuse(this as o.ChatReportReasonChildAbuse);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatReportReasonCopyright) {
      if (isChatReportReasonCopyright != null) {
        return isChatReportReasonCopyright(this as o.ChatReportReasonCopyright);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatReportReasonUnrelatedLocation) {
      if (isChatReportReasonUnrelatedLocation != null) {
        return isChatReportReasonUnrelatedLocation(this as o.ChatReportReasonUnrelatedLocation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatReportReasonFake) {
      if (isChatReportReasonFake != null) {
        return isChatReportReasonFake(this as o.ChatReportReasonFake);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatReportReasonCustom) {
      if (isChatReportReasonCustom != null) {
        return isChatReportReasonCustom(this as o.ChatReportReasonCustom);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class MessageLink extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageLink, TResult>? isMessageLink,
    Func1<MessageLink, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageLink) {
      if (isMessageLink != null) {
        return isMessageLink(this as o.MessageLink);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class MessageLinkInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageLinkInfo, TResult>? isMessageLinkInfo,
    Func1<MessageLinkInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageLinkInfo) {
      if (isMessageLinkInfo != null) {
        return isMessageLinkInfo(this as o.MessageLinkInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class FilePart extends b.TdBase {
  TResult match<TResult>({
    Func1<o.FilePart, TResult>? isFilePart,
    Func1<FilePart, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.FilePart) {
      if (isFilePart != null) {
        return isFilePart(this as o.FilePart);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents the type of a file
abstract class FileType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.FileTypeNone, TResult>? isFileTypeNone,
    Func1<o.FileTypeAnimation, TResult>? isFileTypeAnimation,
    Func1<o.FileTypeAudio, TResult>? isFileTypeAudio,
    Func1<o.FileTypeDocument, TResult>? isFileTypeDocument,
    Func1<o.FileTypePhoto, TResult>? isFileTypePhoto,
    Func1<o.FileTypeProfilePhoto, TResult>? isFileTypeProfilePhoto,
    Func1<o.FileTypeSecret, TResult>? isFileTypeSecret,
    Func1<o.FileTypeSecretThumbnail, TResult>? isFileTypeSecretThumbnail,
    Func1<o.FileTypeSecure, TResult>? isFileTypeSecure,
    Func1<o.FileTypeSticker, TResult>? isFileTypeSticker,
    Func1<o.FileTypeThumbnail, TResult>? isFileTypeThumbnail,
    Func1<o.FileTypeUnknown, TResult>? isFileTypeUnknown,
    Func1<o.FileTypeVideo, TResult>? isFileTypeVideo,
    Func1<o.FileTypeVideoNote, TResult>? isFileTypeVideoNote,
    Func1<o.FileTypeVoiceNote, TResult>? isFileTypeVoiceNote,
    Func1<o.FileTypeWallpaper, TResult>? isFileTypeWallpaper,
    Func1<FileType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.FileTypeNone) {
      if (isFileTypeNone != null) {
        return isFileTypeNone(this as o.FileTypeNone);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.FileTypeAnimation) {
      if (isFileTypeAnimation != null) {
        return isFileTypeAnimation(this as o.FileTypeAnimation);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.FileTypeAudio) {
      if (isFileTypeAudio != null) {
        return isFileTypeAudio(this as o.FileTypeAudio);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.FileTypeDocument) {
      if (isFileTypeDocument != null) {
        return isFileTypeDocument(this as o.FileTypeDocument);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.FileTypePhoto) {
      if (isFileTypePhoto != null) {
        return isFileTypePhoto(this as o.FileTypePhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.FileTypeProfilePhoto) {
      if (isFileTypeProfilePhoto != null) {
        return isFileTypeProfilePhoto(this as o.FileTypeProfilePhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.FileTypeSecret) {
      if (isFileTypeSecret != null) {
        return isFileTypeSecret(this as o.FileTypeSecret);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.FileTypeSecretThumbnail) {
      if (isFileTypeSecretThumbnail != null) {
        return isFileTypeSecretThumbnail(this as o.FileTypeSecretThumbnail);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.FileTypeSecure) {
      if (isFileTypeSecure != null) {
        return isFileTypeSecure(this as o.FileTypeSecure);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.FileTypeSticker) {
      if (isFileTypeSticker != null) {
        return isFileTypeSticker(this as o.FileTypeSticker);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.FileTypeThumbnail) {
      if (isFileTypeThumbnail != null) {
        return isFileTypeThumbnail(this as o.FileTypeThumbnail);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.FileTypeUnknown) {
      if (isFileTypeUnknown != null) {
        return isFileTypeUnknown(this as o.FileTypeUnknown);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.FileTypeVideo) {
      if (isFileTypeVideo != null) {
        return isFileTypeVideo(this as o.FileTypeVideo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.FileTypeVideoNote) {
      if (isFileTypeVideoNote != null) {
        return isFileTypeVideoNote(this as o.FileTypeVideoNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.FileTypeVoiceNote) {
      if (isFileTypeVoiceNote != null) {
        return isFileTypeVoiceNote(this as o.FileTypeVoiceNote);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.FileTypeWallpaper) {
      if (isFileTypeWallpaper != null) {
        return isFileTypeWallpaper(this as o.FileTypeWallpaper);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class StorageStatisticsByFileType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.StorageStatisticsByFileType, TResult>? isStorageStatisticsByFileType,
    Func1<StorageStatisticsByFileType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StorageStatisticsByFileType) {
      if (isStorageStatisticsByFileType != null) {
        return isStorageStatisticsByFileType(this as o.StorageStatisticsByFileType);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class StorageStatisticsByChat extends b.TdBase {
  TResult match<TResult>({
    Func1<o.StorageStatisticsByChat, TResult>? isStorageStatisticsByChat,
    Func1<StorageStatisticsByChat, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StorageStatisticsByChat) {
      if (isStorageStatisticsByChat != null) {
        return isStorageStatisticsByChat(this as o.StorageStatisticsByChat);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class StorageStatistics extends b.TdBase {
  TResult match<TResult>({
    Func1<o.StorageStatistics, TResult>? isStorageStatistics,
    Func1<StorageStatistics, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StorageStatistics) {
      if (isStorageStatistics != null) {
        return isStorageStatistics(this as o.StorageStatistics);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class StorageStatisticsFast extends b.TdBase {
  TResult match<TResult>({
    Func1<o.StorageStatisticsFast, TResult>? isStorageStatisticsFast,
    Func1<StorageStatisticsFast, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StorageStatisticsFast) {
      if (isStorageStatisticsFast != null) {
        return isStorageStatisticsFast(this as o.StorageStatisticsFast);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class DatabaseStatistics extends b.TdBase {
  TResult match<TResult>({
    Func1<o.DatabaseStatistics, TResult>? isDatabaseStatistics,
    Func1<DatabaseStatistics, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.DatabaseStatistics) {
      if (isDatabaseStatistics != null) {
        return isDatabaseStatistics(this as o.DatabaseStatistics);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents the type of a network
abstract class NetworkType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.NetworkTypeNone, TResult>? isNetworkTypeNone,
    Func1<o.NetworkTypeMobile, TResult>? isNetworkTypeMobile,
    Func1<o.NetworkTypeMobileRoaming, TResult>? isNetworkTypeMobileRoaming,
    Func1<o.NetworkTypeWiFi, TResult>? isNetworkTypeWiFi,
    Func1<o.NetworkTypeOther, TResult>? isNetworkTypeOther,
    Func1<NetworkType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.NetworkTypeNone) {
      if (isNetworkTypeNone != null) {
        return isNetworkTypeNone(this as o.NetworkTypeNone);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.NetworkTypeMobile) {
      if (isNetworkTypeMobile != null) {
        return isNetworkTypeMobile(this as o.NetworkTypeMobile);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.NetworkTypeMobileRoaming) {
      if (isNetworkTypeMobileRoaming != null) {
        return isNetworkTypeMobileRoaming(this as o.NetworkTypeMobileRoaming);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.NetworkTypeWiFi) {
      if (isNetworkTypeWiFi != null) {
        return isNetworkTypeWiFi(this as o.NetworkTypeWiFi);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.NetworkTypeOther) {
      if (isNetworkTypeOther != null) {
        return isNetworkTypeOther(this as o.NetworkTypeOther);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains statistics about network usage
abstract class NetworkStatisticsEntry extends b.TdBase {
  TResult match<TResult>({
    Func1<o.NetworkStatisticsEntryFile, TResult>? isNetworkStatisticsEntryFile,
    Func1<o.NetworkStatisticsEntryCall, TResult>? isNetworkStatisticsEntryCall,
    Func1<NetworkStatisticsEntry, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.NetworkStatisticsEntryFile) {
      if (isNetworkStatisticsEntryFile != null) {
        return isNetworkStatisticsEntryFile(this as o.NetworkStatisticsEntryFile);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.NetworkStatisticsEntryCall) {
      if (isNetworkStatisticsEntryCall != null) {
        return isNetworkStatisticsEntryCall(this as o.NetworkStatisticsEntryCall);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class NetworkStatistics extends b.TdBase {
  TResult match<TResult>({
    Func1<o.NetworkStatistics, TResult>? isNetworkStatistics,
    Func1<NetworkStatistics, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.NetworkStatistics) {
      if (isNetworkStatistics != null) {
        return isNetworkStatistics(this as o.NetworkStatistics);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class AutoDownloadSettings extends b.TdBase {
  TResult match<TResult>({
    Func1<o.AutoDownloadSettings, TResult>? isAutoDownloadSettings,
    Func1<AutoDownloadSettings, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.AutoDownloadSettings) {
      if (isAutoDownloadSettings != null) {
        return isAutoDownloadSettings(this as o.AutoDownloadSettings);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class AutoDownloadSettingsPresets extends b.TdBase {
  TResult match<TResult>({
    Func1<o.AutoDownloadSettingsPresets, TResult>? isAutoDownloadSettingsPresets,
    Func1<AutoDownloadSettingsPresets, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.AutoDownloadSettingsPresets) {
      if (isAutoDownloadSettingsPresets != null) {
        return isAutoDownloadSettingsPresets(this as o.AutoDownloadSettingsPresets);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the current state of the connection to Telegram servers
abstract class ConnectionState extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ConnectionStateWaitingForNetwork, TResult>? isConnectionStateWaitingForNetwork,
    Func1<o.ConnectionStateConnectingToProxy, TResult>? isConnectionStateConnectingToProxy,
    Func1<o.ConnectionStateConnecting, TResult>? isConnectionStateConnecting,
    Func1<o.ConnectionStateUpdating, TResult>? isConnectionStateUpdating,
    Func1<o.ConnectionStateReady, TResult>? isConnectionStateReady,
    Func1<ConnectionState, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ConnectionStateWaitingForNetwork) {
      if (isConnectionStateWaitingForNetwork != null) {
        return isConnectionStateWaitingForNetwork(this as o.ConnectionStateWaitingForNetwork);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ConnectionStateConnectingToProxy) {
      if (isConnectionStateConnectingToProxy != null) {
        return isConnectionStateConnectingToProxy(this as o.ConnectionStateConnectingToProxy);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ConnectionStateConnecting) {
      if (isConnectionStateConnecting != null) {
        return isConnectionStateConnecting(this as o.ConnectionStateConnecting);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ConnectionStateUpdating) {
      if (isConnectionStateUpdating != null) {
        return isConnectionStateUpdating(this as o.ConnectionStateUpdating);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ConnectionStateReady) {
      if (isConnectionStateReady != null) {
        return isConnectionStateReady(this as o.ConnectionStateReady);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents the categories of chats for which a list of frequently used chats can be retrieved
abstract class TopChatCategory extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TopChatCategoryUsers, TResult>? isTopChatCategoryUsers,
    Func1<o.TopChatCategoryBots, TResult>? isTopChatCategoryBots,
    Func1<o.TopChatCategoryGroups, TResult>? isTopChatCategoryGroups,
    Func1<o.TopChatCategoryChannels, TResult>? isTopChatCategoryChannels,
    Func1<o.TopChatCategoryInlineBots, TResult>? isTopChatCategoryInlineBots,
    Func1<o.TopChatCategoryCalls, TResult>? isTopChatCategoryCalls,
    Func1<o.TopChatCategoryForwardChats, TResult>? isTopChatCategoryForwardChats,
    Func1<TopChatCategory, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TopChatCategoryUsers) {
      if (isTopChatCategoryUsers != null) {
        return isTopChatCategoryUsers(this as o.TopChatCategoryUsers);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TopChatCategoryBots) {
      if (isTopChatCategoryBots != null) {
        return isTopChatCategoryBots(this as o.TopChatCategoryBots);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TopChatCategoryGroups) {
      if (isTopChatCategoryGroups != null) {
        return isTopChatCategoryGroups(this as o.TopChatCategoryGroups);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TopChatCategoryChannels) {
      if (isTopChatCategoryChannels != null) {
        return isTopChatCategoryChannels(this as o.TopChatCategoryChannels);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TopChatCategoryInlineBots) {
      if (isTopChatCategoryInlineBots != null) {
        return isTopChatCategoryInlineBots(this as o.TopChatCategoryInlineBots);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TopChatCategoryCalls) {
      if (isTopChatCategoryCalls != null) {
        return isTopChatCategoryCalls(this as o.TopChatCategoryCalls);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TopChatCategoryForwardChats) {
      if (isTopChatCategoryForwardChats != null) {
        return isTopChatCategoryForwardChats(this as o.TopChatCategoryForwardChats);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the type of a URL linking to an internal Telegram entity
abstract class TMeUrlType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TMeUrlTypeUser, TResult>? isTMeUrlTypeUser,
    Func1<o.TMeUrlTypeSupergroup, TResult>? isTMeUrlTypeSupergroup,
    Func1<o.TMeUrlTypeChatInvite, TResult>? isTMeUrlTypeChatInvite,
    Func1<o.TMeUrlTypeStickerSet, TResult>? isTMeUrlTypeStickerSet,
    Func1<TMeUrlType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TMeUrlTypeUser) {
      if (isTMeUrlTypeUser != null) {
        return isTMeUrlTypeUser(this as o.TMeUrlTypeUser);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TMeUrlTypeSupergroup) {
      if (isTMeUrlTypeSupergroup != null) {
        return isTMeUrlTypeSupergroup(this as o.TMeUrlTypeSupergroup);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TMeUrlTypeChatInvite) {
      if (isTMeUrlTypeChatInvite != null) {
        return isTMeUrlTypeChatInvite(this as o.TMeUrlTypeChatInvite);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TMeUrlTypeStickerSet) {
      if (isTMeUrlTypeStickerSet != null) {
        return isTMeUrlTypeStickerSet(this as o.TMeUrlTypeStickerSet);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class TMeUrl extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TMeUrl, TResult>? isTMeUrl,
    Func1<TMeUrl, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TMeUrl) {
      if (isTMeUrl != null) {
        return isTMeUrl(this as o.TMeUrl);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class TMeUrls extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TMeUrls, TResult>? isTMeUrls,
    Func1<TMeUrls, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TMeUrls) {
      if (isTMeUrls != null) {
        return isTMeUrls(this as o.TMeUrls);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes an action suggested to the current user
abstract class SuggestedAction extends b.TdBase {
  TResult match<TResult>({
    Func1<o.SuggestedActionEnableArchiveAndMuteNewChats, TResult>? isSuggestedActionEnableArchiveAndMuteNewChats,
    Func1<o.SuggestedActionCheckPhoneNumber, TResult>? isSuggestedActionCheckPhoneNumber,
    Func1<o.SuggestedActionSeeTicksHint, TResult>? isSuggestedActionSeeTicksHint,
    Func1<o.SuggestedActionConvertToBroadcastGroup, TResult>? isSuggestedActionConvertToBroadcastGroup,
    Func1<SuggestedAction, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.SuggestedActionEnableArchiveAndMuteNewChats) {
      if (isSuggestedActionEnableArchiveAndMuteNewChats != null) {
        return isSuggestedActionEnableArchiveAndMuteNewChats(this as o.SuggestedActionEnableArchiveAndMuteNewChats);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SuggestedActionCheckPhoneNumber) {
      if (isSuggestedActionCheckPhoneNumber != null) {
        return isSuggestedActionCheckPhoneNumber(this as o.SuggestedActionCheckPhoneNumber);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SuggestedActionSeeTicksHint) {
      if (isSuggestedActionSeeTicksHint != null) {
        return isSuggestedActionSeeTicksHint(this as o.SuggestedActionSeeTicksHint);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.SuggestedActionConvertToBroadcastGroup) {
      if (isSuggestedActionConvertToBroadcastGroup != null) {
        return isSuggestedActionConvertToBroadcastGroup(this as o.SuggestedActionConvertToBroadcastGroup);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Count extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Count, TResult>? isCount,
    Func1<Count, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Count) {
      if (isCount != null) {
        return isCount(this as o.Count);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Text extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Text, TResult>? isText,
    Func1<Text, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Text) {
      if (isText != null) {
        return isText(this as o.Text);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Seconds extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Seconds, TResult>? isSeconds,
    Func1<Seconds, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Seconds) {
      if (isSeconds != null) {
        return isSeconds(this as o.Seconds);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class DeepLinkInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.DeepLinkInfo, TResult>? isDeepLinkInfo,
    Func1<DeepLinkInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.DeepLinkInfo) {
      if (isDeepLinkInfo != null) {
        return isDeepLinkInfo(this as o.DeepLinkInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the way the text should be parsed for TextEntities
abstract class TextParseMode extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TextParseModeMarkdown, TResult>? isTextParseModeMarkdown,
    Func1<o.TextParseModeHTML, TResult>? isTextParseModeHTML,
    Func1<TextParseMode, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TextParseModeMarkdown) {
      if (isTextParseModeMarkdown != null) {
        return isTextParseModeMarkdown(this as o.TextParseModeMarkdown);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.TextParseModeHTML) {
      if (isTextParseModeHTML != null) {
        return isTextParseModeHTML(this as o.TextParseModeHTML);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes the type of a proxy server
abstract class ProxyType extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ProxyTypeSocks5, TResult>? isProxyTypeSocks5,
    Func1<o.ProxyTypeHttp, TResult>? isProxyTypeHttp,
    Func1<o.ProxyTypeMtproto, TResult>? isProxyTypeMtproto,
    Func1<ProxyType, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ProxyTypeSocks5) {
      if (isProxyTypeSocks5 != null) {
        return isProxyTypeSocks5(this as o.ProxyTypeSocks5);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ProxyTypeHttp) {
      if (isProxyTypeHttp != null) {
        return isProxyTypeHttp(this as o.ProxyTypeHttp);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ProxyTypeMtproto) {
      if (isProxyTypeMtproto != null) {
        return isProxyTypeMtproto(this as o.ProxyTypeMtproto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Proxy extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Proxy, TResult>? isProxy,
    Func1<Proxy, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Proxy) {
      if (isProxy != null) {
        return isProxy(this as o.Proxy);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Proxies extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Proxies, TResult>? isProxies,
    Func1<Proxies, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Proxies) {
      if (isProxies != null) {
        return isProxies(this as o.Proxies);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes a sticker that needs to be added to a sticker set
abstract class InputSticker extends b.TdBase {
  TResult match<TResult>({
    Func1<o.InputStickerStatic, TResult>? isInputStickerStatic,
    Func1<o.InputStickerAnimated, TResult>? isInputStickerAnimated,
    Func1<InputSticker, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputStickerStatic) {
      if (isInputStickerStatic != null) {
        return isInputStickerStatic(this as o.InputStickerStatic);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.InputStickerAnimated) {
      if (isInputStickerAnimated != null) {
        return isInputStickerAnimated(this as o.InputStickerAnimated);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class DateRange extends b.TdBase {
  TResult match<TResult>({
    Func1<o.DateRange, TResult>? isDateRange,
    Func1<DateRange, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.DateRange) {
      if (isDateRange != null) {
        return isDateRange(this as o.DateRange);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class StatisticalValue extends b.TdBase {
  TResult match<TResult>({
    Func1<o.StatisticalValue, TResult>? isStatisticalValue,
    Func1<StatisticalValue, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StatisticalValue) {
      if (isStatisticalValue != null) {
        return isStatisticalValue(this as o.StatisticalValue);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes a statistical graph
abstract class StatisticalGraph extends b.TdBase {
  TResult match<TResult>({
    Func1<o.StatisticalGraphData, TResult>? isStatisticalGraphData,
    Func1<o.StatisticalGraphAsync, TResult>? isStatisticalGraphAsync,
    Func1<o.StatisticalGraphError, TResult>? isStatisticalGraphError,
    Func1<StatisticalGraph, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StatisticalGraphData) {
      if (isStatisticalGraphData != null) {
        return isStatisticalGraphData(this as o.StatisticalGraphData);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.StatisticalGraphAsync) {
      if (isStatisticalGraphAsync != null) {
        return isStatisticalGraphAsync(this as o.StatisticalGraphAsync);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.StatisticalGraphError) {
      if (isStatisticalGraphError != null) {
        return isStatisticalGraphError(this as o.StatisticalGraphError);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatStatisticsMessageInteractionInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatStatisticsMessageInteractionInfo, TResult>? isChatStatisticsMessageInteractionInfo,
    Func1<ChatStatisticsMessageInteractionInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatStatisticsMessageInteractionInfo) {
      if (isChatStatisticsMessageInteractionInfo != null) {
        return isChatStatisticsMessageInteractionInfo(this as o.ChatStatisticsMessageInteractionInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatStatisticsMessageSenderInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatStatisticsMessageSenderInfo, TResult>? isChatStatisticsMessageSenderInfo,
    Func1<ChatStatisticsMessageSenderInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatStatisticsMessageSenderInfo) {
      if (isChatStatisticsMessageSenderInfo != null) {
        return isChatStatisticsMessageSenderInfo(this as o.ChatStatisticsMessageSenderInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatStatisticsAdministratorActionsInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatStatisticsAdministratorActionsInfo, TResult>? isChatStatisticsAdministratorActionsInfo,
    Func1<ChatStatisticsAdministratorActionsInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatStatisticsAdministratorActionsInfo) {
      if (isChatStatisticsAdministratorActionsInfo != null) {
        return isChatStatisticsAdministratorActionsInfo(this as o.ChatStatisticsAdministratorActionsInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class ChatStatisticsInviterInfo extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatStatisticsInviterInfo, TResult>? isChatStatisticsInviterInfo,
    Func1<ChatStatisticsInviterInfo, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatStatisticsInviterInfo) {
      if (isChatStatisticsInviterInfo != null) {
        return isChatStatisticsInviterInfo(this as o.ChatStatisticsInviterInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains a detailed statistics about a chat
abstract class ChatStatistics extends b.TdBase {
  TResult match<TResult>({
    Func1<o.ChatStatisticsSupergroup, TResult>? isChatStatisticsSupergroup,
    Func1<o.ChatStatisticsChannel, TResult>? isChatStatisticsChannel,
    Func1<ChatStatistics, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatStatisticsSupergroup) {
      if (isChatStatisticsSupergroup != null) {
        return isChatStatisticsSupergroup(this as o.ChatStatisticsSupergroup);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.ChatStatisticsChannel) {
      if (isChatStatisticsChannel != null) {
        return isChatStatisticsChannel(this as o.ChatStatisticsChannel);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class MessageStatistics extends b.TdBase {
  TResult match<TResult>({
    Func1<o.MessageStatistics, TResult>? isMessageStatistics,
    Func1<MessageStatistics, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageStatistics) {
      if (isMessageStatistics != null) {
        return isMessageStatistics(this as o.MessageStatistics);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Point extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Point, TResult>? isPoint,
    Func1<Point, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Point) {
      if (isPoint != null) {
        return isPoint(this as o.Point);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Represents a vector path command
abstract class VectorPathCommand extends b.TdBase {
  TResult match<TResult>({
    Func1<o.VectorPathCommandLine, TResult>? isVectorPathCommandLine,
    Func1<o.VectorPathCommandCubicBezierCurve, TResult>? isVectorPathCommandCubicBezierCurve,
    Func1<VectorPathCommand, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.VectorPathCommandLine) {
      if (isVectorPathCommandLine != null) {
        return isVectorPathCommandLine(this as o.VectorPathCommandLine);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.VectorPathCommandCubicBezierCurve) {
      if (isVectorPathCommandCubicBezierCurve != null) {
        return isVectorPathCommandCubicBezierCurve(this as o.VectorPathCommandCubicBezierCurve);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Contains notifications about data changes
abstract class Update extends b.TdBase {
  TResult match<TResult>({
    Func1<o.UpdateAuthorizationState, TResult>? isUpdateAuthorizationState,
    Func1<o.UpdateNewMessage, TResult>? isUpdateNewMessage,
    Func1<o.UpdateMessageSendAcknowledged, TResult>? isUpdateMessageSendAcknowledged,
    Func1<o.UpdateMessageSendSucceeded, TResult>? isUpdateMessageSendSucceeded,
    Func1<o.UpdateMessageSendFailed, TResult>? isUpdateMessageSendFailed,
    Func1<o.UpdateMessageContent, TResult>? isUpdateMessageContent,
    Func1<o.UpdateMessageEdited, TResult>? isUpdateMessageEdited,
    Func1<o.UpdateMessageIsPinned, TResult>? isUpdateMessageIsPinned,
    Func1<o.UpdateMessageInteractionInfo, TResult>? isUpdateMessageInteractionInfo,
    Func1<o.UpdateMessageContentOpened, TResult>? isUpdateMessageContentOpened,
    Func1<o.UpdateMessageMentionRead, TResult>? isUpdateMessageMentionRead,
    Func1<o.UpdateMessageLiveLocationViewed, TResult>? isUpdateMessageLiveLocationViewed,
    Func1<o.UpdateNewChat, TResult>? isUpdateNewChat,
    Func1<o.UpdateChatTitle, TResult>? isUpdateChatTitle,
    Func1<o.UpdateChatPhoto, TResult>? isUpdateChatPhoto,
    Func1<o.UpdateChatPermissions, TResult>? isUpdateChatPermissions,
    Func1<o.UpdateChatLastMessage, TResult>? isUpdateChatLastMessage,
    Func1<o.UpdateChatPosition, TResult>? isUpdateChatPosition,
    Func1<o.UpdateChatIsMarkedAsUnread, TResult>? isUpdateChatIsMarkedAsUnread,
    Func1<o.UpdateChatIsBlocked, TResult>? isUpdateChatIsBlocked,
    Func1<o.UpdateChatHasScheduledMessages, TResult>? isUpdateChatHasScheduledMessages,
    Func1<o.UpdateChatVoiceChat, TResult>? isUpdateChatVoiceChat,
    Func1<o.UpdateChatDefaultDisableNotification, TResult>? isUpdateChatDefaultDisableNotification,
    Func1<o.UpdateChatReadInbox, TResult>? isUpdateChatReadInbox,
    Func1<o.UpdateChatReadOutbox, TResult>? isUpdateChatReadOutbox,
    Func1<o.UpdateChatUnreadMentionCount, TResult>? isUpdateChatUnreadMentionCount,
    Func1<o.UpdateChatNotificationSettings, TResult>? isUpdateChatNotificationSettings,
    Func1<o.UpdateScopeNotificationSettings, TResult>? isUpdateScopeNotificationSettings,
    Func1<o.UpdateChatMessageTtlSetting, TResult>? isUpdateChatMessageTtlSetting,
    Func1<o.UpdateChatActionBar, TResult>? isUpdateChatActionBar,
    Func1<o.UpdateChatReplyMarkup, TResult>? isUpdateChatReplyMarkup,
    Func1<o.UpdateChatDraftMessage, TResult>? isUpdateChatDraftMessage,
    Func1<o.UpdateChatFilters, TResult>? isUpdateChatFilters,
    Func1<o.UpdateChatOnlineMemberCount, TResult>? isUpdateChatOnlineMemberCount,
    Func1<o.UpdateNotification, TResult>? isUpdateNotification,
    Func1<o.UpdateNotificationGroup, TResult>? isUpdateNotificationGroup,
    Func1<o.UpdateActiveNotifications, TResult>? isUpdateActiveNotifications,
    Func1<o.UpdateHavePendingNotifications, TResult>? isUpdateHavePendingNotifications,
    Func1<o.UpdateDeleteMessages, TResult>? isUpdateDeleteMessages,
    Func1<o.UpdateUserChatAction, TResult>? isUpdateUserChatAction,
    Func1<o.UpdateUserStatus, TResult>? isUpdateUserStatus,
    Func1<o.UpdateUser, TResult>? isUpdateUser,
    Func1<o.UpdateBasicGroup, TResult>? isUpdateBasicGroup,
    Func1<o.UpdateSupergroup, TResult>? isUpdateSupergroup,
    Func1<o.UpdateSecretChat, TResult>? isUpdateSecretChat,
    Func1<o.UpdateUserFullInfo, TResult>? isUpdateUserFullInfo,
    Func1<o.UpdateBasicGroupFullInfo, TResult>? isUpdateBasicGroupFullInfo,
    Func1<o.UpdateSupergroupFullInfo, TResult>? isUpdateSupergroupFullInfo,
    Func1<o.UpdateServiceNotification, TResult>? isUpdateServiceNotification,
    Func1<o.UpdateFile, TResult>? isUpdateFile,
    Func1<o.UpdateFileGenerationStart, TResult>? isUpdateFileGenerationStart,
    Func1<o.UpdateFileGenerationStop, TResult>? isUpdateFileGenerationStop,
    Func1<o.UpdateCall, TResult>? isUpdateCall,
    Func1<o.UpdateGroupCall, TResult>? isUpdateGroupCall,
    Func1<o.UpdateGroupCallParticipant, TResult>? isUpdateGroupCallParticipant,
    Func1<o.UpdateNewCallSignalingData, TResult>? isUpdateNewCallSignalingData,
    Func1<o.UpdateUserPrivacySettingRules, TResult>? isUpdateUserPrivacySettingRules,
    Func1<o.UpdateUnreadMessageCount, TResult>? isUpdateUnreadMessageCount,
    Func1<o.UpdateUnreadChatCount, TResult>? isUpdateUnreadChatCount,
    Func1<o.UpdateOption, TResult>? isUpdateOption,
    Func1<o.UpdateStickerSet, TResult>? isUpdateStickerSet,
    Func1<o.UpdateInstalledStickerSets, TResult>? isUpdateInstalledStickerSets,
    Func1<o.UpdateTrendingStickerSets, TResult>? isUpdateTrendingStickerSets,
    Func1<o.UpdateRecentStickers, TResult>? isUpdateRecentStickers,
    Func1<o.UpdateFavoriteStickers, TResult>? isUpdateFavoriteStickers,
    Func1<o.UpdateSavedAnimations, TResult>? isUpdateSavedAnimations,
    Func1<o.UpdateSelectedBackground, TResult>? isUpdateSelectedBackground,
    Func1<o.UpdateLanguagePackStrings, TResult>? isUpdateLanguagePackStrings,
    Func1<o.UpdateConnectionState, TResult>? isUpdateConnectionState,
    Func1<o.UpdateTermsOfService, TResult>? isUpdateTermsOfService,
    Func1<o.UpdateUsersNearby, TResult>? isUpdateUsersNearby,
    Func1<o.UpdateDiceEmojis, TResult>? isUpdateDiceEmojis,
    Func1<o.UpdateAnimationSearchParameters, TResult>? isUpdateAnimationSearchParameters,
    Func1<o.UpdateSuggestedActions, TResult>? isUpdateSuggestedActions,
    Func1<o.UpdateNewInlineQuery, TResult>? isUpdateNewInlineQuery,
    Func1<o.UpdateNewChosenInlineResult, TResult>? isUpdateNewChosenInlineResult,
    Func1<o.UpdateNewCallbackQuery, TResult>? isUpdateNewCallbackQuery,
    Func1<o.UpdateNewInlineCallbackQuery, TResult>? isUpdateNewInlineCallbackQuery,
    Func1<o.UpdateNewShippingQuery, TResult>? isUpdateNewShippingQuery,
    Func1<o.UpdateNewPreCheckoutQuery, TResult>? isUpdateNewPreCheckoutQuery,
    Func1<o.UpdateNewCustomEvent, TResult>? isUpdateNewCustomEvent,
    Func1<o.UpdateNewCustomQuery, TResult>? isUpdateNewCustomQuery,
    Func1<o.UpdatePoll, TResult>? isUpdatePoll,
    Func1<o.UpdatePollAnswer, TResult>? isUpdatePollAnswer,
    Func1<o.UpdateChatMember, TResult>? isUpdateChatMember,
    Func1<Update, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.UpdateAuthorizationState) {
      if (isUpdateAuthorizationState != null) {
        return isUpdateAuthorizationState(this as o.UpdateAuthorizationState);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateNewMessage) {
      if (isUpdateNewMessage != null) {
        return isUpdateNewMessage(this as o.UpdateNewMessage);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateMessageSendAcknowledged) {
      if (isUpdateMessageSendAcknowledged != null) {
        return isUpdateMessageSendAcknowledged(this as o.UpdateMessageSendAcknowledged);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateMessageSendSucceeded) {
      if (isUpdateMessageSendSucceeded != null) {
        return isUpdateMessageSendSucceeded(this as o.UpdateMessageSendSucceeded);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateMessageSendFailed) {
      if (isUpdateMessageSendFailed != null) {
        return isUpdateMessageSendFailed(this as o.UpdateMessageSendFailed);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateMessageContent) {
      if (isUpdateMessageContent != null) {
        return isUpdateMessageContent(this as o.UpdateMessageContent);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateMessageEdited) {
      if (isUpdateMessageEdited != null) {
        return isUpdateMessageEdited(this as o.UpdateMessageEdited);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateMessageIsPinned) {
      if (isUpdateMessageIsPinned != null) {
        return isUpdateMessageIsPinned(this as o.UpdateMessageIsPinned);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateMessageInteractionInfo) {
      if (isUpdateMessageInteractionInfo != null) {
        return isUpdateMessageInteractionInfo(this as o.UpdateMessageInteractionInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateMessageContentOpened) {
      if (isUpdateMessageContentOpened != null) {
        return isUpdateMessageContentOpened(this as o.UpdateMessageContentOpened);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateMessageMentionRead) {
      if (isUpdateMessageMentionRead != null) {
        return isUpdateMessageMentionRead(this as o.UpdateMessageMentionRead);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateMessageLiveLocationViewed) {
      if (isUpdateMessageLiveLocationViewed != null) {
        return isUpdateMessageLiveLocationViewed(this as o.UpdateMessageLiveLocationViewed);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateNewChat) {
      if (isUpdateNewChat != null) {
        return isUpdateNewChat(this as o.UpdateNewChat);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatTitle) {
      if (isUpdateChatTitle != null) {
        return isUpdateChatTitle(this as o.UpdateChatTitle);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatPhoto) {
      if (isUpdateChatPhoto != null) {
        return isUpdateChatPhoto(this as o.UpdateChatPhoto);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatPermissions) {
      if (isUpdateChatPermissions != null) {
        return isUpdateChatPermissions(this as o.UpdateChatPermissions);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatLastMessage) {
      if (isUpdateChatLastMessage != null) {
        return isUpdateChatLastMessage(this as o.UpdateChatLastMessage);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatPosition) {
      if (isUpdateChatPosition != null) {
        return isUpdateChatPosition(this as o.UpdateChatPosition);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatIsMarkedAsUnread) {
      if (isUpdateChatIsMarkedAsUnread != null) {
        return isUpdateChatIsMarkedAsUnread(this as o.UpdateChatIsMarkedAsUnread);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatIsBlocked) {
      if (isUpdateChatIsBlocked != null) {
        return isUpdateChatIsBlocked(this as o.UpdateChatIsBlocked);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatHasScheduledMessages) {
      if (isUpdateChatHasScheduledMessages != null) {
        return isUpdateChatHasScheduledMessages(this as o.UpdateChatHasScheduledMessages);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatVoiceChat) {
      if (isUpdateChatVoiceChat != null) {
        return isUpdateChatVoiceChat(this as o.UpdateChatVoiceChat);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatDefaultDisableNotification) {
      if (isUpdateChatDefaultDisableNotification != null) {
        return isUpdateChatDefaultDisableNotification(this as o.UpdateChatDefaultDisableNotification);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatReadInbox) {
      if (isUpdateChatReadInbox != null) {
        return isUpdateChatReadInbox(this as o.UpdateChatReadInbox);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatReadOutbox) {
      if (isUpdateChatReadOutbox != null) {
        return isUpdateChatReadOutbox(this as o.UpdateChatReadOutbox);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatUnreadMentionCount) {
      if (isUpdateChatUnreadMentionCount != null) {
        return isUpdateChatUnreadMentionCount(this as o.UpdateChatUnreadMentionCount);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatNotificationSettings) {
      if (isUpdateChatNotificationSettings != null) {
        return isUpdateChatNotificationSettings(this as o.UpdateChatNotificationSettings);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateScopeNotificationSettings) {
      if (isUpdateScopeNotificationSettings != null) {
        return isUpdateScopeNotificationSettings(this as o.UpdateScopeNotificationSettings);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatMessageTtlSetting) {
      if (isUpdateChatMessageTtlSetting != null) {
        return isUpdateChatMessageTtlSetting(this as o.UpdateChatMessageTtlSetting);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatActionBar) {
      if (isUpdateChatActionBar != null) {
        return isUpdateChatActionBar(this as o.UpdateChatActionBar);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatReplyMarkup) {
      if (isUpdateChatReplyMarkup != null) {
        return isUpdateChatReplyMarkup(this as o.UpdateChatReplyMarkup);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatDraftMessage) {
      if (isUpdateChatDraftMessage != null) {
        return isUpdateChatDraftMessage(this as o.UpdateChatDraftMessage);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatFilters) {
      if (isUpdateChatFilters != null) {
        return isUpdateChatFilters(this as o.UpdateChatFilters);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatOnlineMemberCount) {
      if (isUpdateChatOnlineMemberCount != null) {
        return isUpdateChatOnlineMemberCount(this as o.UpdateChatOnlineMemberCount);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateNotification) {
      if (isUpdateNotification != null) {
        return isUpdateNotification(this as o.UpdateNotification);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateNotificationGroup) {
      if (isUpdateNotificationGroup != null) {
        return isUpdateNotificationGroup(this as o.UpdateNotificationGroup);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateActiveNotifications) {
      if (isUpdateActiveNotifications != null) {
        return isUpdateActiveNotifications(this as o.UpdateActiveNotifications);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateHavePendingNotifications) {
      if (isUpdateHavePendingNotifications != null) {
        return isUpdateHavePendingNotifications(this as o.UpdateHavePendingNotifications);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateDeleteMessages) {
      if (isUpdateDeleteMessages != null) {
        return isUpdateDeleteMessages(this as o.UpdateDeleteMessages);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateUserChatAction) {
      if (isUpdateUserChatAction != null) {
        return isUpdateUserChatAction(this as o.UpdateUserChatAction);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateUserStatus) {
      if (isUpdateUserStatus != null) {
        return isUpdateUserStatus(this as o.UpdateUserStatus);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateUser) {
      if (isUpdateUser != null) {
        return isUpdateUser(this as o.UpdateUser);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateBasicGroup) {
      if (isUpdateBasicGroup != null) {
        return isUpdateBasicGroup(this as o.UpdateBasicGroup);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateSupergroup) {
      if (isUpdateSupergroup != null) {
        return isUpdateSupergroup(this as o.UpdateSupergroup);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateSecretChat) {
      if (isUpdateSecretChat != null) {
        return isUpdateSecretChat(this as o.UpdateSecretChat);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateUserFullInfo) {
      if (isUpdateUserFullInfo != null) {
        return isUpdateUserFullInfo(this as o.UpdateUserFullInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateBasicGroupFullInfo) {
      if (isUpdateBasicGroupFullInfo != null) {
        return isUpdateBasicGroupFullInfo(this as o.UpdateBasicGroupFullInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateSupergroupFullInfo) {
      if (isUpdateSupergroupFullInfo != null) {
        return isUpdateSupergroupFullInfo(this as o.UpdateSupergroupFullInfo);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateServiceNotification) {
      if (isUpdateServiceNotification != null) {
        return isUpdateServiceNotification(this as o.UpdateServiceNotification);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateFile) {
      if (isUpdateFile != null) {
        return isUpdateFile(this as o.UpdateFile);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateFileGenerationStart) {
      if (isUpdateFileGenerationStart != null) {
        return isUpdateFileGenerationStart(this as o.UpdateFileGenerationStart);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateFileGenerationStop) {
      if (isUpdateFileGenerationStop != null) {
        return isUpdateFileGenerationStop(this as o.UpdateFileGenerationStop);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateCall) {
      if (isUpdateCall != null) {
        return isUpdateCall(this as o.UpdateCall);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateGroupCall) {
      if (isUpdateGroupCall != null) {
        return isUpdateGroupCall(this as o.UpdateGroupCall);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateGroupCallParticipant) {
      if (isUpdateGroupCallParticipant != null) {
        return isUpdateGroupCallParticipant(this as o.UpdateGroupCallParticipant);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateNewCallSignalingData) {
      if (isUpdateNewCallSignalingData != null) {
        return isUpdateNewCallSignalingData(this as o.UpdateNewCallSignalingData);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateUserPrivacySettingRules) {
      if (isUpdateUserPrivacySettingRules != null) {
        return isUpdateUserPrivacySettingRules(this as o.UpdateUserPrivacySettingRules);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateUnreadMessageCount) {
      if (isUpdateUnreadMessageCount != null) {
        return isUpdateUnreadMessageCount(this as o.UpdateUnreadMessageCount);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateUnreadChatCount) {
      if (isUpdateUnreadChatCount != null) {
        return isUpdateUnreadChatCount(this as o.UpdateUnreadChatCount);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateOption) {
      if (isUpdateOption != null) {
        return isUpdateOption(this as o.UpdateOption);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateStickerSet) {
      if (isUpdateStickerSet != null) {
        return isUpdateStickerSet(this as o.UpdateStickerSet);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateInstalledStickerSets) {
      if (isUpdateInstalledStickerSets != null) {
        return isUpdateInstalledStickerSets(this as o.UpdateInstalledStickerSets);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateTrendingStickerSets) {
      if (isUpdateTrendingStickerSets != null) {
        return isUpdateTrendingStickerSets(this as o.UpdateTrendingStickerSets);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateRecentStickers) {
      if (isUpdateRecentStickers != null) {
        return isUpdateRecentStickers(this as o.UpdateRecentStickers);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateFavoriteStickers) {
      if (isUpdateFavoriteStickers != null) {
        return isUpdateFavoriteStickers(this as o.UpdateFavoriteStickers);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateSavedAnimations) {
      if (isUpdateSavedAnimations != null) {
        return isUpdateSavedAnimations(this as o.UpdateSavedAnimations);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateSelectedBackground) {
      if (isUpdateSelectedBackground != null) {
        return isUpdateSelectedBackground(this as o.UpdateSelectedBackground);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateLanguagePackStrings) {
      if (isUpdateLanguagePackStrings != null) {
        return isUpdateLanguagePackStrings(this as o.UpdateLanguagePackStrings);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateConnectionState) {
      if (isUpdateConnectionState != null) {
        return isUpdateConnectionState(this as o.UpdateConnectionState);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateTermsOfService) {
      if (isUpdateTermsOfService != null) {
        return isUpdateTermsOfService(this as o.UpdateTermsOfService);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateUsersNearby) {
      if (isUpdateUsersNearby != null) {
        return isUpdateUsersNearby(this as o.UpdateUsersNearby);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateDiceEmojis) {
      if (isUpdateDiceEmojis != null) {
        return isUpdateDiceEmojis(this as o.UpdateDiceEmojis);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateAnimationSearchParameters) {
      if (isUpdateAnimationSearchParameters != null) {
        return isUpdateAnimationSearchParameters(this as o.UpdateAnimationSearchParameters);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateSuggestedActions) {
      if (isUpdateSuggestedActions != null) {
        return isUpdateSuggestedActions(this as o.UpdateSuggestedActions);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateNewInlineQuery) {
      if (isUpdateNewInlineQuery != null) {
        return isUpdateNewInlineQuery(this as o.UpdateNewInlineQuery);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateNewChosenInlineResult) {
      if (isUpdateNewChosenInlineResult != null) {
        return isUpdateNewChosenInlineResult(this as o.UpdateNewChosenInlineResult);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateNewCallbackQuery) {
      if (isUpdateNewCallbackQuery != null) {
        return isUpdateNewCallbackQuery(this as o.UpdateNewCallbackQuery);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateNewInlineCallbackQuery) {
      if (isUpdateNewInlineCallbackQuery != null) {
        return isUpdateNewInlineCallbackQuery(this as o.UpdateNewInlineCallbackQuery);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateNewShippingQuery) {
      if (isUpdateNewShippingQuery != null) {
        return isUpdateNewShippingQuery(this as o.UpdateNewShippingQuery);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateNewPreCheckoutQuery) {
      if (isUpdateNewPreCheckoutQuery != null) {
        return isUpdateNewPreCheckoutQuery(this as o.UpdateNewPreCheckoutQuery);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateNewCustomEvent) {
      if (isUpdateNewCustomEvent != null) {
        return isUpdateNewCustomEvent(this as o.UpdateNewCustomEvent);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateNewCustomQuery) {
      if (isUpdateNewCustomQuery != null) {
        return isUpdateNewCustomQuery(this as o.UpdateNewCustomQuery);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdatePoll) {
      if (isUpdatePoll != null) {
        return isUpdatePoll(this as o.UpdatePoll);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdatePollAnswer) {
      if (isUpdatePollAnswer != null) {
        return isUpdatePollAnswer(this as o.UpdatePollAnswer);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.UpdateChatMember) {
      if (isUpdateChatMember != null) {
        return isUpdateChatMember(this as o.UpdateChatMember);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class Updates extends b.TdBase {
  TResult match<TResult>({
    Func1<o.Updates, TResult>? isUpdates,
    Func1<Updates, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Updates) {
      if (isUpdates != null) {
        return isUpdates(this as o.Updates);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// Describes a stream to which TDLib internal log is written
abstract class LogStream extends b.TdBase {
  TResult match<TResult>({
    Func1<o.LogStreamDefault, TResult>? isLogStreamDefault,
    Func1<o.LogStreamFile, TResult>? isLogStreamFile,
    Func1<o.LogStreamEmpty, TResult>? isLogStreamEmpty,
    Func1<LogStream, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LogStreamDefault) {
      if (isLogStreamDefault != null) {
        return isLogStreamDefault(this as o.LogStreamDefault);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.LogStreamFile) {
      if (isLogStreamFile != null) {
        return isLogStreamFile(this as o.LogStreamFile);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (this is o.LogStreamEmpty) {
      if (isLogStreamEmpty != null) {
        return isLogStreamEmpty(this as o.LogStreamEmpty);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class LogVerbosityLevel extends b.TdBase {
  TResult match<TResult>({
    Func1<o.LogVerbosityLevel, TResult>? isLogVerbosityLevel,
    Func1<LogVerbosityLevel, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LogVerbosityLevel) {
      if (isLogVerbosityLevel != null) {
        return isLogVerbosityLevel(this as o.LogVerbosityLevel);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class LogTags extends b.TdBase {
  TResult match<TResult>({
    Func1<o.LogTags, TResult>? isLogTags,
    Func1<LogTags, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LogTags) {
      if (isLogTags != null) {
        return isLogTags(this as o.LogTags);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class TestInt extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TestInt, TResult>? isTestInt,
    Func1<TestInt, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TestInt) {
      if (isTestInt != null) {
        return isTestInt(this as o.TestInt);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class TestString extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TestString, TResult>? isTestString,
    Func1<TestString, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TestString) {
      if (isTestString != null) {
        return isTestString(this as o.TestString);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class TestBytes extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TestBytes, TResult>? isTestBytes,
    Func1<TestBytes, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TestBytes) {
      if (isTestBytes != null) {
        return isTestBytes(this as o.TestBytes);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class TestVectorInt extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TestVectorInt, TResult>? isTestVectorInt,
    Func1<TestVectorInt, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TestVectorInt) {
      if (isTestVectorInt != null) {
        return isTestVectorInt(this as o.TestVectorInt);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class TestVectorIntObject extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TestVectorIntObject, TResult>? isTestVectorIntObject,
    Func1<TestVectorIntObject, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TestVectorIntObject) {
      if (isTestVectorIntObject != null) {
        return isTestVectorIntObject(this as o.TestVectorIntObject);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class TestVectorString extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TestVectorString, TResult>? isTestVectorString,
    Func1<TestVectorString, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TestVectorString) {
      if (isTestVectorString != null) {
        return isTestVectorString(this as o.TestVectorString);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

/// 
abstract class TestVectorStringObject extends b.TdBase {
  TResult match<TResult>({
    Func1<o.TestVectorStringObject, TResult>? isTestVectorStringObject,
    Func1<TestVectorStringObject, TResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TestVectorStringObject) {
      if (isTestVectorStringObject != null) {
        return isTestVectorStringObject(this as o.TestVectorStringObject);
      }
      else if (otherwise != null) {
        return otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
    else if (TResult == null.runtimeType) {
      return null as TResult;
    }
    throw MatchError();
  }
}

