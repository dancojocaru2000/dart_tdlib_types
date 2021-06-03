import 'base.dart' as b;

/// 
abstract class Error extends b.TdBase {}

/// 
abstract class Ok extends b.TdBase {}

/// 
abstract class TdlibParameters extends b.TdBase {}

/// Provides information about the method by which an authentication code is delivered to the user
abstract class AuthenticationCodeType extends b.TdBase {}

/// 
abstract class AuthenticationCodeInfo extends b.TdBase {}

/// 
abstract class EmailAddressAuthenticationCodeInfo extends b.TdBase {}

/// 
abstract class TextEntity extends b.TdBase {}

/// 
abstract class TextEntities extends b.TdBase {}

/// 
abstract class FormattedText extends b.TdBase {}

/// 
abstract class TermsOfService extends b.TdBase {}

/// Represents the current authorization state of the TDLib client
abstract class AuthorizationState extends b.TdBase {}

/// 
abstract class PasswordState extends b.TdBase {}

/// 
abstract class RecoveryEmailAddress extends b.TdBase {}

/// 
abstract class TemporaryPasswordState extends b.TdBase {}

/// 
abstract class LocalFile extends b.TdBase {}

/// 
abstract class RemoteFile extends b.TdBase {}

/// 
abstract class File extends b.TdBase {}

/// Points to a file
abstract class InputFile extends b.TdBase {}

/// 
abstract class PhotoSize extends b.TdBase {}

/// 
abstract class Minithumbnail extends b.TdBase {}

/// Describes format of the thumbnail
abstract class ThumbnailFormat extends b.TdBase {}

/// 
abstract class Thumbnail extends b.TdBase {}

/// Part of the face, relative to which a mask should be placed
abstract class MaskPoint extends b.TdBase {}

/// 
abstract class MaskPosition extends b.TdBase {}

/// 
abstract class ClosedVectorPath extends b.TdBase {}

/// 
abstract class PollOption extends b.TdBase {}

/// Describes the type of a poll
abstract class PollType extends b.TdBase {}

/// 
abstract class Animation extends b.TdBase {}

/// 
abstract class Audio extends b.TdBase {}

/// 
abstract class Document extends b.TdBase {}

/// 
abstract class Photo extends b.TdBase {}

/// 
abstract class Sticker extends b.TdBase {}

/// 
abstract class Video extends b.TdBase {}

/// 
abstract class VideoNote extends b.TdBase {}

/// 
abstract class VoiceNote extends b.TdBase {}

/// 
abstract class Contact extends b.TdBase {}

/// 
abstract class Location extends b.TdBase {}

/// 
abstract class Venue extends b.TdBase {}

/// 
abstract class Game extends b.TdBase {}

/// 
abstract class Poll extends b.TdBase {}

/// 
abstract class ProfilePhoto extends b.TdBase {}

/// 
abstract class ChatPhotoInfo extends b.TdBase {}

/// Represents the type of a user. The following types are possible: regular users, deleted users and bots
abstract class UserType extends b.TdBase {}

/// 
abstract class BotCommand extends b.TdBase {}

/// 
abstract class BotInfo extends b.TdBase {}

/// 
abstract class ChatLocation extends b.TdBase {}

/// 
abstract class AnimatedChatPhoto extends b.TdBase {}

/// 
abstract class ChatPhoto extends b.TdBase {}

/// 
abstract class ChatPhotos extends b.TdBase {}

/// Describes a photo to be set as a user profile or chat photo
abstract class InputChatPhoto extends b.TdBase {}

/// 
abstract class User extends b.TdBase {}

/// 
abstract class UserFullInfo extends b.TdBase {}

/// 
abstract class Users extends b.TdBase {}

/// 
abstract class ChatAdministrator extends b.TdBase {}

/// 
abstract class ChatAdministrators extends b.TdBase {}

/// 
abstract class ChatPermissions extends b.TdBase {}

/// Provides information about the status of a member in a chat
abstract class ChatMemberStatus extends b.TdBase {}

/// 
abstract class ChatMember extends b.TdBase {}

/// 
abstract class ChatMembers extends b.TdBase {}

/// Specifies the kind of chat members to return in searchChatMembers
abstract class ChatMembersFilter extends b.TdBase {}

/// Specifies the kind of chat members to return in getSupergroupMembers
abstract class SupergroupMembersFilter extends b.TdBase {}

/// 
abstract class ChatInviteLink extends b.TdBase {}

