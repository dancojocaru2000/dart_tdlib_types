import 'base.dart' as b;
import 'obj.dart' as o;

typedef Action<T> = void Function(T);

/// 
abstract class Error extends b.TdBase {
  void match({
    Action<o.Error>? isError,
    Action<Error>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Error) {
      if (isError != null) {
        isError(this as o.Error);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Ok extends b.TdBase {
  void match({
    Action<o.Ok>? isOk,
    Action<Ok>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Ok) {
      if (isOk != null) {
        isOk(this as o.Ok);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class TdlibParameters extends b.TdBase {
  void match({
    Action<o.TdlibParameters>? isTdlibParameters,
    Action<TdlibParameters>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TdlibParameters) {
      if (isTdlibParameters != null) {
        isTdlibParameters(this as o.TdlibParameters);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Provides information about the method by which an authentication code is delivered to the user
abstract class AuthenticationCodeType extends b.TdBase {
  void match({
    Action<o.AuthenticationCodeTypeTelegramMessage>? isAuthenticationCodeTypeTelegramMessage,
    Action<o.AuthenticationCodeTypeSms>? isAuthenticationCodeTypeSms,
    Action<o.AuthenticationCodeTypeCall>? isAuthenticationCodeTypeCall,
    Action<o.AuthenticationCodeTypeFlashCall>? isAuthenticationCodeTypeFlashCall,
    Action<AuthenticationCodeType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.AuthenticationCodeTypeTelegramMessage) {
      if (isAuthenticationCodeTypeTelegramMessage != null) {
        isAuthenticationCodeTypeTelegramMessage(this as o.AuthenticationCodeTypeTelegramMessage);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.AuthenticationCodeTypeSms) {
      if (isAuthenticationCodeTypeSms != null) {
        isAuthenticationCodeTypeSms(this as o.AuthenticationCodeTypeSms);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.AuthenticationCodeTypeCall) {
      if (isAuthenticationCodeTypeCall != null) {
        isAuthenticationCodeTypeCall(this as o.AuthenticationCodeTypeCall);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.AuthenticationCodeTypeFlashCall) {
      if (isAuthenticationCodeTypeFlashCall != null) {
        isAuthenticationCodeTypeFlashCall(this as o.AuthenticationCodeTypeFlashCall);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class AuthenticationCodeInfo extends b.TdBase {
  void match({
    Action<o.AuthenticationCodeInfo>? isAuthenticationCodeInfo,
    Action<AuthenticationCodeInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.AuthenticationCodeInfo) {
      if (isAuthenticationCodeInfo != null) {
        isAuthenticationCodeInfo(this as o.AuthenticationCodeInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class EmailAddressAuthenticationCodeInfo extends b.TdBase {
  void match({
    Action<o.EmailAddressAuthenticationCodeInfo>? isEmailAddressAuthenticationCodeInfo,
    Action<EmailAddressAuthenticationCodeInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.EmailAddressAuthenticationCodeInfo) {
      if (isEmailAddressAuthenticationCodeInfo != null) {
        isEmailAddressAuthenticationCodeInfo(this as o.EmailAddressAuthenticationCodeInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class TextEntity extends b.TdBase {
  void match({
    Action<o.TextEntity>? isTextEntity,
    Action<TextEntity>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TextEntity) {
      if (isTextEntity != null) {
        isTextEntity(this as o.TextEntity);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class TextEntities extends b.TdBase {
  void match({
    Action<o.TextEntities>? isTextEntities,
    Action<TextEntities>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TextEntities) {
      if (isTextEntities != null) {
        isTextEntities(this as o.TextEntities);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class FormattedText extends b.TdBase {
  void match({
    Action<o.FormattedText>? isFormattedText,
    Action<FormattedText>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.FormattedText) {
      if (isFormattedText != null) {
        isFormattedText(this as o.FormattedText);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class TermsOfService extends b.TdBase {
  void match({
    Action<o.TermsOfService>? isTermsOfService,
    Action<TermsOfService>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TermsOfService) {
      if (isTermsOfService != null) {
        isTermsOfService(this as o.TermsOfService);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents the current authorization state of the TDLib client
abstract class AuthorizationState extends b.TdBase {
  void match({
    Action<o.AuthorizationStateWaitTdlibParameters>? isAuthorizationStateWaitTdlibParameters,
    Action<o.AuthorizationStateWaitEncryptionKey>? isAuthorizationStateWaitEncryptionKey,
    Action<o.AuthorizationStateWaitPhoneNumber>? isAuthorizationStateWaitPhoneNumber,
    Action<o.AuthorizationStateWaitCode>? isAuthorizationStateWaitCode,
    Action<o.AuthorizationStateWaitOtherDeviceConfirmation>? isAuthorizationStateWaitOtherDeviceConfirmation,
    Action<o.AuthorizationStateWaitRegistration>? isAuthorizationStateWaitRegistration,
    Action<o.AuthorizationStateWaitPassword>? isAuthorizationStateWaitPassword,
    Action<o.AuthorizationStateReady>? isAuthorizationStateReady,
    Action<o.AuthorizationStateLoggingOut>? isAuthorizationStateLoggingOut,
    Action<o.AuthorizationStateClosing>? isAuthorizationStateClosing,
    Action<o.AuthorizationStateClosed>? isAuthorizationStateClosed,
    Action<AuthorizationState>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.AuthorizationStateWaitTdlibParameters) {
      if (isAuthorizationStateWaitTdlibParameters != null) {
        isAuthorizationStateWaitTdlibParameters(this as o.AuthorizationStateWaitTdlibParameters);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateWaitEncryptionKey) {
      if (isAuthorizationStateWaitEncryptionKey != null) {
        isAuthorizationStateWaitEncryptionKey(this as o.AuthorizationStateWaitEncryptionKey);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateWaitPhoneNumber) {
      if (isAuthorizationStateWaitPhoneNumber != null) {
        isAuthorizationStateWaitPhoneNumber(this as o.AuthorizationStateWaitPhoneNumber);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateWaitCode) {
      if (isAuthorizationStateWaitCode != null) {
        isAuthorizationStateWaitCode(this as o.AuthorizationStateWaitCode);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateWaitOtherDeviceConfirmation) {
      if (isAuthorizationStateWaitOtherDeviceConfirmation != null) {
        isAuthorizationStateWaitOtherDeviceConfirmation(this as o.AuthorizationStateWaitOtherDeviceConfirmation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateWaitRegistration) {
      if (isAuthorizationStateWaitRegistration != null) {
        isAuthorizationStateWaitRegistration(this as o.AuthorizationStateWaitRegistration);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateWaitPassword) {
      if (isAuthorizationStateWaitPassword != null) {
        isAuthorizationStateWaitPassword(this as o.AuthorizationStateWaitPassword);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateReady) {
      if (isAuthorizationStateReady != null) {
        isAuthorizationStateReady(this as o.AuthorizationStateReady);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateLoggingOut) {
      if (isAuthorizationStateLoggingOut != null) {
        isAuthorizationStateLoggingOut(this as o.AuthorizationStateLoggingOut);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateClosing) {
      if (isAuthorizationStateClosing != null) {
        isAuthorizationStateClosing(this as o.AuthorizationStateClosing);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.AuthorizationStateClosed) {
      if (isAuthorizationStateClosed != null) {
        isAuthorizationStateClosed(this as o.AuthorizationStateClosed);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PasswordState extends b.TdBase {
  void match({
    Action<o.PasswordState>? isPasswordState,
    Action<PasswordState>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PasswordState) {
      if (isPasswordState != null) {
        isPasswordState(this as o.PasswordState);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class RecoveryEmailAddress extends b.TdBase {
  void match({
    Action<o.RecoveryEmailAddress>? isRecoveryEmailAddress,
    Action<RecoveryEmailAddress>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.RecoveryEmailAddress) {
      if (isRecoveryEmailAddress != null) {
        isRecoveryEmailAddress(this as o.RecoveryEmailAddress);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class TemporaryPasswordState extends b.TdBase {
  void match({
    Action<o.TemporaryPasswordState>? isTemporaryPasswordState,
    Action<TemporaryPasswordState>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TemporaryPasswordState) {
      if (isTemporaryPasswordState != null) {
        isTemporaryPasswordState(this as o.TemporaryPasswordState);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class LocalFile extends b.TdBase {
  void match({
    Action<o.LocalFile>? isLocalFile,
    Action<LocalFile>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LocalFile) {
      if (isLocalFile != null) {
        isLocalFile(this as o.LocalFile);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class RemoteFile extends b.TdBase {
  void match({
    Action<o.RemoteFile>? isRemoteFile,
    Action<RemoteFile>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.RemoteFile) {
      if (isRemoteFile != null) {
        isRemoteFile(this as o.RemoteFile);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class File extends b.TdBase {
  void match({
    Action<o.File>? isFile,
    Action<File>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.File) {
      if (isFile != null) {
        isFile(this as o.File);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Points to a file
abstract class InputFile extends b.TdBase {
  void match({
    Action<o.InputFileId>? isInputFileId,
    Action<o.InputFileRemote>? isInputFileRemote,
    Action<o.InputFileLocal>? isInputFileLocal,
    Action<o.InputFileGenerated>? isInputFileGenerated,
    Action<InputFile>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputFileId) {
      if (isInputFileId != null) {
        isInputFileId(this as o.InputFileId);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputFileRemote) {
      if (isInputFileRemote != null) {
        isInputFileRemote(this as o.InputFileRemote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputFileLocal) {
      if (isInputFileLocal != null) {
        isInputFileLocal(this as o.InputFileLocal);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputFileGenerated) {
      if (isInputFileGenerated != null) {
        isInputFileGenerated(this as o.InputFileGenerated);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PhotoSize extends b.TdBase {
  void match({
    Action<o.PhotoSize>? isPhotoSize,
    Action<PhotoSize>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PhotoSize) {
      if (isPhotoSize != null) {
        isPhotoSize(this as o.PhotoSize);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Minithumbnail extends b.TdBase {
  void match({
    Action<o.Minithumbnail>? isMinithumbnail,
    Action<Minithumbnail>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Minithumbnail) {
      if (isMinithumbnail != null) {
        isMinithumbnail(this as o.Minithumbnail);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes format of the thumbnail
abstract class ThumbnailFormat extends b.TdBase {
  void match({
    Action<o.ThumbnailFormatJpeg>? isThumbnailFormatJpeg,
    Action<o.ThumbnailFormatPng>? isThumbnailFormatPng,
    Action<o.ThumbnailFormatWebp>? isThumbnailFormatWebp,
    Action<o.ThumbnailFormatGif>? isThumbnailFormatGif,
    Action<o.ThumbnailFormatTgs>? isThumbnailFormatTgs,
    Action<o.ThumbnailFormatMpeg4>? isThumbnailFormatMpeg4,
    Action<ThumbnailFormat>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ThumbnailFormatJpeg) {
      if (isThumbnailFormatJpeg != null) {
        isThumbnailFormatJpeg(this as o.ThumbnailFormatJpeg);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ThumbnailFormatPng) {
      if (isThumbnailFormatPng != null) {
        isThumbnailFormatPng(this as o.ThumbnailFormatPng);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ThumbnailFormatWebp) {
      if (isThumbnailFormatWebp != null) {
        isThumbnailFormatWebp(this as o.ThumbnailFormatWebp);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ThumbnailFormatGif) {
      if (isThumbnailFormatGif != null) {
        isThumbnailFormatGif(this as o.ThumbnailFormatGif);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ThumbnailFormatTgs) {
      if (isThumbnailFormatTgs != null) {
        isThumbnailFormatTgs(this as o.ThumbnailFormatTgs);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ThumbnailFormatMpeg4) {
      if (isThumbnailFormatMpeg4 != null) {
        isThumbnailFormatMpeg4(this as o.ThumbnailFormatMpeg4);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Thumbnail extends b.TdBase {
  void match({
    Action<o.Thumbnail>? isThumbnail,
    Action<Thumbnail>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Thumbnail) {
      if (isThumbnail != null) {
        isThumbnail(this as o.Thumbnail);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Part of the face, relative to which a mask should be placed
abstract class MaskPoint extends b.TdBase {
  void match({
    Action<o.MaskPointForehead>? isMaskPointForehead,
    Action<o.MaskPointEyes>? isMaskPointEyes,
    Action<o.MaskPointMouth>? isMaskPointMouth,
    Action<o.MaskPointChin>? isMaskPointChin,
    Action<MaskPoint>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MaskPointForehead) {
      if (isMaskPointForehead != null) {
        isMaskPointForehead(this as o.MaskPointForehead);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MaskPointEyes) {
      if (isMaskPointEyes != null) {
        isMaskPointEyes(this as o.MaskPointEyes);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MaskPointMouth) {
      if (isMaskPointMouth != null) {
        isMaskPointMouth(this as o.MaskPointMouth);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MaskPointChin) {
      if (isMaskPointChin != null) {
        isMaskPointChin(this as o.MaskPointChin);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class MaskPosition extends b.TdBase {
  void match({
    Action<o.MaskPosition>? isMaskPosition,
    Action<MaskPosition>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MaskPosition) {
      if (isMaskPosition != null) {
        isMaskPosition(this as o.MaskPosition);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ClosedVectorPath extends b.TdBase {
  void match({
    Action<o.ClosedVectorPath>? isClosedVectorPath,
    Action<ClosedVectorPath>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ClosedVectorPath) {
      if (isClosedVectorPath != null) {
        isClosedVectorPath(this as o.ClosedVectorPath);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PollOption extends b.TdBase {
  void match({
    Action<o.PollOption>? isPollOption,
    Action<PollOption>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PollOption) {
      if (isPollOption != null) {
        isPollOption(this as o.PollOption);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the type of a poll
abstract class PollType extends b.TdBase {
  void match({
    Action<o.PollTypeRegular>? isPollTypeRegular,
    Action<o.PollTypeQuiz>? isPollTypeQuiz,
    Action<PollType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PollTypeRegular) {
      if (isPollTypeRegular != null) {
        isPollTypeRegular(this as o.PollTypeRegular);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PollTypeQuiz) {
      if (isPollTypeQuiz != null) {
        isPollTypeQuiz(this as o.PollTypeQuiz);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Animation extends b.TdBase {
  void match({
    Action<o.Animation>? isAnimation,
    Action<Animation>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Animation) {
      if (isAnimation != null) {
        isAnimation(this as o.Animation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Audio extends b.TdBase {
  void match({
    Action<o.Audio>? isAudio,
    Action<Audio>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Audio) {
      if (isAudio != null) {
        isAudio(this as o.Audio);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Document extends b.TdBase {
  void match({
    Action<o.Document>? isDocument,
    Action<Document>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Document) {
      if (isDocument != null) {
        isDocument(this as o.Document);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Photo extends b.TdBase {
  void match({
    Action<o.Photo>? isPhoto,
    Action<Photo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Photo) {
      if (isPhoto != null) {
        isPhoto(this as o.Photo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Sticker extends b.TdBase {
  void match({
    Action<o.Sticker>? isSticker,
    Action<Sticker>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Sticker) {
      if (isSticker != null) {
        isSticker(this as o.Sticker);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Video extends b.TdBase {
  void match({
    Action<o.Video>? isVideo,
    Action<Video>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Video) {
      if (isVideo != null) {
        isVideo(this as o.Video);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class VideoNote extends b.TdBase {
  void match({
    Action<o.VideoNote>? isVideoNote,
    Action<VideoNote>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.VideoNote) {
      if (isVideoNote != null) {
        isVideoNote(this as o.VideoNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class VoiceNote extends b.TdBase {
  void match({
    Action<o.VoiceNote>? isVoiceNote,
    Action<VoiceNote>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.VoiceNote) {
      if (isVoiceNote != null) {
        isVoiceNote(this as o.VoiceNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Contact extends b.TdBase {
  void match({
    Action<o.Contact>? isContact,
    Action<Contact>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Contact) {
      if (isContact != null) {
        isContact(this as o.Contact);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Location extends b.TdBase {
  void match({
    Action<o.Location>? isLocation,
    Action<Location>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Location) {
      if (isLocation != null) {
        isLocation(this as o.Location);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Venue extends b.TdBase {
  void match({
    Action<o.Venue>? isVenue,
    Action<Venue>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Venue) {
      if (isVenue != null) {
        isVenue(this as o.Venue);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Game extends b.TdBase {
  void match({
    Action<o.Game>? isGame,
    Action<Game>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Game) {
      if (isGame != null) {
        isGame(this as o.Game);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Poll extends b.TdBase {
  void match({
    Action<o.Poll>? isPoll,
    Action<Poll>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Poll) {
      if (isPoll != null) {
        isPoll(this as o.Poll);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ProfilePhoto extends b.TdBase {
  void match({
    Action<o.ProfilePhoto>? isProfilePhoto,
    Action<ProfilePhoto>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ProfilePhoto) {
      if (isProfilePhoto != null) {
        isProfilePhoto(this as o.ProfilePhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatPhotoInfo extends b.TdBase {
  void match({
    Action<o.ChatPhotoInfo>? isChatPhotoInfo,
    Action<ChatPhotoInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatPhotoInfo) {
      if (isChatPhotoInfo != null) {
        isChatPhotoInfo(this as o.ChatPhotoInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents the type of a user. The following types are possible: regular users, deleted users and bots
abstract class UserType extends b.TdBase {
  void match({
    Action<o.UserTypeRegular>? isUserTypeRegular,
    Action<o.UserTypeDeleted>? isUserTypeDeleted,
    Action<o.UserTypeBot>? isUserTypeBot,
    Action<o.UserTypeUnknown>? isUserTypeUnknown,
    Action<UserType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.UserTypeRegular) {
      if (isUserTypeRegular != null) {
        isUserTypeRegular(this as o.UserTypeRegular);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserTypeDeleted) {
      if (isUserTypeDeleted != null) {
        isUserTypeDeleted(this as o.UserTypeDeleted);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserTypeBot) {
      if (isUserTypeBot != null) {
        isUserTypeBot(this as o.UserTypeBot);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserTypeUnknown) {
      if (isUserTypeUnknown != null) {
        isUserTypeUnknown(this as o.UserTypeUnknown);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class BotCommand extends b.TdBase {
  void match({
    Action<o.BotCommand>? isBotCommand,
    Action<BotCommand>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BotCommand) {
      if (isBotCommand != null) {
        isBotCommand(this as o.BotCommand);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class BotInfo extends b.TdBase {
  void match({
    Action<o.BotInfo>? isBotInfo,
    Action<BotInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BotInfo) {
      if (isBotInfo != null) {
        isBotInfo(this as o.BotInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatLocation extends b.TdBase {
  void match({
    Action<o.ChatLocation>? isChatLocation,
    Action<ChatLocation>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatLocation) {
      if (isChatLocation != null) {
        isChatLocation(this as o.ChatLocation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class AnimatedChatPhoto extends b.TdBase {
  void match({
    Action<o.AnimatedChatPhoto>? isAnimatedChatPhoto,
    Action<AnimatedChatPhoto>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.AnimatedChatPhoto) {
      if (isAnimatedChatPhoto != null) {
        isAnimatedChatPhoto(this as o.AnimatedChatPhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatPhoto extends b.TdBase {
  void match({
    Action<o.ChatPhoto>? isChatPhoto,
    Action<ChatPhoto>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatPhoto) {
      if (isChatPhoto != null) {
        isChatPhoto(this as o.ChatPhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatPhotos extends b.TdBase {
  void match({
    Action<o.ChatPhotos>? isChatPhotos,
    Action<ChatPhotos>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatPhotos) {
      if (isChatPhotos != null) {
        isChatPhotos(this as o.ChatPhotos);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes a photo to be set as a user profile or chat photo
abstract class InputChatPhoto extends b.TdBase {
  void match({
    Action<o.InputChatPhotoPrevious>? isInputChatPhotoPrevious,
    Action<o.InputChatPhotoStatic>? isInputChatPhotoStatic,
    Action<o.InputChatPhotoAnimation>? isInputChatPhotoAnimation,
    Action<InputChatPhoto>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputChatPhotoPrevious) {
      if (isInputChatPhotoPrevious != null) {
        isInputChatPhotoPrevious(this as o.InputChatPhotoPrevious);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputChatPhotoStatic) {
      if (isInputChatPhotoStatic != null) {
        isInputChatPhotoStatic(this as o.InputChatPhotoStatic);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputChatPhotoAnimation) {
      if (isInputChatPhotoAnimation != null) {
        isInputChatPhotoAnimation(this as o.InputChatPhotoAnimation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class User extends b.TdBase {
  void match({
    Action<o.User>? isUser,
    Action<User>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.User) {
      if (isUser != null) {
        isUser(this as o.User);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class UserFullInfo extends b.TdBase {
  void match({
    Action<o.UserFullInfo>? isUserFullInfo,
    Action<UserFullInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.UserFullInfo) {
      if (isUserFullInfo != null) {
        isUserFullInfo(this as o.UserFullInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Users extends b.TdBase {
  void match({
    Action<o.Users>? isUsers,
    Action<Users>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Users) {
      if (isUsers != null) {
        isUsers(this as o.Users);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatAdministrator extends b.TdBase {
  void match({
    Action<o.ChatAdministrator>? isChatAdministrator,
    Action<ChatAdministrator>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatAdministrator) {
      if (isChatAdministrator != null) {
        isChatAdministrator(this as o.ChatAdministrator);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatAdministrators extends b.TdBase {
  void match({
    Action<o.ChatAdministrators>? isChatAdministrators,
    Action<ChatAdministrators>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatAdministrators) {
      if (isChatAdministrators != null) {
        isChatAdministrators(this as o.ChatAdministrators);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatPermissions extends b.TdBase {
  void match({
    Action<o.ChatPermissions>? isChatPermissions,
    Action<ChatPermissions>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatPermissions) {
      if (isChatPermissions != null) {
        isChatPermissions(this as o.ChatPermissions);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Provides information about the status of a member in a chat
abstract class ChatMemberStatus extends b.TdBase {
  void match({
    Action<o.ChatMemberStatusCreator>? isChatMemberStatusCreator,
    Action<o.ChatMemberStatusAdministrator>? isChatMemberStatusAdministrator,
    Action<o.ChatMemberStatusMember>? isChatMemberStatusMember,
    Action<o.ChatMemberStatusRestricted>? isChatMemberStatusRestricted,
    Action<o.ChatMemberStatusLeft>? isChatMemberStatusLeft,
    Action<o.ChatMemberStatusBanned>? isChatMemberStatusBanned,
    Action<ChatMemberStatus>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatMemberStatusCreator) {
      if (isChatMemberStatusCreator != null) {
        isChatMemberStatusCreator(this as o.ChatMemberStatusCreator);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatMemberStatusAdministrator) {
      if (isChatMemberStatusAdministrator != null) {
        isChatMemberStatusAdministrator(this as o.ChatMemberStatusAdministrator);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatMemberStatusMember) {
      if (isChatMemberStatusMember != null) {
        isChatMemberStatusMember(this as o.ChatMemberStatusMember);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatMemberStatusRestricted) {
      if (isChatMemberStatusRestricted != null) {
        isChatMemberStatusRestricted(this as o.ChatMemberStatusRestricted);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatMemberStatusLeft) {
      if (isChatMemberStatusLeft != null) {
        isChatMemberStatusLeft(this as o.ChatMemberStatusLeft);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatMemberStatusBanned) {
      if (isChatMemberStatusBanned != null) {
        isChatMemberStatusBanned(this as o.ChatMemberStatusBanned);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatMember extends b.TdBase {
  void match({
    Action<o.ChatMember>? isChatMember,
    Action<ChatMember>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatMember) {
      if (isChatMember != null) {
        isChatMember(this as o.ChatMember);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatMembers extends b.TdBase {
  void match({
    Action<o.ChatMembers>? isChatMembers,
    Action<ChatMembers>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatMembers) {
      if (isChatMembers != null) {
        isChatMembers(this as o.ChatMembers);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Specifies the kind of chat members to return in searchChatMembers
abstract class ChatMembersFilter extends b.TdBase {
  void match({
    Action<o.ChatMembersFilterContacts>? isChatMembersFilterContacts,
    Action<o.ChatMembersFilterAdministrators>? isChatMembersFilterAdministrators,
    Action<o.ChatMembersFilterMembers>? isChatMembersFilterMembers,
    Action<o.ChatMembersFilterMention>? isChatMembersFilterMention,
    Action<o.ChatMembersFilterRestricted>? isChatMembersFilterRestricted,
    Action<o.ChatMembersFilterBanned>? isChatMembersFilterBanned,
    Action<o.ChatMembersFilterBots>? isChatMembersFilterBots,
    Action<ChatMembersFilter>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatMembersFilterContacts) {
      if (isChatMembersFilterContacts != null) {
        isChatMembersFilterContacts(this as o.ChatMembersFilterContacts);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatMembersFilterAdministrators) {
      if (isChatMembersFilterAdministrators != null) {
        isChatMembersFilterAdministrators(this as o.ChatMembersFilterAdministrators);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatMembersFilterMembers) {
      if (isChatMembersFilterMembers != null) {
        isChatMembersFilterMembers(this as o.ChatMembersFilterMembers);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatMembersFilterMention) {
      if (isChatMembersFilterMention != null) {
        isChatMembersFilterMention(this as o.ChatMembersFilterMention);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatMembersFilterRestricted) {
      if (isChatMembersFilterRestricted != null) {
        isChatMembersFilterRestricted(this as o.ChatMembersFilterRestricted);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatMembersFilterBanned) {
      if (isChatMembersFilterBanned != null) {
        isChatMembersFilterBanned(this as o.ChatMembersFilterBanned);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatMembersFilterBots) {
      if (isChatMembersFilterBots != null) {
        isChatMembersFilterBots(this as o.ChatMembersFilterBots);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Specifies the kind of chat members to return in getSupergroupMembers
abstract class SupergroupMembersFilter extends b.TdBase {
  void match({
    Action<o.SupergroupMembersFilterRecent>? isSupergroupMembersFilterRecent,
    Action<o.SupergroupMembersFilterContacts>? isSupergroupMembersFilterContacts,
    Action<o.SupergroupMembersFilterAdministrators>? isSupergroupMembersFilterAdministrators,
    Action<o.SupergroupMembersFilterSearch>? isSupergroupMembersFilterSearch,
    Action<o.SupergroupMembersFilterRestricted>? isSupergroupMembersFilterRestricted,
    Action<o.SupergroupMembersFilterBanned>? isSupergroupMembersFilterBanned,
    Action<o.SupergroupMembersFilterMention>? isSupergroupMembersFilterMention,
    Action<o.SupergroupMembersFilterBots>? isSupergroupMembersFilterBots,
    Action<SupergroupMembersFilter>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.SupergroupMembersFilterRecent) {
      if (isSupergroupMembersFilterRecent != null) {
        isSupergroupMembersFilterRecent(this as o.SupergroupMembersFilterRecent);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SupergroupMembersFilterContacts) {
      if (isSupergroupMembersFilterContacts != null) {
        isSupergroupMembersFilterContacts(this as o.SupergroupMembersFilterContacts);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SupergroupMembersFilterAdministrators) {
      if (isSupergroupMembersFilterAdministrators != null) {
        isSupergroupMembersFilterAdministrators(this as o.SupergroupMembersFilterAdministrators);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SupergroupMembersFilterSearch) {
      if (isSupergroupMembersFilterSearch != null) {
        isSupergroupMembersFilterSearch(this as o.SupergroupMembersFilterSearch);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SupergroupMembersFilterRestricted) {
      if (isSupergroupMembersFilterRestricted != null) {
        isSupergroupMembersFilterRestricted(this as o.SupergroupMembersFilterRestricted);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SupergroupMembersFilterBanned) {
      if (isSupergroupMembersFilterBanned != null) {
        isSupergroupMembersFilterBanned(this as o.SupergroupMembersFilterBanned);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SupergroupMembersFilterMention) {
      if (isSupergroupMembersFilterMention != null) {
        isSupergroupMembersFilterMention(this as o.SupergroupMembersFilterMention);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SupergroupMembersFilterBots) {
      if (isSupergroupMembersFilterBots != null) {
        isSupergroupMembersFilterBots(this as o.SupergroupMembersFilterBots);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatInviteLink extends b.TdBase {
  void match({
    Action<o.ChatInviteLink>? isChatInviteLink,
    Action<ChatInviteLink>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatInviteLink) {
      if (isChatInviteLink != null) {
        isChatInviteLink(this as o.ChatInviteLink);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatInviteLinks extends b.TdBase {
  void match({
    Action<o.ChatInviteLinks>? isChatInviteLinks,
    Action<ChatInviteLinks>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatInviteLinks) {
      if (isChatInviteLinks != null) {
        isChatInviteLinks(this as o.ChatInviteLinks);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatInviteLinkCount extends b.TdBase {
  void match({
    Action<o.ChatInviteLinkCount>? isChatInviteLinkCount,
    Action<ChatInviteLinkCount>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatInviteLinkCount) {
      if (isChatInviteLinkCount != null) {
        isChatInviteLinkCount(this as o.ChatInviteLinkCount);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatInviteLinkCounts extends b.TdBase {
  void match({
    Action<o.ChatInviteLinkCounts>? isChatInviteLinkCounts,
    Action<ChatInviteLinkCounts>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatInviteLinkCounts) {
      if (isChatInviteLinkCounts != null) {
        isChatInviteLinkCounts(this as o.ChatInviteLinkCounts);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatInviteLinkMember extends b.TdBase {
  void match({
    Action<o.ChatInviteLinkMember>? isChatInviteLinkMember,
    Action<ChatInviteLinkMember>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatInviteLinkMember) {
      if (isChatInviteLinkMember != null) {
        isChatInviteLinkMember(this as o.ChatInviteLinkMember);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatInviteLinkMembers extends b.TdBase {
  void match({
    Action<o.ChatInviteLinkMembers>? isChatInviteLinkMembers,
    Action<ChatInviteLinkMembers>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatInviteLinkMembers) {
      if (isChatInviteLinkMembers != null) {
        isChatInviteLinkMembers(this as o.ChatInviteLinkMembers);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatInviteLinkInfo extends b.TdBase {
  void match({
    Action<o.ChatInviteLinkInfo>? isChatInviteLinkInfo,
    Action<ChatInviteLinkInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatInviteLinkInfo) {
      if (isChatInviteLinkInfo != null) {
        isChatInviteLinkInfo(this as o.ChatInviteLinkInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class BasicGroup extends b.TdBase {
  void match({
    Action<o.BasicGroup>? isBasicGroup,
    Action<BasicGroup>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BasicGroup) {
      if (isBasicGroup != null) {
        isBasicGroup(this as o.BasicGroup);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class BasicGroupFullInfo extends b.TdBase {
  void match({
    Action<o.BasicGroupFullInfo>? isBasicGroupFullInfo,
    Action<BasicGroupFullInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BasicGroupFullInfo) {
      if (isBasicGroupFullInfo != null) {
        isBasicGroupFullInfo(this as o.BasicGroupFullInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Supergroup extends b.TdBase {
  void match({
    Action<o.Supergroup>? isSupergroup,
    Action<Supergroup>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Supergroup) {
      if (isSupergroup != null) {
        isSupergroup(this as o.Supergroup);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class SupergroupFullInfo extends b.TdBase {
  void match({
    Action<o.SupergroupFullInfo>? isSupergroupFullInfo,
    Action<SupergroupFullInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.SupergroupFullInfo) {
      if (isSupergroupFullInfo != null) {
        isSupergroupFullInfo(this as o.SupergroupFullInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the current secret chat state
abstract class SecretChatState extends b.TdBase {
  void match({
    Action<o.SecretChatStatePending>? isSecretChatStatePending,
    Action<o.SecretChatStateReady>? isSecretChatStateReady,
    Action<o.SecretChatStateClosed>? isSecretChatStateClosed,
    Action<SecretChatState>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.SecretChatStatePending) {
      if (isSecretChatStatePending != null) {
        isSecretChatStatePending(this as o.SecretChatStatePending);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SecretChatStateReady) {
      if (isSecretChatStateReady != null) {
        isSecretChatStateReady(this as o.SecretChatStateReady);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SecretChatStateClosed) {
      if (isSecretChatStateClosed != null) {
        isSecretChatStateClosed(this as o.SecretChatStateClosed);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class SecretChat extends b.TdBase {
  void match({
    Action<o.SecretChat>? isSecretChat,
    Action<SecretChat>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.SecretChat) {
      if (isSecretChat != null) {
        isSecretChat(this as o.SecretChat);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains information about the sender of a message
abstract class MessageSender extends b.TdBase {
  void match({
    Action<o.MessageSenderUser>? isMessageSenderUser,
    Action<o.MessageSenderChat>? isMessageSenderChat,
    Action<MessageSender>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageSenderUser) {
      if (isMessageSenderUser != null) {
        isMessageSenderUser(this as o.MessageSenderUser);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageSenderChat) {
      if (isMessageSenderChat != null) {
        isMessageSenderChat(this as o.MessageSenderChat);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class MessageSenders extends b.TdBase {
  void match({
    Action<o.MessageSenders>? isMessageSenders,
    Action<MessageSenders>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageSenders) {
      if (isMessageSenders != null) {
        isMessageSenders(this as o.MessageSenders);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains information about the origin of a forwarded message
abstract class MessageForwardOrigin extends b.TdBase {
  void match({
    Action<o.MessageForwardOriginUser>? isMessageForwardOriginUser,
    Action<o.MessageForwardOriginChat>? isMessageForwardOriginChat,
    Action<o.MessageForwardOriginHiddenUser>? isMessageForwardOriginHiddenUser,
    Action<o.MessageForwardOriginChannel>? isMessageForwardOriginChannel,
    Action<o.MessageForwardOriginMessageImport>? isMessageForwardOriginMessageImport,
    Action<MessageForwardOrigin>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageForwardOriginUser) {
      if (isMessageForwardOriginUser != null) {
        isMessageForwardOriginUser(this as o.MessageForwardOriginUser);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageForwardOriginChat) {
      if (isMessageForwardOriginChat != null) {
        isMessageForwardOriginChat(this as o.MessageForwardOriginChat);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageForwardOriginHiddenUser) {
      if (isMessageForwardOriginHiddenUser != null) {
        isMessageForwardOriginHiddenUser(this as o.MessageForwardOriginHiddenUser);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageForwardOriginChannel) {
      if (isMessageForwardOriginChannel != null) {
        isMessageForwardOriginChannel(this as o.MessageForwardOriginChannel);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageForwardOriginMessageImport) {
      if (isMessageForwardOriginMessageImport != null) {
        isMessageForwardOriginMessageImport(this as o.MessageForwardOriginMessageImport);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class MessageForwardInfo extends b.TdBase {
  void match({
    Action<o.MessageForwardInfo>? isMessageForwardInfo,
    Action<MessageForwardInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageForwardInfo) {
      if (isMessageForwardInfo != null) {
        isMessageForwardInfo(this as o.MessageForwardInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class MessageReplyInfo extends b.TdBase {
  void match({
    Action<o.MessageReplyInfo>? isMessageReplyInfo,
    Action<MessageReplyInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageReplyInfo) {
      if (isMessageReplyInfo != null) {
        isMessageReplyInfo(this as o.MessageReplyInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class MessageInteractionInfo extends b.TdBase {
  void match({
    Action<o.MessageInteractionInfo>? isMessageInteractionInfo,
    Action<MessageInteractionInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageInteractionInfo) {
      if (isMessageInteractionInfo != null) {
        isMessageInteractionInfo(this as o.MessageInteractionInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains information about the sending state of the message
abstract class MessageSendingState extends b.TdBase {
  void match({
    Action<o.MessageSendingStatePending>? isMessageSendingStatePending,
    Action<o.MessageSendingStateFailed>? isMessageSendingStateFailed,
    Action<MessageSendingState>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageSendingStatePending) {
      if (isMessageSendingStatePending != null) {
        isMessageSendingStatePending(this as o.MessageSendingStatePending);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageSendingStateFailed) {
      if (isMessageSendingStateFailed != null) {
        isMessageSendingStateFailed(this as o.MessageSendingStateFailed);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Message extends b.TdBase {
  void match({
    Action<o.Message>? isMessage,
    Action<Message>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Message) {
      if (isMessage != null) {
        isMessage(this as o.Message);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Messages extends b.TdBase {
  void match({
    Action<o.Messages>? isMessages,
    Action<Messages>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Messages) {
      if (isMessages != null) {
        isMessages(this as o.Messages);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class FoundMessages extends b.TdBase {
  void match({
    Action<o.FoundMessages>? isFoundMessages,
    Action<FoundMessages>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.FoundMessages) {
      if (isFoundMessages != null) {
        isFoundMessages(this as o.FoundMessages);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the types of chats to which notification settings are applied
abstract class NotificationSettingsScope extends b.TdBase {
  void match({
    Action<o.NotificationSettingsScopePrivateChats>? isNotificationSettingsScopePrivateChats,
    Action<o.NotificationSettingsScopeGroupChats>? isNotificationSettingsScopeGroupChats,
    Action<o.NotificationSettingsScopeChannelChats>? isNotificationSettingsScopeChannelChats,
    Action<NotificationSettingsScope>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.NotificationSettingsScopePrivateChats) {
      if (isNotificationSettingsScopePrivateChats != null) {
        isNotificationSettingsScopePrivateChats(this as o.NotificationSettingsScopePrivateChats);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.NotificationSettingsScopeGroupChats) {
      if (isNotificationSettingsScopeGroupChats != null) {
        isNotificationSettingsScopeGroupChats(this as o.NotificationSettingsScopeGroupChats);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.NotificationSettingsScopeChannelChats) {
      if (isNotificationSettingsScopeChannelChats != null) {
        isNotificationSettingsScopeChannelChats(this as o.NotificationSettingsScopeChannelChats);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatNotificationSettings extends b.TdBase {
  void match({
    Action<o.ChatNotificationSettings>? isChatNotificationSettings,
    Action<ChatNotificationSettings>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatNotificationSettings) {
      if (isChatNotificationSettings != null) {
        isChatNotificationSettings(this as o.ChatNotificationSettings);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ScopeNotificationSettings extends b.TdBase {
  void match({
    Action<o.ScopeNotificationSettings>? isScopeNotificationSettings,
    Action<ScopeNotificationSettings>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ScopeNotificationSettings) {
      if (isScopeNotificationSettings != null) {
        isScopeNotificationSettings(this as o.ScopeNotificationSettings);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class DraftMessage extends b.TdBase {
  void match({
    Action<o.DraftMessage>? isDraftMessage,
    Action<DraftMessage>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.DraftMessage) {
      if (isDraftMessage != null) {
        isDraftMessage(this as o.DraftMessage);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the type of a chat
abstract class ChatType extends b.TdBase {
  void match({
    Action<o.ChatTypePrivate>? isChatTypePrivate,
    Action<o.ChatTypeBasicGroup>? isChatTypeBasicGroup,
    Action<o.ChatTypeSupergroup>? isChatTypeSupergroup,
    Action<o.ChatTypeSecret>? isChatTypeSecret,
    Action<ChatType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatTypePrivate) {
      if (isChatTypePrivate != null) {
        isChatTypePrivate(this as o.ChatTypePrivate);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatTypeBasicGroup) {
      if (isChatTypeBasicGroup != null) {
        isChatTypeBasicGroup(this as o.ChatTypeBasicGroup);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatTypeSupergroup) {
      if (isChatTypeSupergroup != null) {
        isChatTypeSupergroup(this as o.ChatTypeSupergroup);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatTypeSecret) {
      if (isChatTypeSecret != null) {
        isChatTypeSecret(this as o.ChatTypeSecret);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatFilter extends b.TdBase {
  void match({
    Action<o.ChatFilter>? isChatFilter,
    Action<ChatFilter>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatFilter) {
      if (isChatFilter != null) {
        isChatFilter(this as o.ChatFilter);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatFilterInfo extends b.TdBase {
  void match({
    Action<o.ChatFilterInfo>? isChatFilterInfo,
    Action<ChatFilterInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatFilterInfo) {
      if (isChatFilterInfo != null) {
        isChatFilterInfo(this as o.ChatFilterInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class RecommendedChatFilter extends b.TdBase {
  void match({
    Action<o.RecommendedChatFilter>? isRecommendedChatFilter,
    Action<RecommendedChatFilter>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.RecommendedChatFilter) {
      if (isRecommendedChatFilter != null) {
        isRecommendedChatFilter(this as o.RecommendedChatFilter);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class RecommendedChatFilters extends b.TdBase {
  void match({
    Action<o.RecommendedChatFilters>? isRecommendedChatFilters,
    Action<RecommendedChatFilters>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.RecommendedChatFilters) {
      if (isRecommendedChatFilters != null) {
        isRecommendedChatFilters(this as o.RecommendedChatFilters);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes a list of chats
abstract class ChatList extends b.TdBase {
  void match({
    Action<o.ChatListMain>? isChatListMain,
    Action<o.ChatListArchive>? isChatListArchive,
    Action<o.ChatListFilter>? isChatListFilter,
    Action<ChatList>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatListMain) {
      if (isChatListMain != null) {
        isChatListMain(this as o.ChatListMain);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatListArchive) {
      if (isChatListArchive != null) {
        isChatListArchive(this as o.ChatListArchive);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatListFilter) {
      if (isChatListFilter != null) {
        isChatListFilter(this as o.ChatListFilter);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatLists extends b.TdBase {
  void match({
    Action<o.ChatLists>? isChatLists,
    Action<ChatLists>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatLists) {
      if (isChatLists != null) {
        isChatLists(this as o.ChatLists);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes a reason why an external chat is shown in a chat list
abstract class ChatSource extends b.TdBase {
  void match({
    Action<o.ChatSourceMtprotoProxy>? isChatSourceMtprotoProxy,
    Action<o.ChatSourcePublicServiceAnnouncement>? isChatSourcePublicServiceAnnouncement,
    Action<ChatSource>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatSourceMtprotoProxy) {
      if (isChatSourceMtprotoProxy != null) {
        isChatSourceMtprotoProxy(this as o.ChatSourceMtprotoProxy);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatSourcePublicServiceAnnouncement) {
      if (isChatSourcePublicServiceAnnouncement != null) {
        isChatSourcePublicServiceAnnouncement(this as o.ChatSourcePublicServiceAnnouncement);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatPosition extends b.TdBase {
  void match({
    Action<o.ChatPosition>? isChatPosition,
    Action<ChatPosition>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatPosition) {
      if (isChatPosition != null) {
        isChatPosition(this as o.ChatPosition);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class VoiceChat extends b.TdBase {
  void match({
    Action<o.VoiceChat>? isVoiceChat,
    Action<VoiceChat>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.VoiceChat) {
      if (isVoiceChat != null) {
        isVoiceChat(this as o.VoiceChat);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Chat extends b.TdBase {
  void match({
    Action<o.Chat>? isChat,
    Action<Chat>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Chat) {
      if (isChat != null) {
        isChat(this as o.Chat);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Chats extends b.TdBase {
  void match({
    Action<o.Chats>? isChats,
    Action<Chats>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Chats) {
      if (isChats != null) {
        isChats(this as o.Chats);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatNearby extends b.TdBase {
  void match({
    Action<o.ChatNearby>? isChatNearby,
    Action<ChatNearby>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatNearby) {
      if (isChatNearby != null) {
        isChatNearby(this as o.ChatNearby);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatsNearby extends b.TdBase {
  void match({
    Action<o.ChatsNearby>? isChatsNearby,
    Action<ChatsNearby>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatsNearby) {
      if (isChatsNearby != null) {
        isChatsNearby(this as o.ChatsNearby);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes a type of public chats
abstract class PublicChatType extends b.TdBase {
  void match({
    Action<o.PublicChatTypeHasUsername>? isPublicChatTypeHasUsername,
    Action<o.PublicChatTypeIsLocationBased>? isPublicChatTypeIsLocationBased,
    Action<PublicChatType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PublicChatTypeHasUsername) {
      if (isPublicChatTypeHasUsername != null) {
        isPublicChatTypeHasUsername(this as o.PublicChatTypeHasUsername);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PublicChatTypeIsLocationBased) {
      if (isPublicChatTypeIsLocationBased != null) {
        isPublicChatTypeIsLocationBased(this as o.PublicChatTypeIsLocationBased);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes actions which should be possible to do through a chat action bar
abstract class ChatActionBar extends b.TdBase {
  void match({
    Action<o.ChatActionBarReportSpam>? isChatActionBarReportSpam,
    Action<o.ChatActionBarReportUnrelatedLocation>? isChatActionBarReportUnrelatedLocation,
    Action<o.ChatActionBarInviteMembers>? isChatActionBarInviteMembers,
    Action<o.ChatActionBarReportAddBlock>? isChatActionBarReportAddBlock,
    Action<o.ChatActionBarAddContact>? isChatActionBarAddContact,
    Action<o.ChatActionBarSharePhoneNumber>? isChatActionBarSharePhoneNumber,
    Action<ChatActionBar>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatActionBarReportSpam) {
      if (isChatActionBarReportSpam != null) {
        isChatActionBarReportSpam(this as o.ChatActionBarReportSpam);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionBarReportUnrelatedLocation) {
      if (isChatActionBarReportUnrelatedLocation != null) {
        isChatActionBarReportUnrelatedLocation(this as o.ChatActionBarReportUnrelatedLocation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionBarInviteMembers) {
      if (isChatActionBarInviteMembers != null) {
        isChatActionBarInviteMembers(this as o.ChatActionBarInviteMembers);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionBarReportAddBlock) {
      if (isChatActionBarReportAddBlock != null) {
        isChatActionBarReportAddBlock(this as o.ChatActionBarReportAddBlock);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionBarAddContact) {
      if (isChatActionBarAddContact != null) {
        isChatActionBarAddContact(this as o.ChatActionBarAddContact);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionBarSharePhoneNumber) {
      if (isChatActionBarSharePhoneNumber != null) {
        isChatActionBarSharePhoneNumber(this as o.ChatActionBarSharePhoneNumber);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes a keyboard button type
abstract class KeyboardButtonType extends b.TdBase {
  void match({
    Action<o.KeyboardButtonTypeText>? isKeyboardButtonTypeText,
    Action<o.KeyboardButtonTypeRequestPhoneNumber>? isKeyboardButtonTypeRequestPhoneNumber,
    Action<o.KeyboardButtonTypeRequestLocation>? isKeyboardButtonTypeRequestLocation,
    Action<o.KeyboardButtonTypeRequestPoll>? isKeyboardButtonTypeRequestPoll,
    Action<KeyboardButtonType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.KeyboardButtonTypeText) {
      if (isKeyboardButtonTypeText != null) {
        isKeyboardButtonTypeText(this as o.KeyboardButtonTypeText);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.KeyboardButtonTypeRequestPhoneNumber) {
      if (isKeyboardButtonTypeRequestPhoneNumber != null) {
        isKeyboardButtonTypeRequestPhoneNumber(this as o.KeyboardButtonTypeRequestPhoneNumber);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.KeyboardButtonTypeRequestLocation) {
      if (isKeyboardButtonTypeRequestLocation != null) {
        isKeyboardButtonTypeRequestLocation(this as o.KeyboardButtonTypeRequestLocation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.KeyboardButtonTypeRequestPoll) {
      if (isKeyboardButtonTypeRequestPoll != null) {
        isKeyboardButtonTypeRequestPoll(this as o.KeyboardButtonTypeRequestPoll);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class KeyboardButton extends b.TdBase {
  void match({
    Action<o.KeyboardButton>? isKeyboardButton,
    Action<KeyboardButton>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.KeyboardButton) {
      if (isKeyboardButton != null) {
        isKeyboardButton(this as o.KeyboardButton);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the type of an inline keyboard button
abstract class InlineKeyboardButtonType extends b.TdBase {
  void match({
    Action<o.InlineKeyboardButtonTypeUrl>? isInlineKeyboardButtonTypeUrl,
    Action<o.InlineKeyboardButtonTypeLoginUrl>? isInlineKeyboardButtonTypeLoginUrl,
    Action<o.InlineKeyboardButtonTypeCallback>? isInlineKeyboardButtonTypeCallback,
    Action<o.InlineKeyboardButtonTypeCallbackWithPassword>? isInlineKeyboardButtonTypeCallbackWithPassword,
    Action<o.InlineKeyboardButtonTypeCallbackGame>? isInlineKeyboardButtonTypeCallbackGame,
    Action<o.InlineKeyboardButtonTypeSwitchInline>? isInlineKeyboardButtonTypeSwitchInline,
    Action<o.InlineKeyboardButtonTypeBuy>? isInlineKeyboardButtonTypeBuy,
    Action<InlineKeyboardButtonType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InlineKeyboardButtonTypeUrl) {
      if (isInlineKeyboardButtonTypeUrl != null) {
        isInlineKeyboardButtonTypeUrl(this as o.InlineKeyboardButtonTypeUrl);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineKeyboardButtonTypeLoginUrl) {
      if (isInlineKeyboardButtonTypeLoginUrl != null) {
        isInlineKeyboardButtonTypeLoginUrl(this as o.InlineKeyboardButtonTypeLoginUrl);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineKeyboardButtonTypeCallback) {
      if (isInlineKeyboardButtonTypeCallback != null) {
        isInlineKeyboardButtonTypeCallback(this as o.InlineKeyboardButtonTypeCallback);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineKeyboardButtonTypeCallbackWithPassword) {
      if (isInlineKeyboardButtonTypeCallbackWithPassword != null) {
        isInlineKeyboardButtonTypeCallbackWithPassword(this as o.InlineKeyboardButtonTypeCallbackWithPassword);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineKeyboardButtonTypeCallbackGame) {
      if (isInlineKeyboardButtonTypeCallbackGame != null) {
        isInlineKeyboardButtonTypeCallbackGame(this as o.InlineKeyboardButtonTypeCallbackGame);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineKeyboardButtonTypeSwitchInline) {
      if (isInlineKeyboardButtonTypeSwitchInline != null) {
        isInlineKeyboardButtonTypeSwitchInline(this as o.InlineKeyboardButtonTypeSwitchInline);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineKeyboardButtonTypeBuy) {
      if (isInlineKeyboardButtonTypeBuy != null) {
        isInlineKeyboardButtonTypeBuy(this as o.InlineKeyboardButtonTypeBuy);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class InlineKeyboardButton extends b.TdBase {
  void match({
    Action<o.InlineKeyboardButton>? isInlineKeyboardButton,
    Action<InlineKeyboardButton>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InlineKeyboardButton) {
      if (isInlineKeyboardButton != null) {
        isInlineKeyboardButton(this as o.InlineKeyboardButton);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains a description of a custom keyboard and actions that can be done with it to quickly reply to bots
abstract class ReplyMarkup extends b.TdBase {
  void match({
    Action<o.ReplyMarkupRemoveKeyboard>? isReplyMarkupRemoveKeyboard,
    Action<o.ReplyMarkupForceReply>? isReplyMarkupForceReply,
    Action<o.ReplyMarkupShowKeyboard>? isReplyMarkupShowKeyboard,
    Action<o.ReplyMarkupInlineKeyboard>? isReplyMarkupInlineKeyboard,
    Action<ReplyMarkup>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ReplyMarkupRemoveKeyboard) {
      if (isReplyMarkupRemoveKeyboard != null) {
        isReplyMarkupRemoveKeyboard(this as o.ReplyMarkupRemoveKeyboard);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ReplyMarkupForceReply) {
      if (isReplyMarkupForceReply != null) {
        isReplyMarkupForceReply(this as o.ReplyMarkupForceReply);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ReplyMarkupShowKeyboard) {
      if (isReplyMarkupShowKeyboard != null) {
        isReplyMarkupShowKeyboard(this as o.ReplyMarkupShowKeyboard);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ReplyMarkupInlineKeyboard) {
      if (isReplyMarkupInlineKeyboard != null) {
        isReplyMarkupInlineKeyboard(this as o.ReplyMarkupInlineKeyboard);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains information about an inline button of type inlineKeyboardButtonTypeLoginUrl
abstract class LoginUrlInfo extends b.TdBase {
  void match({
    Action<o.LoginUrlInfoOpen>? isLoginUrlInfoOpen,
    Action<o.LoginUrlInfoRequestConfirmation>? isLoginUrlInfoRequestConfirmation,
    Action<LoginUrlInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LoginUrlInfoOpen) {
      if (isLoginUrlInfoOpen != null) {
        isLoginUrlInfoOpen(this as o.LoginUrlInfoOpen);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.LoginUrlInfoRequestConfirmation) {
      if (isLoginUrlInfoRequestConfirmation != null) {
        isLoginUrlInfoRequestConfirmation(this as o.LoginUrlInfoRequestConfirmation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class MessageThreadInfo extends b.TdBase {
  void match({
    Action<o.MessageThreadInfo>? isMessageThreadInfo,
    Action<MessageThreadInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageThreadInfo) {
      if (isMessageThreadInfo != null) {
        isMessageThreadInfo(this as o.MessageThreadInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes a text object inside an instant-view web page
abstract class RichText extends b.TdBase {
  void match({
    Action<o.RichTextPlain>? isRichTextPlain,
    Action<o.RichTextBold>? isRichTextBold,
    Action<o.RichTextItalic>? isRichTextItalic,
    Action<o.RichTextUnderline>? isRichTextUnderline,
    Action<o.RichTextStrikethrough>? isRichTextStrikethrough,
    Action<o.RichTextFixed>? isRichTextFixed,
    Action<o.RichTextUrl>? isRichTextUrl,
    Action<o.RichTextEmailAddress>? isRichTextEmailAddress,
    Action<o.RichTextSubscript>? isRichTextSubscript,
    Action<o.RichTextSuperscript>? isRichTextSuperscript,
    Action<o.RichTextMarked>? isRichTextMarked,
    Action<o.RichTextPhoneNumber>? isRichTextPhoneNumber,
    Action<o.RichTextIcon>? isRichTextIcon,
    Action<o.RichTextReference>? isRichTextReference,
    Action<o.RichTextAnchor>? isRichTextAnchor,
    Action<o.RichTextAnchorLink>? isRichTextAnchorLink,
    Action<o.RichTexts>? isRichTexts,
    Action<RichText>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.RichTextPlain) {
      if (isRichTextPlain != null) {
        isRichTextPlain(this as o.RichTextPlain);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTextBold) {
      if (isRichTextBold != null) {
        isRichTextBold(this as o.RichTextBold);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTextItalic) {
      if (isRichTextItalic != null) {
        isRichTextItalic(this as o.RichTextItalic);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTextUnderline) {
      if (isRichTextUnderline != null) {
        isRichTextUnderline(this as o.RichTextUnderline);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTextStrikethrough) {
      if (isRichTextStrikethrough != null) {
        isRichTextStrikethrough(this as o.RichTextStrikethrough);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTextFixed) {
      if (isRichTextFixed != null) {
        isRichTextFixed(this as o.RichTextFixed);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTextUrl) {
      if (isRichTextUrl != null) {
        isRichTextUrl(this as o.RichTextUrl);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTextEmailAddress) {
      if (isRichTextEmailAddress != null) {
        isRichTextEmailAddress(this as o.RichTextEmailAddress);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTextSubscript) {
      if (isRichTextSubscript != null) {
        isRichTextSubscript(this as o.RichTextSubscript);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTextSuperscript) {
      if (isRichTextSuperscript != null) {
        isRichTextSuperscript(this as o.RichTextSuperscript);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTextMarked) {
      if (isRichTextMarked != null) {
        isRichTextMarked(this as o.RichTextMarked);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTextPhoneNumber) {
      if (isRichTextPhoneNumber != null) {
        isRichTextPhoneNumber(this as o.RichTextPhoneNumber);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTextIcon) {
      if (isRichTextIcon != null) {
        isRichTextIcon(this as o.RichTextIcon);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTextReference) {
      if (isRichTextReference != null) {
        isRichTextReference(this as o.RichTextReference);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTextAnchor) {
      if (isRichTextAnchor != null) {
        isRichTextAnchor(this as o.RichTextAnchor);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTextAnchorLink) {
      if (isRichTextAnchorLink != null) {
        isRichTextAnchorLink(this as o.RichTextAnchorLink);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.RichTexts) {
      if (isRichTexts != null) {
        isRichTexts(this as o.RichTexts);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PageBlockCaption extends b.TdBase {
  void match({
    Action<o.PageBlockCaption>? isPageBlockCaption,
    Action<PageBlockCaption>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PageBlockCaption) {
      if (isPageBlockCaption != null) {
        isPageBlockCaption(this as o.PageBlockCaption);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PageBlockListItem extends b.TdBase {
  void match({
    Action<o.PageBlockListItem>? isPageBlockListItem,
    Action<PageBlockListItem>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PageBlockListItem) {
      if (isPageBlockListItem != null) {
        isPageBlockListItem(this as o.PageBlockListItem);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes a horizontal alignment of a table cell content
abstract class PageBlockHorizontalAlignment extends b.TdBase {
  void match({
    Action<o.PageBlockHorizontalAlignmentLeft>? isPageBlockHorizontalAlignmentLeft,
    Action<o.PageBlockHorizontalAlignmentCenter>? isPageBlockHorizontalAlignmentCenter,
    Action<o.PageBlockHorizontalAlignmentRight>? isPageBlockHorizontalAlignmentRight,
    Action<PageBlockHorizontalAlignment>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PageBlockHorizontalAlignmentLeft) {
      if (isPageBlockHorizontalAlignmentLeft != null) {
        isPageBlockHorizontalAlignmentLeft(this as o.PageBlockHorizontalAlignmentLeft);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockHorizontalAlignmentCenter) {
      if (isPageBlockHorizontalAlignmentCenter != null) {
        isPageBlockHorizontalAlignmentCenter(this as o.PageBlockHorizontalAlignmentCenter);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockHorizontalAlignmentRight) {
      if (isPageBlockHorizontalAlignmentRight != null) {
        isPageBlockHorizontalAlignmentRight(this as o.PageBlockHorizontalAlignmentRight);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes a Vertical alignment of a table cell content
abstract class PageBlockVerticalAlignment extends b.TdBase {
  void match({
    Action<o.PageBlockVerticalAlignmentTop>? isPageBlockVerticalAlignmentTop,
    Action<o.PageBlockVerticalAlignmentMiddle>? isPageBlockVerticalAlignmentMiddle,
    Action<o.PageBlockVerticalAlignmentBottom>? isPageBlockVerticalAlignmentBottom,
    Action<PageBlockVerticalAlignment>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PageBlockVerticalAlignmentTop) {
      if (isPageBlockVerticalAlignmentTop != null) {
        isPageBlockVerticalAlignmentTop(this as o.PageBlockVerticalAlignmentTop);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockVerticalAlignmentMiddle) {
      if (isPageBlockVerticalAlignmentMiddle != null) {
        isPageBlockVerticalAlignmentMiddle(this as o.PageBlockVerticalAlignmentMiddle);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockVerticalAlignmentBottom) {
      if (isPageBlockVerticalAlignmentBottom != null) {
        isPageBlockVerticalAlignmentBottom(this as o.PageBlockVerticalAlignmentBottom);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PageBlockTableCell extends b.TdBase {
  void match({
    Action<o.PageBlockTableCell>? isPageBlockTableCell,
    Action<PageBlockTableCell>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PageBlockTableCell) {
      if (isPageBlockTableCell != null) {
        isPageBlockTableCell(this as o.PageBlockTableCell);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PageBlockRelatedArticle extends b.TdBase {
  void match({
    Action<o.PageBlockRelatedArticle>? isPageBlockRelatedArticle,
    Action<PageBlockRelatedArticle>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PageBlockRelatedArticle) {
      if (isPageBlockRelatedArticle != null) {
        isPageBlockRelatedArticle(this as o.PageBlockRelatedArticle);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes a block of an instant view web page
abstract class PageBlock extends b.TdBase {
  void match({
    Action<o.PageBlockTitle>? isPageBlockTitle,
    Action<o.PageBlockSubtitle>? isPageBlockSubtitle,
    Action<o.PageBlockAuthorDate>? isPageBlockAuthorDate,
    Action<o.PageBlockHeader>? isPageBlockHeader,
    Action<o.PageBlockSubheader>? isPageBlockSubheader,
    Action<o.PageBlockKicker>? isPageBlockKicker,
    Action<o.PageBlockParagraph>? isPageBlockParagraph,
    Action<o.PageBlockPreformatted>? isPageBlockPreformatted,
    Action<o.PageBlockFooter>? isPageBlockFooter,
    Action<o.PageBlockDivider>? isPageBlockDivider,
    Action<o.PageBlockAnchor>? isPageBlockAnchor,
    Action<o.PageBlockList>? isPageBlockList,
    Action<o.PageBlockBlockQuote>? isPageBlockBlockQuote,
    Action<o.PageBlockPullQuote>? isPageBlockPullQuote,
    Action<o.PageBlockAnimation>? isPageBlockAnimation,
    Action<o.PageBlockAudio>? isPageBlockAudio,
    Action<o.PageBlockPhoto>? isPageBlockPhoto,
    Action<o.PageBlockVideo>? isPageBlockVideo,
    Action<o.PageBlockVoiceNote>? isPageBlockVoiceNote,
    Action<o.PageBlockCover>? isPageBlockCover,
    Action<o.PageBlockEmbedded>? isPageBlockEmbedded,
    Action<o.PageBlockEmbeddedPost>? isPageBlockEmbeddedPost,
    Action<o.PageBlockCollage>? isPageBlockCollage,
    Action<o.PageBlockSlideshow>? isPageBlockSlideshow,
    Action<o.PageBlockChatLink>? isPageBlockChatLink,
    Action<o.PageBlockTable>? isPageBlockTable,
    Action<o.PageBlockDetails>? isPageBlockDetails,
    Action<o.PageBlockRelatedArticles>? isPageBlockRelatedArticles,
    Action<o.PageBlockMap>? isPageBlockMap,
    Action<PageBlock>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PageBlockTitle) {
      if (isPageBlockTitle != null) {
        isPageBlockTitle(this as o.PageBlockTitle);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockSubtitle) {
      if (isPageBlockSubtitle != null) {
        isPageBlockSubtitle(this as o.PageBlockSubtitle);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockAuthorDate) {
      if (isPageBlockAuthorDate != null) {
        isPageBlockAuthorDate(this as o.PageBlockAuthorDate);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockHeader) {
      if (isPageBlockHeader != null) {
        isPageBlockHeader(this as o.PageBlockHeader);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockSubheader) {
      if (isPageBlockSubheader != null) {
        isPageBlockSubheader(this as o.PageBlockSubheader);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockKicker) {
      if (isPageBlockKicker != null) {
        isPageBlockKicker(this as o.PageBlockKicker);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockParagraph) {
      if (isPageBlockParagraph != null) {
        isPageBlockParagraph(this as o.PageBlockParagraph);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockPreformatted) {
      if (isPageBlockPreformatted != null) {
        isPageBlockPreformatted(this as o.PageBlockPreformatted);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockFooter) {
      if (isPageBlockFooter != null) {
        isPageBlockFooter(this as o.PageBlockFooter);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockDivider) {
      if (isPageBlockDivider != null) {
        isPageBlockDivider(this as o.PageBlockDivider);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockAnchor) {
      if (isPageBlockAnchor != null) {
        isPageBlockAnchor(this as o.PageBlockAnchor);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockList) {
      if (isPageBlockList != null) {
        isPageBlockList(this as o.PageBlockList);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockBlockQuote) {
      if (isPageBlockBlockQuote != null) {
        isPageBlockBlockQuote(this as o.PageBlockBlockQuote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockPullQuote) {
      if (isPageBlockPullQuote != null) {
        isPageBlockPullQuote(this as o.PageBlockPullQuote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockAnimation) {
      if (isPageBlockAnimation != null) {
        isPageBlockAnimation(this as o.PageBlockAnimation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockAudio) {
      if (isPageBlockAudio != null) {
        isPageBlockAudio(this as o.PageBlockAudio);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockPhoto) {
      if (isPageBlockPhoto != null) {
        isPageBlockPhoto(this as o.PageBlockPhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockVideo) {
      if (isPageBlockVideo != null) {
        isPageBlockVideo(this as o.PageBlockVideo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockVoiceNote) {
      if (isPageBlockVoiceNote != null) {
        isPageBlockVoiceNote(this as o.PageBlockVoiceNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockCover) {
      if (isPageBlockCover != null) {
        isPageBlockCover(this as o.PageBlockCover);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockEmbedded) {
      if (isPageBlockEmbedded != null) {
        isPageBlockEmbedded(this as o.PageBlockEmbedded);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockEmbeddedPost) {
      if (isPageBlockEmbeddedPost != null) {
        isPageBlockEmbeddedPost(this as o.PageBlockEmbeddedPost);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockCollage) {
      if (isPageBlockCollage != null) {
        isPageBlockCollage(this as o.PageBlockCollage);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockSlideshow) {
      if (isPageBlockSlideshow != null) {
        isPageBlockSlideshow(this as o.PageBlockSlideshow);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockChatLink) {
      if (isPageBlockChatLink != null) {
        isPageBlockChatLink(this as o.PageBlockChatLink);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockTable) {
      if (isPageBlockTable != null) {
        isPageBlockTable(this as o.PageBlockTable);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockDetails) {
      if (isPageBlockDetails != null) {
        isPageBlockDetails(this as o.PageBlockDetails);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockRelatedArticles) {
      if (isPageBlockRelatedArticles != null) {
        isPageBlockRelatedArticles(this as o.PageBlockRelatedArticles);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PageBlockMap) {
      if (isPageBlockMap != null) {
        isPageBlockMap(this as o.PageBlockMap);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class WebPageInstantView extends b.TdBase {
  void match({
    Action<o.WebPageInstantView>? isWebPageInstantView,
    Action<WebPageInstantView>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.WebPageInstantView) {
      if (isWebPageInstantView != null) {
        isWebPageInstantView(this as o.WebPageInstantView);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class WebPage extends b.TdBase {
  void match({
    Action<o.WebPage>? isWebPage,
    Action<WebPage>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.WebPage) {
      if (isWebPage != null) {
        isWebPage(this as o.WebPage);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class CountryInfo extends b.TdBase {
  void match({
    Action<o.CountryInfo>? isCountryInfo,
    Action<CountryInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CountryInfo) {
      if (isCountryInfo != null) {
        isCountryInfo(this as o.CountryInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Countries extends b.TdBase {
  void match({
    Action<o.Countries>? isCountries,
    Action<Countries>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Countries) {
      if (isCountries != null) {
        isCountries(this as o.Countries);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PhoneNumberInfo extends b.TdBase {
  void match({
    Action<o.PhoneNumberInfo>? isPhoneNumberInfo,
    Action<PhoneNumberInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PhoneNumberInfo) {
      if (isPhoneNumberInfo != null) {
        isPhoneNumberInfo(this as o.PhoneNumberInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class BankCardActionOpenUrl extends b.TdBase {
  void match({
    Action<o.BankCardActionOpenUrl>? isBankCardActionOpenUrl,
    Action<BankCardActionOpenUrl>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BankCardActionOpenUrl) {
      if (isBankCardActionOpenUrl != null) {
        isBankCardActionOpenUrl(this as o.BankCardActionOpenUrl);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class BankCardInfo extends b.TdBase {
  void match({
    Action<o.BankCardInfo>? isBankCardInfo,
    Action<BankCardInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BankCardInfo) {
      if (isBankCardInfo != null) {
        isBankCardInfo(this as o.BankCardInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Address extends b.TdBase {
  void match({
    Action<o.Address>? isAddress,
    Action<Address>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Address) {
      if (isAddress != null) {
        isAddress(this as o.Address);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class LabeledPricePart extends b.TdBase {
  void match({
    Action<o.LabeledPricePart>? isLabeledPricePart,
    Action<LabeledPricePart>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LabeledPricePart) {
      if (isLabeledPricePart != null) {
        isLabeledPricePart(this as o.LabeledPricePart);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Invoice extends b.TdBase {
  void match({
    Action<o.Invoice>? isInvoice,
    Action<Invoice>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Invoice) {
      if (isInvoice != null) {
        isInvoice(this as o.Invoice);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class OrderInfo extends b.TdBase {
  void match({
    Action<o.OrderInfo>? isOrderInfo,
    Action<OrderInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.OrderInfo) {
      if (isOrderInfo != null) {
        isOrderInfo(this as o.OrderInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ShippingOption extends b.TdBase {
  void match({
    Action<o.ShippingOption>? isShippingOption,
    Action<ShippingOption>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ShippingOption) {
      if (isShippingOption != null) {
        isShippingOption(this as o.ShippingOption);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class SavedCredentials extends b.TdBase {
  void match({
    Action<o.SavedCredentials>? isSavedCredentials,
    Action<SavedCredentials>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.SavedCredentials) {
      if (isSavedCredentials != null) {
        isSavedCredentials(this as o.SavedCredentials);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains information about the payment method chosen by the user
abstract class InputCredentials extends b.TdBase {
  void match({
    Action<o.InputCredentialsSaved>? isInputCredentialsSaved,
    Action<o.InputCredentialsNew>? isInputCredentialsNew,
    Action<o.InputCredentialsApplePay>? isInputCredentialsApplePay,
    Action<o.InputCredentialsGooglePay>? isInputCredentialsGooglePay,
    Action<InputCredentials>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputCredentialsSaved) {
      if (isInputCredentialsSaved != null) {
        isInputCredentialsSaved(this as o.InputCredentialsSaved);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputCredentialsNew) {
      if (isInputCredentialsNew != null) {
        isInputCredentialsNew(this as o.InputCredentialsNew);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputCredentialsApplePay) {
      if (isInputCredentialsApplePay != null) {
        isInputCredentialsApplePay(this as o.InputCredentialsApplePay);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputCredentialsGooglePay) {
      if (isInputCredentialsGooglePay != null) {
        isInputCredentialsGooglePay(this as o.InputCredentialsGooglePay);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PaymentsProviderStripe extends b.TdBase {
  void match({
    Action<o.PaymentsProviderStripe>? isPaymentsProviderStripe,
    Action<PaymentsProviderStripe>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PaymentsProviderStripe) {
      if (isPaymentsProviderStripe != null) {
        isPaymentsProviderStripe(this as o.PaymentsProviderStripe);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PaymentFormTheme extends b.TdBase {
  void match({
    Action<o.PaymentFormTheme>? isPaymentFormTheme,
    Action<PaymentFormTheme>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PaymentFormTheme) {
      if (isPaymentFormTheme != null) {
        isPaymentFormTheme(this as o.PaymentFormTheme);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PaymentForm extends b.TdBase {
  void match({
    Action<o.PaymentForm>? isPaymentForm,
    Action<PaymentForm>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PaymentForm) {
      if (isPaymentForm != null) {
        isPaymentForm(this as o.PaymentForm);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ValidatedOrderInfo extends b.TdBase {
  void match({
    Action<o.ValidatedOrderInfo>? isValidatedOrderInfo,
    Action<ValidatedOrderInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ValidatedOrderInfo) {
      if (isValidatedOrderInfo != null) {
        isValidatedOrderInfo(this as o.ValidatedOrderInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PaymentResult extends b.TdBase {
  void match({
    Action<o.PaymentResult>? isPaymentResult,
    Action<PaymentResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PaymentResult) {
      if (isPaymentResult != null) {
        isPaymentResult(this as o.PaymentResult);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PaymentReceipt extends b.TdBase {
  void match({
    Action<o.PaymentReceipt>? isPaymentReceipt,
    Action<PaymentReceipt>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PaymentReceipt) {
      if (isPaymentReceipt != null) {
        isPaymentReceipt(this as o.PaymentReceipt);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class DatedFile extends b.TdBase {
  void match({
    Action<o.DatedFile>? isDatedFile,
    Action<DatedFile>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.DatedFile) {
      if (isDatedFile != null) {
        isDatedFile(this as o.DatedFile);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains the type of a Telegram Passport element
abstract class PassportElementType extends b.TdBase {
  void match({
    Action<o.PassportElementTypePersonalDetails>? isPassportElementTypePersonalDetails,
    Action<o.PassportElementTypePassport>? isPassportElementTypePassport,
    Action<o.PassportElementTypeDriverLicense>? isPassportElementTypeDriverLicense,
    Action<o.PassportElementTypeIdentityCard>? isPassportElementTypeIdentityCard,
    Action<o.PassportElementTypeInternalPassport>? isPassportElementTypeInternalPassport,
    Action<o.PassportElementTypeAddress>? isPassportElementTypeAddress,
    Action<o.PassportElementTypeUtilityBill>? isPassportElementTypeUtilityBill,
    Action<o.PassportElementTypeBankStatement>? isPassportElementTypeBankStatement,
    Action<o.PassportElementTypeRentalAgreement>? isPassportElementTypeRentalAgreement,
    Action<o.PassportElementTypePassportRegistration>? isPassportElementTypePassportRegistration,
    Action<o.PassportElementTypeTemporaryRegistration>? isPassportElementTypeTemporaryRegistration,
    Action<o.PassportElementTypePhoneNumber>? isPassportElementTypePhoneNumber,
    Action<o.PassportElementTypeEmailAddress>? isPassportElementTypeEmailAddress,
    Action<PassportElementType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportElementTypePersonalDetails) {
      if (isPassportElementTypePersonalDetails != null) {
        isPassportElementTypePersonalDetails(this as o.PassportElementTypePersonalDetails);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementTypePassport) {
      if (isPassportElementTypePassport != null) {
        isPassportElementTypePassport(this as o.PassportElementTypePassport);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeDriverLicense) {
      if (isPassportElementTypeDriverLicense != null) {
        isPassportElementTypeDriverLicense(this as o.PassportElementTypeDriverLicense);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeIdentityCard) {
      if (isPassportElementTypeIdentityCard != null) {
        isPassportElementTypeIdentityCard(this as o.PassportElementTypeIdentityCard);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeInternalPassport) {
      if (isPassportElementTypeInternalPassport != null) {
        isPassportElementTypeInternalPassport(this as o.PassportElementTypeInternalPassport);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeAddress) {
      if (isPassportElementTypeAddress != null) {
        isPassportElementTypeAddress(this as o.PassportElementTypeAddress);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeUtilityBill) {
      if (isPassportElementTypeUtilityBill != null) {
        isPassportElementTypeUtilityBill(this as o.PassportElementTypeUtilityBill);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeBankStatement) {
      if (isPassportElementTypeBankStatement != null) {
        isPassportElementTypeBankStatement(this as o.PassportElementTypeBankStatement);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeRentalAgreement) {
      if (isPassportElementTypeRentalAgreement != null) {
        isPassportElementTypeRentalAgreement(this as o.PassportElementTypeRentalAgreement);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementTypePassportRegistration) {
      if (isPassportElementTypePassportRegistration != null) {
        isPassportElementTypePassportRegistration(this as o.PassportElementTypePassportRegistration);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeTemporaryRegistration) {
      if (isPassportElementTypeTemporaryRegistration != null) {
        isPassportElementTypeTemporaryRegistration(this as o.PassportElementTypeTemporaryRegistration);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementTypePhoneNumber) {
      if (isPassportElementTypePhoneNumber != null) {
        isPassportElementTypePhoneNumber(this as o.PassportElementTypePhoneNumber);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementTypeEmailAddress) {
      if (isPassportElementTypeEmailAddress != null) {
        isPassportElementTypeEmailAddress(this as o.PassportElementTypeEmailAddress);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Date extends b.TdBase {
  void match({
    Action<o.Date>? isDate,
    Action<Date>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Date) {
      if (isDate != null) {
        isDate(this as o.Date);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PersonalDetails extends b.TdBase {
  void match({
    Action<o.PersonalDetails>? isPersonalDetails,
    Action<PersonalDetails>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PersonalDetails) {
      if (isPersonalDetails != null) {
        isPersonalDetails(this as o.PersonalDetails);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class IdentityDocument extends b.TdBase {
  void match({
    Action<o.IdentityDocument>? isIdentityDocument,
    Action<IdentityDocument>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.IdentityDocument) {
      if (isIdentityDocument != null) {
        isIdentityDocument(this as o.IdentityDocument);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class InputIdentityDocument extends b.TdBase {
  void match({
    Action<o.InputIdentityDocument>? isInputIdentityDocument,
    Action<InputIdentityDocument>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputIdentityDocument) {
      if (isInputIdentityDocument != null) {
        isInputIdentityDocument(this as o.InputIdentityDocument);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PersonalDocument extends b.TdBase {
  void match({
    Action<o.PersonalDocument>? isPersonalDocument,
    Action<PersonalDocument>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PersonalDocument) {
      if (isPersonalDocument != null) {
        isPersonalDocument(this as o.PersonalDocument);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class InputPersonalDocument extends b.TdBase {
  void match({
    Action<o.InputPersonalDocument>? isInputPersonalDocument,
    Action<InputPersonalDocument>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputPersonalDocument) {
      if (isInputPersonalDocument != null) {
        isInputPersonalDocument(this as o.InputPersonalDocument);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains information about a Telegram Passport element
abstract class PassportElement extends b.TdBase {
  void match({
    Action<o.PassportElementPersonalDetails>? isPassportElementPersonalDetails,
    Action<o.PassportElementPassport>? isPassportElementPassport,
    Action<o.PassportElementDriverLicense>? isPassportElementDriverLicense,
    Action<o.PassportElementIdentityCard>? isPassportElementIdentityCard,
    Action<o.PassportElementInternalPassport>? isPassportElementInternalPassport,
    Action<o.PassportElementAddress>? isPassportElementAddress,
    Action<o.PassportElementUtilityBill>? isPassportElementUtilityBill,
    Action<o.PassportElementBankStatement>? isPassportElementBankStatement,
    Action<o.PassportElementRentalAgreement>? isPassportElementRentalAgreement,
    Action<o.PassportElementPassportRegistration>? isPassportElementPassportRegistration,
    Action<o.PassportElementTemporaryRegistration>? isPassportElementTemporaryRegistration,
    Action<o.PassportElementPhoneNumber>? isPassportElementPhoneNumber,
    Action<o.PassportElementEmailAddress>? isPassportElementEmailAddress,
    Action<PassportElement>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportElementPersonalDetails) {
      if (isPassportElementPersonalDetails != null) {
        isPassportElementPersonalDetails(this as o.PassportElementPersonalDetails);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementPassport) {
      if (isPassportElementPassport != null) {
        isPassportElementPassport(this as o.PassportElementPassport);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementDriverLicense) {
      if (isPassportElementDriverLicense != null) {
        isPassportElementDriverLicense(this as o.PassportElementDriverLicense);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementIdentityCard) {
      if (isPassportElementIdentityCard != null) {
        isPassportElementIdentityCard(this as o.PassportElementIdentityCard);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementInternalPassport) {
      if (isPassportElementInternalPassport != null) {
        isPassportElementInternalPassport(this as o.PassportElementInternalPassport);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementAddress) {
      if (isPassportElementAddress != null) {
        isPassportElementAddress(this as o.PassportElementAddress);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementUtilityBill) {
      if (isPassportElementUtilityBill != null) {
        isPassportElementUtilityBill(this as o.PassportElementUtilityBill);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementBankStatement) {
      if (isPassportElementBankStatement != null) {
        isPassportElementBankStatement(this as o.PassportElementBankStatement);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementRentalAgreement) {
      if (isPassportElementRentalAgreement != null) {
        isPassportElementRentalAgreement(this as o.PassportElementRentalAgreement);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementPassportRegistration) {
      if (isPassportElementPassportRegistration != null) {
        isPassportElementPassportRegistration(this as o.PassportElementPassportRegistration);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementTemporaryRegistration) {
      if (isPassportElementTemporaryRegistration != null) {
        isPassportElementTemporaryRegistration(this as o.PassportElementTemporaryRegistration);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementPhoneNumber) {
      if (isPassportElementPhoneNumber != null) {
        isPassportElementPhoneNumber(this as o.PassportElementPhoneNumber);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementEmailAddress) {
      if (isPassportElementEmailAddress != null) {
        isPassportElementEmailAddress(this as o.PassportElementEmailAddress);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains information about a Telegram Passport element to be saved
abstract class InputPassportElement extends b.TdBase {
  void match({
    Action<o.InputPassportElementPersonalDetails>? isInputPassportElementPersonalDetails,
    Action<o.InputPassportElementPassport>? isInputPassportElementPassport,
    Action<o.InputPassportElementDriverLicense>? isInputPassportElementDriverLicense,
    Action<o.InputPassportElementIdentityCard>? isInputPassportElementIdentityCard,
    Action<o.InputPassportElementInternalPassport>? isInputPassportElementInternalPassport,
    Action<o.InputPassportElementAddress>? isInputPassportElementAddress,
    Action<o.InputPassportElementUtilityBill>? isInputPassportElementUtilityBill,
    Action<o.InputPassportElementBankStatement>? isInputPassportElementBankStatement,
    Action<o.InputPassportElementRentalAgreement>? isInputPassportElementRentalAgreement,
    Action<o.InputPassportElementPassportRegistration>? isInputPassportElementPassportRegistration,
    Action<o.InputPassportElementTemporaryRegistration>? isInputPassportElementTemporaryRegistration,
    Action<o.InputPassportElementPhoneNumber>? isInputPassportElementPhoneNumber,
    Action<o.InputPassportElementEmailAddress>? isInputPassportElementEmailAddress,
    Action<InputPassportElement>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputPassportElementPersonalDetails) {
      if (isInputPassportElementPersonalDetails != null) {
        isInputPassportElementPersonalDetails(this as o.InputPassportElementPersonalDetails);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementPassport) {
      if (isInputPassportElementPassport != null) {
        isInputPassportElementPassport(this as o.InputPassportElementPassport);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementDriverLicense) {
      if (isInputPassportElementDriverLicense != null) {
        isInputPassportElementDriverLicense(this as o.InputPassportElementDriverLicense);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementIdentityCard) {
      if (isInputPassportElementIdentityCard != null) {
        isInputPassportElementIdentityCard(this as o.InputPassportElementIdentityCard);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementInternalPassport) {
      if (isInputPassportElementInternalPassport != null) {
        isInputPassportElementInternalPassport(this as o.InputPassportElementInternalPassport);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementAddress) {
      if (isInputPassportElementAddress != null) {
        isInputPassportElementAddress(this as o.InputPassportElementAddress);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementUtilityBill) {
      if (isInputPassportElementUtilityBill != null) {
        isInputPassportElementUtilityBill(this as o.InputPassportElementUtilityBill);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementBankStatement) {
      if (isInputPassportElementBankStatement != null) {
        isInputPassportElementBankStatement(this as o.InputPassportElementBankStatement);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementRentalAgreement) {
      if (isInputPassportElementRentalAgreement != null) {
        isInputPassportElementRentalAgreement(this as o.InputPassportElementRentalAgreement);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementPassportRegistration) {
      if (isInputPassportElementPassportRegistration != null) {
        isInputPassportElementPassportRegistration(this as o.InputPassportElementPassportRegistration);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementTemporaryRegistration) {
      if (isInputPassportElementTemporaryRegistration != null) {
        isInputPassportElementTemporaryRegistration(this as o.InputPassportElementTemporaryRegistration);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementPhoneNumber) {
      if (isInputPassportElementPhoneNumber != null) {
        isInputPassportElementPhoneNumber(this as o.InputPassportElementPhoneNumber);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementEmailAddress) {
      if (isInputPassportElementEmailAddress != null) {
        isInputPassportElementEmailAddress(this as o.InputPassportElementEmailAddress);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PassportElements extends b.TdBase {
  void match({
    Action<o.PassportElements>? isPassportElements,
    Action<PassportElements>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportElements) {
      if (isPassportElements != null) {
        isPassportElements(this as o.PassportElements);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains the description of an error in a Telegram Passport element
abstract class PassportElementErrorSource extends b.TdBase {
  void match({
    Action<o.PassportElementErrorSourceUnspecified>? isPassportElementErrorSourceUnspecified,
    Action<o.PassportElementErrorSourceDataField>? isPassportElementErrorSourceDataField,
    Action<o.PassportElementErrorSourceFrontSide>? isPassportElementErrorSourceFrontSide,
    Action<o.PassportElementErrorSourceReverseSide>? isPassportElementErrorSourceReverseSide,
    Action<o.PassportElementErrorSourceSelfie>? isPassportElementErrorSourceSelfie,
    Action<o.PassportElementErrorSourceTranslationFile>? isPassportElementErrorSourceTranslationFile,
    Action<o.PassportElementErrorSourceTranslationFiles>? isPassportElementErrorSourceTranslationFiles,
    Action<o.PassportElementErrorSourceFile>? isPassportElementErrorSourceFile,
    Action<o.PassportElementErrorSourceFiles>? isPassportElementErrorSourceFiles,
    Action<PassportElementErrorSource>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportElementErrorSourceUnspecified) {
      if (isPassportElementErrorSourceUnspecified != null) {
        isPassportElementErrorSourceUnspecified(this as o.PassportElementErrorSourceUnspecified);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceDataField) {
      if (isPassportElementErrorSourceDataField != null) {
        isPassportElementErrorSourceDataField(this as o.PassportElementErrorSourceDataField);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceFrontSide) {
      if (isPassportElementErrorSourceFrontSide != null) {
        isPassportElementErrorSourceFrontSide(this as o.PassportElementErrorSourceFrontSide);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceReverseSide) {
      if (isPassportElementErrorSourceReverseSide != null) {
        isPassportElementErrorSourceReverseSide(this as o.PassportElementErrorSourceReverseSide);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceSelfie) {
      if (isPassportElementErrorSourceSelfie != null) {
        isPassportElementErrorSourceSelfie(this as o.PassportElementErrorSourceSelfie);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceTranslationFile) {
      if (isPassportElementErrorSourceTranslationFile != null) {
        isPassportElementErrorSourceTranslationFile(this as o.PassportElementErrorSourceTranslationFile);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceTranslationFiles) {
      if (isPassportElementErrorSourceTranslationFiles != null) {
        isPassportElementErrorSourceTranslationFiles(this as o.PassportElementErrorSourceTranslationFiles);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceFile) {
      if (isPassportElementErrorSourceFile != null) {
        isPassportElementErrorSourceFile(this as o.PassportElementErrorSourceFile);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PassportElementErrorSourceFiles) {
      if (isPassportElementErrorSourceFiles != null) {
        isPassportElementErrorSourceFiles(this as o.PassportElementErrorSourceFiles);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PassportElementError extends b.TdBase {
  void match({
    Action<o.PassportElementError>? isPassportElementError,
    Action<PassportElementError>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportElementError) {
      if (isPassportElementError != null) {
        isPassportElementError(this as o.PassportElementError);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PassportSuitableElement extends b.TdBase {
  void match({
    Action<o.PassportSuitableElement>? isPassportSuitableElement,
    Action<PassportSuitableElement>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportSuitableElement) {
      if (isPassportSuitableElement != null) {
        isPassportSuitableElement(this as o.PassportSuitableElement);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PassportRequiredElement extends b.TdBase {
  void match({
    Action<o.PassportRequiredElement>? isPassportRequiredElement,
    Action<PassportRequiredElement>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportRequiredElement) {
      if (isPassportRequiredElement != null) {
        isPassportRequiredElement(this as o.PassportRequiredElement);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PassportAuthorizationForm extends b.TdBase {
  void match({
    Action<o.PassportAuthorizationForm>? isPassportAuthorizationForm,
    Action<PassportAuthorizationForm>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportAuthorizationForm) {
      if (isPassportAuthorizationForm != null) {
        isPassportAuthorizationForm(this as o.PassportAuthorizationForm);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PassportElementsWithErrors extends b.TdBase {
  void match({
    Action<o.PassportElementsWithErrors>? isPassportElementsWithErrors,
    Action<PassportElementsWithErrors>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PassportElementsWithErrors) {
      if (isPassportElementsWithErrors != null) {
        isPassportElementsWithErrors(this as o.PassportElementsWithErrors);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class EncryptedCredentials extends b.TdBase {
  void match({
    Action<o.EncryptedCredentials>? isEncryptedCredentials,
    Action<EncryptedCredentials>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.EncryptedCredentials) {
      if (isEncryptedCredentials != null) {
        isEncryptedCredentials(this as o.EncryptedCredentials);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class EncryptedPassportElement extends b.TdBase {
  void match({
    Action<o.EncryptedPassportElement>? isEncryptedPassportElement,
    Action<EncryptedPassportElement>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.EncryptedPassportElement) {
      if (isEncryptedPassportElement != null) {
        isEncryptedPassportElement(this as o.EncryptedPassportElement);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains the description of an error in a Telegram Passport element; for bots only
abstract class InputPassportElementErrorSource extends b.TdBase {
  void match({
    Action<o.InputPassportElementErrorSourceUnspecified>? isInputPassportElementErrorSourceUnspecified,
    Action<o.InputPassportElementErrorSourceDataField>? isInputPassportElementErrorSourceDataField,
    Action<o.InputPassportElementErrorSourceFrontSide>? isInputPassportElementErrorSourceFrontSide,
    Action<o.InputPassportElementErrorSourceReverseSide>? isInputPassportElementErrorSourceReverseSide,
    Action<o.InputPassportElementErrorSourceSelfie>? isInputPassportElementErrorSourceSelfie,
    Action<o.InputPassportElementErrorSourceTranslationFile>? isInputPassportElementErrorSourceTranslationFile,
    Action<o.InputPassportElementErrorSourceTranslationFiles>? isInputPassportElementErrorSourceTranslationFiles,
    Action<o.InputPassportElementErrorSourceFile>? isInputPassportElementErrorSourceFile,
    Action<o.InputPassportElementErrorSourceFiles>? isInputPassportElementErrorSourceFiles,
    Action<InputPassportElementErrorSource>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputPassportElementErrorSourceUnspecified) {
      if (isInputPassportElementErrorSourceUnspecified != null) {
        isInputPassportElementErrorSourceUnspecified(this as o.InputPassportElementErrorSourceUnspecified);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceDataField) {
      if (isInputPassportElementErrorSourceDataField != null) {
        isInputPassportElementErrorSourceDataField(this as o.InputPassportElementErrorSourceDataField);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceFrontSide) {
      if (isInputPassportElementErrorSourceFrontSide != null) {
        isInputPassportElementErrorSourceFrontSide(this as o.InputPassportElementErrorSourceFrontSide);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceReverseSide) {
      if (isInputPassportElementErrorSourceReverseSide != null) {
        isInputPassportElementErrorSourceReverseSide(this as o.InputPassportElementErrorSourceReverseSide);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceSelfie) {
      if (isInputPassportElementErrorSourceSelfie != null) {
        isInputPassportElementErrorSourceSelfie(this as o.InputPassportElementErrorSourceSelfie);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceTranslationFile) {
      if (isInputPassportElementErrorSourceTranslationFile != null) {
        isInputPassportElementErrorSourceTranslationFile(this as o.InputPassportElementErrorSourceTranslationFile);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceTranslationFiles) {
      if (isInputPassportElementErrorSourceTranslationFiles != null) {
        isInputPassportElementErrorSourceTranslationFiles(this as o.InputPassportElementErrorSourceTranslationFiles);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceFile) {
      if (isInputPassportElementErrorSourceFile != null) {
        isInputPassportElementErrorSourceFile(this as o.InputPassportElementErrorSourceFile);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputPassportElementErrorSourceFiles) {
      if (isInputPassportElementErrorSourceFiles != null) {
        isInputPassportElementErrorSourceFiles(this as o.InputPassportElementErrorSourceFiles);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class InputPassportElementError extends b.TdBase {
  void match({
    Action<o.InputPassportElementError>? isInputPassportElementError,
    Action<InputPassportElementError>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputPassportElementError) {
      if (isInputPassportElementError != null) {
        isInputPassportElementError(this as o.InputPassportElementError);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains the content of a message
abstract class MessageContent extends b.TdBase {
  void match({
    Action<o.MessageText>? isMessageText,
    Action<o.MessageAnimation>? isMessageAnimation,
    Action<o.MessageAudio>? isMessageAudio,
    Action<o.MessageDocument>? isMessageDocument,
    Action<o.MessagePhoto>? isMessagePhoto,
    Action<o.MessageExpiredPhoto>? isMessageExpiredPhoto,
    Action<o.MessageSticker>? isMessageSticker,
    Action<o.MessageVideo>? isMessageVideo,
    Action<o.MessageExpiredVideo>? isMessageExpiredVideo,
    Action<o.MessageVideoNote>? isMessageVideoNote,
    Action<o.MessageVoiceNote>? isMessageVoiceNote,
    Action<o.MessageLocation>? isMessageLocation,
    Action<o.MessageVenue>? isMessageVenue,
    Action<o.MessageContact>? isMessageContact,
    Action<o.MessageDice>? isMessageDice,
    Action<o.MessageGame>? isMessageGame,
    Action<o.MessagePoll>? isMessagePoll,
    Action<o.MessageInvoice>? isMessageInvoice,
    Action<o.MessageCall>? isMessageCall,
    Action<o.MessageVoiceChatScheduled>? isMessageVoiceChatScheduled,
    Action<o.MessageVoiceChatStarted>? isMessageVoiceChatStarted,
    Action<o.MessageVoiceChatEnded>? isMessageVoiceChatEnded,
    Action<o.MessageInviteVoiceChatParticipants>? isMessageInviteVoiceChatParticipants,
    Action<o.MessageBasicGroupChatCreate>? isMessageBasicGroupChatCreate,
    Action<o.MessageSupergroupChatCreate>? isMessageSupergroupChatCreate,
    Action<o.MessageChatChangeTitle>? isMessageChatChangeTitle,
    Action<o.MessageChatChangePhoto>? isMessageChatChangePhoto,
    Action<o.MessageChatDeletePhoto>? isMessageChatDeletePhoto,
    Action<o.MessageChatAddMembers>? isMessageChatAddMembers,
    Action<o.MessageChatJoinByLink>? isMessageChatJoinByLink,
    Action<o.MessageChatDeleteMember>? isMessageChatDeleteMember,
    Action<o.MessageChatUpgradeTo>? isMessageChatUpgradeTo,
    Action<o.MessageChatUpgradeFrom>? isMessageChatUpgradeFrom,
    Action<o.MessagePinMessage>? isMessagePinMessage,
    Action<o.MessageScreenshotTaken>? isMessageScreenshotTaken,
    Action<o.MessageChatSetTtl>? isMessageChatSetTtl,
    Action<o.MessageCustomServiceAction>? isMessageCustomServiceAction,
    Action<o.MessageGameScore>? isMessageGameScore,
    Action<o.MessagePaymentSuccessful>? isMessagePaymentSuccessful,
    Action<o.MessagePaymentSuccessfulBot>? isMessagePaymentSuccessfulBot,
    Action<o.MessageContactRegistered>? isMessageContactRegistered,
    Action<o.MessageWebsiteConnected>? isMessageWebsiteConnected,
    Action<o.MessagePassportDataSent>? isMessagePassportDataSent,
    Action<o.MessagePassportDataReceived>? isMessagePassportDataReceived,
    Action<o.MessageProximityAlertTriggered>? isMessageProximityAlertTriggered,
    Action<o.MessageUnsupported>? isMessageUnsupported,
    Action<MessageContent>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageText) {
      if (isMessageText != null) {
        isMessageText(this as o.MessageText);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageAnimation) {
      if (isMessageAnimation != null) {
        isMessageAnimation(this as o.MessageAnimation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageAudio) {
      if (isMessageAudio != null) {
        isMessageAudio(this as o.MessageAudio);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageDocument) {
      if (isMessageDocument != null) {
        isMessageDocument(this as o.MessageDocument);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessagePhoto) {
      if (isMessagePhoto != null) {
        isMessagePhoto(this as o.MessagePhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageExpiredPhoto) {
      if (isMessageExpiredPhoto != null) {
        isMessageExpiredPhoto(this as o.MessageExpiredPhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageSticker) {
      if (isMessageSticker != null) {
        isMessageSticker(this as o.MessageSticker);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageVideo) {
      if (isMessageVideo != null) {
        isMessageVideo(this as o.MessageVideo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageExpiredVideo) {
      if (isMessageExpiredVideo != null) {
        isMessageExpiredVideo(this as o.MessageExpiredVideo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageVideoNote) {
      if (isMessageVideoNote != null) {
        isMessageVideoNote(this as o.MessageVideoNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageVoiceNote) {
      if (isMessageVoiceNote != null) {
        isMessageVoiceNote(this as o.MessageVoiceNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageLocation) {
      if (isMessageLocation != null) {
        isMessageLocation(this as o.MessageLocation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageVenue) {
      if (isMessageVenue != null) {
        isMessageVenue(this as o.MessageVenue);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageContact) {
      if (isMessageContact != null) {
        isMessageContact(this as o.MessageContact);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageDice) {
      if (isMessageDice != null) {
        isMessageDice(this as o.MessageDice);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageGame) {
      if (isMessageGame != null) {
        isMessageGame(this as o.MessageGame);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessagePoll) {
      if (isMessagePoll != null) {
        isMessagePoll(this as o.MessagePoll);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageInvoice) {
      if (isMessageInvoice != null) {
        isMessageInvoice(this as o.MessageInvoice);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageCall) {
      if (isMessageCall != null) {
        isMessageCall(this as o.MessageCall);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageVoiceChatScheduled) {
      if (isMessageVoiceChatScheduled != null) {
        isMessageVoiceChatScheduled(this as o.MessageVoiceChatScheduled);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageVoiceChatStarted) {
      if (isMessageVoiceChatStarted != null) {
        isMessageVoiceChatStarted(this as o.MessageVoiceChatStarted);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageVoiceChatEnded) {
      if (isMessageVoiceChatEnded != null) {
        isMessageVoiceChatEnded(this as o.MessageVoiceChatEnded);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageInviteVoiceChatParticipants) {
      if (isMessageInviteVoiceChatParticipants != null) {
        isMessageInviteVoiceChatParticipants(this as o.MessageInviteVoiceChatParticipants);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageBasicGroupChatCreate) {
      if (isMessageBasicGroupChatCreate != null) {
        isMessageBasicGroupChatCreate(this as o.MessageBasicGroupChatCreate);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageSupergroupChatCreate) {
      if (isMessageSupergroupChatCreate != null) {
        isMessageSupergroupChatCreate(this as o.MessageSupergroupChatCreate);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageChatChangeTitle) {
      if (isMessageChatChangeTitle != null) {
        isMessageChatChangeTitle(this as o.MessageChatChangeTitle);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageChatChangePhoto) {
      if (isMessageChatChangePhoto != null) {
        isMessageChatChangePhoto(this as o.MessageChatChangePhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageChatDeletePhoto) {
      if (isMessageChatDeletePhoto != null) {
        isMessageChatDeletePhoto(this as o.MessageChatDeletePhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageChatAddMembers) {
      if (isMessageChatAddMembers != null) {
        isMessageChatAddMembers(this as o.MessageChatAddMembers);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageChatJoinByLink) {
      if (isMessageChatJoinByLink != null) {
        isMessageChatJoinByLink(this as o.MessageChatJoinByLink);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageChatDeleteMember) {
      if (isMessageChatDeleteMember != null) {
        isMessageChatDeleteMember(this as o.MessageChatDeleteMember);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageChatUpgradeTo) {
      if (isMessageChatUpgradeTo != null) {
        isMessageChatUpgradeTo(this as o.MessageChatUpgradeTo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageChatUpgradeFrom) {
      if (isMessageChatUpgradeFrom != null) {
        isMessageChatUpgradeFrom(this as o.MessageChatUpgradeFrom);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessagePinMessage) {
      if (isMessagePinMessage != null) {
        isMessagePinMessage(this as o.MessagePinMessage);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageScreenshotTaken) {
      if (isMessageScreenshotTaken != null) {
        isMessageScreenshotTaken(this as o.MessageScreenshotTaken);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageChatSetTtl) {
      if (isMessageChatSetTtl != null) {
        isMessageChatSetTtl(this as o.MessageChatSetTtl);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageCustomServiceAction) {
      if (isMessageCustomServiceAction != null) {
        isMessageCustomServiceAction(this as o.MessageCustomServiceAction);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageGameScore) {
      if (isMessageGameScore != null) {
        isMessageGameScore(this as o.MessageGameScore);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessagePaymentSuccessful) {
      if (isMessagePaymentSuccessful != null) {
        isMessagePaymentSuccessful(this as o.MessagePaymentSuccessful);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessagePaymentSuccessfulBot) {
      if (isMessagePaymentSuccessfulBot != null) {
        isMessagePaymentSuccessfulBot(this as o.MessagePaymentSuccessfulBot);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageContactRegistered) {
      if (isMessageContactRegistered != null) {
        isMessageContactRegistered(this as o.MessageContactRegistered);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageWebsiteConnected) {
      if (isMessageWebsiteConnected != null) {
        isMessageWebsiteConnected(this as o.MessageWebsiteConnected);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessagePassportDataSent) {
      if (isMessagePassportDataSent != null) {
        isMessagePassportDataSent(this as o.MessagePassportDataSent);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessagePassportDataReceived) {
      if (isMessagePassportDataReceived != null) {
        isMessagePassportDataReceived(this as o.MessagePassportDataReceived);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageProximityAlertTriggered) {
      if (isMessageProximityAlertTriggered != null) {
        isMessageProximityAlertTriggered(this as o.MessageProximityAlertTriggered);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageUnsupported) {
      if (isMessageUnsupported != null) {
        isMessageUnsupported(this as o.MessageUnsupported);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents a part of the text which must be formatted differently
abstract class TextEntityType extends b.TdBase {
  void match({
    Action<o.TextEntityTypeMention>? isTextEntityTypeMention,
    Action<o.TextEntityTypeHashtag>? isTextEntityTypeHashtag,
    Action<o.TextEntityTypeCashtag>? isTextEntityTypeCashtag,
    Action<o.TextEntityTypeBotCommand>? isTextEntityTypeBotCommand,
    Action<o.TextEntityTypeUrl>? isTextEntityTypeUrl,
    Action<o.TextEntityTypeEmailAddress>? isTextEntityTypeEmailAddress,
    Action<o.TextEntityTypePhoneNumber>? isTextEntityTypePhoneNumber,
    Action<o.TextEntityTypeBankCardNumber>? isTextEntityTypeBankCardNumber,
    Action<o.TextEntityTypeBold>? isTextEntityTypeBold,
    Action<o.TextEntityTypeItalic>? isTextEntityTypeItalic,
    Action<o.TextEntityTypeUnderline>? isTextEntityTypeUnderline,
    Action<o.TextEntityTypeStrikethrough>? isTextEntityTypeStrikethrough,
    Action<o.TextEntityTypeCode>? isTextEntityTypeCode,
    Action<o.TextEntityTypePre>? isTextEntityTypePre,
    Action<o.TextEntityTypePreCode>? isTextEntityTypePreCode,
    Action<o.TextEntityTypeTextUrl>? isTextEntityTypeTextUrl,
    Action<o.TextEntityTypeMentionName>? isTextEntityTypeMentionName,
    Action<TextEntityType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TextEntityTypeMention) {
      if (isTextEntityTypeMention != null) {
        isTextEntityTypeMention(this as o.TextEntityTypeMention);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeHashtag) {
      if (isTextEntityTypeHashtag != null) {
        isTextEntityTypeHashtag(this as o.TextEntityTypeHashtag);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeCashtag) {
      if (isTextEntityTypeCashtag != null) {
        isTextEntityTypeCashtag(this as o.TextEntityTypeCashtag);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeBotCommand) {
      if (isTextEntityTypeBotCommand != null) {
        isTextEntityTypeBotCommand(this as o.TextEntityTypeBotCommand);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeUrl) {
      if (isTextEntityTypeUrl != null) {
        isTextEntityTypeUrl(this as o.TextEntityTypeUrl);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeEmailAddress) {
      if (isTextEntityTypeEmailAddress != null) {
        isTextEntityTypeEmailAddress(this as o.TextEntityTypeEmailAddress);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypePhoneNumber) {
      if (isTextEntityTypePhoneNumber != null) {
        isTextEntityTypePhoneNumber(this as o.TextEntityTypePhoneNumber);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeBankCardNumber) {
      if (isTextEntityTypeBankCardNumber != null) {
        isTextEntityTypeBankCardNumber(this as o.TextEntityTypeBankCardNumber);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeBold) {
      if (isTextEntityTypeBold != null) {
        isTextEntityTypeBold(this as o.TextEntityTypeBold);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeItalic) {
      if (isTextEntityTypeItalic != null) {
        isTextEntityTypeItalic(this as o.TextEntityTypeItalic);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeUnderline) {
      if (isTextEntityTypeUnderline != null) {
        isTextEntityTypeUnderline(this as o.TextEntityTypeUnderline);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeStrikethrough) {
      if (isTextEntityTypeStrikethrough != null) {
        isTextEntityTypeStrikethrough(this as o.TextEntityTypeStrikethrough);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeCode) {
      if (isTextEntityTypeCode != null) {
        isTextEntityTypeCode(this as o.TextEntityTypeCode);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypePre) {
      if (isTextEntityTypePre != null) {
        isTextEntityTypePre(this as o.TextEntityTypePre);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypePreCode) {
      if (isTextEntityTypePreCode != null) {
        isTextEntityTypePreCode(this as o.TextEntityTypePreCode);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeTextUrl) {
      if (isTextEntityTypeTextUrl != null) {
        isTextEntityTypeTextUrl(this as o.TextEntityTypeTextUrl);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextEntityTypeMentionName) {
      if (isTextEntityTypeMentionName != null) {
        isTextEntityTypeMentionName(this as o.TextEntityTypeMentionName);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class InputThumbnail extends b.TdBase {
  void match({
    Action<o.InputThumbnail>? isInputThumbnail,
    Action<InputThumbnail>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputThumbnail) {
      if (isInputThumbnail != null) {
        isInputThumbnail(this as o.InputThumbnail);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains information about the time when a scheduled message will be sent
abstract class MessageSchedulingState extends b.TdBase {
  void match({
    Action<o.MessageSchedulingStateSendAtDate>? isMessageSchedulingStateSendAtDate,
    Action<o.MessageSchedulingStateSendWhenOnline>? isMessageSchedulingStateSendWhenOnline,
    Action<MessageSchedulingState>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageSchedulingStateSendAtDate) {
      if (isMessageSchedulingStateSendAtDate != null) {
        isMessageSchedulingStateSendAtDate(this as o.MessageSchedulingStateSendAtDate);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageSchedulingStateSendWhenOnline) {
      if (isMessageSchedulingStateSendWhenOnline != null) {
        isMessageSchedulingStateSendWhenOnline(this as o.MessageSchedulingStateSendWhenOnline);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class MessageSendOptions extends b.TdBase {
  void match({
    Action<o.MessageSendOptions>? isMessageSendOptions,
    Action<MessageSendOptions>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageSendOptions) {
      if (isMessageSendOptions != null) {
        isMessageSendOptions(this as o.MessageSendOptions);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class MessageCopyOptions extends b.TdBase {
  void match({
    Action<o.MessageCopyOptions>? isMessageCopyOptions,
    Action<MessageCopyOptions>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageCopyOptions) {
      if (isMessageCopyOptions != null) {
        isMessageCopyOptions(this as o.MessageCopyOptions);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// The content of a message to send
abstract class InputMessageContent extends b.TdBase {
  void match({
    Action<o.InputMessageText>? isInputMessageText,
    Action<o.InputMessageAnimation>? isInputMessageAnimation,
    Action<o.InputMessageAudio>? isInputMessageAudio,
    Action<o.InputMessageDocument>? isInputMessageDocument,
    Action<o.InputMessagePhoto>? isInputMessagePhoto,
    Action<o.InputMessageSticker>? isInputMessageSticker,
    Action<o.InputMessageVideo>? isInputMessageVideo,
    Action<o.InputMessageVideoNote>? isInputMessageVideoNote,
    Action<o.InputMessageVoiceNote>? isInputMessageVoiceNote,
    Action<o.InputMessageLocation>? isInputMessageLocation,
    Action<o.InputMessageVenue>? isInputMessageVenue,
    Action<o.InputMessageContact>? isInputMessageContact,
    Action<o.InputMessageDice>? isInputMessageDice,
    Action<o.InputMessageGame>? isInputMessageGame,
    Action<o.InputMessageInvoice>? isInputMessageInvoice,
    Action<o.InputMessagePoll>? isInputMessagePoll,
    Action<o.InputMessageForwarded>? isInputMessageForwarded,
    Action<InputMessageContent>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputMessageText) {
      if (isInputMessageText != null) {
        isInputMessageText(this as o.InputMessageText);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessageAnimation) {
      if (isInputMessageAnimation != null) {
        isInputMessageAnimation(this as o.InputMessageAnimation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessageAudio) {
      if (isInputMessageAudio != null) {
        isInputMessageAudio(this as o.InputMessageAudio);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessageDocument) {
      if (isInputMessageDocument != null) {
        isInputMessageDocument(this as o.InputMessageDocument);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessagePhoto) {
      if (isInputMessagePhoto != null) {
        isInputMessagePhoto(this as o.InputMessagePhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessageSticker) {
      if (isInputMessageSticker != null) {
        isInputMessageSticker(this as o.InputMessageSticker);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessageVideo) {
      if (isInputMessageVideo != null) {
        isInputMessageVideo(this as o.InputMessageVideo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessageVideoNote) {
      if (isInputMessageVideoNote != null) {
        isInputMessageVideoNote(this as o.InputMessageVideoNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessageVoiceNote) {
      if (isInputMessageVoiceNote != null) {
        isInputMessageVoiceNote(this as o.InputMessageVoiceNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessageLocation) {
      if (isInputMessageLocation != null) {
        isInputMessageLocation(this as o.InputMessageLocation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessageVenue) {
      if (isInputMessageVenue != null) {
        isInputMessageVenue(this as o.InputMessageVenue);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessageContact) {
      if (isInputMessageContact != null) {
        isInputMessageContact(this as o.InputMessageContact);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessageDice) {
      if (isInputMessageDice != null) {
        isInputMessageDice(this as o.InputMessageDice);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessageGame) {
      if (isInputMessageGame != null) {
        isInputMessageGame(this as o.InputMessageGame);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessageInvoice) {
      if (isInputMessageInvoice != null) {
        isInputMessageInvoice(this as o.InputMessageInvoice);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessagePoll) {
      if (isInputMessagePoll != null) {
        isInputMessagePoll(this as o.InputMessagePoll);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputMessageForwarded) {
      if (isInputMessageForwarded != null) {
        isInputMessageForwarded(this as o.InputMessageForwarded);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents a filter for message search results
abstract class SearchMessagesFilter extends b.TdBase {
  void match({
    Action<o.SearchMessagesFilterEmpty>? isSearchMessagesFilterEmpty,
    Action<o.SearchMessagesFilterAnimation>? isSearchMessagesFilterAnimation,
    Action<o.SearchMessagesFilterAudio>? isSearchMessagesFilterAudio,
    Action<o.SearchMessagesFilterDocument>? isSearchMessagesFilterDocument,
    Action<o.SearchMessagesFilterPhoto>? isSearchMessagesFilterPhoto,
    Action<o.SearchMessagesFilterVideo>? isSearchMessagesFilterVideo,
    Action<o.SearchMessagesFilterVoiceNote>? isSearchMessagesFilterVoiceNote,
    Action<o.SearchMessagesFilterPhotoAndVideo>? isSearchMessagesFilterPhotoAndVideo,
    Action<o.SearchMessagesFilterUrl>? isSearchMessagesFilterUrl,
    Action<o.SearchMessagesFilterChatPhoto>? isSearchMessagesFilterChatPhoto,
    Action<o.SearchMessagesFilterCall>? isSearchMessagesFilterCall,
    Action<o.SearchMessagesFilterMissedCall>? isSearchMessagesFilterMissedCall,
    Action<o.SearchMessagesFilterVideoNote>? isSearchMessagesFilterVideoNote,
    Action<o.SearchMessagesFilterVoiceAndVideoNote>? isSearchMessagesFilterVoiceAndVideoNote,
    Action<o.SearchMessagesFilterMention>? isSearchMessagesFilterMention,
    Action<o.SearchMessagesFilterUnreadMention>? isSearchMessagesFilterUnreadMention,
    Action<o.SearchMessagesFilterFailedToSend>? isSearchMessagesFilterFailedToSend,
    Action<o.SearchMessagesFilterPinned>? isSearchMessagesFilterPinned,
    Action<SearchMessagesFilter>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.SearchMessagesFilterEmpty) {
      if (isSearchMessagesFilterEmpty != null) {
        isSearchMessagesFilterEmpty(this as o.SearchMessagesFilterEmpty);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterAnimation) {
      if (isSearchMessagesFilterAnimation != null) {
        isSearchMessagesFilterAnimation(this as o.SearchMessagesFilterAnimation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterAudio) {
      if (isSearchMessagesFilterAudio != null) {
        isSearchMessagesFilterAudio(this as o.SearchMessagesFilterAudio);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterDocument) {
      if (isSearchMessagesFilterDocument != null) {
        isSearchMessagesFilterDocument(this as o.SearchMessagesFilterDocument);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterPhoto) {
      if (isSearchMessagesFilterPhoto != null) {
        isSearchMessagesFilterPhoto(this as o.SearchMessagesFilterPhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterVideo) {
      if (isSearchMessagesFilterVideo != null) {
        isSearchMessagesFilterVideo(this as o.SearchMessagesFilterVideo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterVoiceNote) {
      if (isSearchMessagesFilterVoiceNote != null) {
        isSearchMessagesFilterVoiceNote(this as o.SearchMessagesFilterVoiceNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterPhotoAndVideo) {
      if (isSearchMessagesFilterPhotoAndVideo != null) {
        isSearchMessagesFilterPhotoAndVideo(this as o.SearchMessagesFilterPhotoAndVideo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterUrl) {
      if (isSearchMessagesFilterUrl != null) {
        isSearchMessagesFilterUrl(this as o.SearchMessagesFilterUrl);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterChatPhoto) {
      if (isSearchMessagesFilterChatPhoto != null) {
        isSearchMessagesFilterChatPhoto(this as o.SearchMessagesFilterChatPhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterCall) {
      if (isSearchMessagesFilterCall != null) {
        isSearchMessagesFilterCall(this as o.SearchMessagesFilterCall);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterMissedCall) {
      if (isSearchMessagesFilterMissedCall != null) {
        isSearchMessagesFilterMissedCall(this as o.SearchMessagesFilterMissedCall);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterVideoNote) {
      if (isSearchMessagesFilterVideoNote != null) {
        isSearchMessagesFilterVideoNote(this as o.SearchMessagesFilterVideoNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterVoiceAndVideoNote) {
      if (isSearchMessagesFilterVoiceAndVideoNote != null) {
        isSearchMessagesFilterVoiceAndVideoNote(this as o.SearchMessagesFilterVoiceAndVideoNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterMention) {
      if (isSearchMessagesFilterMention != null) {
        isSearchMessagesFilterMention(this as o.SearchMessagesFilterMention);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterUnreadMention) {
      if (isSearchMessagesFilterUnreadMention != null) {
        isSearchMessagesFilterUnreadMention(this as o.SearchMessagesFilterUnreadMention);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterFailedToSend) {
      if (isSearchMessagesFilterFailedToSend != null) {
        isSearchMessagesFilterFailedToSend(this as o.SearchMessagesFilterFailedToSend);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SearchMessagesFilterPinned) {
      if (isSearchMessagesFilterPinned != null) {
        isSearchMessagesFilterPinned(this as o.SearchMessagesFilterPinned);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the different types of activity in a chat
abstract class ChatAction extends b.TdBase {
  void match({
    Action<o.ChatActionTyping>? isChatActionTyping,
    Action<o.ChatActionRecordingVideo>? isChatActionRecordingVideo,
    Action<o.ChatActionUploadingVideo>? isChatActionUploadingVideo,
    Action<o.ChatActionRecordingVoiceNote>? isChatActionRecordingVoiceNote,
    Action<o.ChatActionUploadingVoiceNote>? isChatActionUploadingVoiceNote,
    Action<o.ChatActionUploadingPhoto>? isChatActionUploadingPhoto,
    Action<o.ChatActionUploadingDocument>? isChatActionUploadingDocument,
    Action<o.ChatActionChoosingLocation>? isChatActionChoosingLocation,
    Action<o.ChatActionChoosingContact>? isChatActionChoosingContact,
    Action<o.ChatActionStartPlayingGame>? isChatActionStartPlayingGame,
    Action<o.ChatActionRecordingVideoNote>? isChatActionRecordingVideoNote,
    Action<o.ChatActionUploadingVideoNote>? isChatActionUploadingVideoNote,
    Action<o.ChatActionCancel>? isChatActionCancel,
    Action<ChatAction>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatActionTyping) {
      if (isChatActionTyping != null) {
        isChatActionTyping(this as o.ChatActionTyping);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionRecordingVideo) {
      if (isChatActionRecordingVideo != null) {
        isChatActionRecordingVideo(this as o.ChatActionRecordingVideo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionUploadingVideo) {
      if (isChatActionUploadingVideo != null) {
        isChatActionUploadingVideo(this as o.ChatActionUploadingVideo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionRecordingVoiceNote) {
      if (isChatActionRecordingVoiceNote != null) {
        isChatActionRecordingVoiceNote(this as o.ChatActionRecordingVoiceNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionUploadingVoiceNote) {
      if (isChatActionUploadingVoiceNote != null) {
        isChatActionUploadingVoiceNote(this as o.ChatActionUploadingVoiceNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionUploadingPhoto) {
      if (isChatActionUploadingPhoto != null) {
        isChatActionUploadingPhoto(this as o.ChatActionUploadingPhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionUploadingDocument) {
      if (isChatActionUploadingDocument != null) {
        isChatActionUploadingDocument(this as o.ChatActionUploadingDocument);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionChoosingLocation) {
      if (isChatActionChoosingLocation != null) {
        isChatActionChoosingLocation(this as o.ChatActionChoosingLocation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionChoosingContact) {
      if (isChatActionChoosingContact != null) {
        isChatActionChoosingContact(this as o.ChatActionChoosingContact);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionStartPlayingGame) {
      if (isChatActionStartPlayingGame != null) {
        isChatActionStartPlayingGame(this as o.ChatActionStartPlayingGame);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionRecordingVideoNote) {
      if (isChatActionRecordingVideoNote != null) {
        isChatActionRecordingVideoNote(this as o.ChatActionRecordingVideoNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionUploadingVideoNote) {
      if (isChatActionUploadingVideoNote != null) {
        isChatActionUploadingVideoNote(this as o.ChatActionUploadingVideoNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatActionCancel) {
      if (isChatActionCancel != null) {
        isChatActionCancel(this as o.ChatActionCancel);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the last time the user was online
abstract class UserStatus extends b.TdBase {
  void match({
    Action<o.UserStatusEmpty>? isUserStatusEmpty,
    Action<o.UserStatusOnline>? isUserStatusOnline,
    Action<o.UserStatusOffline>? isUserStatusOffline,
    Action<o.UserStatusRecently>? isUserStatusRecently,
    Action<o.UserStatusLastWeek>? isUserStatusLastWeek,
    Action<o.UserStatusLastMonth>? isUserStatusLastMonth,
    Action<UserStatus>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.UserStatusEmpty) {
      if (isUserStatusEmpty != null) {
        isUserStatusEmpty(this as o.UserStatusEmpty);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserStatusOnline) {
      if (isUserStatusOnline != null) {
        isUserStatusOnline(this as o.UserStatusOnline);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserStatusOffline) {
      if (isUserStatusOffline != null) {
        isUserStatusOffline(this as o.UserStatusOffline);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserStatusRecently) {
      if (isUserStatusRecently != null) {
        isUserStatusRecently(this as o.UserStatusRecently);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserStatusLastWeek) {
      if (isUserStatusLastWeek != null) {
        isUserStatusLastWeek(this as o.UserStatusLastWeek);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserStatusLastMonth) {
      if (isUserStatusLastMonth != null) {
        isUserStatusLastMonth(this as o.UserStatusLastMonth);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Stickers extends b.TdBase {
  void match({
    Action<o.Stickers>? isStickers,
    Action<Stickers>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Stickers) {
      if (isStickers != null) {
        isStickers(this as o.Stickers);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Emojis extends b.TdBase {
  void match({
    Action<o.Emojis>? isEmojis,
    Action<Emojis>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Emojis) {
      if (isEmojis != null) {
        isEmojis(this as o.Emojis);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class StickerSet extends b.TdBase {
  void match({
    Action<o.StickerSet>? isStickerSet,
    Action<StickerSet>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StickerSet) {
      if (isStickerSet != null) {
        isStickerSet(this as o.StickerSet);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class StickerSetInfo extends b.TdBase {
  void match({
    Action<o.StickerSetInfo>? isStickerSetInfo,
    Action<StickerSetInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StickerSetInfo) {
      if (isStickerSetInfo != null) {
        isStickerSetInfo(this as o.StickerSetInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class StickerSets extends b.TdBase {
  void match({
    Action<o.StickerSets>? isStickerSets,
    Action<StickerSets>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StickerSets) {
      if (isStickerSets != null) {
        isStickerSets(this as o.StickerSets);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the reason why a call was discarded
abstract class CallDiscardReason extends b.TdBase {
  void match({
    Action<o.CallDiscardReasonEmpty>? isCallDiscardReasonEmpty,
    Action<o.CallDiscardReasonMissed>? isCallDiscardReasonMissed,
    Action<o.CallDiscardReasonDeclined>? isCallDiscardReasonDeclined,
    Action<o.CallDiscardReasonDisconnected>? isCallDiscardReasonDisconnected,
    Action<o.CallDiscardReasonHungUp>? isCallDiscardReasonHungUp,
    Action<CallDiscardReason>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallDiscardReasonEmpty) {
      if (isCallDiscardReasonEmpty != null) {
        isCallDiscardReasonEmpty(this as o.CallDiscardReasonEmpty);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallDiscardReasonMissed) {
      if (isCallDiscardReasonMissed != null) {
        isCallDiscardReasonMissed(this as o.CallDiscardReasonMissed);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallDiscardReasonDeclined) {
      if (isCallDiscardReasonDeclined != null) {
        isCallDiscardReasonDeclined(this as o.CallDiscardReasonDeclined);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallDiscardReasonDisconnected) {
      if (isCallDiscardReasonDisconnected != null) {
        isCallDiscardReasonDisconnected(this as o.CallDiscardReasonDisconnected);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallDiscardReasonHungUp) {
      if (isCallDiscardReasonHungUp != null) {
        isCallDiscardReasonHungUp(this as o.CallDiscardReasonHungUp);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class CallProtocol extends b.TdBase {
  void match({
    Action<o.CallProtocol>? isCallProtocol,
    Action<CallProtocol>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallProtocol) {
      if (isCallProtocol != null) {
        isCallProtocol(this as o.CallProtocol);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the type of a call server
abstract class CallServerType extends b.TdBase {
  void match({
    Action<o.CallServerTypeTelegramReflector>? isCallServerTypeTelegramReflector,
    Action<o.CallServerTypeWebrtc>? isCallServerTypeWebrtc,
    Action<CallServerType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallServerTypeTelegramReflector) {
      if (isCallServerTypeTelegramReflector != null) {
        isCallServerTypeTelegramReflector(this as o.CallServerTypeTelegramReflector);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallServerTypeWebrtc) {
      if (isCallServerTypeWebrtc != null) {
        isCallServerTypeWebrtc(this as o.CallServerTypeWebrtc);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class CallServer extends b.TdBase {
  void match({
    Action<o.CallServer>? isCallServer,
    Action<CallServer>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallServer) {
      if (isCallServer != null) {
        isCallServer(this as o.CallServer);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class CallId extends b.TdBase {
  void match({
    Action<o.CallId>? isCallId,
    Action<CallId>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallId) {
      if (isCallId != null) {
        isCallId(this as o.CallId);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class GroupCallId extends b.TdBase {
  void match({
    Action<o.GroupCallId>? isGroupCallId,
    Action<GroupCallId>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCallId) {
      if (isGroupCallId != null) {
        isGroupCallId(this as o.GroupCallId);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the current call state
abstract class CallState extends b.TdBase {
  void match({
    Action<o.CallStatePending>? isCallStatePending,
    Action<o.CallStateExchangingKeys>? isCallStateExchangingKeys,
    Action<o.CallStateReady>? isCallStateReady,
    Action<o.CallStateHangingUp>? isCallStateHangingUp,
    Action<o.CallStateDiscarded>? isCallStateDiscarded,
    Action<o.CallStateError>? isCallStateError,
    Action<CallState>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallStatePending) {
      if (isCallStatePending != null) {
        isCallStatePending(this as o.CallStatePending);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallStateExchangingKeys) {
      if (isCallStateExchangingKeys != null) {
        isCallStateExchangingKeys(this as o.CallStateExchangingKeys);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallStateReady) {
      if (isCallStateReady != null) {
        isCallStateReady(this as o.CallStateReady);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallStateHangingUp) {
      if (isCallStateHangingUp != null) {
        isCallStateHangingUp(this as o.CallStateHangingUp);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallStateDiscarded) {
      if (isCallStateDiscarded != null) {
        isCallStateDiscarded(this as o.CallStateDiscarded);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallStateError) {
      if (isCallStateError != null) {
        isCallStateError(this as o.CallStateError);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class GroupCallRecentSpeaker extends b.TdBase {
  void match({
    Action<o.GroupCallRecentSpeaker>? isGroupCallRecentSpeaker,
    Action<GroupCallRecentSpeaker>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCallRecentSpeaker) {
      if (isGroupCallRecentSpeaker != null) {
        isGroupCallRecentSpeaker(this as o.GroupCallRecentSpeaker);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class GroupCall extends b.TdBase {
  void match({
    Action<o.GroupCall>? isGroupCall,
    Action<GroupCall>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCall) {
      if (isGroupCall != null) {
        isGroupCall(this as o.GroupCall);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class GroupCallPayloadFingerprint extends b.TdBase {
  void match({
    Action<o.GroupCallPayloadFingerprint>? isGroupCallPayloadFingerprint,
    Action<GroupCallPayloadFingerprint>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCallPayloadFingerprint) {
      if (isGroupCallPayloadFingerprint != null) {
        isGroupCallPayloadFingerprint(this as o.GroupCallPayloadFingerprint);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class GroupCallPayload extends b.TdBase {
  void match({
    Action<o.GroupCallPayload>? isGroupCallPayload,
    Action<GroupCallPayload>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCallPayload) {
      if (isGroupCallPayload != null) {
        isGroupCallPayload(this as o.GroupCallPayload);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class GroupCallJoinResponseCandidate extends b.TdBase {
  void match({
    Action<o.GroupCallJoinResponseCandidate>? isGroupCallJoinResponseCandidate,
    Action<GroupCallJoinResponseCandidate>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCallJoinResponseCandidate) {
      if (isGroupCallJoinResponseCandidate != null) {
        isGroupCallJoinResponseCandidate(this as o.GroupCallJoinResponseCandidate);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes a group call join response
abstract class GroupCallJoinResponse extends b.TdBase {
  void match({
    Action<o.GroupCallJoinResponseWebrtc>? isGroupCallJoinResponseWebrtc,
    Action<o.GroupCallJoinResponseStream>? isGroupCallJoinResponseStream,
    Action<GroupCallJoinResponse>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCallJoinResponseWebrtc) {
      if (isGroupCallJoinResponseWebrtc != null) {
        isGroupCallJoinResponseWebrtc(this as o.GroupCallJoinResponseWebrtc);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.GroupCallJoinResponseStream) {
      if (isGroupCallJoinResponseStream != null) {
        isGroupCallJoinResponseStream(this as o.GroupCallJoinResponseStream);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class GroupCallParticipant extends b.TdBase {
  void match({
    Action<o.GroupCallParticipant>? isGroupCallParticipant,
    Action<GroupCallParticipant>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GroupCallParticipant) {
      if (isGroupCallParticipant != null) {
        isGroupCallParticipant(this as o.GroupCallParticipant);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the exact type of a problem with a call
abstract class CallProblem extends b.TdBase {
  void match({
    Action<o.CallProblemEcho>? isCallProblemEcho,
    Action<o.CallProblemNoise>? isCallProblemNoise,
    Action<o.CallProblemInterruptions>? isCallProblemInterruptions,
    Action<o.CallProblemDistortedSpeech>? isCallProblemDistortedSpeech,
    Action<o.CallProblemSilentLocal>? isCallProblemSilentLocal,
    Action<o.CallProblemSilentRemote>? isCallProblemSilentRemote,
    Action<o.CallProblemDropped>? isCallProblemDropped,
    Action<o.CallProblemDistortedVideo>? isCallProblemDistortedVideo,
    Action<o.CallProblemPixelatedVideo>? isCallProblemPixelatedVideo,
    Action<CallProblem>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallProblemEcho) {
      if (isCallProblemEcho != null) {
        isCallProblemEcho(this as o.CallProblemEcho);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallProblemNoise) {
      if (isCallProblemNoise != null) {
        isCallProblemNoise(this as o.CallProblemNoise);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallProblemInterruptions) {
      if (isCallProblemInterruptions != null) {
        isCallProblemInterruptions(this as o.CallProblemInterruptions);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallProblemDistortedSpeech) {
      if (isCallProblemDistortedSpeech != null) {
        isCallProblemDistortedSpeech(this as o.CallProblemDistortedSpeech);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallProblemSilentLocal) {
      if (isCallProblemSilentLocal != null) {
        isCallProblemSilentLocal(this as o.CallProblemSilentLocal);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallProblemSilentRemote) {
      if (isCallProblemSilentRemote != null) {
        isCallProblemSilentRemote(this as o.CallProblemSilentRemote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallProblemDropped) {
      if (isCallProblemDropped != null) {
        isCallProblemDropped(this as o.CallProblemDropped);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallProblemDistortedVideo) {
      if (isCallProblemDistortedVideo != null) {
        isCallProblemDistortedVideo(this as o.CallProblemDistortedVideo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallProblemPixelatedVideo) {
      if (isCallProblemPixelatedVideo != null) {
        isCallProblemPixelatedVideo(this as o.CallProblemPixelatedVideo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Call extends b.TdBase {
  void match({
    Action<o.Call>? isCall,
    Action<Call>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Call) {
      if (isCall != null) {
        isCall(this as o.Call);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PhoneNumberAuthenticationSettings extends b.TdBase {
  void match({
    Action<o.PhoneNumberAuthenticationSettings>? isPhoneNumberAuthenticationSettings,
    Action<PhoneNumberAuthenticationSettings>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PhoneNumberAuthenticationSettings) {
      if (isPhoneNumberAuthenticationSettings != null) {
        isPhoneNumberAuthenticationSettings(this as o.PhoneNumberAuthenticationSettings);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Animations extends b.TdBase {
  void match({
    Action<o.Animations>? isAnimations,
    Action<Animations>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Animations) {
      if (isAnimations != null) {
        isAnimations(this as o.Animations);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains animated stickers which should be used for dice animation rendering
abstract class DiceStickers extends b.TdBase {
  void match({
    Action<o.DiceStickersRegular>? isDiceStickersRegular,
    Action<o.DiceStickersSlotMachine>? isDiceStickersSlotMachine,
    Action<DiceStickers>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.DiceStickersRegular) {
      if (isDiceStickersRegular != null) {
        isDiceStickersRegular(this as o.DiceStickersRegular);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.DiceStickersSlotMachine) {
      if (isDiceStickersSlotMachine != null) {
        isDiceStickersSlotMachine(this as o.DiceStickersSlotMachine);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ImportedContacts extends b.TdBase {
  void match({
    Action<o.ImportedContacts>? isImportedContacts,
    Action<ImportedContacts>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ImportedContacts) {
      if (isImportedContacts != null) {
        isImportedContacts(this as o.ImportedContacts);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class HttpUrl extends b.TdBase {
  void match({
    Action<o.HttpUrl>? isHttpUrl,
    Action<HttpUrl>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.HttpUrl) {
      if (isHttpUrl != null) {
        isHttpUrl(this as o.HttpUrl);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents a single result of an inline query; for bots only
abstract class InputInlineQueryResult extends b.TdBase {
  void match({
    Action<o.InputInlineQueryResultAnimation>? isInputInlineQueryResultAnimation,
    Action<o.InputInlineQueryResultArticle>? isInputInlineQueryResultArticle,
    Action<o.InputInlineQueryResultAudio>? isInputInlineQueryResultAudio,
    Action<o.InputInlineQueryResultContact>? isInputInlineQueryResultContact,
    Action<o.InputInlineQueryResultDocument>? isInputInlineQueryResultDocument,
    Action<o.InputInlineQueryResultGame>? isInputInlineQueryResultGame,
    Action<o.InputInlineQueryResultLocation>? isInputInlineQueryResultLocation,
    Action<o.InputInlineQueryResultPhoto>? isInputInlineQueryResultPhoto,
    Action<o.InputInlineQueryResultSticker>? isInputInlineQueryResultSticker,
    Action<o.InputInlineQueryResultVenue>? isInputInlineQueryResultVenue,
    Action<o.InputInlineQueryResultVideo>? isInputInlineQueryResultVideo,
    Action<o.InputInlineQueryResultVoiceNote>? isInputInlineQueryResultVoiceNote,
    Action<InputInlineQueryResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputInlineQueryResultAnimation) {
      if (isInputInlineQueryResultAnimation != null) {
        isInputInlineQueryResultAnimation(this as o.InputInlineQueryResultAnimation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultArticle) {
      if (isInputInlineQueryResultArticle != null) {
        isInputInlineQueryResultArticle(this as o.InputInlineQueryResultArticle);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultAudio) {
      if (isInputInlineQueryResultAudio != null) {
        isInputInlineQueryResultAudio(this as o.InputInlineQueryResultAudio);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultContact) {
      if (isInputInlineQueryResultContact != null) {
        isInputInlineQueryResultContact(this as o.InputInlineQueryResultContact);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultDocument) {
      if (isInputInlineQueryResultDocument != null) {
        isInputInlineQueryResultDocument(this as o.InputInlineQueryResultDocument);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultGame) {
      if (isInputInlineQueryResultGame != null) {
        isInputInlineQueryResultGame(this as o.InputInlineQueryResultGame);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultLocation) {
      if (isInputInlineQueryResultLocation != null) {
        isInputInlineQueryResultLocation(this as o.InputInlineQueryResultLocation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultPhoto) {
      if (isInputInlineQueryResultPhoto != null) {
        isInputInlineQueryResultPhoto(this as o.InputInlineQueryResultPhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultSticker) {
      if (isInputInlineQueryResultSticker != null) {
        isInputInlineQueryResultSticker(this as o.InputInlineQueryResultSticker);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultVenue) {
      if (isInputInlineQueryResultVenue != null) {
        isInputInlineQueryResultVenue(this as o.InputInlineQueryResultVenue);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultVideo) {
      if (isInputInlineQueryResultVideo != null) {
        isInputInlineQueryResultVideo(this as o.InputInlineQueryResultVideo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputInlineQueryResultVoiceNote) {
      if (isInputInlineQueryResultVoiceNote != null) {
        isInputInlineQueryResultVoiceNote(this as o.InputInlineQueryResultVoiceNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents a single result of an inline query
abstract class InlineQueryResult extends b.TdBase {
  void match({
    Action<o.InlineQueryResultArticle>? isInlineQueryResultArticle,
    Action<o.InlineQueryResultContact>? isInlineQueryResultContact,
    Action<o.InlineQueryResultLocation>? isInlineQueryResultLocation,
    Action<o.InlineQueryResultVenue>? isInlineQueryResultVenue,
    Action<o.InlineQueryResultGame>? isInlineQueryResultGame,
    Action<o.InlineQueryResultAnimation>? isInlineQueryResultAnimation,
    Action<o.InlineQueryResultAudio>? isInlineQueryResultAudio,
    Action<o.InlineQueryResultDocument>? isInlineQueryResultDocument,
    Action<o.InlineQueryResultPhoto>? isInlineQueryResultPhoto,
    Action<o.InlineQueryResultSticker>? isInlineQueryResultSticker,
    Action<o.InlineQueryResultVideo>? isInlineQueryResultVideo,
    Action<o.InlineQueryResultVoiceNote>? isInlineQueryResultVoiceNote,
    Action<InlineQueryResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InlineQueryResultArticle) {
      if (isInlineQueryResultArticle != null) {
        isInlineQueryResultArticle(this as o.InlineQueryResultArticle);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultContact) {
      if (isInlineQueryResultContact != null) {
        isInlineQueryResultContact(this as o.InlineQueryResultContact);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultLocation) {
      if (isInlineQueryResultLocation != null) {
        isInlineQueryResultLocation(this as o.InlineQueryResultLocation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultVenue) {
      if (isInlineQueryResultVenue != null) {
        isInlineQueryResultVenue(this as o.InlineQueryResultVenue);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultGame) {
      if (isInlineQueryResultGame != null) {
        isInlineQueryResultGame(this as o.InlineQueryResultGame);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultAnimation) {
      if (isInlineQueryResultAnimation != null) {
        isInlineQueryResultAnimation(this as o.InlineQueryResultAnimation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultAudio) {
      if (isInlineQueryResultAudio != null) {
        isInlineQueryResultAudio(this as o.InlineQueryResultAudio);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultDocument) {
      if (isInlineQueryResultDocument != null) {
        isInlineQueryResultDocument(this as o.InlineQueryResultDocument);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultPhoto) {
      if (isInlineQueryResultPhoto != null) {
        isInlineQueryResultPhoto(this as o.InlineQueryResultPhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultSticker) {
      if (isInlineQueryResultSticker != null) {
        isInlineQueryResultSticker(this as o.InlineQueryResultSticker);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultVideo) {
      if (isInlineQueryResultVideo != null) {
        isInlineQueryResultVideo(this as o.InlineQueryResultVideo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InlineQueryResultVoiceNote) {
      if (isInlineQueryResultVoiceNote != null) {
        isInlineQueryResultVoiceNote(this as o.InlineQueryResultVoiceNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class InlineQueryResults extends b.TdBase {
  void match({
    Action<o.InlineQueryResults>? isInlineQueryResults,
    Action<InlineQueryResults>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InlineQueryResults) {
      if (isInlineQueryResults != null) {
        isInlineQueryResults(this as o.InlineQueryResults);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents a payload of a callback query
abstract class CallbackQueryPayload extends b.TdBase {
  void match({
    Action<o.CallbackQueryPayloadData>? isCallbackQueryPayloadData,
    Action<o.CallbackQueryPayloadDataWithPassword>? isCallbackQueryPayloadDataWithPassword,
    Action<o.CallbackQueryPayloadGame>? isCallbackQueryPayloadGame,
    Action<CallbackQueryPayload>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallbackQueryPayloadData) {
      if (isCallbackQueryPayloadData != null) {
        isCallbackQueryPayloadData(this as o.CallbackQueryPayloadData);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallbackQueryPayloadDataWithPassword) {
      if (isCallbackQueryPayloadDataWithPassword != null) {
        isCallbackQueryPayloadDataWithPassword(this as o.CallbackQueryPayloadDataWithPassword);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CallbackQueryPayloadGame) {
      if (isCallbackQueryPayloadGame != null) {
        isCallbackQueryPayloadGame(this as o.CallbackQueryPayloadGame);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class CallbackQueryAnswer extends b.TdBase {
  void match({
    Action<o.CallbackQueryAnswer>? isCallbackQueryAnswer,
    Action<CallbackQueryAnswer>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CallbackQueryAnswer) {
      if (isCallbackQueryAnswer != null) {
        isCallbackQueryAnswer(this as o.CallbackQueryAnswer);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class CustomRequestResult extends b.TdBase {
  void match({
    Action<o.CustomRequestResult>? isCustomRequestResult,
    Action<CustomRequestResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CustomRequestResult) {
      if (isCustomRequestResult != null) {
        isCustomRequestResult(this as o.CustomRequestResult);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class GameHighScore extends b.TdBase {
  void match({
    Action<o.GameHighScore>? isGameHighScore,
    Action<GameHighScore>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GameHighScore) {
      if (isGameHighScore != null) {
        isGameHighScore(this as o.GameHighScore);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class GameHighScores extends b.TdBase {
  void match({
    Action<o.GameHighScores>? isGameHighScores,
    Action<GameHighScores>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.GameHighScores) {
      if (isGameHighScores != null) {
        isGameHighScores(this as o.GameHighScores);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents a chat event
abstract class ChatEventAction extends b.TdBase {
  void match({
    Action<o.ChatEventMessageEdited>? isChatEventMessageEdited,
    Action<o.ChatEventMessageDeleted>? isChatEventMessageDeleted,
    Action<o.ChatEventPollStopped>? isChatEventPollStopped,
    Action<o.ChatEventMessagePinned>? isChatEventMessagePinned,
    Action<o.ChatEventMessageUnpinned>? isChatEventMessageUnpinned,
    Action<o.ChatEventMemberJoined>? isChatEventMemberJoined,
    Action<o.ChatEventMemberJoinedByInviteLink>? isChatEventMemberJoinedByInviteLink,
    Action<o.ChatEventMemberLeft>? isChatEventMemberLeft,
    Action<o.ChatEventMemberInvited>? isChatEventMemberInvited,
    Action<o.ChatEventMemberPromoted>? isChatEventMemberPromoted,
    Action<o.ChatEventMemberRestricted>? isChatEventMemberRestricted,
    Action<o.ChatEventTitleChanged>? isChatEventTitleChanged,
    Action<o.ChatEventPermissionsChanged>? isChatEventPermissionsChanged,
    Action<o.ChatEventDescriptionChanged>? isChatEventDescriptionChanged,
    Action<o.ChatEventUsernameChanged>? isChatEventUsernameChanged,
    Action<o.ChatEventPhotoChanged>? isChatEventPhotoChanged,
    Action<o.ChatEventInvitesToggled>? isChatEventInvitesToggled,
    Action<o.ChatEventLinkedChatChanged>? isChatEventLinkedChatChanged,
    Action<o.ChatEventSlowModeDelayChanged>? isChatEventSlowModeDelayChanged,
    Action<o.ChatEventMessageTtlSettingChanged>? isChatEventMessageTtlSettingChanged,
    Action<o.ChatEventSignMessagesToggled>? isChatEventSignMessagesToggled,
    Action<o.ChatEventStickerSetChanged>? isChatEventStickerSetChanged,
    Action<o.ChatEventLocationChanged>? isChatEventLocationChanged,
    Action<o.ChatEventIsAllHistoryAvailableToggled>? isChatEventIsAllHistoryAvailableToggled,
    Action<o.ChatEventInviteLinkEdited>? isChatEventInviteLinkEdited,
    Action<o.ChatEventInviteLinkRevoked>? isChatEventInviteLinkRevoked,
    Action<o.ChatEventInviteLinkDeleted>? isChatEventInviteLinkDeleted,
    Action<o.ChatEventVoiceChatCreated>? isChatEventVoiceChatCreated,
    Action<o.ChatEventVoiceChatDiscarded>? isChatEventVoiceChatDiscarded,
    Action<o.ChatEventVoiceChatParticipantIsMutedToggled>? isChatEventVoiceChatParticipantIsMutedToggled,
    Action<o.ChatEventVoiceChatParticipantVolumeLevelChanged>? isChatEventVoiceChatParticipantVolumeLevelChanged,
    Action<o.ChatEventVoiceChatMuteNewParticipantsToggled>? isChatEventVoiceChatMuteNewParticipantsToggled,
    Action<ChatEventAction>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatEventMessageEdited) {
      if (isChatEventMessageEdited != null) {
        isChatEventMessageEdited(this as o.ChatEventMessageEdited);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventMessageDeleted) {
      if (isChatEventMessageDeleted != null) {
        isChatEventMessageDeleted(this as o.ChatEventMessageDeleted);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventPollStopped) {
      if (isChatEventPollStopped != null) {
        isChatEventPollStopped(this as o.ChatEventPollStopped);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventMessagePinned) {
      if (isChatEventMessagePinned != null) {
        isChatEventMessagePinned(this as o.ChatEventMessagePinned);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventMessageUnpinned) {
      if (isChatEventMessageUnpinned != null) {
        isChatEventMessageUnpinned(this as o.ChatEventMessageUnpinned);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventMemberJoined) {
      if (isChatEventMemberJoined != null) {
        isChatEventMemberJoined(this as o.ChatEventMemberJoined);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventMemberJoinedByInviteLink) {
      if (isChatEventMemberJoinedByInviteLink != null) {
        isChatEventMemberJoinedByInviteLink(this as o.ChatEventMemberJoinedByInviteLink);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventMemberLeft) {
      if (isChatEventMemberLeft != null) {
        isChatEventMemberLeft(this as o.ChatEventMemberLeft);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventMemberInvited) {
      if (isChatEventMemberInvited != null) {
        isChatEventMemberInvited(this as o.ChatEventMemberInvited);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventMemberPromoted) {
      if (isChatEventMemberPromoted != null) {
        isChatEventMemberPromoted(this as o.ChatEventMemberPromoted);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventMemberRestricted) {
      if (isChatEventMemberRestricted != null) {
        isChatEventMemberRestricted(this as o.ChatEventMemberRestricted);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventTitleChanged) {
      if (isChatEventTitleChanged != null) {
        isChatEventTitleChanged(this as o.ChatEventTitleChanged);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventPermissionsChanged) {
      if (isChatEventPermissionsChanged != null) {
        isChatEventPermissionsChanged(this as o.ChatEventPermissionsChanged);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventDescriptionChanged) {
      if (isChatEventDescriptionChanged != null) {
        isChatEventDescriptionChanged(this as o.ChatEventDescriptionChanged);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventUsernameChanged) {
      if (isChatEventUsernameChanged != null) {
        isChatEventUsernameChanged(this as o.ChatEventUsernameChanged);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventPhotoChanged) {
      if (isChatEventPhotoChanged != null) {
        isChatEventPhotoChanged(this as o.ChatEventPhotoChanged);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventInvitesToggled) {
      if (isChatEventInvitesToggled != null) {
        isChatEventInvitesToggled(this as o.ChatEventInvitesToggled);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventLinkedChatChanged) {
      if (isChatEventLinkedChatChanged != null) {
        isChatEventLinkedChatChanged(this as o.ChatEventLinkedChatChanged);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventSlowModeDelayChanged) {
      if (isChatEventSlowModeDelayChanged != null) {
        isChatEventSlowModeDelayChanged(this as o.ChatEventSlowModeDelayChanged);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventMessageTtlSettingChanged) {
      if (isChatEventMessageTtlSettingChanged != null) {
        isChatEventMessageTtlSettingChanged(this as o.ChatEventMessageTtlSettingChanged);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventSignMessagesToggled) {
      if (isChatEventSignMessagesToggled != null) {
        isChatEventSignMessagesToggled(this as o.ChatEventSignMessagesToggled);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventStickerSetChanged) {
      if (isChatEventStickerSetChanged != null) {
        isChatEventStickerSetChanged(this as o.ChatEventStickerSetChanged);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventLocationChanged) {
      if (isChatEventLocationChanged != null) {
        isChatEventLocationChanged(this as o.ChatEventLocationChanged);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventIsAllHistoryAvailableToggled) {
      if (isChatEventIsAllHistoryAvailableToggled != null) {
        isChatEventIsAllHistoryAvailableToggled(this as o.ChatEventIsAllHistoryAvailableToggled);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventInviteLinkEdited) {
      if (isChatEventInviteLinkEdited != null) {
        isChatEventInviteLinkEdited(this as o.ChatEventInviteLinkEdited);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventInviteLinkRevoked) {
      if (isChatEventInviteLinkRevoked != null) {
        isChatEventInviteLinkRevoked(this as o.ChatEventInviteLinkRevoked);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventInviteLinkDeleted) {
      if (isChatEventInviteLinkDeleted != null) {
        isChatEventInviteLinkDeleted(this as o.ChatEventInviteLinkDeleted);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventVoiceChatCreated) {
      if (isChatEventVoiceChatCreated != null) {
        isChatEventVoiceChatCreated(this as o.ChatEventVoiceChatCreated);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventVoiceChatDiscarded) {
      if (isChatEventVoiceChatDiscarded != null) {
        isChatEventVoiceChatDiscarded(this as o.ChatEventVoiceChatDiscarded);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventVoiceChatParticipantIsMutedToggled) {
      if (isChatEventVoiceChatParticipantIsMutedToggled != null) {
        isChatEventVoiceChatParticipantIsMutedToggled(this as o.ChatEventVoiceChatParticipantIsMutedToggled);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventVoiceChatParticipantVolumeLevelChanged) {
      if (isChatEventVoiceChatParticipantVolumeLevelChanged != null) {
        isChatEventVoiceChatParticipantVolumeLevelChanged(this as o.ChatEventVoiceChatParticipantVolumeLevelChanged);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatEventVoiceChatMuteNewParticipantsToggled) {
      if (isChatEventVoiceChatMuteNewParticipantsToggled != null) {
        isChatEventVoiceChatMuteNewParticipantsToggled(this as o.ChatEventVoiceChatMuteNewParticipantsToggled);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatEvent extends b.TdBase {
  void match({
    Action<o.ChatEvent>? isChatEvent,
    Action<ChatEvent>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatEvent) {
      if (isChatEvent != null) {
        isChatEvent(this as o.ChatEvent);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatEvents extends b.TdBase {
  void match({
    Action<o.ChatEvents>? isChatEvents,
    Action<ChatEvents>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatEvents) {
      if (isChatEvents != null) {
        isChatEvents(this as o.ChatEvents);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatEventLogFilters extends b.TdBase {
  void match({
    Action<o.ChatEventLogFilters>? isChatEventLogFilters,
    Action<ChatEventLogFilters>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatEventLogFilters) {
      if (isChatEventLogFilters != null) {
        isChatEventLogFilters(this as o.ChatEventLogFilters);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents the value of a string in a language pack
abstract class LanguagePackStringValue extends b.TdBase {
  void match({
    Action<o.LanguagePackStringValueOrdinary>? isLanguagePackStringValueOrdinary,
    Action<o.LanguagePackStringValuePluralized>? isLanguagePackStringValuePluralized,
    Action<o.LanguagePackStringValueDeleted>? isLanguagePackStringValueDeleted,
    Action<LanguagePackStringValue>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LanguagePackStringValueOrdinary) {
      if (isLanguagePackStringValueOrdinary != null) {
        isLanguagePackStringValueOrdinary(this as o.LanguagePackStringValueOrdinary);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.LanguagePackStringValuePluralized) {
      if (isLanguagePackStringValuePluralized != null) {
        isLanguagePackStringValuePluralized(this as o.LanguagePackStringValuePluralized);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.LanguagePackStringValueDeleted) {
      if (isLanguagePackStringValueDeleted != null) {
        isLanguagePackStringValueDeleted(this as o.LanguagePackStringValueDeleted);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class LanguagePackString extends b.TdBase {
  void match({
    Action<o.LanguagePackString>? isLanguagePackString,
    Action<LanguagePackString>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LanguagePackString) {
      if (isLanguagePackString != null) {
        isLanguagePackString(this as o.LanguagePackString);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class LanguagePackStrings extends b.TdBase {
  void match({
    Action<o.LanguagePackStrings>? isLanguagePackStrings,
    Action<LanguagePackStrings>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LanguagePackStrings) {
      if (isLanguagePackStrings != null) {
        isLanguagePackStrings(this as o.LanguagePackStrings);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class LanguagePackInfo extends b.TdBase {
  void match({
    Action<o.LanguagePackInfo>? isLanguagePackInfo,
    Action<LanguagePackInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LanguagePackInfo) {
      if (isLanguagePackInfo != null) {
        isLanguagePackInfo(this as o.LanguagePackInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class LocalizationTargetInfo extends b.TdBase {
  void match({
    Action<o.LocalizationTargetInfo>? isLocalizationTargetInfo,
    Action<LocalizationTargetInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LocalizationTargetInfo) {
      if (isLocalizationTargetInfo != null) {
        isLocalizationTargetInfo(this as o.LocalizationTargetInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents a data needed to subscribe for push notifications through registerDevice method. To use specific push notification service, the correct application platform must be specified and a valid server authentication data must be uploaded at https://my.telegram.org
abstract class DeviceToken extends b.TdBase {
  void match({
    Action<o.DeviceTokenFirebaseCloudMessaging>? isDeviceTokenFirebaseCloudMessaging,
    Action<o.DeviceTokenApplePush>? isDeviceTokenApplePush,
    Action<o.DeviceTokenApplePushVoIP>? isDeviceTokenApplePushVoIP,
    Action<o.DeviceTokenWindowsPush>? isDeviceTokenWindowsPush,
    Action<o.DeviceTokenMicrosoftPush>? isDeviceTokenMicrosoftPush,
    Action<o.DeviceTokenMicrosoftPushVoIP>? isDeviceTokenMicrosoftPushVoIP,
    Action<o.DeviceTokenWebPush>? isDeviceTokenWebPush,
    Action<o.DeviceTokenSimplePush>? isDeviceTokenSimplePush,
    Action<o.DeviceTokenUbuntuPush>? isDeviceTokenUbuntuPush,
    Action<o.DeviceTokenBlackBerryPush>? isDeviceTokenBlackBerryPush,
    Action<o.DeviceTokenTizenPush>? isDeviceTokenTizenPush,
    Action<DeviceToken>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.DeviceTokenFirebaseCloudMessaging) {
      if (isDeviceTokenFirebaseCloudMessaging != null) {
        isDeviceTokenFirebaseCloudMessaging(this as o.DeviceTokenFirebaseCloudMessaging);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.DeviceTokenApplePush) {
      if (isDeviceTokenApplePush != null) {
        isDeviceTokenApplePush(this as o.DeviceTokenApplePush);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.DeviceTokenApplePushVoIP) {
      if (isDeviceTokenApplePushVoIP != null) {
        isDeviceTokenApplePushVoIP(this as o.DeviceTokenApplePushVoIP);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.DeviceTokenWindowsPush) {
      if (isDeviceTokenWindowsPush != null) {
        isDeviceTokenWindowsPush(this as o.DeviceTokenWindowsPush);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.DeviceTokenMicrosoftPush) {
      if (isDeviceTokenMicrosoftPush != null) {
        isDeviceTokenMicrosoftPush(this as o.DeviceTokenMicrosoftPush);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.DeviceTokenMicrosoftPushVoIP) {
      if (isDeviceTokenMicrosoftPushVoIP != null) {
        isDeviceTokenMicrosoftPushVoIP(this as o.DeviceTokenMicrosoftPushVoIP);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.DeviceTokenWebPush) {
      if (isDeviceTokenWebPush != null) {
        isDeviceTokenWebPush(this as o.DeviceTokenWebPush);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.DeviceTokenSimplePush) {
      if (isDeviceTokenSimplePush != null) {
        isDeviceTokenSimplePush(this as o.DeviceTokenSimplePush);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.DeviceTokenUbuntuPush) {
      if (isDeviceTokenUbuntuPush != null) {
        isDeviceTokenUbuntuPush(this as o.DeviceTokenUbuntuPush);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.DeviceTokenBlackBerryPush) {
      if (isDeviceTokenBlackBerryPush != null) {
        isDeviceTokenBlackBerryPush(this as o.DeviceTokenBlackBerryPush);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.DeviceTokenTizenPush) {
      if (isDeviceTokenTizenPush != null) {
        isDeviceTokenTizenPush(this as o.DeviceTokenTizenPush);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class PushReceiverId extends b.TdBase {
  void match({
    Action<o.PushReceiverId>? isPushReceiverId,
    Action<PushReceiverId>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PushReceiverId) {
      if (isPushReceiverId != null) {
        isPushReceiverId(this as o.PushReceiverId);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes a fill of a background
abstract class BackgroundFill extends b.TdBase {
  void match({
    Action<o.BackgroundFillSolid>? isBackgroundFillSolid,
    Action<o.BackgroundFillGradient>? isBackgroundFillGradient,
    Action<BackgroundFill>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BackgroundFillSolid) {
      if (isBackgroundFillSolid != null) {
        isBackgroundFillSolid(this as o.BackgroundFillSolid);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.BackgroundFillGradient) {
      if (isBackgroundFillGradient != null) {
        isBackgroundFillGradient(this as o.BackgroundFillGradient);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the type of a background
abstract class BackgroundType extends b.TdBase {
  void match({
    Action<o.BackgroundTypeWallpaper>? isBackgroundTypeWallpaper,
    Action<o.BackgroundTypePattern>? isBackgroundTypePattern,
    Action<o.BackgroundTypeFill>? isBackgroundTypeFill,
    Action<BackgroundType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.BackgroundTypeWallpaper) {
      if (isBackgroundTypeWallpaper != null) {
        isBackgroundTypeWallpaper(this as o.BackgroundTypeWallpaper);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.BackgroundTypePattern) {
      if (isBackgroundTypePattern != null) {
        isBackgroundTypePattern(this as o.BackgroundTypePattern);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.BackgroundTypeFill) {
      if (isBackgroundTypeFill != null) {
        isBackgroundTypeFill(this as o.BackgroundTypeFill);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Background extends b.TdBase {
  void match({
    Action<o.Background>? isBackground,
    Action<Background>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Background) {
      if (isBackground != null) {
        isBackground(this as o.Background);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Backgrounds extends b.TdBase {
  void match({
    Action<o.Backgrounds>? isBackgrounds,
    Action<Backgrounds>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Backgrounds) {
      if (isBackgrounds != null) {
        isBackgrounds(this as o.Backgrounds);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains information about background to set
abstract class InputBackground extends b.TdBase {
  void match({
    Action<o.InputBackgroundLocal>? isInputBackgroundLocal,
    Action<o.InputBackgroundRemote>? isInputBackgroundRemote,
    Action<InputBackground>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputBackgroundLocal) {
      if (isInputBackgroundLocal != null) {
        isInputBackgroundLocal(this as o.InputBackgroundLocal);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputBackgroundRemote) {
      if (isInputBackgroundRemote != null) {
        isInputBackgroundRemote(this as o.InputBackgroundRemote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Hashtags extends b.TdBase {
  void match({
    Action<o.Hashtags>? isHashtags,
    Action<Hashtags>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Hashtags) {
      if (isHashtags != null) {
        isHashtags(this as o.Hashtags);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents result of checking whether the current session can be used to transfer a chat ownership to another user
abstract class CanTransferOwnershipResult extends b.TdBase {
  void match({
    Action<o.CanTransferOwnershipResultOk>? isCanTransferOwnershipResultOk,
    Action<o.CanTransferOwnershipResultPasswordNeeded>? isCanTransferOwnershipResultPasswordNeeded,
    Action<o.CanTransferOwnershipResultPasswordTooFresh>? isCanTransferOwnershipResultPasswordTooFresh,
    Action<o.CanTransferOwnershipResultSessionTooFresh>? isCanTransferOwnershipResultSessionTooFresh,
    Action<CanTransferOwnershipResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CanTransferOwnershipResultOk) {
      if (isCanTransferOwnershipResultOk != null) {
        isCanTransferOwnershipResultOk(this as o.CanTransferOwnershipResultOk);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CanTransferOwnershipResultPasswordNeeded) {
      if (isCanTransferOwnershipResultPasswordNeeded != null) {
        isCanTransferOwnershipResultPasswordNeeded(this as o.CanTransferOwnershipResultPasswordNeeded);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CanTransferOwnershipResultPasswordTooFresh) {
      if (isCanTransferOwnershipResultPasswordTooFresh != null) {
        isCanTransferOwnershipResultPasswordTooFresh(this as o.CanTransferOwnershipResultPasswordTooFresh);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CanTransferOwnershipResultSessionTooFresh) {
      if (isCanTransferOwnershipResultSessionTooFresh != null) {
        isCanTransferOwnershipResultSessionTooFresh(this as o.CanTransferOwnershipResultSessionTooFresh);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents result of checking whether a username can be set for a chat
abstract class CheckChatUsernameResult extends b.TdBase {
  void match({
    Action<o.CheckChatUsernameResultOk>? isCheckChatUsernameResultOk,
    Action<o.CheckChatUsernameResultUsernameInvalid>? isCheckChatUsernameResultUsernameInvalid,
    Action<o.CheckChatUsernameResultUsernameOccupied>? isCheckChatUsernameResultUsernameOccupied,
    Action<o.CheckChatUsernameResultPublicChatsTooMuch>? isCheckChatUsernameResultPublicChatsTooMuch,
    Action<o.CheckChatUsernameResultPublicGroupsUnavailable>? isCheckChatUsernameResultPublicGroupsUnavailable,
    Action<CheckChatUsernameResult>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.CheckChatUsernameResultOk) {
      if (isCheckChatUsernameResultOk != null) {
        isCheckChatUsernameResultOk(this as o.CheckChatUsernameResultOk);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CheckChatUsernameResultUsernameInvalid) {
      if (isCheckChatUsernameResultUsernameInvalid != null) {
        isCheckChatUsernameResultUsernameInvalid(this as o.CheckChatUsernameResultUsernameInvalid);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CheckChatUsernameResultUsernameOccupied) {
      if (isCheckChatUsernameResultUsernameOccupied != null) {
        isCheckChatUsernameResultUsernameOccupied(this as o.CheckChatUsernameResultUsernameOccupied);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CheckChatUsernameResultPublicChatsTooMuch) {
      if (isCheckChatUsernameResultPublicChatsTooMuch != null) {
        isCheckChatUsernameResultPublicChatsTooMuch(this as o.CheckChatUsernameResultPublicChatsTooMuch);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.CheckChatUsernameResultPublicGroupsUnavailable) {
      if (isCheckChatUsernameResultPublicGroupsUnavailable != null) {
        isCheckChatUsernameResultPublicGroupsUnavailable(this as o.CheckChatUsernameResultPublicGroupsUnavailable);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains information about a file with messages exported from another app
abstract class MessageFileType extends b.TdBase {
  void match({
    Action<o.MessageFileTypePrivate>? isMessageFileTypePrivate,
    Action<o.MessageFileTypeGroup>? isMessageFileTypeGroup,
    Action<o.MessageFileTypeUnknown>? isMessageFileTypeUnknown,
    Action<MessageFileType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageFileTypePrivate) {
      if (isMessageFileTypePrivate != null) {
        isMessageFileTypePrivate(this as o.MessageFileTypePrivate);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageFileTypeGroup) {
      if (isMessageFileTypeGroup != null) {
        isMessageFileTypeGroup(this as o.MessageFileTypeGroup);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.MessageFileTypeUnknown) {
      if (isMessageFileTypeUnknown != null) {
        isMessageFileTypeUnknown(this as o.MessageFileTypeUnknown);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains content of a push message notification
abstract class PushMessageContent extends b.TdBase {
  void match({
    Action<o.PushMessageContentHidden>? isPushMessageContentHidden,
    Action<o.PushMessageContentAnimation>? isPushMessageContentAnimation,
    Action<o.PushMessageContentAudio>? isPushMessageContentAudio,
    Action<o.PushMessageContentContact>? isPushMessageContentContact,
    Action<o.PushMessageContentContactRegistered>? isPushMessageContentContactRegistered,
    Action<o.PushMessageContentDocument>? isPushMessageContentDocument,
    Action<o.PushMessageContentGame>? isPushMessageContentGame,
    Action<o.PushMessageContentGameScore>? isPushMessageContentGameScore,
    Action<o.PushMessageContentInvoice>? isPushMessageContentInvoice,
    Action<o.PushMessageContentLocation>? isPushMessageContentLocation,
    Action<o.PushMessageContentPhoto>? isPushMessageContentPhoto,
    Action<o.PushMessageContentPoll>? isPushMessageContentPoll,
    Action<o.PushMessageContentScreenshotTaken>? isPushMessageContentScreenshotTaken,
    Action<o.PushMessageContentSticker>? isPushMessageContentSticker,
    Action<o.PushMessageContentText>? isPushMessageContentText,
    Action<o.PushMessageContentVideo>? isPushMessageContentVideo,
    Action<o.PushMessageContentVideoNote>? isPushMessageContentVideoNote,
    Action<o.PushMessageContentVoiceNote>? isPushMessageContentVoiceNote,
    Action<o.PushMessageContentBasicGroupChatCreate>? isPushMessageContentBasicGroupChatCreate,
    Action<o.PushMessageContentChatAddMembers>? isPushMessageContentChatAddMembers,
    Action<o.PushMessageContentChatChangePhoto>? isPushMessageContentChatChangePhoto,
    Action<o.PushMessageContentChatChangeTitle>? isPushMessageContentChatChangeTitle,
    Action<o.PushMessageContentChatDeleteMember>? isPushMessageContentChatDeleteMember,
    Action<o.PushMessageContentChatJoinByLink>? isPushMessageContentChatJoinByLink,
    Action<o.PushMessageContentMessageForwards>? isPushMessageContentMessageForwards,
    Action<o.PushMessageContentMediaAlbum>? isPushMessageContentMediaAlbum,
    Action<PushMessageContent>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.PushMessageContentHidden) {
      if (isPushMessageContentHidden != null) {
        isPushMessageContentHidden(this as o.PushMessageContentHidden);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentAnimation) {
      if (isPushMessageContentAnimation != null) {
        isPushMessageContentAnimation(this as o.PushMessageContentAnimation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentAudio) {
      if (isPushMessageContentAudio != null) {
        isPushMessageContentAudio(this as o.PushMessageContentAudio);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentContact) {
      if (isPushMessageContentContact != null) {
        isPushMessageContentContact(this as o.PushMessageContentContact);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentContactRegistered) {
      if (isPushMessageContentContactRegistered != null) {
        isPushMessageContentContactRegistered(this as o.PushMessageContentContactRegistered);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentDocument) {
      if (isPushMessageContentDocument != null) {
        isPushMessageContentDocument(this as o.PushMessageContentDocument);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentGame) {
      if (isPushMessageContentGame != null) {
        isPushMessageContentGame(this as o.PushMessageContentGame);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentGameScore) {
      if (isPushMessageContentGameScore != null) {
        isPushMessageContentGameScore(this as o.PushMessageContentGameScore);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentInvoice) {
      if (isPushMessageContentInvoice != null) {
        isPushMessageContentInvoice(this as o.PushMessageContentInvoice);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentLocation) {
      if (isPushMessageContentLocation != null) {
        isPushMessageContentLocation(this as o.PushMessageContentLocation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentPhoto) {
      if (isPushMessageContentPhoto != null) {
        isPushMessageContentPhoto(this as o.PushMessageContentPhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentPoll) {
      if (isPushMessageContentPoll != null) {
        isPushMessageContentPoll(this as o.PushMessageContentPoll);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentScreenshotTaken) {
      if (isPushMessageContentScreenshotTaken != null) {
        isPushMessageContentScreenshotTaken(this as o.PushMessageContentScreenshotTaken);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentSticker) {
      if (isPushMessageContentSticker != null) {
        isPushMessageContentSticker(this as o.PushMessageContentSticker);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentText) {
      if (isPushMessageContentText != null) {
        isPushMessageContentText(this as o.PushMessageContentText);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentVideo) {
      if (isPushMessageContentVideo != null) {
        isPushMessageContentVideo(this as o.PushMessageContentVideo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentVideoNote) {
      if (isPushMessageContentVideoNote != null) {
        isPushMessageContentVideoNote(this as o.PushMessageContentVideoNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentVoiceNote) {
      if (isPushMessageContentVoiceNote != null) {
        isPushMessageContentVoiceNote(this as o.PushMessageContentVoiceNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentBasicGroupChatCreate) {
      if (isPushMessageContentBasicGroupChatCreate != null) {
        isPushMessageContentBasicGroupChatCreate(this as o.PushMessageContentBasicGroupChatCreate);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentChatAddMembers) {
      if (isPushMessageContentChatAddMembers != null) {
        isPushMessageContentChatAddMembers(this as o.PushMessageContentChatAddMembers);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentChatChangePhoto) {
      if (isPushMessageContentChatChangePhoto != null) {
        isPushMessageContentChatChangePhoto(this as o.PushMessageContentChatChangePhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentChatChangeTitle) {
      if (isPushMessageContentChatChangeTitle != null) {
        isPushMessageContentChatChangeTitle(this as o.PushMessageContentChatChangeTitle);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentChatDeleteMember) {
      if (isPushMessageContentChatDeleteMember != null) {
        isPushMessageContentChatDeleteMember(this as o.PushMessageContentChatDeleteMember);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentChatJoinByLink) {
      if (isPushMessageContentChatJoinByLink != null) {
        isPushMessageContentChatJoinByLink(this as o.PushMessageContentChatJoinByLink);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentMessageForwards) {
      if (isPushMessageContentMessageForwards != null) {
        isPushMessageContentMessageForwards(this as o.PushMessageContentMessageForwards);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.PushMessageContentMediaAlbum) {
      if (isPushMessageContentMediaAlbum != null) {
        isPushMessageContentMediaAlbum(this as o.PushMessageContentMediaAlbum);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains detailed information about a notification
abstract class NotificationType extends b.TdBase {
  void match({
    Action<o.NotificationTypeNewMessage>? isNotificationTypeNewMessage,
    Action<o.NotificationTypeNewSecretChat>? isNotificationTypeNewSecretChat,
    Action<o.NotificationTypeNewCall>? isNotificationTypeNewCall,
    Action<o.NotificationTypeNewPushMessage>? isNotificationTypeNewPushMessage,
    Action<NotificationType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.NotificationTypeNewMessage) {
      if (isNotificationTypeNewMessage != null) {
        isNotificationTypeNewMessage(this as o.NotificationTypeNewMessage);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.NotificationTypeNewSecretChat) {
      if (isNotificationTypeNewSecretChat != null) {
        isNotificationTypeNewSecretChat(this as o.NotificationTypeNewSecretChat);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.NotificationTypeNewCall) {
      if (isNotificationTypeNewCall != null) {
        isNotificationTypeNewCall(this as o.NotificationTypeNewCall);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.NotificationTypeNewPushMessage) {
      if (isNotificationTypeNewPushMessage != null) {
        isNotificationTypeNewPushMessage(this as o.NotificationTypeNewPushMessage);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the type of notifications in a notification group
abstract class NotificationGroupType extends b.TdBase {
  void match({
    Action<o.NotificationGroupTypeMessages>? isNotificationGroupTypeMessages,
    Action<o.NotificationGroupTypeMentions>? isNotificationGroupTypeMentions,
    Action<o.NotificationGroupTypeSecretChat>? isNotificationGroupTypeSecretChat,
    Action<o.NotificationGroupTypeCalls>? isNotificationGroupTypeCalls,
    Action<NotificationGroupType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.NotificationGroupTypeMessages) {
      if (isNotificationGroupTypeMessages != null) {
        isNotificationGroupTypeMessages(this as o.NotificationGroupTypeMessages);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.NotificationGroupTypeMentions) {
      if (isNotificationGroupTypeMentions != null) {
        isNotificationGroupTypeMentions(this as o.NotificationGroupTypeMentions);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.NotificationGroupTypeSecretChat) {
      if (isNotificationGroupTypeSecretChat != null) {
        isNotificationGroupTypeSecretChat(this as o.NotificationGroupTypeSecretChat);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.NotificationGroupTypeCalls) {
      if (isNotificationGroupTypeCalls != null) {
        isNotificationGroupTypeCalls(this as o.NotificationGroupTypeCalls);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Notification extends b.TdBase {
  void match({
    Action<o.Notification>? isNotification,
    Action<Notification>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Notification) {
      if (isNotification != null) {
        isNotification(this as o.Notification);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class NotificationGroup extends b.TdBase {
  void match({
    Action<o.NotificationGroup>? isNotificationGroup,
    Action<NotificationGroup>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.NotificationGroup) {
      if (isNotificationGroup != null) {
        isNotificationGroup(this as o.NotificationGroup);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents the value of an option
abstract class OptionValue extends b.TdBase {
  void match({
    Action<o.OptionValueBoolean>? isOptionValueBoolean,
    Action<o.OptionValueEmpty>? isOptionValueEmpty,
    Action<o.OptionValueInteger>? isOptionValueInteger,
    Action<o.OptionValueString>? isOptionValueString,
    Action<OptionValue>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.OptionValueBoolean) {
      if (isOptionValueBoolean != null) {
        isOptionValueBoolean(this as o.OptionValueBoolean);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.OptionValueEmpty) {
      if (isOptionValueEmpty != null) {
        isOptionValueEmpty(this as o.OptionValueEmpty);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.OptionValueInteger) {
      if (isOptionValueInteger != null) {
        isOptionValueInteger(this as o.OptionValueInteger);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.OptionValueString) {
      if (isOptionValueString != null) {
        isOptionValueString(this as o.OptionValueString);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class JsonObjectMember extends b.TdBase {
  void match({
    Action<o.JsonObjectMember>? isJsonObjectMember,
    Action<JsonObjectMember>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.JsonObjectMember) {
      if (isJsonObjectMember != null) {
        isJsonObjectMember(this as o.JsonObjectMember);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents a JSON value
abstract class JsonValue extends b.TdBase {
  void match({
    Action<o.JsonValueNull>? isJsonValueNull,
    Action<o.JsonValueBoolean>? isJsonValueBoolean,
    Action<o.JsonValueNumber>? isJsonValueNumber,
    Action<o.JsonValueString>? isJsonValueString,
    Action<o.JsonValueArray>? isJsonValueArray,
    Action<o.JsonValueObject>? isJsonValueObject,
    Action<JsonValue>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.JsonValueNull) {
      if (isJsonValueNull != null) {
        isJsonValueNull(this as o.JsonValueNull);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.JsonValueBoolean) {
      if (isJsonValueBoolean != null) {
        isJsonValueBoolean(this as o.JsonValueBoolean);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.JsonValueNumber) {
      if (isJsonValueNumber != null) {
        isJsonValueNumber(this as o.JsonValueNumber);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.JsonValueString) {
      if (isJsonValueString != null) {
        isJsonValueString(this as o.JsonValueString);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.JsonValueArray) {
      if (isJsonValueArray != null) {
        isJsonValueArray(this as o.JsonValueArray);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.JsonValueObject) {
      if (isJsonValueObject != null) {
        isJsonValueObject(this as o.JsonValueObject);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents a single rule for managing privacy settings
abstract class UserPrivacySettingRule extends b.TdBase {
  void match({
    Action<o.UserPrivacySettingRuleAllowAll>? isUserPrivacySettingRuleAllowAll,
    Action<o.UserPrivacySettingRuleAllowContacts>? isUserPrivacySettingRuleAllowContacts,
    Action<o.UserPrivacySettingRuleAllowUsers>? isUserPrivacySettingRuleAllowUsers,
    Action<o.UserPrivacySettingRuleAllowChatMembers>? isUserPrivacySettingRuleAllowChatMembers,
    Action<o.UserPrivacySettingRuleRestrictAll>? isUserPrivacySettingRuleRestrictAll,
    Action<o.UserPrivacySettingRuleRestrictContacts>? isUserPrivacySettingRuleRestrictContacts,
    Action<o.UserPrivacySettingRuleRestrictUsers>? isUserPrivacySettingRuleRestrictUsers,
    Action<o.UserPrivacySettingRuleRestrictChatMembers>? isUserPrivacySettingRuleRestrictChatMembers,
    Action<UserPrivacySettingRule>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.UserPrivacySettingRuleAllowAll) {
      if (isUserPrivacySettingRuleAllowAll != null) {
        isUserPrivacySettingRuleAllowAll(this as o.UserPrivacySettingRuleAllowAll);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingRuleAllowContacts) {
      if (isUserPrivacySettingRuleAllowContacts != null) {
        isUserPrivacySettingRuleAllowContacts(this as o.UserPrivacySettingRuleAllowContacts);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingRuleAllowUsers) {
      if (isUserPrivacySettingRuleAllowUsers != null) {
        isUserPrivacySettingRuleAllowUsers(this as o.UserPrivacySettingRuleAllowUsers);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingRuleAllowChatMembers) {
      if (isUserPrivacySettingRuleAllowChatMembers != null) {
        isUserPrivacySettingRuleAllowChatMembers(this as o.UserPrivacySettingRuleAllowChatMembers);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingRuleRestrictAll) {
      if (isUserPrivacySettingRuleRestrictAll != null) {
        isUserPrivacySettingRuleRestrictAll(this as o.UserPrivacySettingRuleRestrictAll);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingRuleRestrictContacts) {
      if (isUserPrivacySettingRuleRestrictContacts != null) {
        isUserPrivacySettingRuleRestrictContacts(this as o.UserPrivacySettingRuleRestrictContacts);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingRuleRestrictUsers) {
      if (isUserPrivacySettingRuleRestrictUsers != null) {
        isUserPrivacySettingRuleRestrictUsers(this as o.UserPrivacySettingRuleRestrictUsers);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingRuleRestrictChatMembers) {
      if (isUserPrivacySettingRuleRestrictChatMembers != null) {
        isUserPrivacySettingRuleRestrictChatMembers(this as o.UserPrivacySettingRuleRestrictChatMembers);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class UserPrivacySettingRules extends b.TdBase {
  void match({
    Action<o.UserPrivacySettingRules>? isUserPrivacySettingRules,
    Action<UserPrivacySettingRules>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.UserPrivacySettingRules) {
      if (isUserPrivacySettingRules != null) {
        isUserPrivacySettingRules(this as o.UserPrivacySettingRules);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes available user privacy settings
abstract class UserPrivacySetting extends b.TdBase {
  void match({
    Action<o.UserPrivacySettingShowStatus>? isUserPrivacySettingShowStatus,
    Action<o.UserPrivacySettingShowProfilePhoto>? isUserPrivacySettingShowProfilePhoto,
    Action<o.UserPrivacySettingShowLinkInForwardedMessages>? isUserPrivacySettingShowLinkInForwardedMessages,
    Action<o.UserPrivacySettingShowPhoneNumber>? isUserPrivacySettingShowPhoneNumber,
    Action<o.UserPrivacySettingAllowChatInvites>? isUserPrivacySettingAllowChatInvites,
    Action<o.UserPrivacySettingAllowCalls>? isUserPrivacySettingAllowCalls,
    Action<o.UserPrivacySettingAllowPeerToPeerCalls>? isUserPrivacySettingAllowPeerToPeerCalls,
    Action<o.UserPrivacySettingAllowFindingByPhoneNumber>? isUserPrivacySettingAllowFindingByPhoneNumber,
    Action<UserPrivacySetting>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.UserPrivacySettingShowStatus) {
      if (isUserPrivacySettingShowStatus != null) {
        isUserPrivacySettingShowStatus(this as o.UserPrivacySettingShowStatus);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingShowProfilePhoto) {
      if (isUserPrivacySettingShowProfilePhoto != null) {
        isUserPrivacySettingShowProfilePhoto(this as o.UserPrivacySettingShowProfilePhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingShowLinkInForwardedMessages) {
      if (isUserPrivacySettingShowLinkInForwardedMessages != null) {
        isUserPrivacySettingShowLinkInForwardedMessages(this as o.UserPrivacySettingShowLinkInForwardedMessages);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingShowPhoneNumber) {
      if (isUserPrivacySettingShowPhoneNumber != null) {
        isUserPrivacySettingShowPhoneNumber(this as o.UserPrivacySettingShowPhoneNumber);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingAllowChatInvites) {
      if (isUserPrivacySettingAllowChatInvites != null) {
        isUserPrivacySettingAllowChatInvites(this as o.UserPrivacySettingAllowChatInvites);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingAllowCalls) {
      if (isUserPrivacySettingAllowCalls != null) {
        isUserPrivacySettingAllowCalls(this as o.UserPrivacySettingAllowCalls);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingAllowPeerToPeerCalls) {
      if (isUserPrivacySettingAllowPeerToPeerCalls != null) {
        isUserPrivacySettingAllowPeerToPeerCalls(this as o.UserPrivacySettingAllowPeerToPeerCalls);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UserPrivacySettingAllowFindingByPhoneNumber) {
      if (isUserPrivacySettingAllowFindingByPhoneNumber != null) {
        isUserPrivacySettingAllowFindingByPhoneNumber(this as o.UserPrivacySettingAllowFindingByPhoneNumber);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class AccountTtl extends b.TdBase {
  void match({
    Action<o.AccountTtl>? isAccountTtl,
    Action<AccountTtl>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.AccountTtl) {
      if (isAccountTtl != null) {
        isAccountTtl(this as o.AccountTtl);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Session extends b.TdBase {
  void match({
    Action<o.Session>? isSession,
    Action<Session>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Session) {
      if (isSession != null) {
        isSession(this as o.Session);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Sessions extends b.TdBase {
  void match({
    Action<o.Sessions>? isSessions,
    Action<Sessions>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Sessions) {
      if (isSessions != null) {
        isSessions(this as o.Sessions);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ConnectedWebsite extends b.TdBase {
  void match({
    Action<o.ConnectedWebsite>? isConnectedWebsite,
    Action<ConnectedWebsite>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ConnectedWebsite) {
      if (isConnectedWebsite != null) {
        isConnectedWebsite(this as o.ConnectedWebsite);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ConnectedWebsites extends b.TdBase {
  void match({
    Action<o.ConnectedWebsites>? isConnectedWebsites,
    Action<ConnectedWebsites>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ConnectedWebsites) {
      if (isConnectedWebsites != null) {
        isConnectedWebsites(this as o.ConnectedWebsites);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the reason why a chat is reported
abstract class ChatReportReason extends b.TdBase {
  void match({
    Action<o.ChatReportReasonSpam>? isChatReportReasonSpam,
    Action<o.ChatReportReasonViolence>? isChatReportReasonViolence,
    Action<o.ChatReportReasonPornography>? isChatReportReasonPornography,
    Action<o.ChatReportReasonChildAbuse>? isChatReportReasonChildAbuse,
    Action<o.ChatReportReasonCopyright>? isChatReportReasonCopyright,
    Action<o.ChatReportReasonUnrelatedLocation>? isChatReportReasonUnrelatedLocation,
    Action<o.ChatReportReasonFake>? isChatReportReasonFake,
    Action<o.ChatReportReasonCustom>? isChatReportReasonCustom,
    Action<ChatReportReason>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatReportReasonSpam) {
      if (isChatReportReasonSpam != null) {
        isChatReportReasonSpam(this as o.ChatReportReasonSpam);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatReportReasonViolence) {
      if (isChatReportReasonViolence != null) {
        isChatReportReasonViolence(this as o.ChatReportReasonViolence);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatReportReasonPornography) {
      if (isChatReportReasonPornography != null) {
        isChatReportReasonPornography(this as o.ChatReportReasonPornography);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatReportReasonChildAbuse) {
      if (isChatReportReasonChildAbuse != null) {
        isChatReportReasonChildAbuse(this as o.ChatReportReasonChildAbuse);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatReportReasonCopyright) {
      if (isChatReportReasonCopyright != null) {
        isChatReportReasonCopyright(this as o.ChatReportReasonCopyright);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatReportReasonUnrelatedLocation) {
      if (isChatReportReasonUnrelatedLocation != null) {
        isChatReportReasonUnrelatedLocation(this as o.ChatReportReasonUnrelatedLocation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatReportReasonFake) {
      if (isChatReportReasonFake != null) {
        isChatReportReasonFake(this as o.ChatReportReasonFake);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatReportReasonCustom) {
      if (isChatReportReasonCustom != null) {
        isChatReportReasonCustom(this as o.ChatReportReasonCustom);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class MessageLink extends b.TdBase {
  void match({
    Action<o.MessageLink>? isMessageLink,
    Action<MessageLink>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageLink) {
      if (isMessageLink != null) {
        isMessageLink(this as o.MessageLink);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class MessageLinkInfo extends b.TdBase {
  void match({
    Action<o.MessageLinkInfo>? isMessageLinkInfo,
    Action<MessageLinkInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageLinkInfo) {
      if (isMessageLinkInfo != null) {
        isMessageLinkInfo(this as o.MessageLinkInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class FilePart extends b.TdBase {
  void match({
    Action<o.FilePart>? isFilePart,
    Action<FilePart>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.FilePart) {
      if (isFilePart != null) {
        isFilePart(this as o.FilePart);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents the type of a file
abstract class FileType extends b.TdBase {
  void match({
    Action<o.FileTypeNone>? isFileTypeNone,
    Action<o.FileTypeAnimation>? isFileTypeAnimation,
    Action<o.FileTypeAudio>? isFileTypeAudio,
    Action<o.FileTypeDocument>? isFileTypeDocument,
    Action<o.FileTypePhoto>? isFileTypePhoto,
    Action<o.FileTypeProfilePhoto>? isFileTypeProfilePhoto,
    Action<o.FileTypeSecret>? isFileTypeSecret,
    Action<o.FileTypeSecretThumbnail>? isFileTypeSecretThumbnail,
    Action<o.FileTypeSecure>? isFileTypeSecure,
    Action<o.FileTypeSticker>? isFileTypeSticker,
    Action<o.FileTypeThumbnail>? isFileTypeThumbnail,
    Action<o.FileTypeUnknown>? isFileTypeUnknown,
    Action<o.FileTypeVideo>? isFileTypeVideo,
    Action<o.FileTypeVideoNote>? isFileTypeVideoNote,
    Action<o.FileTypeVoiceNote>? isFileTypeVoiceNote,
    Action<o.FileTypeWallpaper>? isFileTypeWallpaper,
    Action<FileType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.FileTypeNone) {
      if (isFileTypeNone != null) {
        isFileTypeNone(this as o.FileTypeNone);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.FileTypeAnimation) {
      if (isFileTypeAnimation != null) {
        isFileTypeAnimation(this as o.FileTypeAnimation);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.FileTypeAudio) {
      if (isFileTypeAudio != null) {
        isFileTypeAudio(this as o.FileTypeAudio);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.FileTypeDocument) {
      if (isFileTypeDocument != null) {
        isFileTypeDocument(this as o.FileTypeDocument);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.FileTypePhoto) {
      if (isFileTypePhoto != null) {
        isFileTypePhoto(this as o.FileTypePhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.FileTypeProfilePhoto) {
      if (isFileTypeProfilePhoto != null) {
        isFileTypeProfilePhoto(this as o.FileTypeProfilePhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.FileTypeSecret) {
      if (isFileTypeSecret != null) {
        isFileTypeSecret(this as o.FileTypeSecret);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.FileTypeSecretThumbnail) {
      if (isFileTypeSecretThumbnail != null) {
        isFileTypeSecretThumbnail(this as o.FileTypeSecretThumbnail);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.FileTypeSecure) {
      if (isFileTypeSecure != null) {
        isFileTypeSecure(this as o.FileTypeSecure);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.FileTypeSticker) {
      if (isFileTypeSticker != null) {
        isFileTypeSticker(this as o.FileTypeSticker);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.FileTypeThumbnail) {
      if (isFileTypeThumbnail != null) {
        isFileTypeThumbnail(this as o.FileTypeThumbnail);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.FileTypeUnknown) {
      if (isFileTypeUnknown != null) {
        isFileTypeUnknown(this as o.FileTypeUnknown);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.FileTypeVideo) {
      if (isFileTypeVideo != null) {
        isFileTypeVideo(this as o.FileTypeVideo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.FileTypeVideoNote) {
      if (isFileTypeVideoNote != null) {
        isFileTypeVideoNote(this as o.FileTypeVideoNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.FileTypeVoiceNote) {
      if (isFileTypeVoiceNote != null) {
        isFileTypeVoiceNote(this as o.FileTypeVoiceNote);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.FileTypeWallpaper) {
      if (isFileTypeWallpaper != null) {
        isFileTypeWallpaper(this as o.FileTypeWallpaper);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class StorageStatisticsByFileType extends b.TdBase {
  void match({
    Action<o.StorageStatisticsByFileType>? isStorageStatisticsByFileType,
    Action<StorageStatisticsByFileType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StorageStatisticsByFileType) {
      if (isStorageStatisticsByFileType != null) {
        isStorageStatisticsByFileType(this as o.StorageStatisticsByFileType);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class StorageStatisticsByChat extends b.TdBase {
  void match({
    Action<o.StorageStatisticsByChat>? isStorageStatisticsByChat,
    Action<StorageStatisticsByChat>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StorageStatisticsByChat) {
      if (isStorageStatisticsByChat != null) {
        isStorageStatisticsByChat(this as o.StorageStatisticsByChat);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class StorageStatistics extends b.TdBase {
  void match({
    Action<o.StorageStatistics>? isStorageStatistics,
    Action<StorageStatistics>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StorageStatistics) {
      if (isStorageStatistics != null) {
        isStorageStatistics(this as o.StorageStatistics);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class StorageStatisticsFast extends b.TdBase {
  void match({
    Action<o.StorageStatisticsFast>? isStorageStatisticsFast,
    Action<StorageStatisticsFast>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StorageStatisticsFast) {
      if (isStorageStatisticsFast != null) {
        isStorageStatisticsFast(this as o.StorageStatisticsFast);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class DatabaseStatistics extends b.TdBase {
  void match({
    Action<o.DatabaseStatistics>? isDatabaseStatistics,
    Action<DatabaseStatistics>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.DatabaseStatistics) {
      if (isDatabaseStatistics != null) {
        isDatabaseStatistics(this as o.DatabaseStatistics);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents the type of a network
abstract class NetworkType extends b.TdBase {
  void match({
    Action<o.NetworkTypeNone>? isNetworkTypeNone,
    Action<o.NetworkTypeMobile>? isNetworkTypeMobile,
    Action<o.NetworkTypeMobileRoaming>? isNetworkTypeMobileRoaming,
    Action<o.NetworkTypeWiFi>? isNetworkTypeWiFi,
    Action<o.NetworkTypeOther>? isNetworkTypeOther,
    Action<NetworkType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.NetworkTypeNone) {
      if (isNetworkTypeNone != null) {
        isNetworkTypeNone(this as o.NetworkTypeNone);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.NetworkTypeMobile) {
      if (isNetworkTypeMobile != null) {
        isNetworkTypeMobile(this as o.NetworkTypeMobile);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.NetworkTypeMobileRoaming) {
      if (isNetworkTypeMobileRoaming != null) {
        isNetworkTypeMobileRoaming(this as o.NetworkTypeMobileRoaming);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.NetworkTypeWiFi) {
      if (isNetworkTypeWiFi != null) {
        isNetworkTypeWiFi(this as o.NetworkTypeWiFi);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.NetworkTypeOther) {
      if (isNetworkTypeOther != null) {
        isNetworkTypeOther(this as o.NetworkTypeOther);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains statistics about network usage
abstract class NetworkStatisticsEntry extends b.TdBase {
  void match({
    Action<o.NetworkStatisticsEntryFile>? isNetworkStatisticsEntryFile,
    Action<o.NetworkStatisticsEntryCall>? isNetworkStatisticsEntryCall,
    Action<NetworkStatisticsEntry>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.NetworkStatisticsEntryFile) {
      if (isNetworkStatisticsEntryFile != null) {
        isNetworkStatisticsEntryFile(this as o.NetworkStatisticsEntryFile);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.NetworkStatisticsEntryCall) {
      if (isNetworkStatisticsEntryCall != null) {
        isNetworkStatisticsEntryCall(this as o.NetworkStatisticsEntryCall);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class NetworkStatistics extends b.TdBase {
  void match({
    Action<o.NetworkStatistics>? isNetworkStatistics,
    Action<NetworkStatistics>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.NetworkStatistics) {
      if (isNetworkStatistics != null) {
        isNetworkStatistics(this as o.NetworkStatistics);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class AutoDownloadSettings extends b.TdBase {
  void match({
    Action<o.AutoDownloadSettings>? isAutoDownloadSettings,
    Action<AutoDownloadSettings>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.AutoDownloadSettings) {
      if (isAutoDownloadSettings != null) {
        isAutoDownloadSettings(this as o.AutoDownloadSettings);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class AutoDownloadSettingsPresets extends b.TdBase {
  void match({
    Action<o.AutoDownloadSettingsPresets>? isAutoDownloadSettingsPresets,
    Action<AutoDownloadSettingsPresets>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.AutoDownloadSettingsPresets) {
      if (isAutoDownloadSettingsPresets != null) {
        isAutoDownloadSettingsPresets(this as o.AutoDownloadSettingsPresets);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the current state of the connection to Telegram servers
abstract class ConnectionState extends b.TdBase {
  void match({
    Action<o.ConnectionStateWaitingForNetwork>? isConnectionStateWaitingForNetwork,
    Action<o.ConnectionStateConnectingToProxy>? isConnectionStateConnectingToProxy,
    Action<o.ConnectionStateConnecting>? isConnectionStateConnecting,
    Action<o.ConnectionStateUpdating>? isConnectionStateUpdating,
    Action<o.ConnectionStateReady>? isConnectionStateReady,
    Action<ConnectionState>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ConnectionStateWaitingForNetwork) {
      if (isConnectionStateWaitingForNetwork != null) {
        isConnectionStateWaitingForNetwork(this as o.ConnectionStateWaitingForNetwork);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ConnectionStateConnectingToProxy) {
      if (isConnectionStateConnectingToProxy != null) {
        isConnectionStateConnectingToProxy(this as o.ConnectionStateConnectingToProxy);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ConnectionStateConnecting) {
      if (isConnectionStateConnecting != null) {
        isConnectionStateConnecting(this as o.ConnectionStateConnecting);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ConnectionStateUpdating) {
      if (isConnectionStateUpdating != null) {
        isConnectionStateUpdating(this as o.ConnectionStateUpdating);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ConnectionStateReady) {
      if (isConnectionStateReady != null) {
        isConnectionStateReady(this as o.ConnectionStateReady);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents the categories of chats for which a list of frequently used chats can be retrieved
abstract class TopChatCategory extends b.TdBase {
  void match({
    Action<o.TopChatCategoryUsers>? isTopChatCategoryUsers,
    Action<o.TopChatCategoryBots>? isTopChatCategoryBots,
    Action<o.TopChatCategoryGroups>? isTopChatCategoryGroups,
    Action<o.TopChatCategoryChannels>? isTopChatCategoryChannels,
    Action<o.TopChatCategoryInlineBots>? isTopChatCategoryInlineBots,
    Action<o.TopChatCategoryCalls>? isTopChatCategoryCalls,
    Action<o.TopChatCategoryForwardChats>? isTopChatCategoryForwardChats,
    Action<TopChatCategory>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TopChatCategoryUsers) {
      if (isTopChatCategoryUsers != null) {
        isTopChatCategoryUsers(this as o.TopChatCategoryUsers);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TopChatCategoryBots) {
      if (isTopChatCategoryBots != null) {
        isTopChatCategoryBots(this as o.TopChatCategoryBots);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TopChatCategoryGroups) {
      if (isTopChatCategoryGroups != null) {
        isTopChatCategoryGroups(this as o.TopChatCategoryGroups);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TopChatCategoryChannels) {
      if (isTopChatCategoryChannels != null) {
        isTopChatCategoryChannels(this as o.TopChatCategoryChannels);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TopChatCategoryInlineBots) {
      if (isTopChatCategoryInlineBots != null) {
        isTopChatCategoryInlineBots(this as o.TopChatCategoryInlineBots);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TopChatCategoryCalls) {
      if (isTopChatCategoryCalls != null) {
        isTopChatCategoryCalls(this as o.TopChatCategoryCalls);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TopChatCategoryForwardChats) {
      if (isTopChatCategoryForwardChats != null) {
        isTopChatCategoryForwardChats(this as o.TopChatCategoryForwardChats);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the type of a URL linking to an internal Telegram entity
abstract class TMeUrlType extends b.TdBase {
  void match({
    Action<o.TMeUrlTypeUser>? isTMeUrlTypeUser,
    Action<o.TMeUrlTypeSupergroup>? isTMeUrlTypeSupergroup,
    Action<o.TMeUrlTypeChatInvite>? isTMeUrlTypeChatInvite,
    Action<o.TMeUrlTypeStickerSet>? isTMeUrlTypeStickerSet,
    Action<TMeUrlType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TMeUrlTypeUser) {
      if (isTMeUrlTypeUser != null) {
        isTMeUrlTypeUser(this as o.TMeUrlTypeUser);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TMeUrlTypeSupergroup) {
      if (isTMeUrlTypeSupergroup != null) {
        isTMeUrlTypeSupergroup(this as o.TMeUrlTypeSupergroup);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TMeUrlTypeChatInvite) {
      if (isTMeUrlTypeChatInvite != null) {
        isTMeUrlTypeChatInvite(this as o.TMeUrlTypeChatInvite);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TMeUrlTypeStickerSet) {
      if (isTMeUrlTypeStickerSet != null) {
        isTMeUrlTypeStickerSet(this as o.TMeUrlTypeStickerSet);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class TMeUrl extends b.TdBase {
  void match({
    Action<o.TMeUrl>? isTMeUrl,
    Action<TMeUrl>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TMeUrl) {
      if (isTMeUrl != null) {
        isTMeUrl(this as o.TMeUrl);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class TMeUrls extends b.TdBase {
  void match({
    Action<o.TMeUrls>? isTMeUrls,
    Action<TMeUrls>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TMeUrls) {
      if (isTMeUrls != null) {
        isTMeUrls(this as o.TMeUrls);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes an action suggested to the current user
abstract class SuggestedAction extends b.TdBase {
  void match({
    Action<o.SuggestedActionEnableArchiveAndMuteNewChats>? isSuggestedActionEnableArchiveAndMuteNewChats,
    Action<o.SuggestedActionCheckPhoneNumber>? isSuggestedActionCheckPhoneNumber,
    Action<o.SuggestedActionSeeTicksHint>? isSuggestedActionSeeTicksHint,
    Action<o.SuggestedActionConvertToBroadcastGroup>? isSuggestedActionConvertToBroadcastGroup,
    Action<SuggestedAction>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.SuggestedActionEnableArchiveAndMuteNewChats) {
      if (isSuggestedActionEnableArchiveAndMuteNewChats != null) {
        isSuggestedActionEnableArchiveAndMuteNewChats(this as o.SuggestedActionEnableArchiveAndMuteNewChats);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SuggestedActionCheckPhoneNumber) {
      if (isSuggestedActionCheckPhoneNumber != null) {
        isSuggestedActionCheckPhoneNumber(this as o.SuggestedActionCheckPhoneNumber);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SuggestedActionSeeTicksHint) {
      if (isSuggestedActionSeeTicksHint != null) {
        isSuggestedActionSeeTicksHint(this as o.SuggestedActionSeeTicksHint);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.SuggestedActionConvertToBroadcastGroup) {
      if (isSuggestedActionConvertToBroadcastGroup != null) {
        isSuggestedActionConvertToBroadcastGroup(this as o.SuggestedActionConvertToBroadcastGroup);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Count extends b.TdBase {
  void match({
    Action<o.Count>? isCount,
    Action<Count>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Count) {
      if (isCount != null) {
        isCount(this as o.Count);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Text extends b.TdBase {
  void match({
    Action<o.Text>? isText,
    Action<Text>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Text) {
      if (isText != null) {
        isText(this as o.Text);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Seconds extends b.TdBase {
  void match({
    Action<o.Seconds>? isSeconds,
    Action<Seconds>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Seconds) {
      if (isSeconds != null) {
        isSeconds(this as o.Seconds);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class DeepLinkInfo extends b.TdBase {
  void match({
    Action<o.DeepLinkInfo>? isDeepLinkInfo,
    Action<DeepLinkInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.DeepLinkInfo) {
      if (isDeepLinkInfo != null) {
        isDeepLinkInfo(this as o.DeepLinkInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the way the text should be parsed for TextEntities
abstract class TextParseMode extends b.TdBase {
  void match({
    Action<o.TextParseModeMarkdown>? isTextParseModeMarkdown,
    Action<o.TextParseModeHTML>? isTextParseModeHTML,
    Action<TextParseMode>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TextParseModeMarkdown) {
      if (isTextParseModeMarkdown != null) {
        isTextParseModeMarkdown(this as o.TextParseModeMarkdown);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.TextParseModeHTML) {
      if (isTextParseModeHTML != null) {
        isTextParseModeHTML(this as o.TextParseModeHTML);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes the type of a proxy server
abstract class ProxyType extends b.TdBase {
  void match({
    Action<o.ProxyTypeSocks5>? isProxyTypeSocks5,
    Action<o.ProxyTypeHttp>? isProxyTypeHttp,
    Action<o.ProxyTypeMtproto>? isProxyTypeMtproto,
    Action<ProxyType>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ProxyTypeSocks5) {
      if (isProxyTypeSocks5 != null) {
        isProxyTypeSocks5(this as o.ProxyTypeSocks5);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ProxyTypeHttp) {
      if (isProxyTypeHttp != null) {
        isProxyTypeHttp(this as o.ProxyTypeHttp);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ProxyTypeMtproto) {
      if (isProxyTypeMtproto != null) {
        isProxyTypeMtproto(this as o.ProxyTypeMtproto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Proxy extends b.TdBase {
  void match({
    Action<o.Proxy>? isProxy,
    Action<Proxy>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Proxy) {
      if (isProxy != null) {
        isProxy(this as o.Proxy);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Proxies extends b.TdBase {
  void match({
    Action<o.Proxies>? isProxies,
    Action<Proxies>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Proxies) {
      if (isProxies != null) {
        isProxies(this as o.Proxies);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes a sticker that needs to be added to a sticker set
abstract class InputSticker extends b.TdBase {
  void match({
    Action<o.InputStickerStatic>? isInputStickerStatic,
    Action<o.InputStickerAnimated>? isInputStickerAnimated,
    Action<InputSticker>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.InputStickerStatic) {
      if (isInputStickerStatic != null) {
        isInputStickerStatic(this as o.InputStickerStatic);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.InputStickerAnimated) {
      if (isInputStickerAnimated != null) {
        isInputStickerAnimated(this as o.InputStickerAnimated);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class DateRange extends b.TdBase {
  void match({
    Action<o.DateRange>? isDateRange,
    Action<DateRange>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.DateRange) {
      if (isDateRange != null) {
        isDateRange(this as o.DateRange);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class StatisticalValue extends b.TdBase {
  void match({
    Action<o.StatisticalValue>? isStatisticalValue,
    Action<StatisticalValue>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StatisticalValue) {
      if (isStatisticalValue != null) {
        isStatisticalValue(this as o.StatisticalValue);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes a statistical graph
abstract class StatisticalGraph extends b.TdBase {
  void match({
    Action<o.StatisticalGraphData>? isStatisticalGraphData,
    Action<o.StatisticalGraphAsync>? isStatisticalGraphAsync,
    Action<o.StatisticalGraphError>? isStatisticalGraphError,
    Action<StatisticalGraph>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.StatisticalGraphData) {
      if (isStatisticalGraphData != null) {
        isStatisticalGraphData(this as o.StatisticalGraphData);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.StatisticalGraphAsync) {
      if (isStatisticalGraphAsync != null) {
        isStatisticalGraphAsync(this as o.StatisticalGraphAsync);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.StatisticalGraphError) {
      if (isStatisticalGraphError != null) {
        isStatisticalGraphError(this as o.StatisticalGraphError);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatStatisticsMessageInteractionInfo extends b.TdBase {
  void match({
    Action<o.ChatStatisticsMessageInteractionInfo>? isChatStatisticsMessageInteractionInfo,
    Action<ChatStatisticsMessageInteractionInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatStatisticsMessageInteractionInfo) {
      if (isChatStatisticsMessageInteractionInfo != null) {
        isChatStatisticsMessageInteractionInfo(this as o.ChatStatisticsMessageInteractionInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatStatisticsMessageSenderInfo extends b.TdBase {
  void match({
    Action<o.ChatStatisticsMessageSenderInfo>? isChatStatisticsMessageSenderInfo,
    Action<ChatStatisticsMessageSenderInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatStatisticsMessageSenderInfo) {
      if (isChatStatisticsMessageSenderInfo != null) {
        isChatStatisticsMessageSenderInfo(this as o.ChatStatisticsMessageSenderInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatStatisticsAdministratorActionsInfo extends b.TdBase {
  void match({
    Action<o.ChatStatisticsAdministratorActionsInfo>? isChatStatisticsAdministratorActionsInfo,
    Action<ChatStatisticsAdministratorActionsInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatStatisticsAdministratorActionsInfo) {
      if (isChatStatisticsAdministratorActionsInfo != null) {
        isChatStatisticsAdministratorActionsInfo(this as o.ChatStatisticsAdministratorActionsInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class ChatStatisticsInviterInfo extends b.TdBase {
  void match({
    Action<o.ChatStatisticsInviterInfo>? isChatStatisticsInviterInfo,
    Action<ChatStatisticsInviterInfo>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatStatisticsInviterInfo) {
      if (isChatStatisticsInviterInfo != null) {
        isChatStatisticsInviterInfo(this as o.ChatStatisticsInviterInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains a detailed statistics about a chat
abstract class ChatStatistics extends b.TdBase {
  void match({
    Action<o.ChatStatisticsSupergroup>? isChatStatisticsSupergroup,
    Action<o.ChatStatisticsChannel>? isChatStatisticsChannel,
    Action<ChatStatistics>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.ChatStatisticsSupergroup) {
      if (isChatStatisticsSupergroup != null) {
        isChatStatisticsSupergroup(this as o.ChatStatisticsSupergroup);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.ChatStatisticsChannel) {
      if (isChatStatisticsChannel != null) {
        isChatStatisticsChannel(this as o.ChatStatisticsChannel);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class MessageStatistics extends b.TdBase {
  void match({
    Action<o.MessageStatistics>? isMessageStatistics,
    Action<MessageStatistics>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.MessageStatistics) {
      if (isMessageStatistics != null) {
        isMessageStatistics(this as o.MessageStatistics);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Point extends b.TdBase {
  void match({
    Action<o.Point>? isPoint,
    Action<Point>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Point) {
      if (isPoint != null) {
        isPoint(this as o.Point);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Represents a vector path command
abstract class VectorPathCommand extends b.TdBase {
  void match({
    Action<o.VectorPathCommandLine>? isVectorPathCommandLine,
    Action<o.VectorPathCommandCubicBezierCurve>? isVectorPathCommandCubicBezierCurve,
    Action<VectorPathCommand>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.VectorPathCommandLine) {
      if (isVectorPathCommandLine != null) {
        isVectorPathCommandLine(this as o.VectorPathCommandLine);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.VectorPathCommandCubicBezierCurve) {
      if (isVectorPathCommandCubicBezierCurve != null) {
        isVectorPathCommandCubicBezierCurve(this as o.VectorPathCommandCubicBezierCurve);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Contains notifications about data changes
abstract class Update extends b.TdBase {
  void match({
    Action<o.UpdateAuthorizationState>? isUpdateAuthorizationState,
    Action<o.UpdateNewMessage>? isUpdateNewMessage,
    Action<o.UpdateMessageSendAcknowledged>? isUpdateMessageSendAcknowledged,
    Action<o.UpdateMessageSendSucceeded>? isUpdateMessageSendSucceeded,
    Action<o.UpdateMessageSendFailed>? isUpdateMessageSendFailed,
    Action<o.UpdateMessageContent>? isUpdateMessageContent,
    Action<o.UpdateMessageEdited>? isUpdateMessageEdited,
    Action<o.UpdateMessageIsPinned>? isUpdateMessageIsPinned,
    Action<o.UpdateMessageInteractionInfo>? isUpdateMessageInteractionInfo,
    Action<o.UpdateMessageContentOpened>? isUpdateMessageContentOpened,
    Action<o.UpdateMessageMentionRead>? isUpdateMessageMentionRead,
    Action<o.UpdateMessageLiveLocationViewed>? isUpdateMessageLiveLocationViewed,
    Action<o.UpdateNewChat>? isUpdateNewChat,
    Action<o.UpdateChatTitle>? isUpdateChatTitle,
    Action<o.UpdateChatPhoto>? isUpdateChatPhoto,
    Action<o.UpdateChatPermissions>? isUpdateChatPermissions,
    Action<o.UpdateChatLastMessage>? isUpdateChatLastMessage,
    Action<o.UpdateChatPosition>? isUpdateChatPosition,
    Action<o.UpdateChatIsMarkedAsUnread>? isUpdateChatIsMarkedAsUnread,
    Action<o.UpdateChatIsBlocked>? isUpdateChatIsBlocked,
    Action<o.UpdateChatHasScheduledMessages>? isUpdateChatHasScheduledMessages,
    Action<o.UpdateChatVoiceChat>? isUpdateChatVoiceChat,
    Action<o.UpdateChatDefaultDisableNotification>? isUpdateChatDefaultDisableNotification,
    Action<o.UpdateChatReadInbox>? isUpdateChatReadInbox,
    Action<o.UpdateChatReadOutbox>? isUpdateChatReadOutbox,
    Action<o.UpdateChatUnreadMentionCount>? isUpdateChatUnreadMentionCount,
    Action<o.UpdateChatNotificationSettings>? isUpdateChatNotificationSettings,
    Action<o.UpdateScopeNotificationSettings>? isUpdateScopeNotificationSettings,
    Action<o.UpdateChatMessageTtlSetting>? isUpdateChatMessageTtlSetting,
    Action<o.UpdateChatActionBar>? isUpdateChatActionBar,
    Action<o.UpdateChatReplyMarkup>? isUpdateChatReplyMarkup,
    Action<o.UpdateChatDraftMessage>? isUpdateChatDraftMessage,
    Action<o.UpdateChatFilters>? isUpdateChatFilters,
    Action<o.UpdateChatOnlineMemberCount>? isUpdateChatOnlineMemberCount,
    Action<o.UpdateNotification>? isUpdateNotification,
    Action<o.UpdateNotificationGroup>? isUpdateNotificationGroup,
    Action<o.UpdateActiveNotifications>? isUpdateActiveNotifications,
    Action<o.UpdateHavePendingNotifications>? isUpdateHavePendingNotifications,
    Action<o.UpdateDeleteMessages>? isUpdateDeleteMessages,
    Action<o.UpdateUserChatAction>? isUpdateUserChatAction,
    Action<o.UpdateUserStatus>? isUpdateUserStatus,
    Action<o.UpdateUser>? isUpdateUser,
    Action<o.UpdateBasicGroup>? isUpdateBasicGroup,
    Action<o.UpdateSupergroup>? isUpdateSupergroup,
    Action<o.UpdateSecretChat>? isUpdateSecretChat,
    Action<o.UpdateUserFullInfo>? isUpdateUserFullInfo,
    Action<o.UpdateBasicGroupFullInfo>? isUpdateBasicGroupFullInfo,
    Action<o.UpdateSupergroupFullInfo>? isUpdateSupergroupFullInfo,
    Action<o.UpdateServiceNotification>? isUpdateServiceNotification,
    Action<o.UpdateFile>? isUpdateFile,
    Action<o.UpdateFileGenerationStart>? isUpdateFileGenerationStart,
    Action<o.UpdateFileGenerationStop>? isUpdateFileGenerationStop,
    Action<o.UpdateCall>? isUpdateCall,
    Action<o.UpdateGroupCall>? isUpdateGroupCall,
    Action<o.UpdateGroupCallParticipant>? isUpdateGroupCallParticipant,
    Action<o.UpdateNewCallSignalingData>? isUpdateNewCallSignalingData,
    Action<o.UpdateUserPrivacySettingRules>? isUpdateUserPrivacySettingRules,
    Action<o.UpdateUnreadMessageCount>? isUpdateUnreadMessageCount,
    Action<o.UpdateUnreadChatCount>? isUpdateUnreadChatCount,
    Action<o.UpdateOption>? isUpdateOption,
    Action<o.UpdateStickerSet>? isUpdateStickerSet,
    Action<o.UpdateInstalledStickerSets>? isUpdateInstalledStickerSets,
    Action<o.UpdateTrendingStickerSets>? isUpdateTrendingStickerSets,
    Action<o.UpdateRecentStickers>? isUpdateRecentStickers,
    Action<o.UpdateFavoriteStickers>? isUpdateFavoriteStickers,
    Action<o.UpdateSavedAnimations>? isUpdateSavedAnimations,
    Action<o.UpdateSelectedBackground>? isUpdateSelectedBackground,
    Action<o.UpdateLanguagePackStrings>? isUpdateLanguagePackStrings,
    Action<o.UpdateConnectionState>? isUpdateConnectionState,
    Action<o.UpdateTermsOfService>? isUpdateTermsOfService,
    Action<o.UpdateUsersNearby>? isUpdateUsersNearby,
    Action<o.UpdateDiceEmojis>? isUpdateDiceEmojis,
    Action<o.UpdateAnimationSearchParameters>? isUpdateAnimationSearchParameters,
    Action<o.UpdateSuggestedActions>? isUpdateSuggestedActions,
    Action<o.UpdateNewInlineQuery>? isUpdateNewInlineQuery,
    Action<o.UpdateNewChosenInlineResult>? isUpdateNewChosenInlineResult,
    Action<o.UpdateNewCallbackQuery>? isUpdateNewCallbackQuery,
    Action<o.UpdateNewInlineCallbackQuery>? isUpdateNewInlineCallbackQuery,
    Action<o.UpdateNewShippingQuery>? isUpdateNewShippingQuery,
    Action<o.UpdateNewPreCheckoutQuery>? isUpdateNewPreCheckoutQuery,
    Action<o.UpdateNewCustomEvent>? isUpdateNewCustomEvent,
    Action<o.UpdateNewCustomQuery>? isUpdateNewCustomQuery,
    Action<o.UpdatePoll>? isUpdatePoll,
    Action<o.UpdatePollAnswer>? isUpdatePollAnswer,
    Action<o.UpdateChatMember>? isUpdateChatMember,
    Action<Update>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.UpdateAuthorizationState) {
      if (isUpdateAuthorizationState != null) {
        isUpdateAuthorizationState(this as o.UpdateAuthorizationState);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateNewMessage) {
      if (isUpdateNewMessage != null) {
        isUpdateNewMessage(this as o.UpdateNewMessage);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateMessageSendAcknowledged) {
      if (isUpdateMessageSendAcknowledged != null) {
        isUpdateMessageSendAcknowledged(this as o.UpdateMessageSendAcknowledged);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateMessageSendSucceeded) {
      if (isUpdateMessageSendSucceeded != null) {
        isUpdateMessageSendSucceeded(this as o.UpdateMessageSendSucceeded);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateMessageSendFailed) {
      if (isUpdateMessageSendFailed != null) {
        isUpdateMessageSendFailed(this as o.UpdateMessageSendFailed);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateMessageContent) {
      if (isUpdateMessageContent != null) {
        isUpdateMessageContent(this as o.UpdateMessageContent);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateMessageEdited) {
      if (isUpdateMessageEdited != null) {
        isUpdateMessageEdited(this as o.UpdateMessageEdited);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateMessageIsPinned) {
      if (isUpdateMessageIsPinned != null) {
        isUpdateMessageIsPinned(this as o.UpdateMessageIsPinned);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateMessageInteractionInfo) {
      if (isUpdateMessageInteractionInfo != null) {
        isUpdateMessageInteractionInfo(this as o.UpdateMessageInteractionInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateMessageContentOpened) {
      if (isUpdateMessageContentOpened != null) {
        isUpdateMessageContentOpened(this as o.UpdateMessageContentOpened);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateMessageMentionRead) {
      if (isUpdateMessageMentionRead != null) {
        isUpdateMessageMentionRead(this as o.UpdateMessageMentionRead);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateMessageLiveLocationViewed) {
      if (isUpdateMessageLiveLocationViewed != null) {
        isUpdateMessageLiveLocationViewed(this as o.UpdateMessageLiveLocationViewed);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateNewChat) {
      if (isUpdateNewChat != null) {
        isUpdateNewChat(this as o.UpdateNewChat);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatTitle) {
      if (isUpdateChatTitle != null) {
        isUpdateChatTitle(this as o.UpdateChatTitle);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatPhoto) {
      if (isUpdateChatPhoto != null) {
        isUpdateChatPhoto(this as o.UpdateChatPhoto);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatPermissions) {
      if (isUpdateChatPermissions != null) {
        isUpdateChatPermissions(this as o.UpdateChatPermissions);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatLastMessage) {
      if (isUpdateChatLastMessage != null) {
        isUpdateChatLastMessage(this as o.UpdateChatLastMessage);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatPosition) {
      if (isUpdateChatPosition != null) {
        isUpdateChatPosition(this as o.UpdateChatPosition);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatIsMarkedAsUnread) {
      if (isUpdateChatIsMarkedAsUnread != null) {
        isUpdateChatIsMarkedAsUnread(this as o.UpdateChatIsMarkedAsUnread);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatIsBlocked) {
      if (isUpdateChatIsBlocked != null) {
        isUpdateChatIsBlocked(this as o.UpdateChatIsBlocked);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatHasScheduledMessages) {
      if (isUpdateChatHasScheduledMessages != null) {
        isUpdateChatHasScheduledMessages(this as o.UpdateChatHasScheduledMessages);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatVoiceChat) {
      if (isUpdateChatVoiceChat != null) {
        isUpdateChatVoiceChat(this as o.UpdateChatVoiceChat);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatDefaultDisableNotification) {
      if (isUpdateChatDefaultDisableNotification != null) {
        isUpdateChatDefaultDisableNotification(this as o.UpdateChatDefaultDisableNotification);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatReadInbox) {
      if (isUpdateChatReadInbox != null) {
        isUpdateChatReadInbox(this as o.UpdateChatReadInbox);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatReadOutbox) {
      if (isUpdateChatReadOutbox != null) {
        isUpdateChatReadOutbox(this as o.UpdateChatReadOutbox);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatUnreadMentionCount) {
      if (isUpdateChatUnreadMentionCount != null) {
        isUpdateChatUnreadMentionCount(this as o.UpdateChatUnreadMentionCount);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatNotificationSettings) {
      if (isUpdateChatNotificationSettings != null) {
        isUpdateChatNotificationSettings(this as o.UpdateChatNotificationSettings);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateScopeNotificationSettings) {
      if (isUpdateScopeNotificationSettings != null) {
        isUpdateScopeNotificationSettings(this as o.UpdateScopeNotificationSettings);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatMessageTtlSetting) {
      if (isUpdateChatMessageTtlSetting != null) {
        isUpdateChatMessageTtlSetting(this as o.UpdateChatMessageTtlSetting);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatActionBar) {
      if (isUpdateChatActionBar != null) {
        isUpdateChatActionBar(this as o.UpdateChatActionBar);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatReplyMarkup) {
      if (isUpdateChatReplyMarkup != null) {
        isUpdateChatReplyMarkup(this as o.UpdateChatReplyMarkup);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatDraftMessage) {
      if (isUpdateChatDraftMessage != null) {
        isUpdateChatDraftMessage(this as o.UpdateChatDraftMessage);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatFilters) {
      if (isUpdateChatFilters != null) {
        isUpdateChatFilters(this as o.UpdateChatFilters);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatOnlineMemberCount) {
      if (isUpdateChatOnlineMemberCount != null) {
        isUpdateChatOnlineMemberCount(this as o.UpdateChatOnlineMemberCount);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateNotification) {
      if (isUpdateNotification != null) {
        isUpdateNotification(this as o.UpdateNotification);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateNotificationGroup) {
      if (isUpdateNotificationGroup != null) {
        isUpdateNotificationGroup(this as o.UpdateNotificationGroup);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateActiveNotifications) {
      if (isUpdateActiveNotifications != null) {
        isUpdateActiveNotifications(this as o.UpdateActiveNotifications);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateHavePendingNotifications) {
      if (isUpdateHavePendingNotifications != null) {
        isUpdateHavePendingNotifications(this as o.UpdateHavePendingNotifications);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateDeleteMessages) {
      if (isUpdateDeleteMessages != null) {
        isUpdateDeleteMessages(this as o.UpdateDeleteMessages);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateUserChatAction) {
      if (isUpdateUserChatAction != null) {
        isUpdateUserChatAction(this as o.UpdateUserChatAction);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateUserStatus) {
      if (isUpdateUserStatus != null) {
        isUpdateUserStatus(this as o.UpdateUserStatus);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateUser) {
      if (isUpdateUser != null) {
        isUpdateUser(this as o.UpdateUser);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateBasicGroup) {
      if (isUpdateBasicGroup != null) {
        isUpdateBasicGroup(this as o.UpdateBasicGroup);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateSupergroup) {
      if (isUpdateSupergroup != null) {
        isUpdateSupergroup(this as o.UpdateSupergroup);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateSecretChat) {
      if (isUpdateSecretChat != null) {
        isUpdateSecretChat(this as o.UpdateSecretChat);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateUserFullInfo) {
      if (isUpdateUserFullInfo != null) {
        isUpdateUserFullInfo(this as o.UpdateUserFullInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateBasicGroupFullInfo) {
      if (isUpdateBasicGroupFullInfo != null) {
        isUpdateBasicGroupFullInfo(this as o.UpdateBasicGroupFullInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateSupergroupFullInfo) {
      if (isUpdateSupergroupFullInfo != null) {
        isUpdateSupergroupFullInfo(this as o.UpdateSupergroupFullInfo);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateServiceNotification) {
      if (isUpdateServiceNotification != null) {
        isUpdateServiceNotification(this as o.UpdateServiceNotification);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateFile) {
      if (isUpdateFile != null) {
        isUpdateFile(this as o.UpdateFile);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateFileGenerationStart) {
      if (isUpdateFileGenerationStart != null) {
        isUpdateFileGenerationStart(this as o.UpdateFileGenerationStart);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateFileGenerationStop) {
      if (isUpdateFileGenerationStop != null) {
        isUpdateFileGenerationStop(this as o.UpdateFileGenerationStop);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateCall) {
      if (isUpdateCall != null) {
        isUpdateCall(this as o.UpdateCall);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateGroupCall) {
      if (isUpdateGroupCall != null) {
        isUpdateGroupCall(this as o.UpdateGroupCall);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateGroupCallParticipant) {
      if (isUpdateGroupCallParticipant != null) {
        isUpdateGroupCallParticipant(this as o.UpdateGroupCallParticipant);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateNewCallSignalingData) {
      if (isUpdateNewCallSignalingData != null) {
        isUpdateNewCallSignalingData(this as o.UpdateNewCallSignalingData);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateUserPrivacySettingRules) {
      if (isUpdateUserPrivacySettingRules != null) {
        isUpdateUserPrivacySettingRules(this as o.UpdateUserPrivacySettingRules);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateUnreadMessageCount) {
      if (isUpdateUnreadMessageCount != null) {
        isUpdateUnreadMessageCount(this as o.UpdateUnreadMessageCount);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateUnreadChatCount) {
      if (isUpdateUnreadChatCount != null) {
        isUpdateUnreadChatCount(this as o.UpdateUnreadChatCount);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateOption) {
      if (isUpdateOption != null) {
        isUpdateOption(this as o.UpdateOption);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateStickerSet) {
      if (isUpdateStickerSet != null) {
        isUpdateStickerSet(this as o.UpdateStickerSet);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateInstalledStickerSets) {
      if (isUpdateInstalledStickerSets != null) {
        isUpdateInstalledStickerSets(this as o.UpdateInstalledStickerSets);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateTrendingStickerSets) {
      if (isUpdateTrendingStickerSets != null) {
        isUpdateTrendingStickerSets(this as o.UpdateTrendingStickerSets);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateRecentStickers) {
      if (isUpdateRecentStickers != null) {
        isUpdateRecentStickers(this as o.UpdateRecentStickers);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateFavoriteStickers) {
      if (isUpdateFavoriteStickers != null) {
        isUpdateFavoriteStickers(this as o.UpdateFavoriteStickers);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateSavedAnimations) {
      if (isUpdateSavedAnimations != null) {
        isUpdateSavedAnimations(this as o.UpdateSavedAnimations);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateSelectedBackground) {
      if (isUpdateSelectedBackground != null) {
        isUpdateSelectedBackground(this as o.UpdateSelectedBackground);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateLanguagePackStrings) {
      if (isUpdateLanguagePackStrings != null) {
        isUpdateLanguagePackStrings(this as o.UpdateLanguagePackStrings);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateConnectionState) {
      if (isUpdateConnectionState != null) {
        isUpdateConnectionState(this as o.UpdateConnectionState);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateTermsOfService) {
      if (isUpdateTermsOfService != null) {
        isUpdateTermsOfService(this as o.UpdateTermsOfService);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateUsersNearby) {
      if (isUpdateUsersNearby != null) {
        isUpdateUsersNearby(this as o.UpdateUsersNearby);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateDiceEmojis) {
      if (isUpdateDiceEmojis != null) {
        isUpdateDiceEmojis(this as o.UpdateDiceEmojis);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateAnimationSearchParameters) {
      if (isUpdateAnimationSearchParameters != null) {
        isUpdateAnimationSearchParameters(this as o.UpdateAnimationSearchParameters);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateSuggestedActions) {
      if (isUpdateSuggestedActions != null) {
        isUpdateSuggestedActions(this as o.UpdateSuggestedActions);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateNewInlineQuery) {
      if (isUpdateNewInlineQuery != null) {
        isUpdateNewInlineQuery(this as o.UpdateNewInlineQuery);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateNewChosenInlineResult) {
      if (isUpdateNewChosenInlineResult != null) {
        isUpdateNewChosenInlineResult(this as o.UpdateNewChosenInlineResult);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateNewCallbackQuery) {
      if (isUpdateNewCallbackQuery != null) {
        isUpdateNewCallbackQuery(this as o.UpdateNewCallbackQuery);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateNewInlineCallbackQuery) {
      if (isUpdateNewInlineCallbackQuery != null) {
        isUpdateNewInlineCallbackQuery(this as o.UpdateNewInlineCallbackQuery);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateNewShippingQuery) {
      if (isUpdateNewShippingQuery != null) {
        isUpdateNewShippingQuery(this as o.UpdateNewShippingQuery);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateNewPreCheckoutQuery) {
      if (isUpdateNewPreCheckoutQuery != null) {
        isUpdateNewPreCheckoutQuery(this as o.UpdateNewPreCheckoutQuery);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateNewCustomEvent) {
      if (isUpdateNewCustomEvent != null) {
        isUpdateNewCustomEvent(this as o.UpdateNewCustomEvent);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateNewCustomQuery) {
      if (isUpdateNewCustomQuery != null) {
        isUpdateNewCustomQuery(this as o.UpdateNewCustomQuery);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdatePoll) {
      if (isUpdatePoll != null) {
        isUpdatePoll(this as o.UpdatePoll);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdatePollAnswer) {
      if (isUpdatePollAnswer != null) {
        isUpdatePollAnswer(this as o.UpdatePollAnswer);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.UpdateChatMember) {
      if (isUpdateChatMember != null) {
        isUpdateChatMember(this as o.UpdateChatMember);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class Updates extends b.TdBase {
  void match({
    Action<o.Updates>? isUpdates,
    Action<Updates>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.Updates) {
      if (isUpdates != null) {
        isUpdates(this as o.Updates);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// Describes a stream to which TDLib internal log is written
abstract class LogStream extends b.TdBase {
  void match({
    Action<o.LogStreamDefault>? isLogStreamDefault,
    Action<o.LogStreamFile>? isLogStreamFile,
    Action<o.LogStreamEmpty>? isLogStreamEmpty,
    Action<LogStream>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LogStreamDefault) {
      if (isLogStreamDefault != null) {
        isLogStreamDefault(this as o.LogStreamDefault);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.LogStreamFile) {
      if (isLogStreamFile != null) {
        isLogStreamFile(this as o.LogStreamFile);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (this is o.LogStreamEmpty) {
      if (isLogStreamEmpty != null) {
        isLogStreamEmpty(this as o.LogStreamEmpty);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class LogVerbosityLevel extends b.TdBase {
  void match({
    Action<o.LogVerbosityLevel>? isLogVerbosityLevel,
    Action<LogVerbosityLevel>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LogVerbosityLevel) {
      if (isLogVerbosityLevel != null) {
        isLogVerbosityLevel(this as o.LogVerbosityLevel);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class LogTags extends b.TdBase {
  void match({
    Action<o.LogTags>? isLogTags,
    Action<LogTags>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.LogTags) {
      if (isLogTags != null) {
        isLogTags(this as o.LogTags);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class TestInt extends b.TdBase {
  void match({
    Action<o.TestInt>? isTestInt,
    Action<TestInt>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TestInt) {
      if (isTestInt != null) {
        isTestInt(this as o.TestInt);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class TestString extends b.TdBase {
  void match({
    Action<o.TestString>? isTestString,
    Action<TestString>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TestString) {
      if (isTestString != null) {
        isTestString(this as o.TestString);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class TestBytes extends b.TdBase {
  void match({
    Action<o.TestBytes>? isTestBytes,
    Action<TestBytes>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TestBytes) {
      if (isTestBytes != null) {
        isTestBytes(this as o.TestBytes);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class TestVectorInt extends b.TdBase {
  void match({
    Action<o.TestVectorInt>? isTestVectorInt,
    Action<TestVectorInt>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TestVectorInt) {
      if (isTestVectorInt != null) {
        isTestVectorInt(this as o.TestVectorInt);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class TestVectorIntObject extends b.TdBase {
  void match({
    Action<o.TestVectorIntObject>? isTestVectorIntObject,
    Action<TestVectorIntObject>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TestVectorIntObject) {
      if (isTestVectorIntObject != null) {
        isTestVectorIntObject(this as o.TestVectorIntObject);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class TestVectorString extends b.TdBase {
  void match({
    Action<o.TestVectorString>? isTestVectorString,
    Action<TestVectorString>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TestVectorString) {
      if (isTestVectorString != null) {
        isTestVectorString(this as o.TestVectorString);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

/// 
abstract class TestVectorStringObject extends b.TdBase {
  void match({
    Action<o.TestVectorStringObject>? isTestVectorStringObject,
    Action<TestVectorStringObject>? otherwise,
  }) {
    if (false) {} // ignore: dead_code
    else if (this is o.TestVectorStringObject) {
      if (isTestVectorStringObject != null) {
        isTestVectorStringObject(this as o.TestVectorStringObject);
      }
      else if (otherwise != null) {
        otherwise(this);
      }
    }
    else if (otherwise != null) {
      otherwise(this);
    }
  }
}