/// 
abstract class ChatInviteLinks extends b.TdBase {}

/// 
abstract class ChatInviteLinkCount extends b.TdBase {}

/// 
abstract class ChatInviteLinkCounts extends b.TdBase {}

/// 
abstract class ChatInviteLinkMember extends b.TdBase {}

/// 
abstract class ChatInviteLinkMembers extends b.TdBase {}

/// 
abstract class ChatInviteLinkInfo extends b.TdBase {}

/// 
abstract class BasicGroup extends b.TdBase {}

/// 
abstract class BasicGroupFullInfo extends b.TdBase {}

/// 
abstract class Supergroup extends b.TdBase {}

/// 
abstract class SupergroupFullInfo extends b.TdBase {}

/// Describes the current secret chat state
abstract class SecretChatState extends b.TdBase {}

/// 
abstract class SecretChat extends b.TdBase {}

/// Contains information about the sender of a message
abstract class MessageSender extends b.TdBase {}

/// 
abstract class MessageSenders extends b.TdBase {}

/// Contains information about the origin of a forwarded message
abstract class MessageForwardOrigin extends b.TdBase {}

/// 
abstract class MessageForwardInfo extends b.TdBase {}

/// 
abstract class MessageReplyInfo extends b.TdBase {}

/// 
abstract class MessageInteractionInfo extends b.TdBase {}

/// Contains information about the sending state of the message
abstract class MessageSendingState extends b.TdBase {}

/// 
abstract class Message extends b.TdBase {}

/// 
abstract class Messages extends b.TdBase {}

/// 
abstract class FoundMessages extends b.TdBase {}

/// Describes the types of chats to which notification settings are applied
abstract class NotificationSettingsScope extends b.TdBase {}

/// 
abstract class ChatNotificationSettings extends b.TdBase {}

/// 
abstract class ScopeNotificationSettings extends b.TdBase {}

/// 
abstract class DraftMessage extends b.TdBase {}

/// Describes the type of a chat
abstract class ChatType extends b.TdBase {}

/// 
abstract class ChatFilter extends b.TdBase {}

/// 
abstract class ChatFilterInfo extends b.TdBase {}

/// 
abstract class RecommendedChatFilter extends b.TdBase {}

/// 
abstract class RecommendedChatFilters extends b.TdBase {}

/// Describes a list of chats
abstract class ChatList extends b.TdBase {}

/// 
abstract class ChatLists extends b.TdBase {}

/// Describes a reason why an external chat is shown in a chat list
abstract class ChatSource extends b.TdBase {}

/// 
abstract class ChatPosition extends b.TdBase {}

/// 
abstract class VoiceChat extends b.TdBase {}

/// 
abstract class Chat extends b.TdBase {}

/// 
abstract class Chats extends b.TdBase {}

/// 
abstract class ChatNearby extends b.TdBase {}

/// 
abstract class ChatsNearby extends b.TdBase {}

/// Describes a type of public chats
abstract class PublicChatType extends b.TdBase {}

/// Describes actions which should be possible to do through a chat action bar
abstract class ChatActionBar extends b.TdBase {}

/// Describes a keyboard button type
abstract class KeyboardButtonType extends b.TdBase {}

/// 
abstract class KeyboardButton extends b.TdBase {}

/// Describes the type of an inline keyboard button
abstract class InlineKeyboardButtonType extends b.TdBase {}

/// 
abstract class InlineKeyboardButton extends b.TdBase {}

/// Contains a description of a custom keyboard and actions that can be done with it to quickly reply to bots
abstract class ReplyMarkup extends b.TdBase {}

/// Contains information about an inline button of type inlineKeyboardButtonTypeLoginUrl
abstract class LoginUrlInfo extends b.TdBase {}

/// 
abstract class MessageThreadInfo extends b.TdBase {}

/// Describes a text object inside an instant-view web page
abstract class RichText extends b.TdBase {}

/// 
abstract class PageBlockCaption extends b.TdBase {}

/// 
abstract class PageBlockListItem extends b.TdBase {}

/// Describes a horizontal alignment of a table cell content
abstract class PageBlockHorizontalAlignment extends b.TdBase {}

/// Describes a Vertical alignment of a table cell content
abstract class PageBlockVerticalAlignment extends b.TdBase {}

/// 
abstract class PageBlockTableCell extends b.TdBase {}

/// 
abstract class PageBlockRelatedArticle extends b.TdBase {}

/// Describes a block of an instant view web page
abstract class PageBlock extends b.TdBase {}

/// 
abstract class WebPageInstantView extends b.TdBase {}

/// 
abstract class WebPage extends b.TdBase {}

/// 
abstract class CountryInfo extends b.TdBase {}

/// 
abstract class Countries extends b.TdBase {}

/// 
abstract class PhoneNumberInfo extends b.TdBase {}

/// 
abstract class BankCardActionOpenUrl extends b.TdBase {}

/// 
abstract class BankCardInfo extends b.TdBase {}

/// 
abstract class Address extends b.TdBase {}

/// 
abstract class LabeledPricePart extends b.TdBase {}

/// 
abstract class Invoice extends b.TdBase {}

/// 
abstract class OrderInfo extends b.TdBase {}

/// 
abstract class ShippingOption extends b.TdBase {}

/// 
abstract class SavedCredentials extends b.TdBase {}

/// Contains information about the payment method chosen by the user
abstract class InputCredentials extends b.TdBase {}

/// 
abstract class PaymentsProviderStripe extends b.TdBase {}

/// 
abstract class PaymentFormTheme extends b.TdBase {}

/// 
abstract class PaymentForm extends b.TdBase {}

/// 
abstract class ValidatedOrderInfo extends b.TdBase {}

/// 
abstract class PaymentResult extends b.TdBase {}

/// 
abstract class PaymentReceipt extends b.TdBase {}

/// 
abstract class DatedFile extends b.TdBase {}

/// Contains the type of a Telegram Passport element
abstract class PassportElementType extends b.TdBase {}

/// 
abstract class Date extends b.TdBase {}

/// 
abstract class PersonalDetails extends b.TdBase {}

/// 
abstract class IdentityDocument extends b.TdBase {}

/// 
abstract class InputIdentityDocument extends b.TdBase {}

/// 
abstract class PersonalDocument extends b.TdBase {}

/// 
abstract class InputPersonalDocument extends b.TdBase {}

/// Contains information about a Telegram Passport element
abstract class PassportElement extends b.TdBase {}

/// Contains information about a Telegram Passport element to be saved
abstract class InputPassportElement extends b.TdBase {}

/// 
abstract class PassportElements extends b.TdBase {}

/// Contains the description of an error in a Telegram Passport element
abstract class PassportElementErrorSource extends b.TdBase {}

/// 
abstract class PassportElementError extends b.TdBase {}

/// 
abstract class PassportSuitableElement extends b.TdBase {}

/// 
abstract class PassportRequiredElement extends b.TdBase {}

/// 
abstract class PassportAuthorizationForm extends b.TdBase {}

/// 
abstract class PassportElementsWithErrors extends b.TdBase {}

/// 
abstract class EncryptedCredentials extends b.TdBase {}

/// 
abstract class EncryptedPassportElement extends b.TdBase {}

/// Contains the description of an error in a Telegram Passport element; for bots only
abstract class InputPassportElementErrorSource extends b.TdBase {}

/// 
abstract class InputPassportElementError extends b.TdBase {}

/// Contains the content of a message
abstract class MessageContent extends b.TdBase {}

/// Represents a part of the text which must be formatted differently
abstract class TextEntityType extends b.TdBase {}

/// 
abstract class InputThumbnail extends b.TdBase {}

/// Contains information about the time when a scheduled message will be sent
abstract class MessageSchedulingState extends b.TdBase {}

/// 
abstract class MessageSendOptions extends b.TdBase {}

/// 
abstract class MessageCopyOptions extends b.TdBase {}

/// The content of a message to send
abstract class InputMessageContent extends b.TdBase {}

/// Represents a filter for message search results
abstract class SearchMessagesFilter extends b.TdBase {}

/// Describes the different types of activity in a chat
abstract class ChatAction extends b.TdBase {}

/// Describes the last time the user was online
abstract class UserStatus extends b.TdBase {}

/// 
abstract class Stickers extends b.TdBase {}

/// 
abstract class Emojis extends b.TdBase {}

/// 
abstract class StickerSet extends b.TdBase {}

/// 
abstract class StickerSetInfo extends b.TdBase {}

/// 
abstract class StickerSets extends b.TdBase {}

/// Describes the reason why a call was discarded
abstract class CallDiscardReason extends b.TdBase {}

/// 
abstract class CallProtocol extends b.TdBase {}

/// Describes the type of a call server
abstract class CallServerType extends b.TdBase {}

/// 
abstract class CallServer extends b.TdBase {}

/// 
abstract class CallId extends b.TdBase {}

/// 
abstract class GroupCallId extends b.TdBase {}

/// Describes the current call state
abstract class CallState extends b.TdBase {}

/// 
abstract class GroupCallRecentSpeaker extends b.TdBase {}

/// 
abstract class GroupCall extends b.TdBase {}

/// 
abstract class GroupCallPayloadFingerprint extends b.TdBase {}

/// 
abstract class GroupCallPayload extends b.TdBase {}

/// 
abstract class GroupCallJoinResponseCandidate extends b.TdBase {}

/// Describes a group call join response
abstract class GroupCallJoinResponse extends b.TdBase {}

/// 
abstract class GroupCallParticipant extends b.TdBase {}

/// Describes the exact type of a problem with a call
abstract class CallProblem extends b.TdBase {}

/// 
abstract class Call extends b.TdBase {}

/// 
abstract class PhoneNumberAuthenticationSettings extends b.TdBase {}

/// 
abstract class Animations extends b.TdBase {}

/// Contains animated stickers which should be used for dice animation rendering
abstract class DiceStickers extends b.TdBase {}

/// 
abstract class ImportedContacts extends b.TdBase {}

/// 
abstract class HttpUrl extends b.TdBase {}

/// Represents a single result of an inline query; for bots only
abstract class InputInlineQueryResult extends b.TdBase {}

/// Represents a single result of an inline query
abstract class InlineQueryResult extends b.TdBase {}

/// 
abstract class InlineQueryResults extends b.TdBase {}

/// Represents a payload of a callback query
abstract class CallbackQueryPayload extends b.TdBase {}

/// 
abstract class CallbackQueryAnswer extends b.TdBase {}

/// 
abstract class CustomRequestResult extends b.TdBase {}

/// 
abstract class GameHighScore extends b.TdBase {}

/// 
abstract class GameHighScores extends b.TdBase {}

/// Represents a chat event
abstract class ChatEventAction extends b.TdBase {}

/// 
abstract class ChatEvent extends b.TdBase {}

/// 
abstract class ChatEvents extends b.TdBase {}

/// 
abstract class ChatEventLogFilters extends b.TdBase {}

/// Represents the value of a string in a language pack
abstract class LanguagePackStringValue extends b.TdBase {}

/// 
abstract class LanguagePackString extends b.TdBase {}

/// 
abstract class LanguagePackStrings extends b.TdBase {}

/// 
abstract class LanguagePackInfo extends b.TdBase {}

/// 
abstract class LocalizationTargetInfo extends b.TdBase {}

/// Represents a data needed to subscribe for push notifications through registerDevice method. To use specific push notification service, the correct application platform must be specified and a valid server authentication data must be uploaded at https://my.telegram.org
abstract class DeviceToken extends b.TdBase {}

/// 
abstract class PushReceiverId extends b.TdBase {}

/// Describes a fill of a background
abstract class BackgroundFill extends b.TdBase {}

/// Describes the type of a background
abstract class BackgroundType extends b.TdBase {}

/// 
abstract class Background extends b.TdBase {}

/// 
abstract class Backgrounds extends b.TdBase {}

/// Contains information about background to set
abstract class InputBackground extends b.TdBase {}

/// 
abstract class Hashtags extends b.TdBase {}

/// Represents result of checking whether the current session can be used to transfer a chat ownership to another user
abstract class CanTransferOwnershipResult extends b.TdBase {}

/// Represents result of checking whether a username can be set for a chat
abstract class CheckChatUsernameResult extends b.TdBase {}

/// Contains information about a file with messages exported from another app
abstract class MessageFileType extends b.TdBase {}

/// Contains content of a push message notification
abstract class PushMessageContent extends b.TdBase {}

/// Contains detailed information about a notification
abstract class NotificationType extends b.TdBase {}

/// Describes the type of notifications in a notification group
abstract class NotificationGroupType extends b.TdBase {}

/// 
abstract class Notification extends b.TdBase {}

/// 
abstract class NotificationGroup extends b.TdBase {}

/// Represents the value of an option
abstract class OptionValue extends b.TdBase {}

/// 
abstract class JsonObjectMember extends b.TdBase {}

/// Represents a JSON value
abstract class JsonValue extends b.TdBase {}

/// Represents a single rule for managing privacy settings
abstract class UserPrivacySettingRule extends b.TdBase {}

/// 
abstract class UserPrivacySettingRules extends b.TdBase {}

/// Describes available user privacy settings
abstract class UserPrivacySetting extends b.TdBase {}

/// 
abstract class AccountTtl extends b.TdBase {}

/// 
abstract class Session extends b.TdBase {}

/// 
abstract class Sessions extends b.TdBase {}

/// 
abstract class ConnectedWebsite extends b.TdBase {}

/// 
abstract class ConnectedWebsites extends b.TdBase {}

/// Describes the reason why a chat is reported
abstract class ChatReportReason extends b.TdBase {}

/// 
abstract class MessageLink extends b.TdBase {}

/// 
abstract class MessageLinkInfo extends b.TdBase {}

/// 
abstract class FilePart extends b.TdBase {}

/// Represents the type of a file
abstract class FileType extends b.TdBase {}

/// 
abstract class StorageStatisticsByFileType extends b.TdBase {}

/// 
abstract class StorageStatisticsByChat extends b.TdBase {}

/// 
abstract class StorageStatistics extends b.TdBase {}

/// 
abstract class StorageStatisticsFast extends b.TdBase {}

/// 
abstract class DatabaseStatistics extends b.TdBase {}

/// Represents the type of a network
abstract class NetworkType extends b.TdBase {}

/// Contains statistics about network usage
abstract class NetworkStatisticsEntry extends b.TdBase {}

/// 
abstract class NetworkStatistics extends b.TdBase {}

/// 
abstract class AutoDownloadSettings extends b.TdBase {}

/// 
abstract class AutoDownloadSettingsPresets extends b.TdBase {}

/// Describes the current state of the connection to Telegram servers
abstract class ConnectionState extends b.TdBase {}

/// Represents the categories of chats for which a list of frequently used chats can be retrieved
abstract class TopChatCategory extends b.TdBase {}

/// Describes the type of a URL linking to an internal Telegram entity
abstract class TMeUrlType extends b.TdBase {}

/// 
abstract class TMeUrl extends b.TdBase {}

/// 
abstract class TMeUrls extends b.TdBase {}

/// Describes an action suggested to the current user
abstract class SuggestedAction extends b.TdBase {}

/// 
abstract class Count extends b.TdBase {}

/// 
abstract class Text extends b.TdBase {}

/// 
abstract class Seconds extends b.TdBase {}

/// 
abstract class DeepLinkInfo extends b.TdBase {}

/// Describes the way the text should be parsed for TextEntities
abstract class TextParseMode extends b.TdBase {}

/// Describes the type of a proxy server
abstract class ProxyType extends b.TdBase {}

/// 
abstract class Proxy extends b.TdBase {}

/// 
abstract class Proxies extends b.TdBase {}

/// Describes a sticker that needs to be added to a sticker set
abstract class InputSticker extends b.TdBase {}

/// 
abstract class DateRange extends b.TdBase {}

/// 
abstract class StatisticalValue extends b.TdBase {}

/// Describes a statistical graph
abstract class StatisticalGraph extends b.TdBase {}

/// 
abstract class ChatStatisticsMessageInteractionInfo extends b.TdBase {}

/// 
abstract class ChatStatisticsMessageSenderInfo extends b.TdBase {}

/// 
abstract class ChatStatisticsAdministratorActionsInfo extends b.TdBase {}

/// 
abstract class ChatStatisticsInviterInfo extends b.TdBase {}

/// Contains a detailed statistics about a chat
abstract class ChatStatistics extends b.TdBase {}

/// 
abstract class MessageStatistics extends b.TdBase {}

/// 
abstract class Point extends b.TdBase {}

/// Represents a vector path command
abstract class VectorPathCommand extends b.TdBase {}

/// Contains notifications about data changes
abstract class Update extends b.TdBase {}

/// 
abstract class Updates extends b.TdBase {}

/// Describes a stream to which TDLib internal log is written
abstract class LogStream extends b.TdBase {}

/// 
abstract class LogVerbosityLevel extends b.TdBase {}

/// 
abstract class LogTags extends b.TdBase {}

/// 
abstract class TestInt extends b.TdBase {}

/// 
abstract class TestString extends b.TdBase {}

/// 
abstract class TestBytes extends b.TdBase {}

/// 
abstract class TestVectorInt extends b.TdBase {}

/// 
abstract class TestVectorIntObject extends b.TdBase {}

/// 
abstract class TestVectorString extends b.TdBase {}

/// 
abstract class TestVectorStringObject extends b.TdBase {}

