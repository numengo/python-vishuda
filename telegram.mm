<map version="freeplane 1.11.5">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="telegram" FOLDED="false" ID="ID_244004206" CREATED="1601987431072" MODIFIED="1649186027674" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_117354690" ICON_SIZE="12 pt" COLOR="#000000" STYLE="fork">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_117354690" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#4e85f8" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#4e85f8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="25" RULE="ON_BRANCH_CREATION"/>
<node TEXT="description" POSITION="bottom_or_right" ID="ID_1749441761" CREATED="1649173458303" MODIFIED="1649186010800">
<edge COLOR="#00ff00"/>
<node TEXT="https://core.telegram.org/bots/api" ID="ID_1836792849" CREATED="1649152070201" MODIFIED="1649173468011" LINK="https://core.telegram.org/bots/api#createchatinvitelink"/>
</node>
<node TEXT="definitions" POSITION="bottom_or_right" ID="ID_1731011507" CREATED="1649171687574" MODIFIED="1649185996786">
<edge COLOR="#0000ff"/>
<node TEXT="User" ID="ID_271636627" CREATED="1649148063735" MODIFIED="1649148065971">
<node TEXT="description" FOLDED="true" ID="ID_1289272752" CREATED="1651394006445" MODIFIED="1651394035175">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a Telegram user or bot." ID="ID_100043672" CREATED="1651394020547" MODIFIED="1651394022529"/>
</node>
<node TEXT="required" FOLDED="true" ID="ID_588454056" CREATED="1649148298844" MODIFIED="1649148300620">
<node TEXT="id" ID="ID_1121727473" CREATED="1649148305288" MODIFIED="1649148307073"/>
<node TEXT="first_name" ID="ID_1328283443" CREATED="1649148307734" MODIFIED="1649148310209"/>
</node>
<node TEXT="properties" ID="ID_1830508431" CREATED="1649148070044" MODIFIED="1649148072298">
<node TEXT="id" FOLDED="true" ID="ID_381630695" CREATED="1649148073239" MODIFIED="1649148136687">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1869897452" CREATED="1651394006445" MODIFIED="1651394035175">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier for this user or bot. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier." ID="ID_1462858271" CREATED="1651394020547" MODIFIED="1651394067931"/>
</node>
</node>
<node TEXT="is_bot" FOLDED="true" ID="ID_157027489" CREATED="1649148076949" MODIFIED="1649148133020">
<icon BUILTIN="checked"/>
<node TEXT="description" ID="ID_1009487190" CREATED="1651394006445" MODIFIED="1651394035175">
<icon BUILTIN="bookmark"/>
</node>
</node>
<node TEXT="first_name" FOLDED="true" ID="ID_1611480493" CREATED="1649147859432" MODIFIED="1649148083286">
<node TEXT="description" FOLDED="true" ID="ID_681145716" CREATED="1651394006445" MODIFIED="1651394035175">
<icon BUILTIN="bookmark"/>
<node TEXT="User&apos;s or bot&apos;s first name" ID="ID_50380124" CREATED="1651394132112" MODIFIED="1651394133770"/>
</node>
</node>
<node TEXT="last_name" FOLDED="true" ID="ID_988162500" CREATED="1649147862495" MODIFIED="1649147865439">
<node TEXT="description" FOLDED="true" ID="ID_644307098" CREATED="1651394006445" MODIFIED="1651394035175">
<icon BUILTIN="bookmark"/>
<node TEXT="User&apos;s or bot&apos;s last name" ID="ID_508906211" CREATED="1651394139938" MODIFIED="1651394189867"/>
</node>
</node>
<node TEXT="username" FOLDED="true" ID="ID_1910607975" CREATED="1649147856735" MODIFIED="1649147859120">
<node TEXT="description" FOLDED="true" ID="ID_1364653341" CREATED="1651394006445" MODIFIED="1651394035175">
<icon BUILTIN="bookmark"/>
<node TEXT="User&apos;s or bot&apos;s username" ID="ID_1782993352" CREATED="1651394148471" MODIFIED="1651394185321"/>
</node>
</node>
<node TEXT="language_code" FOLDED="true" ID="ID_505422036" CREATED="1649148102897" MODIFIED="1649148106605">
<node TEXT="description" FOLDED="true" ID="ID_1895105260" CREATED="1651394006445" MODIFIED="1651394035175">
<icon BUILTIN="bookmark"/>
<node TEXT="IETF language tag of the user&apos;s language" ID="ID_1984034818" CREATED="1651394159030" MODIFIED="1651394181109"/>
</node>
</node>
<node TEXT="can_join_groups" FOLDED="true" ID="ID_1812596665" CREATED="1649148110901" MODIFIED="1649148127392">
<icon BUILTIN="checked"/>
<node TEXT="description" FOLDED="true" ID="ID_183699214" CREATED="1651394006445" MODIFIED="1651394035175">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the bot can be invited to groups." ID="ID_1104879379" CREATED="1651394177059" MODIFIED="1651394214780"/>
</node>
</node>
<node TEXT="can_read_all_group_messages" FOLDED="true" ID="ID_1803460872" CREATED="1649148115184" MODIFIED="1649148127392">
<icon BUILTIN="checked"/>
<node TEXT="description" FOLDED="true" ID="ID_1534869226" CREATED="1651394006445" MODIFIED="1651394035175">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if privacy mode is disabled for the bot." ID="ID_1870642955" CREATED="1651394204767" MODIFIED="1651394211448"/>
</node>
</node>
<node TEXT="supports_inline_queries" FOLDED="true" ID="ID_1599012033" CREATED="1649148119172" MODIFIED="1649148127391">
<icon BUILTIN="checked"/>
<node TEXT="description" FOLDED="true" ID="ID_3934621" CREATED="1651394006445" MODIFIED="1651394035175">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the bot supports inline queries." ID="ID_1657826321" CREATED="1651394268347" MODIFIED="1651394271599"/>
</node>
</node>
</node>
</node>
<node TEXT="Chat" FOLDED="true" ID="ID_305249170" CREATED="1649147844282" MODIFIED="1649147846054">
<node TEXT="description" ID="ID_1736194091" CREATED="1651394284506" MODIFIED="1651394289567">
<icon BUILTIN="bookmark"/>
<node ID="ID_939391835" CREATED="1651394290143" MODIFIED="1651394290143"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This object represents a chat.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="required" ID="ID_828280012" CREATED="1649148585826" MODIFIED="1649148589218">
<node TEXT="id" ID="ID_819331092" CREATED="1649148593065" MODIFIED="1649148593784"/>
</node>
<node TEXT="primaryKeys" ID="ID_483496489" CREATED="1649149949176" MODIFIED="1649149958667">
<node TEXT="id" ID="ID_1214186030" CREATED="1649149913093" MODIFIED="1649149983165"/>
</node>
<node TEXT="properties" ID="ID_262892618" CREATED="1649147846436" MODIFIED="1649147849697">
<node TEXT="id" FOLDED="true" ID="ID_1573468354" CREATED="1649147851083" MODIFIED="1649148047364">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_89473479" CREATED="1651394006445" MODIFIED="1651394035175">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier for this chat. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier." ID="ID_545191278" CREATED="1651394020547" MODIFIED="1651394313379"/>
</node>
</node>
<node TEXT="_type" FOLDED="true" ID="ID_881339249" CREATED="1649147852981" MODIFIED="1649173556057">
<node TEXT="description" FOLDED="true" ID="ID_169587397" CREATED="1651394328921" MODIFIED="1651394333326">
<icon BUILTIN="bookmark"/>
<node TEXT="Type of chat, can be either “private”, “group”, “supergroup” or “channel”" ID="ID_733675023" CREATED="1651394334789" MODIFIED="1651394336804"/>
</node>
<node TEXT="enum" FOLDED="true" ID="ID_1866968963" CREATED="1649148597843" MODIFIED="1649148599060">
<node TEXT="private" ID="ID_1284026583" CREATED="1649148600225" MODIFIED="1649148604834"/>
<node TEXT="group" ID="ID_284731833" CREATED="1649148605288" MODIFIED="1649148606479"/>
<node TEXT="supergroup" ID="ID_1298971040" CREATED="1649148606858" MODIFIED="1649148609077"/>
<node TEXT="channel" ID="ID_908619360" CREATED="1649148609799" MODIFIED="1649148612020"/>
</node>
</node>
<node TEXT="title" FOLDED="true" ID="ID_1815550791" CREATED="1649147854510" MODIFIED="1649147856518">
<node TEXT="description" FOLDED="true" ID="ID_1751432567" CREATED="1651394347640" MODIFIED="1651394351519">
<icon BUILTIN="bookmark"/>
<node ID="ID_40735765" CREATED="1651394351782" MODIFIED="1651394351782"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Title, for supergroups, channels and group chats
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="username" FOLDED="true" ID="ID_846400957" CREATED="1649147856735" MODIFIED="1649147859120">
<node TEXT="description" FOLDED="true" ID="ID_1267205011" CREATED="1651394359809" MODIFIED="1651394368477">
<icon BUILTIN="bookmark"/>
<node TEXT="Username, for private chats, supergroups and channels if available" ID="ID_757875013" CREATED="1651394363293" MODIFIED="1651394365865"/>
</node>
</node>
<node TEXT="first_name" FOLDED="true" ID="ID_1866074742" CREATED="1649147859432" MODIFIED="1649148083286">
<node TEXT="description" FOLDED="true" ID="ID_1544940527" CREATED="1651394383556" MODIFIED="1651394404450">
<icon BUILTIN="bookmark"/>
<node TEXT="First name of the other party in a private chat" ID="ID_625186196" CREATED="1651394386531" MODIFIED="1651394392161"/>
</node>
</node>
<node TEXT="last_name" FOLDED="true" ID="ID_680812279" CREATED="1649147862495" MODIFIED="1649147865439">
<node TEXT="description" FOLDED="true" ID="ID_709959640" CREATED="1651394394344" MODIFIED="1651394404449">
<icon BUILTIN="bookmark"/>
<node ID="ID_3775078" CREATED="1651394397264" MODIFIED="1651394397264"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Last name of the other party in a private chat
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="photo" FOLDED="true" ID="ID_430163930" CREATED="1649147865637" MODIFIED="1649147867494">
<node TEXT="ChatPhoto" ID="ID_1210502441" CREATED="1649148018405" MODIFIED="1649148021168"/>
<node TEXT="description" FOLDED="true" ID="ID_947748511" CREATED="1651394407515" MODIFIED="1651394429988">
<icon BUILTIN="bookmark"/>
<node TEXT="Chat photo" ID="ID_1189326983" CREATED="1651394420392" MODIFIED="1651394426724"/>
</node>
</node>
<node TEXT="bio" ID="ID_533075391" CREATED="1649147867740" MODIFIED="1649147869796">
<node TEXT="description" ID="ID_144383086" CREATED="1651394439940" MODIFIED="1651394445846">
<icon BUILTIN="bookmark"/>
<node TEXT="Bio of the other party in a private chat." ID="ID_827288318" CREATED="1651394442512" MODIFIED="1651394443272"/>
</node>
</node>
<node TEXT="has_private_forwards" FOLDED="true" ID="ID_1500626908" CREATED="1649147871904" MODIFIED="1649148012721">
<icon BUILTIN="checked"/>
<node TEXT="description" FOLDED="true" ID="ID_1225488798" CREATED="1651394459229" MODIFIED="1651394466517">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if privacy settings of the other party in the private chat allows to use tg://user?id=&lt;user_id&gt; links only in chats with the user." ID="ID_900609638" CREATED="1651401345401" MODIFIED="1651401369425"/>
</node>
</node>
<node TEXT="description" FOLDED="true" ID="ID_1658995464" CREATED="1649147885962" MODIFIED="1649147888202">
<node TEXT="description" FOLDED="true" ID="ID_285624020" CREATED="1651394475467" MODIFIED="1651394481070">
<icon BUILTIN="bookmark"/>
<node TEXT="Description, for groups, supergroups and channel chats." ID="ID_938596618" CREATED="1651394477991" MODIFIED="1651394478798"/>
</node>
</node>
<node TEXT="invite_link" FOLDED="true" ID="ID_1466754283" CREATED="1649147893233" MODIFIED="1649147893831">
<node TEXT="description" FOLDED="true" ID="ID_542027185" CREATED="1651394493981" MODIFIED="1651394503247">
<icon BUILTIN="bookmark"/>
<node TEXT="Primary invite link, for groups, supergroups and channel chats." ID="ID_1408175921" CREATED="1651394496879" MODIFIED="1651394497915"/>
</node>
</node>
<node TEXT="pinned_message" FOLDED="true" ID="ID_1580720252" CREATED="1649147898906" MODIFIED="1649147899678">
<node TEXT="Message" ID="ID_1215652701" CREATED="1649148001966" MODIFIED="1649148005760"/>
<node TEXT="description" FOLDED="true" ID="ID_1618943295" CREATED="1651394512292" MODIFIED="1651394522143">
<icon BUILTIN="bookmark"/>
<node TEXT="The most recent pinned message (by sending date)." ID="ID_1537303228" CREATED="1651394514970" MODIFIED="1651394520232"/>
</node>
</node>
<node TEXT="permissions" ID="ID_631245185" CREATED="1649147904033" MODIFIED="1649147904749">
<node TEXT="ChatPermissions" ID="ID_1625686865" CREATED="1649147985836" MODIFIED="1649147989069"/>
<node TEXT="description" FOLDED="true" ID="ID_1753138391" CREATED="1651394532059" MODIFIED="1651394538948">
<icon BUILTIN="bookmark"/>
<node TEXT="Default chat member permissions, for groups and supergroups." ID="ID_892398387" CREATED="1651394539490" MODIFIED="1651394540995"/>
</node>
</node>
<node TEXT="slow_mode_delay" FOLDED="true" ID="ID_169944135" CREATED="1649147912411" MODIFIED="1649147983563">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_864363880" CREATED="1651394550885" MODIFIED="1651394560745">
<icon BUILTIN="bookmark"/>
<node TEXT="For supergroups, the minimum allowed delay between consecutive messages sent by each unpriviledged user; in seconds." ID="ID_618379541" CREATED="1651394553758" MODIFIED="1651394555189"/>
</node>
</node>
<node TEXT="message_auto_delete_time" FOLDED="true" ID="ID_1538072082" CREATED="1649147917518" MODIFIED="1649147983563">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1904944272" CREATED="1651394571608" MODIFIED="1651394578264">
<icon BUILTIN="bookmark"/>
<node TEXT="The time after which all messages sent to the chat will be automatically deleted; in seconds." ID="ID_687710616" CREATED="1651394574580" MODIFIED="1651394576144"/>
</node>
</node>
<node TEXT="has_protected_content" FOLDED="true" ID="ID_1505752330" CREATED="1649147922667" MODIFIED="1649147972352">
<icon BUILTIN="checked"/>
<node TEXT="description" FOLDED="true" ID="ID_561799073" CREATED="1651394592793" MODIFIED="1651394599820">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if messages from the chat can&apos;t be forwarded to other chats." ID="ID_984061215" CREATED="1651394596290" MODIFIED="1651394596997"/>
</node>
</node>
<node TEXT="sticker_set_name" FOLDED="true" ID="ID_15001991" CREATED="1649147927064" MODIFIED="1649147927628">
<node TEXT="description" FOLDED="true" ID="ID_1636842644" CREATED="1651394608059" MODIFIED="1651394615143">
<icon BUILTIN="bookmark"/>
<node TEXT="For supergroups, name of group sticker set." ID="ID_542322426" CREATED="1651394611500" MODIFIED="1651394612629"/>
</node>
</node>
<node TEXT="can_set_sticker_set" FOLDED="true" ID="ID_307165642" CREATED="1649147931045" MODIFIED="1649147972351">
<icon BUILTIN="checked"/>
<node TEXT="description" FOLDED="true" ID="ID_1587346397" CREATED="1651394622033" MODIFIED="1651394630060">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the bot can change the group sticker set." ID="ID_88932185" CREATED="1651394625617" MODIFIED="1651394627210"/>
</node>
</node>
<node TEXT="linked_chat_id" FOLDED="true" ID="ID_1239182723" CREATED="1649147938054" MODIFIED="1649147961938">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1328705023" CREATED="1651394637070" MODIFIED="1651394642890">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier for the linked chat, i.e. the discussion group identifier for a channel and vice versa; for supergroups and channel chats. This identifier may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier." ID="ID_735190519" CREATED="1651394639289" MODIFIED="1651394640280"/>
</node>
</node>
<node TEXT="location" FOLDED="true" ID="ID_212752326" CREATED="1649147941887" MODIFIED="1649147942495">
<node TEXT="ChatLocation" ID="ID_481547104" CREATED="1649147954708" MODIFIED="1649147957986"/>
<node TEXT="description" FOLDED="true" ID="ID_511536537" CREATED="1651394654609" MODIFIED="1651394662285">
<icon BUILTIN="bookmark"/>
<node TEXT="For supergroups, the location to which the supergroup is connected." ID="ID_357053289" CREATED="1651394657095" MODIFIED="1651394658194"/>
</node>
</node>
</node>
</node>
<node TEXT="Message" FOLDED="true" ID="ID_74256235" CREATED="1649148790611" MODIFIED="1649183125220">
<node TEXT="description" FOLDED="true" ID="ID_1568329263" CREATED="1651394654609" MODIFIED="1651394662285">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a message." ID="ID_450350788" CREATED="1651394657095" MODIFIED="1651394692757"/>
</node>
<node TEXT="required" ID="ID_1021193748" CREATED="1649149907171" MODIFIED="1649149911575">
<node TEXT="message_id" ID="ID_439934899" CREATED="1649149913093" MODIFIED="1649149916017"/>
</node>
<node TEXT="primaryKeys" ID="ID_878506402" CREATED="1649149949176" MODIFIED="1649183125218">
<node TEXT="message_id" ID="ID_531265425" CREATED="1649149913093" MODIFIED="1649149916017"/>
</node>
<node TEXT="properties" ID="ID_241883088" CREATED="1649148795235" MODIFIED="1649148797879">
<node FOLDED="true" ID="ID_1244947294" CREATED="1649148803090" MODIFIED="1649149902030">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    message_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1881280341" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique message identifier inside this chat" ID="ID_1179177172" CREATED="1651394774084" MODIFIED="1651394774893"/>
</node>
</node>
<node TEXT="from" FOLDED="true" ID="ID_810764288" CREATED="1649148804278" MODIFIED="1649148805739">
<node TEXT="User" ID="ID_21554704" CREATED="1649148812524" MODIFIED="1649148814043"/>
<node TEXT="description" FOLDED="true" ID="ID_1152889869" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Sender of the message; empty for messages sent to channels. For backward compatibility, the field contains a fake sender user in non-channel chats, if the message was sent on behalf of a chat." ID="ID_1590611773" CREATED="1651394774084" MODIFIED="1651394799282"/>
</node>
</node>
<node TEXT="sender_chat" FOLDED="true" ID="ID_1166992904" CREATED="1649148806181" MODIFIED="1649148809852">
<node TEXT="Chat" ID="ID_1193931290" CREATED="1649148815024" MODIFIED="1649148816539"/>
<node TEXT="description" FOLDED="true" ID="ID_1195248400" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Sender of the message, sent on behalf of a chat. For example, the channel itself for channel posts, the supergroup itself for messages from anonymous group administrators, the linked channel for messages automatically forwarded to the discussion group. For backward compatibility, the field from contains a fake sender user in non-channel chats, if the message was sent on behalf of a chat." ID="ID_237377741" CREATED="1651394774084" MODIFIED="1651394811368"/>
</node>
</node>
<node TEXT="date" FOLDED="true" ID="ID_948494391" CREATED="1649148823832" MODIFIED="1649148831617">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_947315044" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Date the message was sent in Unix time" ID="ID_990380101" CREATED="1651394774084" MODIFIED="1651394822556"/>
</node>
</node>
<node TEXT="chat" ID="ID_844253117" CREATED="1649148844556" MODIFIED="1649148846710">
<node TEXT="Chat" ID="ID_1776619139" CREATED="1649148994542" MODIFIED="1649148996580"/>
<node TEXT="description" FOLDED="true" ID="ID_1932826814" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Conversation the message belongs to" ID="ID_1956920620" CREATED="1651394774084" MODIFIED="1651394837040"/>
</node>
</node>
<node TEXT="forward_from" FOLDED="true" ID="ID_129081408" CREATED="1649148998315" MODIFIED="1649149004470">
<node TEXT="User" ID="ID_708252752" CREATED="1649149871448" MODIFIED="1649149874697"/>
<node TEXT="description" FOLDED="true" ID="ID_831994492" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="For forwarded messages, sender of the original message" ID="ID_1759003685" CREATED="1651394774084" MODIFIED="1651394846413"/>
</node>
</node>
<node TEXT="forward_from_chat" FOLDED="true" ID="ID_1572740310" CREATED="1649149009020" MODIFIED="1649149012930">
<node TEXT="Chat" ID="ID_1846968240" CREATED="1649149869225" MODIFIED="1649149870588"/>
<node TEXT="description" FOLDED="true" ID="ID_1334632549" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="For messages forwarded from channels or from anonymous administrators, information about the original sender chat" ID="ID_1624511882" CREATED="1651394774084" MODIFIED="1651394854625"/>
</node>
</node>
<node TEXT="forward_from_message_id" FOLDED="true" ID="ID_1890267535" CREATED="1649149013305" MODIFIED="1649149856070">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_490354295" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="For messages forwarded from channels, identifier of the original message in the channel" ID="ID_913489445" CREATED="1651394774084" MODIFIED="1651394861918"/>
</node>
</node>
<node TEXT="forward_signature" FOLDED="true" ID="ID_710969773" CREATED="1649149018255" MODIFIED="1649149020198">
<node TEXT="description" FOLDED="true" ID="ID_1610601645" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="For forwarded messages that were originally sent in channels or by an anonymous chat administrator, signature of the message sender if present" ID="ID_1793894711" CREATED="1651394774084" MODIFIED="1651394870190"/>
</node>
</node>
<node TEXT="forward_sender_name" FOLDED="true" ID="ID_1815486827" CREATED="1649149024380" MODIFIED="1649149846602">
<node TEXT="description" FOLDED="true" ID="ID_255042609" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Sender&apos;s name for messages forwarded from users who disallow adding a link to their account in forwarded messages" ID="ID_1069370088" CREATED="1651394774084" MODIFIED="1651394877874"/>
</node>
</node>
<node TEXT="forward_date" FOLDED="true" ID="ID_1667961712" CREATED="1649149028410" MODIFIED="1649149827702">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_882219318" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="For forwarded messages, date the original message was sent in Unix time" ID="ID_1304207243" CREATED="1651394774084" MODIFIED="1651394983504"/>
</node>
</node>
<node TEXT="is_automatic_forward" FOLDED="true" ID="ID_539824656" CREATED="1649149033147" MODIFIED="1649149820270">
<icon BUILTIN="checked"/>
<node TEXT="description" FOLDED="true" ID="ID_567814438" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the message is a channel post that was automatically forwarded to the connected discussion group" ID="ID_721077777" CREATED="1651394774084" MODIFIED="1651394985922"/>
</node>
</node>
<node TEXT="reply_to_message" FOLDED="true" ID="ID_1293199134" CREATED="1649149037242" MODIFIED="1649149038467">
<node TEXT="Message" ID="ID_792504233" CREATED="1649149801057" MODIFIED="1649149804691"/>
<node TEXT="description" FOLDED="true" ID="ID_1712108694" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="For replies, the original message. Note that the Message object in this field will not contain further reply_to_message fields even if it itself is a reply." ID="ID_1945707355" CREATED="1651394774084" MODIFIED="1651395008488"/>
</node>
</node>
<node TEXT="via_bot" FOLDED="true" ID="ID_462636170" CREATED="1649149043578" MODIFIED="1649149048546">
<node TEXT="User" ID="ID_1282864244" CREATED="1649149797699" MODIFIED="1649149799595"/>
<node TEXT="description" FOLDED="true" ID="ID_168068353" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Bot through which the message was sent" ID="ID_633915394" CREATED="1651394774084" MODIFIED="1651395024439"/>
</node>
</node>
<node TEXT="edit_date" FOLDED="true" ID="ID_475779386" CREATED="1649149048941" MODIFIED="1649149794792">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1899505645" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Date the message was last edited in Unix time" ID="ID_913984391" CREATED="1651394774084" MODIFIED="1651395026757"/>
</node>
</node>
<node TEXT="has_protected_content" FOLDED="true" ID="ID_1490874522" CREATED="1649149052672" MODIFIED="1649149787979">
<icon BUILTIN="checked"/>
<node TEXT="description" FOLDED="true" ID="ID_1600209858" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the message can&apos;t be forwarded" ID="ID_649870784" CREATED="1651394774084" MODIFIED="1651395045260"/>
</node>
</node>
<node FOLDED="true" ID="ID_982535857" CREATED="1649149058844" MODIFIED="1649149058844"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    media_group_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1467557415" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="The unique identifier of a media message group this message belongs to" ID="ID_1076116145" CREATED="1651394774084" MODIFIED="1651395054743"/>
</node>
</node>
<node TEXT="author_signature" FOLDED="true" ID="ID_1220779303" CREATED="1649149058081" MODIFIED="1649149102059">
<node TEXT="description" FOLDED="true" ID="ID_758589578" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Signature of the post author for messages in channels, or the custom title of an anonymous group administrator" ID="ID_234642675" CREATED="1651394774084" MODIFIED="1651395058852"/>
</node>
</node>
<node TEXT="text" ID="ID_1435664140" CREATED="1649149105419" MODIFIED="1649149106665">
<node TEXT="description" ID="ID_1707787470" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="For text messages, the actual UTF-8 text of the message, 0-4096 characters" ID="ID_1673349128" CREATED="1651394774084" MODIFIED="1651395072258"/>
</node>
</node>
<node TEXT="entities" FOLDED="true" ID="ID_1202490921" CREATED="1649149107096" MODIFIED="1649149779545">
<icon BUILTIN="very_positive"/>
<node TEXT="MessageEntity" ID="ID_1583166578" CREATED="1649149770416" MODIFIED="1649149775964"/>
<node TEXT="description" FOLDED="true" ID="ID_618871558" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="For text messages, special entities like usernames, URLs, bot commands, etc. that appear in the text" ID="ID_779195913" CREATED="1651394774084" MODIFIED="1651395077761"/>
</node>
</node>
<node TEXT="animation" FOLDED="true" ID="ID_360800681" CREATED="1649149109204" MODIFIED="1649149112453">
<node TEXT="Animation" ID="ID_1196367606" CREATED="1649149766258" MODIFIED="1649149769024"/>
<node TEXT="description" FOLDED="true" ID="ID_1784980290" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is an animation, information about the animation. For backward compatibility, when this field is set, the document field will also be set" ID="ID_482214262" CREATED="1651394774084" MODIFIED="1651395098330"/>
</node>
</node>
<node TEXT="audio" FOLDED="true" ID="ID_57211002" CREATED="1649149115539" MODIFIED="1649149119739">
<node TEXT="Audio" ID="ID_1714346348" CREATED="1649149759060" MODIFIED="1649149765800"/>
<node TEXT="description" FOLDED="true" ID="ID_1100367481" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is an audio file, information about the file" ID="ID_1807225177" CREATED="1651394774084" MODIFIED="1651395109509"/>
</node>
</node>
<node TEXT="document" FOLDED="true" ID="ID_1062238674" CREATED="1649149120048" MODIFIED="1649149122602">
<node TEXT="Document" ID="ID_1340787482" CREATED="1649149755369" MODIFIED="1649149757586"/>
<node TEXT="description" FOLDED="true" ID="ID_1540427045" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is a general file, information about the file" ID="ID_569842079" CREATED="1651394774084" MODIFIED="1651395117650"/>
</node>
</node>
<node TEXT="photo" FOLDED="true" ID="ID_1522007561" CREATED="1649149122901" MODIFIED="1649149752546">
<icon BUILTIN="very_positive"/>
<node TEXT="PhotoSize" ID="ID_230258084" CREATED="1649149744198" MODIFIED="1649149748030"/>
<node TEXT="description" FOLDED="true" ID="ID_983352024" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is a photo, available sizes of the photo" ID="ID_788666075" CREATED="1651394774084" MODIFIED="1651395134239"/>
</node>
</node>
<node TEXT="sticker" FOLDED="true" ID="ID_2660373" CREATED="1649149125120" MODIFIED="1649149127391">
<node TEXT="Sticker" ID="ID_91844900" CREATED="1649149736868" MODIFIED="1649149740635"/>
<node TEXT="description" FOLDED="true" ID="ID_1880926036" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is a sticker, information about the sticker" ID="ID_1423860234" CREATED="1651394774084" MODIFIED="1651395148366"/>
</node>
</node>
<node TEXT="video" FOLDED="true" ID="ID_995386698" CREATED="1649149130563" MODIFIED="1649149132021">
<node TEXT="Video" ID="ID_1629281045" CREATED="1649149733106" MODIFIED="1649149734558"/>
<node TEXT="description" FOLDED="true" ID="ID_1858091247" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is a video, information about the video" ID="ID_405168964" CREATED="1651394774084" MODIFIED="1651395179670"/>
</node>
</node>
<node TEXT="video_note" FOLDED="true" ID="ID_50901732" CREATED="1649149132350" MODIFIED="1649149134988">
<node TEXT="VideoNote" ID="ID_543311951" CREATED="1649149728534" MODIFIED="1649149732055"/>
<node TEXT="description" FOLDED="true" ID="ID_80462457" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is a video note, information about the video message" ID="ID_837031114" CREATED="1651394774084" MODIFIED="1651395207945"/>
</node>
</node>
<node TEXT="voice" FOLDED="true" ID="ID_70250559" CREATED="1649149135241" MODIFIED="1649149136318">
<node TEXT="Voice" ID="ID_192562712" CREATED="1649149713034" MODIFIED="1649149714205"/>
<node TEXT="description" FOLDED="true" ID="ID_1805123605" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is a voice message, information about the file" ID="ID_1357139216" CREATED="1651394774084" MODIFIED="1651395216757"/>
</node>
</node>
<node TEXT="caption" FOLDED="true" ID="ID_520724979" CREATED="1649149139878" MODIFIED="1649149142337">
<node TEXT="description" FOLDED="true" ID="ID_51001996" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Caption for the animation, audio, document, photo, video or voice, 0-1024 characters" ID="ID_1213715604" CREATED="1651394774084" MODIFIED="1651395224620"/>
</node>
</node>
<node TEXT="caption_entities" FOLDED="true" ID="ID_519327597" CREATED="1649149142559" MODIFIED="1649149719387">
<icon BUILTIN="very_positive"/>
<node TEXT="MessageEntity" ID="ID_1344583473" CREATED="1649149705500" MODIFIED="1649149710275"/>
<node TEXT="description" FOLDED="true" ID="ID_1125554471" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="For messages with a caption, special entities like usernames, URLs, bot commands, etc. that appear in the caption" ID="ID_240513166" CREATED="1651394774084" MODIFIED="1651395234214"/>
</node>
</node>
<node TEXT="contact" FOLDED="true" ID="ID_613618330" CREATED="1649149146351" MODIFIED="1649149147991">
<node TEXT="Contact" ID="ID_1326109069" CREATED="1649149698023" MODIFIED="1649149700294"/>
<node TEXT="description" FOLDED="true" ID="ID_492310774" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is a shared contact, information about the contact" ID="ID_683905590" CREATED="1651394774084" MODIFIED="1651395242881"/>
</node>
</node>
<node TEXT="dice" FOLDED="true" ID="ID_1354517262" CREATED="1649149152394" MODIFIED="1649149153637">
<node TEXT="Dice" ID="ID_1769368669" CREATED="1649149694772" MODIFIED="1649149695970"/>
<node TEXT="description" FOLDED="true" ID="ID_1001807359" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is a dice with random value" ID="ID_882423712" CREATED="1651394774084" MODIFIED="1651395258075"/>
</node>
</node>
<node TEXT="game" FOLDED="true" ID="ID_549734923" CREATED="1649149153928" MODIFIED="1649149155030">
<node TEXT="Game" ID="ID_578766956" CREATED="1649149688750" MODIFIED="1649149690336"/>
<node TEXT="description" FOLDED="true" ID="ID_304789465" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is a game, information about the game." ID="ID_986198442" CREATED="1651394774084" MODIFIED="1651395265262"/>
</node>
</node>
<node TEXT="poll" FOLDED="true" ID="ID_1821981164" CREATED="1649149155286" MODIFIED="1649149156683">
<node TEXT="Poll" ID="ID_1571868879" CREATED="1649149686046" MODIFIED="1649149687856"/>
<node TEXT="description" FOLDED="true" ID="ID_903807759" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is a native poll, information about the poll" ID="ID_746200505" CREATED="1651394774084" MODIFIED="1651395273994"/>
</node>
</node>
<node TEXT="venue" FOLDED="true" ID="ID_1484281721" CREATED="1649149160015" MODIFIED="1649149161349">
<node TEXT="Venue" ID="ID_366331117" CREATED="1649149682804" MODIFIED="1649149684560"/>
<node TEXT="description" FOLDED="true" ID="ID_109853836" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is a venue, information about the venue. For backward compatibility, when this field is set, the location field will also be set" ID="ID_1193308547" CREATED="1651394774084" MODIFIED="1651395279234"/>
</node>
</node>
<node TEXT="location" FOLDED="true" ID="ID_1915971406" CREATED="1649149164933" MODIFIED="1649149166804">
<node TEXT="Location" ID="ID_385781707" CREATED="1649149679073" MODIFIED="1649149681520"/>
<node TEXT="description" FOLDED="true" ID="ID_532148718" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is a shared location, information about the location" ID="ID_207014388" CREATED="1651394774084" MODIFIED="1651395286919"/>
</node>
</node>
<node TEXT="new_chat_members" FOLDED="true" ID="ID_945401800" CREATED="1649149168106" MODIFIED="1649149674818">
<icon BUILTIN="very_positive"/>
<node TEXT="User" ID="ID_771545170" CREATED="1649149174568" MODIFIED="1649149175786"/>
<node TEXT="description" FOLDED="true" ID="ID_1329841513" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="New members that were added to the group or supergroup and information about them (the bot itself may be one of these members)" ID="ID_1852910779" CREATED="1651394774084" MODIFIED="1651395290532"/>
</node>
</node>
<node TEXT="left_chat_member" FOLDED="true" ID="ID_1876446284" CREATED="1649149180281" MODIFIED="1649149184870">
<node TEXT="User" ID="ID_249043045" CREATED="1649149185427" MODIFIED="1649149186460"/>
<node TEXT="description" FOLDED="true" ID="ID_1988575248" CREATED="1651394771912" MODIFIED="1651394777248">
<icon BUILTIN="bookmark"/>
<node TEXT="A member was removed from the group, information about them (this member may be the bot itself)" ID="ID_955715489" CREATED="1651394774084" MODIFIED="1651395298281"/>
</node>
</node>
<node TEXT="new_chat_title" FOLDED="true" ID="ID_1595252367" CREATED="1649149187809" MODIFIED="1649149193071">
<node TEXT="description" FOLDED="true" ID="ID_1914980902" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="A chat title was changed to this value" ID="ID_1240498376" CREATED="1651395314395" MODIFIED="1651395315435"/>
</node>
</node>
<node TEXT="new_chat_photo" FOLDED="true" ID="ID_818712696" CREATED="1649149196994" MODIFIED="1649149652267">
<icon BUILTIN="very_positive"/>
<node TEXT="PhotoSize" ID="ID_628157474" CREATED="1649149653879" MODIFIED="1649149657265"/>
<node TEXT="description" FOLDED="true" ID="ID_492131965" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="A chat photo was change to this value" ID="ID_1817993276" CREATED="1651395314395" MODIFIED="1651396499824"/>
</node>
</node>
<node TEXT="delete_chat_photo" FOLDED="true" ID="ID_442967226" CREATED="1649149200341" MODIFIED="1649149641831">
<icon BUILTIN="checked"/>
<node TEXT="description" FOLDED="true" ID="ID_655690938" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Service message: the chat photo was deleted" ID="ID_1549501757" CREATED="1651395314395" MODIFIED="1651396508541"/>
</node>
</node>
<node TEXT="group_chat_created" FOLDED="true" ID="ID_1701082580" CREATED="1649149205072" MODIFIED="1649149629811">
<icon BUILTIN="checked"/>
<node TEXT="description" FOLDED="true" ID="ID_1752559835" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Service message: the group has been created" ID="ID_481851113" CREATED="1651395314395" MODIFIED="1651396670493"/>
</node>
</node>
<node TEXT="supergroup_chat_created" FOLDED="true" ID="ID_1289194736" CREATED="1649149208898" MODIFIED="1649149629811">
<icon BUILTIN="checked"/>
<node TEXT="description" FOLDED="true" ID="ID_524589968" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Service message: the supergroup has been created. This field can&apos;t be received in a message coming through updates, because bot can&apos;t be a member of a supergroup when it is created. It can only be found in reply_to_message if someone replies to a very first message in a directly created supergroup." ID="ID_1366364132" CREATED="1651395314395" MODIFIED="1651396652221"/>
</node>
</node>
<node TEXT="channel_chat_created" FOLDED="true" ID="ID_1310050689" CREATED="1649149215690" MODIFIED="1649149629810">
<icon BUILTIN="checked"/>
<node TEXT="description" FOLDED="true" ID="ID_1276970176" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Service message: the channel has been created. This field can&apos;t be received in a message coming through updates, because bot can&apos;t be a member of a channel when it is created. It can only be found in reply_to_message if someone replies to a very first message in a channel." ID="ID_762250862" CREATED="1651395314395" MODIFIED="1651396640391"/>
</node>
</node>
<node TEXT="message_auto_delete_timer_changed" FOLDED="true" ID="ID_900099053" CREATED="1649149223216" MODIFIED="1649149223802">
<node TEXT="MessageAutoDeleteTimerChanged" ID="ID_1686119676" CREATED="1649149619936" MODIFIED="1649149622088"/>
<node TEXT="description" FOLDED="true" ID="ID_1480046838" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Service message: auto-delete timer settings changed in the chat" ID="ID_336468190" CREATED="1651395314395" MODIFIED="1651396595636"/>
</node>
</node>
<node TEXT="migrate_to_chat_id" FOLDED="true" ID="ID_1825842280" CREATED="1649149226976" MODIFIED="1649149603416">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_110759694" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="The group has been migrated to a supergroup with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier." ID="ID_392466884" CREATED="1651395314395" MODIFIED="1651396586191"/>
</node>
</node>
<node TEXT="migrate_from_chat_id" FOLDED="true" ID="ID_889492085" CREATED="1649149233140" MODIFIED="1649149603415">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1515606583" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="The supergroup has been migrated from a group with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier." ID="ID_1939144089" CREATED="1651395314395" MODIFIED="1651396693693"/>
</node>
</node>
<node TEXT="pinned_message" FOLDED="true" ID="ID_763391569" CREATED="1649149238486" MODIFIED="1649149238963">
<node TEXT="Message" ID="ID_297855627" CREATED="1649149590427" MODIFIED="1649149595230"/>
<node TEXT="description" FOLDED="true" ID="ID_1521536914" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Specified message was pinned. Note that the Message object in this field will not contain further reply_to_message fields even if it is itself a reply." ID="ID_736199374" CREATED="1651395314395" MODIFIED="1651396713124"/>
</node>
</node>
<node TEXT="invoice" FOLDED="true" ID="ID_747322321" CREATED="1649149245556" MODIFIED="1649149246494">
<node TEXT="Invoice" ID="ID_957286847" CREATED="1649149580513" MODIFIED="1649149582701"/>
<node TEXT="description" FOLDED="true" ID="ID_31842593" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is an invoice for a payment, information about the invoice." ID="ID_1541807830" CREATED="1651395314395" MODIFIED="1651396729185"/>
</node>
</node>
<node TEXT="successful_payment" FOLDED="true" ID="ID_437373475" CREATED="1649149250383" MODIFIED="1649149251013">
<node TEXT="SuccessfulPayment" ID="ID_521865907" CREATED="1649149564702" MODIFIED="1649149571889"/>
<node TEXT="description" FOLDED="true" ID="ID_402172593" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Message is a service message about a successful payment, information about the payment." ID="ID_990202664" CREATED="1651395314395" MODIFIED="1651396738207"/>
</node>
</node>
<node TEXT="connected_website" FOLDED="true" ID="ID_1985637191" CREATED="1649149255796" MODIFIED="1649149256286">
<node TEXT="description" FOLDED="true" ID="ID_1518953123" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="The domain name of the website on which the user has logged in." ID="ID_207762673" CREATED="1651395314395" MODIFIED="1651396746597"/>
</node>
</node>
<node TEXT="passport_data" FOLDED="true" ID="ID_1159430521" CREATED="1649149259348" MODIFIED="1649149259951">
<node TEXT="PassportData" ID="ID_1255292330" CREATED="1649149553356" MODIFIED="1649149554459"/>
<node TEXT="description" FOLDED="true" ID="ID_1326222555" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Telegram Passport data" ID="ID_732536077" CREATED="1651395314395" MODIFIED="1651396753324"/>
</node>
</node>
<node TEXT="proximity_alert_triggered" FOLDED="true" ID="ID_1380109927" CREATED="1649149262983" MODIFIED="1649149263543">
<node TEXT="ProximityAlertTriggered" ID="ID_765152374" CREATED="1649149545085" MODIFIED="1649149551606"/>
<node TEXT="description" FOLDED="true" ID="ID_198520659" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Service message. A user in the chat triggered another user&apos;s proximity alert while sharing Live Location." ID="ID_965961726" CREATED="1651395314395" MODIFIED="1651396760238"/>
</node>
</node>
<node TEXT="voice_chat_scheduled" FOLDED="true" ID="ID_550108585" CREATED="1649149267633" MODIFIED="1649149268141">
<node TEXT="VoiceChatScheduled" ID="ID_694779720" CREATED="1649149531265" MODIFIED="1649149532543"/>
<node TEXT="description" FOLDED="true" ID="ID_542665201" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Service message: video chat scheduled" ID="ID_1546937115" CREATED="1651395314395" MODIFIED="1651396766794"/>
</node>
</node>
<node TEXT="voice_chat_started" FOLDED="true" ID="ID_1933833220" CREATED="1649149271366" MODIFIED="1649149272135">
<node TEXT="VoiceChatStarted" ID="ID_922756243" CREATED="1649149466346" MODIFIED="1649184325484"/>
<node TEXT="description" FOLDED="true" ID="ID_273342640" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Service message: video chat started" ID="ID_528083271" CREATED="1651395314395" MODIFIED="1651396774968"/>
</node>
</node>
<node TEXT="voice_chat_ended" FOLDED="true" ID="ID_1015669661" CREATED="1649149276424" MODIFIED="1649149276937">
<node TEXT="VoiceChatEnded" ID="ID_620107639" CREATED="1649149457496" MODIFIED="1649149458509"/>
<node TEXT="description" FOLDED="true" ID="ID_272430568" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Service message: video chat ended" ID="ID_1992133535" CREATED="1651395314395" MODIFIED="1651396784742"/>
</node>
</node>
<node TEXT="voice_chat_participants_invited" FOLDED="true" ID="ID_1996188722" CREATED="1649149280725" MODIFIED="1649149281220">
<node TEXT="VoiceChatParticipantsInvited" ID="ID_755126030" CREATED="1649149444358" MODIFIED="1649149446300"/>
<node TEXT="description" FOLDED="true" ID="ID_281776670" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Service message: new participants invited to a video chat" ID="ID_1242184131" CREATED="1651395314395" MODIFIED="1651396795910"/>
</node>
</node>
<node TEXT="reply_markup" ID="ID_1751508586" CREATED="1649149284218" MODIFIED="1649149284777">
<node TEXT="InlineKeyboardMarkup" ID="ID_645836578" CREATED="1649149432557" MODIFIED="1649149436325"/>
<node TEXT="description" FOLDED="true" ID="ID_624299858" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Inline keyboard attached to the message. login_url buttons are represented as ordinary url buttons." ID="ID_777675096" CREATED="1651395314395" MODIFIED="1651396814879"/>
</node>
</node>
</node>
</node>
<node TEXT="MessageId" FOLDED="true" ID="ID_170317582" CREATED="1649149310615" MODIFIED="1649149311196">
<node TEXT="description" FOLDED="true" ID="ID_531171461" CREATED="1651396850499" MODIFIED="1651396852737">
<node TEXT="This object represents a unique message identifier." ID="ID_1004471145" CREATED="1651396857377" MODIFIED="1651396858591"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1597082109" CREATED="1649149315925" MODIFIED="1649149318231">
<node TEXT="message_id" FOLDED="true" ID="ID_1982185645" CREATED="1649149322322" MODIFIED="1649149417311">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1044576126" CREATED="1651395306263" MODIFIED="1651395317380">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique message identifier." ID="ID_1531717032" CREATED="1651395314395" MODIFIED="1651396842476"/>
</node>
</node>
</node>
</node>
<node TEXT="MessageEntity" ID="ID_427395827" CREATED="1649149314465" MODIFIED="1649149315067">
<node TEXT="description" FOLDED="true" ID="ID_1306306328" CREATED="1651396850499" MODIFIED="1651396852737">
<node TEXT="This object represents one special entity in a text message. For example, hashtags, usernames, URLs, etc." ID="ID_1425414506" CREATED="1651396857377" MODIFIED="1651396876317"/>
</node>
<node TEXT="required" FOLDED="true" ID="ID_161815247" CREATED="1651399133017" MODIFIED="1651399134981">
<node TEXT="_type" ID="ID_144658603" CREATED="1651399139050" MODIFIED="1651399140846"/>
<node TEXT="offset" ID="ID_1576526595" CREATED="1651399141054" MODIFIED="1651399143374"/>
<node TEXT="length" ID="ID_550070881" CREATED="1651399143609" MODIFIED="1651399146689"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_390172663" CREATED="1649149315925" MODIFIED="1649149318231">
<node TEXT="_type" FOLDED="true" ID="ID_1802666272" CREATED="1649149330874" MODIFIED="1649173570206">
<node TEXT="description" FOLDED="true" ID="ID_1197763317" CREATED="1651396889413" MODIFIED="1651396899756">
<icon BUILTIN="bookmark"/>
<node TEXT="Type of the entity. Currently, can be “mention” (@username), “hashtag” (#hashtag), “cashtag” ($USD), “bot_command” (/start@jobs_bot), “url” (https://telegram.org), “email” (do-not-reply@telegram.org), “phone_number” (+1-212-555-0123), “bold” (bold text), “italic” (italic text), “underline” (underlined text), “strikethrough” (strikethrough text), “spoiler” (spoiler message), “code” (monowidth string), “pre” (monowidth block), “text_link” (for clickable text URLs), “text_mention” (for users without usernames)" ID="ID_1533638410" CREATED="1651396892174" MODIFIED="1651396893195"/>
</node>
</node>
<node TEXT="offset" FOLDED="true" ID="ID_69288394" CREATED="1649149333826" MODIFIED="1649149407606">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1195770358" CREATED="1651396903542" MODIFIED="1651396909286">
<icon BUILTIN="bookmark"/>
<node TEXT="Offset in UTF-16 code units to the start of the entity" ID="ID_697492452" CREATED="1651396914802" MODIFIED="1651396916880"/>
</node>
</node>
<node TEXT="length" FOLDED="true" ID="ID_819501481" CREATED="1649149335691" MODIFIED="1649149407605">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1828182807" CREATED="1651396903542" MODIFIED="1651396909286">
<icon BUILTIN="bookmark"/>
<node TEXT="Length of the entity in UTF-16 code units" ID="ID_1796494741" CREATED="1651396914802" MODIFIED="1651396943350"/>
</node>
</node>
<node TEXT="url" FOLDED="true" ID="ID_1685630678" CREATED="1649149339395" MODIFIED="1649149340857">
<node TEXT="description" FOLDED="true" ID="ID_675580636" CREATED="1651396903542" MODIFIED="1651396909286">
<icon BUILTIN="bookmark"/>
<node TEXT="For “text_link” only, url that will be opened after user taps on the text" ID="ID_203986138" CREATED="1651396914802" MODIFIED="1651396947057"/>
</node>
</node>
<node TEXT="user" FOLDED="true" ID="ID_167593502" CREATED="1649149341362" MODIFIED="1649149342507">
<node TEXT="description" FOLDED="true" ID="ID_614472523" CREATED="1651396903542" MODIFIED="1651396909286">
<icon BUILTIN="bookmark"/>
<node TEXT="For “text_mention” only, the mentioned user" ID="ID_1306514792" CREATED="1651396914802" MODIFIED="1651396955123"/>
</node>
<node TEXT="User" ID="ID_210475053" CREATED="1649149398944" MODIFIED="1649149400631"/>
</node>
<node TEXT="language" FOLDED="true" ID="ID_1150656204" CREATED="1649149343173" MODIFIED="1649149345715">
<node TEXT="description" FOLDED="true" ID="ID_1455663909" CREATED="1651396903542" MODIFIED="1651396909286">
<icon BUILTIN="bookmark"/>
<node TEXT="For “pre” only, the programming language of the entity text" ID="ID_613338083" CREATED="1651396914802" MODIFIED="1651396965806"/>
</node>
</node>
</node>
</node>
<node TEXT="PhotoSize" ID="ID_278972120" CREATED="1649149347545" MODIFIED="1649149351318">
<node TEXT="description" FOLDED="true" ID="ID_1197981758" CREATED="1651396903542" MODIFIED="1651396909286">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents one size of a photo or a file / sticker thumbnail." ID="ID_1968179388" CREATED="1651396914802" MODIFIED="1651396987543"/>
</node>
<node TEXT="required" FOLDED="true" ID="ID_522939461" CREATED="1651398966155" MODIFIED="1651398970793">
<node ID="ID_822884119" CREATED="1651398938739" MODIFIED="1651398938739"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
</node>
<node ID="ID_773084432" CREATED="1651398941662" MODIFIED="1651398941662"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_unique_id
  </body>
</html>
</richcontent>
</node>
<node TEXT="width" ID="ID_1720768332" CREATED="1651399062995" MODIFIED="1651399122621"/>
<node TEXT="height" ID="ID_660971966" CREATED="1651399122839" MODIFIED="1651399124772"/>
</node>
<node TEXT="properties" ID="ID_921280066" CREATED="1649149351533" MODIFIED="1649149353856">
<node FOLDED="true" ID="ID_609907325" CREATED="1649149366563" MODIFIED="1649149366563"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_491115557" CREATED="1651396993791" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Identifier for this file, which can be used to download or reuse the file" ID="ID_1705317261" CREATED="1651396996319" MODIFIED="1651396997036"/>
</node>
</node>
<node FOLDED="true" ID="ID_1998089350" CREATED="1649149370188" MODIFIED="1649149370188"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_unique_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_365382198" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier for this file, which is supposed to be the same over time and for different bots. Can&apos;t be used to download or reuse the file." ID="ID_1444026376" CREATED="1651397010392" MODIFIED="1651397011470"/>
</node>
</node>
<node ID="ID_1934454778" CREATED="1649149378613" MODIFIED="1649149390812">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    width
  </body>
</html>
</richcontent>
</node>
<node ID="ID_379931325" CREATED="1649149381301" MODIFIED="1649149390812">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    height
  </body>
</html>
</richcontent>
</node>
<node FOLDED="true" ID="ID_541329283" CREATED="1649149384435" MODIFIED="1649149390812">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_size
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_514012024" CREATED="1651396993791" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Identifier for this file, which can be used to download or reuse the file" ID="ID_52384842" CREATED="1651396996319" MODIFIED="1651396997036"/>
</node>
<node TEXT="description" FOLDED="true" ID="ID_1789415098" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="File size in bytes." ID="ID_1427408882" CREATED="1651397010392" MODIFIED="1651397040924"/>
</node>
</node>
</node>
</node>
<node TEXT="Animation" FOLDED="true" ID="ID_936610703" CREATED="1649149347545" MODIFIED="1649150037257">
<node TEXT="description" FOLDED="true" ID="ID_46640945" CREATED="1651397063678" MODIFIED="1651397073855">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents an animation file (GIF or H.264/MPEG-4 AVC video without sound)." ID="ID_1897914160" CREATED="1651397069018" MODIFIED="1651399092818"/>
</node>
<node TEXT="required" FOLDED="true" ID="ID_1369274924" CREATED="1651398966155" MODIFIED="1651398970793">
<node ID="ID_1477493175" CREATED="1651398938739" MODIFIED="1651398938739"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1757669560" CREATED="1651398941662" MODIFIED="1651398941662"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_unique_id
  </body>
</html>
</richcontent>
</node>
<node TEXT="width" ID="ID_1718742769" CREATED="1651399093984" MODIFIED="1651399097850"/>
<node TEXT="height" ID="ID_1353969669" CREATED="1651399098568" MODIFIED="1651399099050"/>
<node ID="ID_1570646363" CREATED="1651399062995" MODIFIED="1651399062995"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    duration
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1943599936" CREATED="1649149351533" MODIFIED="1649149353856">
<node FOLDED="true" ID="ID_1003572164" CREATED="1649150037873" MODIFIED="1649150037873"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_253348583" CREATED="1651414480976" MODIFIED="1651414485150">
<icon BUILTIN="bookmark"/>
<node TEXT="Identifier for this file, which can be used to download or reuse the file" ID="ID_1478032010" CREATED="1651414478648" MODIFIED="1651414480392"/>
</node>
</node>
<node FOLDED="true" ID="ID_887079524" CREATED="1649150041933" MODIFIED="1649150041933"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_unique_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_740918253" CREATED="1651414480976" MODIFIED="1651414485150">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier for this file, which is supposed to be the same over time and for different bots. Can&apos;t be used to download or reuse the file." ID="ID_1724876584" CREATED="1651414518335" MODIFIED="1651414519892"/>
</node>
</node>
<node FOLDED="true" ID="ID_1343473284" CREATED="1649150046119" MODIFIED="1649150080044">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    width
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1194401244" CREATED="1651414480976" MODIFIED="1651414485150">
<icon BUILTIN="bookmark"/>
<node TEXT="Video width as defined by sender" ID="ID_1528080715" CREATED="1651414524027" MODIFIED="1651414527907"/>
</node>
</node>
<node FOLDED="true" ID="ID_1814500380" CREATED="1649150048762" MODIFIED="1649150080044">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    height
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_461773573" CREATED="1651414480976" MODIFIED="1651414485150">
<icon BUILTIN="bookmark"/>
<node TEXT="Video height as defined by sender" ID="ID_903798173" CREATED="1651414528792" MODIFIED="1651414530472"/>
</node>
</node>
<node FOLDED="true" ID="ID_623975622" CREATED="1649150051842" MODIFIED="1649150080044">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    duration
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1918275545" CREATED="1651414480976" MODIFIED="1651414485150">
<icon BUILTIN="bookmark"/>
<node TEXT="Duration of the video in seconds as defined by sender" ID="ID_1545485003" CREATED="1651414533697" MODIFIED="1651414535161"/>
</node>
</node>
<node FOLDED="true" ID="ID_1773049660" CREATED="1649150054474" MODIFIED="1649150054474"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    thumb
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1198383661" CREATED="1651414480976" MODIFIED="1651414485150">
<icon BUILTIN="bookmark"/>
<node TEXT="Animation thumbnail as defined by sender" ID="ID_1181364172" CREATED="1651414540807" MODIFIED="1651414546569"/>
</node>
<node TEXT="PhotoSize" ID="ID_425383795" CREATED="1649150132216" MODIFIED="1649150137044"/>
</node>
<node FOLDED="true" ID="ID_955344904" CREATED="1649150056922" MODIFIED="1649150056922"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_name
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1465720840" CREATED="1651414480976" MODIFIED="1651414485150">
<icon BUILTIN="bookmark"/>
<node TEXT="Original animation filename as defined by sender" ID="ID_814468294" CREATED="1651414546823" MODIFIED="1651414554964"/>
</node>
</node>
<node FOLDED="true" ID="ID_1760473117" CREATED="1649150060362" MODIFIED="1649150060362"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    mime_type
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1271338141" CREATED="1651414480976" MODIFIED="1651414485150">
<icon BUILTIN="bookmark"/>
<node TEXT="MIME type of the file as defined by sender" ID="ID_883620567" CREATED="1651414555306" MODIFIED="1651414560472"/>
</node>
</node>
<node FOLDED="true" ID="ID_1344296056" CREATED="1649150064613" MODIFIED="1649150070681">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_size
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1955387261" CREATED="1651414480976" MODIFIED="1651414485150">
<icon BUILTIN="bookmark"/>
<node TEXT="File size in bytes" ID="ID_360091483" CREATED="1651414560914" MODIFIED="1651414562485"/>
</node>
</node>
</node>
</node>
<node TEXT="Audio" ID="ID_1428393661" CREATED="1649149347545" MODIFIED="1649150092927">
<node TEXT="description" FOLDED="true" ID="ID_1723210360" CREATED="1651397063678" MODIFIED="1651397073855">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents an audio file to be treated as music by the Telegram clients." ID="ID_687229944" CREATED="1651397069018" MODIFIED="1651397070257"/>
</node>
<node TEXT="required" FOLDED="true" ID="ID_20282770" CREATED="1651398966155" MODIFIED="1651398970793">
<node ID="ID_104017130" CREATED="1651398938739" MODIFIED="1651398938739"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1430277208" CREATED="1651398941662" MODIFIED="1651398941662"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_unique_id
  </body>
</html>
</richcontent>
</node>
<node ID="ID_606411327" CREATED="1651399062995" MODIFIED="1651399062995"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    duration
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="properties" ID="ID_1083122125" CREATED="1649149351533" MODIFIED="1649149353856">
<node FOLDED="true" ID="ID_1598665327" CREATED="1649150105070" MODIFIED="1649150105070"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1170811592" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Identifier for this file, which can be used to download or reuse the file" ID="ID_401847307" CREATED="1651397010392" MODIFIED="1651397131051"/>
</node>
</node>
<node FOLDED="true" ID="ID_681225630" CREATED="1649150108166" MODIFIED="1649150108166"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_unique_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1610411105" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier for this file, which is supposed to be the same over time and for different bots. Can&apos;t be used to download or reuse the file." ID="ID_1834143366" CREATED="1651397010392" MODIFIED="1651397137524"/>
</node>
</node>
<node FOLDED="true" ID="ID_1717530096" CREATED="1649150110880" MODIFIED="1649150148855">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    duration
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1284143629" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Duration of the audio in seconds as defined by sender" ID="ID_576872538" CREATED="1651397010392" MODIFIED="1651397143804"/>
</node>
</node>
<node FOLDED="true" ID="ID_1632254105" CREATED="1649150113153" MODIFIED="1649150113153"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    performer
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1021710137" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Performer of the audio as defined by sender or by audio tags" ID="ID_583859212" CREATED="1651397010392" MODIFIED="1651397147324"/>
</node>
</node>
<node FOLDED="true" ID="ID_1022313155" CREATED="1649150115972" MODIFIED="1649150115972"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    title
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_570949309" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Title of the audio as defined by sender or by audio tags" ID="ID_295906859" CREATED="1651397010392" MODIFIED="1651397160670"/>
</node>
</node>
<node FOLDED="true" ID="ID_1547587824" CREATED="1649150118496" MODIFIED="1649150118496"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_name
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_556954943" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Original filename as defined by sender" ID="ID_938260495" CREATED="1651397010392" MODIFIED="1651397172550"/>
</node>
</node>
<node FOLDED="true" ID="ID_1277427238" CREATED="1649150121188" MODIFIED="1649150121188"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    mime_type
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_746376699" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="MIME type of the file as defined by sender" ID="ID_1352788945" CREATED="1651397010392" MODIFIED="1651397179598"/>
</node>
</node>
<node FOLDED="true" ID="ID_606229396" CREATED="1649150125212" MODIFIED="1649150148854">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_size
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_103766096" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="File size in bytes" ID="ID_1341858578" CREATED="1651397010392" MODIFIED="1651397185471"/>
</node>
</node>
<node FOLDED="true" ID="ID_262666580" CREATED="1649150128105" MODIFIED="1649150128105"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    thumb
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1265701045" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Thumbnail of the album cover to which the music file belongs" ID="ID_994630257" CREATED="1651397010392" MODIFIED="1651397187302"/>
</node>
<node TEXT="PhotoSize" ID="ID_1833573982" CREATED="1649150132216" MODIFIED="1649150137044"/>
</node>
</node>
</node>
<node TEXT="Document" FOLDED="true" ID="ID_1715901188" CREATED="1649149347545" MODIFIED="1649150099208">
<node TEXT="description" FOLDED="true" ID="ID_1088838224" CREATED="1651397063678" MODIFIED="1651397073855">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a general file (as opposed to photos, voice messages and audio files)." ID="ID_1158915314" CREATED="1651397069018" MODIFIED="1651397092020"/>
</node>
<node TEXT="required" FOLDED="true" ID="ID_1371901038" CREATED="1651398966155" MODIFIED="1651398970793">
<node ID="ID_1024025662" CREATED="1651398938739" MODIFIED="1651398938739"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1900113425" CREATED="1651398941662" MODIFIED="1651398941662"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_unique_id
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1918469641" CREATED="1649149351533" MODIFIED="1649149353856">
<node FOLDED="true" ID="ID_1405129864" CREATED="1649150163590" MODIFIED="1649150163590"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1331046304" CREATED="1651397007473" MODIFIED="1651397204237">
<icon BUILTIN="bookmark"/>
<node TEXT="Identifier for this file, which can be used to download or reuse the file" ID="ID_1203285722" CREATED="1651397010392" MODIFIED="1651397208265"/>
</node>
</node>
<node FOLDED="true" ID="ID_795558892" CREATED="1649150166160" MODIFIED="1649150166160"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_unique_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1674511470" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier for this file, which is supposed to be the same over time and for different bots. Can&apos;t be used to download or reuse the file." ID="ID_1486100604" CREATED="1651397010392" MODIFIED="1651397219701"/>
</node>
</node>
<node FOLDED="true" ID="ID_41927180" CREATED="1649150168526" MODIFIED="1649150168526"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    thumb
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_323172632" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Document thumbnail as defined by sender" ID="ID_1971782100" CREATED="1651397010392" MODIFIED="1651397230224"/>
</node>
<node TEXT="PhotoSize" ID="ID_1481920818" CREATED="1649150132216" MODIFIED="1649150137044"/>
</node>
<node FOLDED="true" ID="ID_476047747" CREATED="1649150171333" MODIFIED="1649150171333"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_name
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1007339667" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Original filename as defined by sender" ID="ID_1206383408" CREATED="1651397010392" MODIFIED="1651397238534"/>
</node>
</node>
<node FOLDED="true" ID="ID_500354326" CREATED="1649150173628" MODIFIED="1649150173628"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    mime_type
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1824620838" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="MIME type of the file as defined by sender" ID="ID_1076036155" CREATED="1651397010392" MODIFIED="1651397253257"/>
</node>
</node>
<node FOLDED="true" ID="ID_1962189468" CREATED="1649150176425" MODIFIED="1649150245354">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_size
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1485230932" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="File size in bytes." ID="ID_1137619875" CREATED="1651397010392" MODIFIED="1651397040924"/>
</node>
</node>
</node>
</node>
<node TEXT="Video" FOLDED="true" ID="ID_176752208" CREATED="1649149347545" MODIFIED="1649150193100">
<node TEXT="description" FOLDED="true" ID="ID_944081974" CREATED="1651397063678" MODIFIED="1651397073855">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a video file." ID="ID_1354876996" CREATED="1651397069018" MODIFIED="1651397272965"/>
</node>
<node TEXT="required" FOLDED="true" ID="ID_601095087" CREATED="1651398966155" MODIFIED="1651398970793">
<node ID="ID_1199591192" CREATED="1651398938739" MODIFIED="1651398938739"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1442670628" CREATED="1651398941662" MODIFIED="1651398941662"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_unique_id
  </body>
</html>
</richcontent>
</node>
<node TEXT="width" ID="ID_1465603905" CREATED="1651398945549" MODIFIED="1651398992937"/>
<node TEXT="height" ID="ID_483229902" CREATED="1651398955150" MODIFIED="1651398999631"/>
<node TEXT="duration" ID="ID_251975025" CREATED="1651399000278" MODIFIED="1651399001283"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1789852552" CREATED="1649149351533" MODIFIED="1649149353856">
<node FOLDED="true" ID="ID_1546500121" CREATED="1649150194627" MODIFIED="1649150194627"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1181359027" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Identifier for this file, which can be used to download or reuse the file" ID="ID_1957193992" CREATED="1651397010392" MODIFIED="1651397296683"/>
</node>
</node>
<node FOLDED="true" ID="ID_1078290216" CREATED="1649150197379" MODIFIED="1649150197379"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_unique_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_547576986" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier for this file, which is supposed to be the same over time and for different bots. Can&apos;t be used to download or reuse the file." ID="ID_514943696" CREATED="1651397010392" MODIFIED="1651397302024"/>
</node>
</node>
<node FOLDED="true" ID="ID_1445502191" CREATED="1649150200069" MODIFIED="1649150245355">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    width
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_915439600" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Video width as defined by sender" ID="ID_477109026" CREATED="1651397010392" MODIFIED="1651397307185"/>
</node>
</node>
<node FOLDED="true" ID="ID_476481664" CREATED="1649150202344" MODIFIED="1649150245355">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    height
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1330778541" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Video height as defined by sender" ID="ID_1777815282" CREATED="1651397010392" MODIFIED="1651397311386"/>
</node>
</node>
<node FOLDED="true" ID="ID_48648952" CREATED="1649150205155" MODIFIED="1649150245355">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    duration
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_882011828" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Duration of the video in seconds as defined by sender" ID="ID_1461629703" CREATED="1651397010392" MODIFIED="1651397320663"/>
</node>
</node>
<node FOLDED="true" ID="ID_1598231873" CREATED="1649150207878" MODIFIED="1649150207878"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    thumb
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1226475678" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Video thumbnail" ID="ID_730895217" CREATED="1651397010392" MODIFIED="1651397327634"/>
</node>
<node TEXT="PhotoSize" ID="ID_1871396599" CREATED="1649150132216" MODIFIED="1649150137044"/>
</node>
<node FOLDED="true" ID="ID_1611726945" CREATED="1649150210332" MODIFIED="1649150210332"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_name
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1138824069" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Original filename as defined by sender" ID="ID_372445644" CREATED="1651397010392" MODIFIED="1651397335333"/>
</node>
</node>
<node FOLDED="true" ID="ID_1677641384" CREATED="1649150213389" MODIFIED="1649150213389"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    mime_type
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_425337171" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Mime type of a file as defined by sender" ID="ID_1884226785" CREATED="1651397010392" MODIFIED="1651397339694"/>
</node>
</node>
<node FOLDED="true" ID="ID_757890152" CREATED="1649150217079" MODIFIED="1649150245355">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_size
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1781187591" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="File size in bytes." ID="ID_1413132881" CREATED="1651397010392" MODIFIED="1651397040924"/>
</node>
</node>
</node>
</node>
<node TEXT="VideoNote" ID="ID_552789100" CREATED="1649149347545" MODIFIED="1649150263621">
<node TEXT="description" FOLDED="true" ID="ID_1629874527" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a video message (available in Telegram apps as of v.4.0)." ID="ID_298868087" CREATED="1651398662276" MODIFIED="1651398664267"/>
</node>
<node TEXT="required" FOLDED="true" ID="ID_1348269542" CREATED="1651398929932" MODIFIED="1651398933051">
<node ID="ID_786922516" CREATED="1651398938739" MODIFIED="1651398938739"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1759415595" CREATED="1651398941662" MODIFIED="1651398941662"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_unique_id
  </body>
</html>
</richcontent>
</node>
<node ID="ID_386431832" CREATED="1651398945549" MODIFIED="1651398945549"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    length
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1350883191" CREATED="1651398955150" MODIFIED="1651398955150"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    duration
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_317973532" CREATED="1649149351533" MODIFIED="1649149353856">
<node FOLDED="true" ID="ID_1990885850" CREATED="1649150277645" MODIFIED="1649150277645"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1259061158" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Identifier for this file, which can be used to download or reuse the file" ID="ID_830138765" CREATED="1651397010392" MODIFIED="1651398688456"/>
</node>
</node>
<node TEXT="file_unique_id" FOLDED="true" ID="ID_301700944" CREATED="1649150280814" MODIFIED="1651398941146">
<node TEXT="description" FOLDED="true" ID="ID_324489810" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier for this file, which is supposed to be the same over time and for different bots. Can&apos;t be used to download or reuse the file." ID="ID_1768659918" CREATED="1651397010392" MODIFIED="1651398695136"/>
</node>
</node>
<node TEXT="length" FOLDED="true" ID="ID_1166803354" CREATED="1649150284560" MODIFIED="1651398945139">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_72438626" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Video width and height (diameter of the video message) as defined by sender" ID="ID_20928440" CREATED="1651397010392" MODIFIED="1651398701317"/>
</node>
</node>
<node TEXT="duration" FOLDED="true" ID="ID_1447866533" CREATED="1649150287777" MODIFIED="1651398953313">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_345076159" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Duration of the video in seconds as defined by sender" ID="ID_1597685305" CREATED="1651397010392" MODIFIED="1651398714208"/>
</node>
</node>
<node FOLDED="true" ID="ID_128827052" CREATED="1649150290721" MODIFIED="1649150290721"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    thumb
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1707145503" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Video thumbnail" ID="ID_1353261503" CREATED="1651397010392" MODIFIED="1651398723241"/>
</node>
<node TEXT="PhotoSize" ID="ID_111102975" CREATED="1649150132216" MODIFIED="1649150137044"/>
</node>
<node FOLDED="true" ID="ID_1413329634" CREATED="1649150294234" MODIFIED="1649151405480">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_size
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1519079885" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="File size in bytes." ID="ID_1196300413" CREATED="1651397010392" MODIFIED="1651397040924"/>
</node>
</node>
</node>
</node>
<node TEXT="Voice" FOLDED="true" ID="ID_50364017" CREATED="1649149347545" MODIFIED="1649150267249">
<node TEXT="description" FOLDED="true" ID="ID_1179625196" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a voice note." ID="ID_150954900" CREATED="1651398662276" MODIFIED="1651398755387"/>
</node>
<node TEXT="required" FOLDED="true" ID="ID_1823907338" CREATED="1651398902214" MODIFIED="1651398903959">
<node ID="ID_252000470" CREATED="1651398911226" MODIFIED="1651398911226"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
</node>
<node ID="ID_568997528" CREATED="1651398915954" MODIFIED="1651398915954"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_unique_id
  </body>
</html>
</richcontent>
</node>
<node ID="ID_697245778" CREATED="1651398921320" MODIFIED="1651398921320"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    duration
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_541206732" CREATED="1649149351533" MODIFIED="1649149353856">
<node FOLDED="true" ID="ID_1303344504" CREATED="1649150298875" MODIFIED="1649150298875"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_99390328" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Identifier for this file, which can be used to download or reuse the file" ID="ID_658685248" CREATED="1651397010392" MODIFIED="1651398769222"/>
</node>
</node>
<node TEXT="file_unique_id" FOLDED="true" ID="ID_1973021760" CREATED="1649150301510" MODIFIED="1651398915506">
<node TEXT="description" FOLDED="true" ID="ID_906881922" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier for this file, which is supposed to be the same over time and for different bots. Can&apos;t be used to download or reuse the file." ID="ID_1013377293" CREATED="1651397010392" MODIFIED="1651398774688"/>
</node>
</node>
<node TEXT="duration" FOLDED="true" ID="ID_1033448429" CREATED="1649150304205" MODIFIED="1651398920750">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1343040243" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="Duration of the audio in seconds as defined by sender" ID="ID_100761493" CREATED="1651397010392" MODIFIED="1651398782444"/>
</node>
</node>
<node FOLDED="true" ID="ID_267177128" CREATED="1649150306768" MODIFIED="1649150306768"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    mime_type
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1108723933" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="MIME type of the file as defined by sender" ID="ID_1079299114" CREATED="1651397010392" MODIFIED="1651398786036"/>
</node>
</node>
<node FOLDED="true" ID="ID_1928997613" CREATED="1649150309397" MODIFIED="1649151376063">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_size
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1198569096" CREATED="1651397007473" MODIFIED="1651397019088">
<icon BUILTIN="bookmark"/>
<node TEXT="File size in bytes." ID="ID_208563826" CREATED="1651397010392" MODIFIED="1651397040924"/>
</node>
</node>
</node>
</node>
<node TEXT="Contact" ID="ID_303358164" CREATED="1649149347545" MODIFIED="1649150276934">
<node TEXT="description" FOLDED="true" ID="ID_109561127" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a voice note." ID="ID_912626943" CREATED="1651398662276" MODIFIED="1651398755387"/>
</node>
<node TEXT="required" ID="ID_1122145570" CREATED="1651398872441" MODIFIED="1651398876929">
<node TEXT="phone_number" ID="ID_117053765" CREATED="1651398884570" MODIFIED="1651398889476"/>
<node TEXT="first_name" ID="ID_1824942729" CREATED="1651398889957" MODIFIED="1651398890453"/>
</node>
<node TEXT="properties" ID="ID_970202461" CREATED="1649149351533" MODIFIED="1649149353856">
<node FOLDED="true" ID="ID_1062837559" CREATED="1649150315970" MODIFIED="1649150315970"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    phone_number
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_949998761" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Contact&apos;s phone number" ID="ID_317899868" CREATED="1651398662276" MODIFIED="1651398832119"/>
</node>
</node>
<node FOLDED="true" ID="ID_207380902" CREATED="1649150319021" MODIFIED="1649150319021"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    first_name
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_812844529" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Contact&apos;s first name" ID="ID_138271367" CREATED="1651398662276" MODIFIED="1651398842358"/>
</node>
</node>
<node FOLDED="true" ID="ID_1584330040" CREATED="1649150321414" MODIFIED="1649150321414"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    last_name
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_82386034" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Contact&apos;s last name" ID="ID_1779683319" CREATED="1651398662276" MODIFIED="1651398846779"/>
</node>
</node>
<node FOLDED="true" ID="ID_15685226" CREATED="1649150323855" MODIFIED="1649151357530">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    user_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_757514036" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Contact&apos;s user identifier in Telegram. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier." ID="ID_1435755579" CREATED="1651398662276" MODIFIED="1651398859612"/>
</node>
</node>
<node ID="ID_144709656" CREATED="1649150326568" MODIFIED="1649150326568"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    vcard
  </body>
</html>
</richcontent>
<node TEXT="description" ID="ID_697725458" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Additional data about the contact in the form of a vCard" ID="ID_1797793249" CREATED="1651398662276" MODIFIED="1651398864516"/>
</node>
</node>
</node>
</node>
<node TEXT="Dice" FOLDED="true" ID="ID_1252177579" CREATED="1649150329823" MODIFIED="1649150333603">
<node TEXT="description" FOLDED="true" ID="ID_1589181979" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a voice note." ID="ID_1636723892" CREATED="1651398662276" MODIFIED="1651398755387"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_75088500" CREATED="1649150336028" MODIFIED="1649150338042">
<node TEXT="emoji" FOLDED="true" ID="ID_412862220" CREATED="1649150370818" MODIFIED="1649150374858">
<node TEXT="description" FOLDED="true" ID="ID_365748658" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Emoji on which the dice throw animation is based" ID="ID_467612835" CREATED="1651398662276" MODIFIED="1651399212709"/>
</node>
</node>
<node TEXT="value" FOLDED="true" ID="ID_52954271" CREATED="1649150376455" MODIFIED="1649151354061">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_227519685" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Value of the dice, 1-6 for some base emoji, 1-5 for some other base emoji, 1-64 for jackpot base emoji" ID="ID_782300046" CREATED="1651398662276" MODIFIED="1651399329990"/>
</node>
</node>
</node>
</node>
<node TEXT="PollOption" FOLDED="true" ID="ID_1396709045" CREATED="1649150329823" MODIFIED="1649150357564">
<node TEXT="description" FOLDED="true" ID="ID_1193496861" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object contains information about one answer option in a poll." ID="ID_155223978" CREATED="1651398662276" MODIFIED="1651399345947"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1361071489" CREATED="1649150336028" MODIFIED="1649150338042">
<node FOLDED="true" ID="ID_749837536" CREATED="1649150379019" MODIFIED="1649150379019"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    text
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1009003708" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Option text, 1-100 characters" ID="ID_1916830598" CREATED="1651398662276" MODIFIED="1651399418470"/>
</node>
</node>
<node TEXT="voter_count" FOLDED="true" ID="ID_1204162299" CREATED="1649150380768" MODIFIED="1649151346085">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1722222771" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Number of users that voted for this option" ID="ID_646720275" CREATED="1651398662276" MODIFIED="1651399424031"/>
</node>
</node>
</node>
</node>
<node TEXT="PollAnswer" FOLDED="true" ID="ID_567914441" CREATED="1649150329823" MODIFIED="1649150361948">
<node TEXT="description" FOLDED="true" ID="ID_349153019" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents an answer of a user in a non-anonymous poll." ID="ID_1410817536" CREATED="1651398662276" MODIFIED="1651399356567"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_412453793" CREATED="1649150336028" MODIFIED="1649150338042">
<node FOLDED="true" ID="ID_701036647" CREATED="1649150387558" MODIFIED="1649150387558"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    poll_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_863990909" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique poll identifier" ID="ID_417586607" CREATED="1651398662276" MODIFIED="1651399436861"/>
</node>
</node>
<node FOLDED="true" ID="ID_630521744" CREATED="1649150390947" MODIFIED="1649150390947"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    user
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_920366159" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="The user, who changed the answer to the poll" ID="ID_1748041147" CREATED="1651398662276" MODIFIED="1651399444196"/>
</node>
<node TEXT="User" ID="ID_1712655824" CREATED="1649151311860" MODIFIED="1649151313242"/>
</node>
<node FOLDED="true" ID="ID_1945222815" CREATED="1649150393788" MODIFIED="1649151316397">
<icon BUILTIN="very_positive"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    option_ids
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_117844557" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="0-based identifiers of answer options, chosen by the user. May be empty if the user retracted their vote." ID="ID_439668988" CREATED="1651398662276" MODIFIED="1651399446146"/>
</node>
<node TEXT="items" ID="ID_1627462057" CREATED="1649151321401" MODIFIED="1649151326789">
<icon BUILTIN="neutral"/>
</node>
</node>
</node>
</node>
<node TEXT="Poll" FOLDED="true" ID="ID_576340134" CREATED="1649150329823" MODIFIED="1649150368299">
<node TEXT="description" FOLDED="true" ID="ID_1744944357" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object contains information about a poll." ID="ID_1986113347" CREATED="1651398662276" MODIFIED="1651399365118"/>
</node>
<node TEXT="required" FOLDED="true" ID="ID_57644233" CREATED="1651399648126" MODIFIED="1651399649917">
<node TEXT="id" ID="ID_1618305263" CREATED="1651399657257" MODIFIED="1651399659197"/>
<node TEXT="question" ID="ID_95976539" CREATED="1651399659355" MODIFIED="1651399660726"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_90437980" CREATED="1649150336028" MODIFIED="1649150338042">
<node TEXT="id" FOLDED="true" ID="ID_1501884413" CREATED="1649150426512" MODIFIED="1649150427966">
<node TEXT="description" FOLDED="true" ID="ID_638056683" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique poll identifier" ID="ID_1845940986" CREATED="1651398662276" MODIFIED="1651399489880"/>
</node>
</node>
<node FOLDED="true" ID="ID_1266651972" CREATED="1649150431649" MODIFIED="1649150431649"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    question
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1218629319" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Poll question, 1-300 characters" ID="ID_384353049" CREATED="1651398662276" MODIFIED="1651399494346"/>
</node>
</node>
<node FOLDED="true" ID="ID_1141331343" CREATED="1649150435055" MODIFIED="1649151305186">
<icon BUILTIN="very_positive"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    options
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_46934888" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="List of poll options" ID="ID_1142243344" CREATED="1651398662276" MODIFIED="1651399499574"/>
</node>
<node TEXT="PollOption" ID="ID_1369925790" CREATED="1649151297998" MODIFIED="1649151301637"/>
</node>
<node FOLDED="true" ID="ID_39736616" CREATED="1649150437543" MODIFIED="1649151288406">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    total_voter_count
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1033273465" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Total number of users that voted in the poll" ID="ID_1681361640" CREATED="1651398662276" MODIFIED="1651399503884"/>
</node>
</node>
<node FOLDED="true" ID="ID_1046873801" CREATED="1649150440571" MODIFIED="1649151284806">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    is_closed
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1614328399" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the poll is closed" ID="ID_1199134939" CREATED="1651398662276" MODIFIED="1651399507719"/>
</node>
</node>
<node FOLDED="true" ID="ID_777207759" CREATED="1649150443182" MODIFIED="1649151284805">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    is_anonymous
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_420287984" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the poll is anonymous" ID="ID_474921747" CREATED="1651398662276" MODIFIED="1651399515168"/>
</node>
</node>
<node TEXT="_type" FOLDED="true" ID="ID_581554650" CREATED="1649150445819" MODIFIED="1649173584360">
<node TEXT="description" FOLDED="true" ID="ID_1869207801" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Poll type, currently can be “regular” or “quiz”" ID="ID_1304664794" CREATED="1651398662276" MODIFIED="1651399522220"/>
</node>
</node>
<node FOLDED="true" ID="ID_1236484404" CREATED="1649150448797" MODIFIED="1649151279054">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    allows_multiple_answers
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_733524079" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the poll allows multiple answers" ID="ID_871070954" CREATED="1651398662276" MODIFIED="1651399530057"/>
</node>
</node>
<node FOLDED="true" ID="ID_446120280" CREATED="1649150451038" MODIFIED="1649151274200">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    correct_option_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1085775126" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="0-based identifier of the correct answer option. Available only for polls in the quiz mode, which are closed, or was sent (not forwarded) by the bot or to the private chat with the bot." ID="ID_584572862" CREATED="1651398662276" MODIFIED="1651399537438"/>
</node>
</node>
<node FOLDED="true" ID="ID_1413838184" CREATED="1649150453996" MODIFIED="1649150453996"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    explanation
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1062923928" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Text that is shown when a user chooses an incorrect answer or taps on the lamp icon in a quiz-style poll, 0-200 characters" ID="ID_1476517575" CREATED="1651398662276" MODIFIED="1651399549359"/>
</node>
</node>
<node FOLDED="true" ID="ID_327577382" CREATED="1649150456134" MODIFIED="1649151269362">
<icon BUILTIN="very_positive"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    explanation_entities
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_850795106" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Special entities like usernames, URLs, bot commands, etc. that appear in the explanation" ID="ID_1214011301" CREATED="1651398662276" MODIFIED="1651399557644"/>
</node>
<node TEXT="MessageEntity" ID="ID_1350237895" CREATED="1649151259379" MODIFIED="1649151264191"/>
</node>
<node FOLDED="true" ID="ID_1042283729" CREATED="1649150458831" MODIFIED="1649151245714">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    open_period
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1340497844" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Amount of time in seconds the poll will be active after creation" ID="ID_1120364179" CREATED="1651398662276" MODIFIED="1651399566609"/>
</node>
</node>
<node FOLDED="true" ID="ID_787161346" CREATED="1649150461816" MODIFIED="1649151245714">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    close_date
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1932441607" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Point in time (Unix timestamp) when the poll will be automatically closed" ID="ID_428389472" CREATED="1651398662276" MODIFIED="1651399573220"/>
</node>
</node>
</node>
</node>
<node TEXT="Location" ID="ID_1854836003" CREATED="1649150329823" MODIFIED="1649150469970">
<node TEXT="description" ID="ID_1567891762" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a point on the map." ID="ID_783362206" CREATED="1651398662276" MODIFIED="1651399742081">
<icon BUILTIN="stop-sign"/>
</node>
</node>
<node TEXT="properties" ID="ID_1158494077" CREATED="1649150336028" MODIFIED="1649150338042">
<node FOLDED="true" ID="ID_1840901011" CREATED="1649150474466" MODIFIED="1649151230564">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    longitude
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1780288097" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Longitude as defined by sender" ID="ID_687378831" CREATED="1651398662276" MODIFIED="1651399604749"/>
</node>
</node>
<node TEXT="latitude" FOLDED="true" ID="ID_568805665" CREATED="1649150475947" MODIFIED="1649151230565">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_487815152" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Latitude as defined by sender" ID="ID_816984915" CREATED="1651398662276" MODIFIED="1651399609526"/>
</node>
</node>
<node TEXT="horizontal_accuracy" FOLDED="true" ID="ID_1782747316" CREATED="1649150481895" MODIFIED="1649151230565">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1907675448" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="The radius of uncertainty for the location, measured in meters; 0-1500" ID="ID_1262761348" CREATED="1651398662276" MODIFIED="1651399617474"/>
</node>
</node>
<node FOLDED="true" ID="ID_391455873" CREATED="1649150488953" MODIFIED="1649151230565">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    live_period
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1585686031" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Time relative to the message sending date, during which the location can be updated; in seconds. For active live locations only." ID="ID_93421038" CREATED="1651398662276" MODIFIED="1651399625793"/>
</node>
</node>
<node FOLDED="true" ID="ID_215890412" CREATED="1649150498578" MODIFIED="1649151230565">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    heading
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1641444263" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="The direction in which user is moving, in degrees; 1-360. For active live locations only." ID="ID_733137132" CREATED="1651398662276" MODIFIED="1651399638234"/>
</node>
</node>
<node FOLDED="true" ID="ID_1202751022" CREATED="1649150512626" MODIFIED="1649151230565">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    proximity_alert_radius
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_194017059" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Maximum distance for proximity alerts about approaching another chat member, in meters. For sent live locations only." ID="ID_700630575" CREATED="1651398662276" MODIFIED="1651399641224"/>
</node>
</node>
</node>
</node>
<node TEXT="Venue" FOLDED="true" ID="ID_1879847068" CREATED="1649150329823" MODIFIED="1649150520322">
<node TEXT="description" FOLDED="true" ID="ID_1311908168" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a venue." ID="ID_631560216" CREATED="1651398662276" MODIFIED="1651399726792"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_192552913" CREATED="1649150336028" MODIFIED="1649150338042">
<node FOLDED="true" ID="ID_1873791348" CREATED="1649150524050" MODIFIED="1649150524050"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    location
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1297767512" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Venue location. Can&apos;t be a live location" ID="ID_944573162" CREATED="1651398662276" MODIFIED="1651399782521"/>
</node>
<node TEXT="Location" ID="ID_1960442840" CREATED="1649151213847" MODIFIED="1649151217234"/>
</node>
<node FOLDED="true" ID="ID_999861454" CREATED="1649150527383" MODIFIED="1649150527383"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    title
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1298985466" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Name of the venue" ID="ID_1397581142" CREATED="1651398662276" MODIFIED="1651399786338"/>
</node>
</node>
<node FOLDED="true" ID="ID_740953034" CREATED="1649150530521" MODIFIED="1649150530521"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    address
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_273452462" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Address of the venue" ID="ID_1458979877" CREATED="1651398662276" MODIFIED="1651399791997"/>
</node>
</node>
<node FOLDED="true" ID="ID_1928067357" CREATED="1649150533093" MODIFIED="1649150533093"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    foursquare_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_692278784" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Foursquare identifier of the venue" ID="ID_1102456015" CREATED="1651398662276" MODIFIED="1651399797275"/>
</node>
</node>
<node FOLDED="true" ID="ID_943518073" CREATED="1649150535417" MODIFIED="1649150535417"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    foursquare_type
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_776618544" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Foursquare type of the venue. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)" ID="ID_37007777" CREATED="1651398662276" MODIFIED="1651399803220"/>
</node>
</node>
<node FOLDED="true" ID="ID_653155510" CREATED="1649150538139" MODIFIED="1649150538139"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    google_place_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1772162322" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Google Places identifier of the venue" ID="ID_392209194" CREATED="1651398662276" MODIFIED="1651399811247"/>
</node>
</node>
<node FOLDED="true" ID="ID_1625218560" CREATED="1649150541430" MODIFIED="1649150541430"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    google_place_type
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_630253498" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Google Places type of the venue. (See supported types.)" ID="ID_1758817541" CREATED="1651398662276" MODIFIED="1651399813554"/>
</node>
</node>
</node>
</node>
<node TEXT="WebAppData" ID="ID_1194842405" CREATED="1651399941390" MODIFIED="1654326850546">
<node TEXT="description" FOLDED="true" ID="ID_1018322470" CREATED="1651399946798" MODIFIED="1654326850545">
<icon BUILTIN="bookmark"/>
<node TEXT="Contains data sent from a Web App to the bot." ID="ID_1912216319" CREATED="1651399962199" MODIFIED="1651399966452"/>
</node>
<node TEXT="properties" ID="ID_1399682892" CREATED="1651399950374" MODIFIED="1651399952262">
<node TEXT="data" FOLDED="true" ID="ID_1681634601" CREATED="1651399952507" MODIFIED="1651399954329">
<node TEXT="description" FOLDED="true" ID="ID_657441806" CREATED="1651399967752" MODIFIED="1651399987217">
<icon BUILTIN="bookmark"/>
<node ID="ID_564857235" CREATED="1651399972382" MODIFIED="1651399972382"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The data. Be aware that a bad client can send arbitrary data in this field.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="button_text" FOLDED="true" ID="ID_1422081580" CREATED="1651399954557" MODIFIED="1651399957124">
<node TEXT="description" FOLDED="true" ID="ID_899129184" CREATED="1651399976290" MODIFIED="1651399987217">
<icon BUILTIN="bookmark"/>
<node ID="ID_1609173661" CREATED="1651399978962" MODIFIED="1651399978962"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Text of the <em>web_app</em> keyboard button, from which the Web App was opened. Be aware that a bad client can send arbitrary data in this field.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="WebAppInfo" ID="ID_437781067" CREATED="1651399941390" MODIFIED="1651400365917">
<node TEXT="description" ID="ID_387325327" CREATED="1651399946798" MODIFIED="1651399987216">
<icon BUILTIN="bookmark"/>
<node TEXT="Contains information about a Web App." ID="ID_656140440" CREATED="1651399962199" MODIFIED="1651400376196"/>
</node>
<node TEXT="properties" ID="ID_965551247" CREATED="1651399950374" MODIFIED="1651399952262">
<node TEXT="url" FOLDED="true" ID="ID_1673115702" CREATED="1651399952507" MODIFIED="1651400382981">
<node TEXT="description" FOLDED="true" ID="ID_1971254654" CREATED="1651399967752" MODIFIED="1651399987217">
<icon BUILTIN="bookmark"/>
<node TEXT="An HTTPS URL of a Web App to be opened with additional data as specified in Initializing Web Apps" ID="ID_301381398" CREATED="1651399972382" MODIFIED="1651400387567"/>
</node>
</node>
</node>
</node>
<node TEXT="ProximityAlertTriggered" FOLDED="true" ID="ID_558634312" CREATED="1649150329823" MODIFIED="1649150547129">
<node TEXT="description" FOLDED="true" ID="ID_900499589" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents the content of a service message, sent whenever a user in the chat triggers a proximity alert set by another user." ID="ID_700978207" CREATED="1651398662276" MODIFIED="1651400010143"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_683720894" CREATED="1649150336028" MODIFIED="1649150338042">
<node FOLDED="true" ID="ID_75653172" CREATED="1649150551089" MODIFIED="1649150551089"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    traveler
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_849696952" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="User that triggered the alert" ID="ID_1691728463" CREATED="1651398662276" MODIFIED="1651400040740"/>
</node>
<node TEXT="User" ID="ID_1418590871" CREATED="1649151149344" MODIFIED="1649151151780"/>
</node>
<node FOLDED="true" ID="ID_1155640573" CREATED="1649150554050" MODIFIED="1649150554050"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    watcher
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1442642962" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="User that set the alert" ID="ID_1082636684" CREATED="1651398662276" MODIFIED="1651400045364"/>
</node>
<node TEXT="User" ID="ID_1547458165" CREATED="1649151149344" MODIFIED="1649151151780"/>
</node>
<node FOLDED="true" ID="ID_307735706" CREATED="1649150556630" MODIFIED="1649151199337">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    distance
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_113733811" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="The distance between the users" ID="ID_1278612497" CREATED="1651398662276" MODIFIED="1651400047283"/>
</node>
</node>
</node>
</node>
<node TEXT="MessageAutoDeleteTimerChanged" FOLDED="true" ID="ID_1498724535" CREATED="1649150329823" MODIFIED="1649150570356">
<node TEXT="description" FOLDED="true" ID="ID_1679440753" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a service message about a change in auto-delete timer settings." ID="ID_1736084038" CREATED="1651398662276" MODIFIED="1651400067857"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1247444139" CREATED="1649150336028" MODIFIED="1649150338042">
<node FOLDED="true" ID="ID_1982105136" CREATED="1649150562089" MODIFIED="1649151189764">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    message_auto_delete_time
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_968199533" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="New auto-delete time for messages in the chat; in seconds" ID="ID_37138407" CREATED="1651398662276" MODIFIED="1651400081879"/>
</node>
</node>
</node>
</node>
<node TEXT="VoiceChatScheduled" FOLDED="true" ID="ID_768829807" CREATED="1649150329823" MODIFIED="1649150574746">
<node TEXT="description" FOLDED="true" ID="ID_387837426" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a service message about a video chat scheduled in the chat." ID="ID_1550834092" CREATED="1651398662276" MODIFIED="1651400102283"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_628020540" CREATED="1649150336028" MODIFIED="1649150338042">
<node FOLDED="true" ID="ID_282219926" CREATED="1649150576032" MODIFIED="1649151180980">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    start_date
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1284798515" CREATED="1651400104674" MODIFIED="1651400109276">
<icon BUILTIN="bookmark"/>
<node TEXT="Point in time (Unix timestamp) when the video chat is supposed to be started by a chat administrator" ID="ID_613233852" CREATED="1651400114761" MODIFIED="1651400117834"/>
</node>
</node>
</node>
</node>
<node TEXT="VoiceChatStarted" FOLDED="true" ID="ID_1197762069" CREATED="1649150329823" MODIFIED="1649150598998">
<node TEXT="description" FOLDED="true" ID="ID_480880306" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a service message about a video chat started in the chat. Currently holds no information." ID="ID_373235866" CREATED="1651398662276" MODIFIED="1651400123815"/>
</node>
<node TEXT="type" FOLDED="true" ID="ID_1467972280" CREATED="1649150336028" MODIFIED="1649184155432">
<node TEXT="object" ID="ID_181177572" CREATED="1649184155678" MODIFIED="1649184157140"/>
</node>
</node>
<node TEXT="VoiceChatEnded" FOLDED="true" ID="ID_1247110227" CREATED="1649150329823" MODIFIED="1649150586486">
<node TEXT="description" FOLDED="true" ID="ID_950850049" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a service message about a video chat ended in the chat." ID="ID_396288636" CREATED="1651398662276" MODIFIED="1651400149349"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1397888190" CREATED="1649150336028" MODIFIED="1649150338042">
<node FOLDED="true" ID="ID_1257811800" CREATED="1649150613649" MODIFIED="1649151168707">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    duration
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1244189717" CREATED="1651400104674" MODIFIED="1651400109276">
<icon BUILTIN="bookmark"/>
<node TEXT="Video chat duration in seconds" ID="ID_621129052" CREATED="1651400114761" MODIFIED="1651400162671"/>
</node>
</node>
</node>
</node>
<node TEXT="VoiceChatParticipantsInvited" FOLDED="true" ID="ID_515844778" CREATED="1649150329823" MODIFIED="1649150639715">
<node TEXT="description" FOLDED="true" ID="ID_1546680150" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a service message about new members invited to a video chat." ID="ID_1963311995" CREATED="1651398662276" MODIFIED="1651400185216"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1304020502" CREATED="1649150336028" MODIFIED="1649150338042">
<node TEXT="users" FOLDED="true" ID="ID_1652488914" CREATED="1649151142737" MODIFIED="1649151155585">
<icon BUILTIN="very_positive"/>
<node TEXT="description" FOLDED="true" ID="ID_613138348" CREATED="1651400104674" MODIFIED="1651400109276">
<icon BUILTIN="bookmark"/>
<node TEXT="New members that were invited to the video chat" ID="ID_326248603" CREATED="1651400114761" MODIFIED="1651400193563"/>
</node>
<node TEXT="User" ID="ID_376792975" CREATED="1649151149344" MODIFIED="1649151151780"/>
</node>
</node>
</node>
<node TEXT="UserProfilePhotos" FOLDED="true" ID="ID_799927063" CREATED="1649150329823" MODIFIED="1649150645987">
<node TEXT="description" FOLDED="true" ID="ID_921553074" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represent a user&apos;s profile pictures." ID="ID_86533006" CREATED="1651398662276" MODIFIED="1651400213910"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1560303059" CREATED="1649150336028" MODIFIED="1649150338042">
<node FOLDED="true" ID="ID_507289620" CREATED="1649151115100" MODIFIED="1649151122349">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    total_count
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_737761884" CREATED="1651400104674" MODIFIED="1651400109276">
<icon BUILTIN="bookmark"/>
<node TEXT="Total number of profile pictures the target user has" ID="ID_1984725227" CREATED="1651400114761" MODIFIED="1651400230696"/>
</node>
</node>
<node FOLDED="true" ID="ID_1025709579" CREATED="1649151117568" MODIFIED="1649151129032">
<icon BUILTIN="very_positive"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    photos
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1164800901" CREATED="1651400104674" MODIFIED="1651400109276">
<icon BUILTIN="bookmark"/>
<node TEXT="Requested profile pictures (in up to 4 sizes each)" ID="ID_1207007944" CREATED="1651400114761" MODIFIED="1651400232988"/>
</node>
<node TEXT="PhotoSize" ID="ID_437343286" CREATED="1649151129351" MODIFIED="1649151136095"/>
</node>
</node>
</node>
<node TEXT="File" ID="ID_466728890" CREATED="1649150329823" MODIFIED="1649150657306">
<node TEXT="description" FOLDED="true" ID="ID_541538563" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a file ready to be downloaded. The file can be downloaded via the link https://api.telegram.org/file/bot&lt;token&gt;/&lt;file_path&gt;. It is guaranteed that the link will be valid for at least 1 hour. When the link expires, a new one can be requested by calling getFile" ID="ID_449506009" CREATED="1651401403121" MODIFIED="1651401404018"/>
</node>
<node TEXT="required" FOLDED="true" ID="ID_183520166" CREATED="1651400307937" MODIFIED="1651400309563">
<node TEXT="file_id" ID="ID_859274989" CREATED="1651400310253" MODIFIED="1651400314422"/>
<node TEXT="file_unique_id" ID="ID_922341324" CREATED="1651400315605" MODIFIED="1651400319385"/>
</node>
<node TEXT="properties" ID="ID_937851559" CREATED="1649150336028" MODIFIED="1649150338042">
<node FOLDED="true" ID="ID_228385567" CREATED="1649151086557" MODIFIED="1649151086557"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1436938636" CREATED="1651400104674" MODIFIED="1651400109276">
<icon BUILTIN="bookmark"/>
<node TEXT="Identifier for this file, which can be used to download or reuse the file" ID="ID_1852995500" CREATED="1651400114761" MODIFIED="1651400287811"/>
</node>
</node>
<node FOLDED="true" ID="ID_106019622" CREATED="1649151089490" MODIFIED="1649151089490"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_unique_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1785772717" CREATED="1651400104674" MODIFIED="1651400109276">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier for this file, which is supposed to be the same over time and for different bots. Can&apos;t be used to download or reuse the file." ID="ID_1814053310" CREATED="1651400114761" MODIFIED="1651400292824"/>
</node>
</node>
<node FOLDED="true" ID="ID_193330258" CREATED="1649151092568" MODIFIED="1649151104248">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_size
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1570012853" CREATED="1651400104674" MODIFIED="1651400109276">
<icon BUILTIN="bookmark"/>
<node TEXT="File size in bytes, if known" ID="ID_188053676" CREATED="1651400114761" MODIFIED="1651400298204"/>
</node>
</node>
<node FOLDED="true" ID="ID_1369276450" CREATED="1649151095962" MODIFIED="1649151095962"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_path
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1411675667" CREATED="1651400104674" MODIFIED="1651400109276">
<icon BUILTIN="bookmark"/>
<node TEXT="File path. Use https://api.telegram.org/file/bot&lt;token&gt;/&lt;file_path&gt; to get the file." ID="ID_1088781627" CREATED="1651400114761" MODIFIED="1651400300281"/>
</node>
</node>
</node>
</node>
<node TEXT="ReplyKeyboardMarkup" ID="ID_1755095965" CREATED="1649150329823" MODIFIED="1649150670029">
<node TEXT="description" FOLDED="true" ID="ID_922836838" CREATED="1651400406614" MODIFIED="1651400412655">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a custom keyboard with reply options (see Introduction to bots for details and examples)." ID="ID_1784417630" CREATED="1651400409492" MODIFIED="1651400410560"/>
</node>
<node TEXT="properties" ID="ID_95078798" CREATED="1649150336028" MODIFIED="1649150338042">
<node FOLDED="true" ID="ID_1006338067" CREATED="1649151032704" MODIFIED="1649151061587">
<icon BUILTIN="very_positive"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    keyboard
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_921106556" CREATED="1651400104674" MODIFIED="1651400109276">
<icon BUILTIN="bookmark"/>
<node TEXT="Array of button rows, each represented by an Array of KeyboardButton objects" ID="ID_1474906482" CREATED="1651400114761" MODIFIED="1651400438337"/>
</node>
<node TEXT="KeyboardButton" ID="ID_492515418" CREATED="1649151070222" MODIFIED="1649151071813"/>
</node>
<node FOLDED="true" ID="ID_1653798849" CREATED="1649151035244" MODIFIED="1649151053098">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    resize_keyboard
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1012352279" CREATED="1651400104674" MODIFIED="1651400109276">
<icon BUILTIN="bookmark"/>
<node TEXT="Requests clients to resize the keyboard vertically for optimal fit (e.g., make the keyboard smaller if there are just two rows of buttons). Defaults to false, in which case the custom keyboard is always of the same height as the app&apos;s standard keyboard." ID="ID_1213374435" CREATED="1651400114761" MODIFIED="1651400446131"/>
</node>
</node>
<node FOLDED="true" ID="ID_786402112" CREATED="1649151037615" MODIFIED="1649151053098">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    one_time_keyboard
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1429113558" CREATED="1651400104674" MODIFIED="1651400109276">
<icon BUILTIN="bookmark"/>
<node TEXT="Requests clients to hide the keyboard as soon as it&apos;s been used. The keyboard will still be available, but clients will automatically display the usual letter-keyboard in the chat – the user can press a special button in the input field to see the custom keyboard again. Defaults to false." ID="ID_94702296" CREATED="1651400114761" MODIFIED="1651400450911"/>
</node>
</node>
<node FOLDED="true" ID="ID_1930656150" CREATED="1649151040210" MODIFIED="1649151040210"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    input_field_placeholder
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1897099378" CREATED="1651400104674" MODIFIED="1651400109276">
<icon BUILTIN="bookmark"/>
<node TEXT="The placeholder to be shown in the input field when the keyboard is active; 1-64 characters" ID="ID_836082860" CREATED="1651400114761" MODIFIED="1651400463829"/>
</node>
</node>
<node FOLDED="true" ID="ID_1413312792" CREATED="1649151043502" MODIFIED="1649151053097">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    selective
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_583604576" CREATED="1651400104674" MODIFIED="1651400109276">
<icon BUILTIN="bookmark"/>
<node TEXT="Use this parameter if you want to show the keyboard to specific users only. Targets: 1) users that are @mentioned in the text of the Message object; 2) if the bot&apos;s message is a reply (has reply_to_message_id), sender of the original message. Example: A user requests to change the bot&apos;s language, bot replies to the request with a keyboard to select the new language. Other users in the group don&apos;t see the keyboard." ID="ID_158473839" CREATED="1651400114761" MODIFIED="1651400531973"/>
</node>
</node>
</node>
</node>
<node TEXT="KeyboardButton" ID="ID_884719083" CREATED="1649150329823" MODIFIED="1649150676101">
<node TEXT="description" FOLDED="true" ID="ID_1977025531" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents one button of the reply keyboard. For simple text buttons String can be used instead of this object to specify text of the button. Optional fields web_app, request_contact, request_location, and request_poll are mutually exclusive." ID="ID_1529947463" CREATED="1651398662276" MODIFIED="1651400593453"/>
</node>
<node TEXT="required" ID="ID_1755703035" CREATED="1649151008879" MODIFIED="1649151010565">
<node TEXT="text" ID="ID_611585551" CREATED="1649151013536" MODIFIED="1649151014759"/>
</node>
<node TEXT="properties" ID="ID_382941345" CREATED="1649150336028" MODIFIED="1649150338042">
<node ID="ID_1998666574" CREATED="1649150980081" MODIFIED="1649150980081"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    text
  </body>
</html>
</richcontent>
<node TEXT="description" ID="ID_1536368879" CREATED="1651400601933" MODIFIED="1651400609837">
<icon BUILTIN="bookmark"/>
<node TEXT="Text of the button. If none of the optional fields are used, it will be sent as a message when the button is pressed" ID="ID_1376449924" CREATED="1651400606758" MODIFIED="1651400607521"/>
</node>
</node>
<node FOLDED="true" ID="ID_264571279" CREATED="1649150983102" MODIFIED="1649150992117">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    request_contact
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_555132841" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="If True, the user&apos;s phone number will be sent as a contact when the button is pressed. Available in private chats only." ID="ID_1600885776" CREATED="1651398662276" MODIFIED="1651400667867"/>
</node>
</node>
<node FOLDED="true" ID="ID_705250265" CREATED="1649150985334" MODIFIED="1649150992118">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    request_location
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_443297990" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="If True, the user&apos;s current location will be sent when the button is pressed. Available in private chats only." ID="ID_345980291" CREATED="1651398662276" MODIFIED="1651400673901"/>
</node>
</node>
<node FOLDED="true" ID="ID_513935023" CREATED="1649150987806" MODIFIED="1649150987806"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    request_poll
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1859815130" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="If specified, the user will be asked to create a poll and send it to the bot when the button is pressed. Available in private chats only." ID="ID_1958156437" CREATED="1651398662276" MODIFIED="1651400706215"/>
</node>
<node TEXT="KeyboardButtonPollType" ID="ID_1452659044" CREATED="1649151002065" MODIFIED="1649151003379"/>
</node>
<node TEXT="web_app" ID="ID_1478180705" CREATED="1651400715827" MODIFIED="1651400718806">
<node TEXT="description" ID="ID_1037631285" CREATED="1651400733648" MODIFIED="1651400741056">
<icon BUILTIN="bookmark"/>
<node TEXT="If specified, the described Web App will be launched when the button is pressed. The Web App will be able to send a “web_app_data” service message. Available in private chats only." ID="ID_372984271" CREATED="1651400737308" MODIFIED="1651400738405"/>
</node>
<node TEXT="WebAppInfo" ID="ID_1688095857" CREATED="1651400719634" MODIFIED="1651400725040"/>
</node>
</node>
</node>
<node TEXT="KeyboardButtonPollType" ID="ID_831397781" CREATED="1649150329823" MODIFIED="1649150684306">
<node TEXT="description" FOLDED="true" ID="ID_1449565831" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents type of a poll, which is allowed to be created and sent when the corresponding button is pressed." ID="ID_108954938" CREATED="1651398662276" MODIFIED="1651400761040"/>
</node>
<node TEXT="properties" ID="ID_1960952912" CREATED="1649150336028" MODIFIED="1649150338042">
<node TEXT="_type" ID="ID_1905902858" CREATED="1649150969200" MODIFIED="1649173596453">
<node TEXT="description" ID="ID_1864576923" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="If quiz is passed, the user will be allowed to create only polls in the quiz mode. If regular is passed, only regular polls will be allowed. Otherwise, the user will be allowed to create a poll of any type." ID="ID_1756446772" CREATED="1651398662276" MODIFIED="1651400777348"/>
</node>
</node>
</node>
</node>
<node TEXT="ReplyKeyboardRemove" ID="ID_672422788" CREATED="1649150329823" MODIFIED="1649150694148">
<node TEXT="description" FOLDED="true" ID="ID_1631434790" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Upon receiving a message with this object, Telegram clients will remove the current custom keyboard and display the default letter-keyboard. By default, custom keyboards are displayed until a new keyboard is sent by a bot. An exception is made for one-time keyboards that are hidden immediately after the user presses a button (see ReplyKeyboardMarkup)." ID="ID_1465941032" CREATED="1651398662276" MODIFIED="1651400788687"/>
</node>
<node TEXT="properties" ID="ID_44694197" CREATED="1649150336028" MODIFIED="1649150338042">
<node FOLDED="true" ID="ID_1300350832" CREATED="1649150907518" MODIFIED="1649150907518"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    remove_keyboard
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1580579189" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Requests clients to remove the custom keyboard (user will not be able to summon this keyboard; if you want to hide the keyboard from sight but keep it accessible, use one_time_keyboard in ReplyKeyboardMarkup)" ID="ID_54703359" CREATED="1651398662276" MODIFIED="1651400794499"/>
</node>
<node TEXT="true" ID="ID_1732207423" CREATED="1649150931119" MODIFIED="1649150932452"/>
</node>
<node ID="ID_1976110354" CREATED="1649150911995" MODIFIED="1649150926531">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    selective
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1163404247" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Use this parameter if you want to remove the keyboard for specific users only. Targets: 1) users that are @mentioned in the text of the Message object; 2) if the bot&apos;s message is a reply (has reply_to_message_id), sender of the original message.&#xa;&#xa;Example: A user votes in a poll, bot returns confirmation message in reply to the vote and removes the keyboard for that user, while still showing the keyboard with poll options to users who haven&apos;t voted yet." ID="ID_541616340" CREATED="1651398662276" MODIFIED="1651400804708"/>
</node>
</node>
</node>
</node>
<node TEXT="InlineKeyboardMarkup" ID="ID_1122221071" CREATED="1649150329823" MODIFIED="1649150699042">
<node TEXT="description" ID="ID_278275149" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents an inline keyboard that appears right next to the message it belongs to." ID="ID_1520554160" CREATED="1651398662276" MODIFIED="1651400828516"/>
</node>
<node TEXT="properties" ID="ID_1186387156" CREATED="1649150336028" MODIFIED="1649150338042">
<node TEXT="inline_keyboard" ID="ID_686930391" CREATED="1649150860556" MODIFIED="1649150890490">
<icon BUILTIN="very_positive"/>
<node TEXT="description" FOLDED="true" ID="ID_1247975887" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Array of button rows, each represented by an Array of InlineKeyboardButton objects" ID="ID_829847165" CREATED="1651398662276" MODIFIED="1651400837425"/>
</node>
<node TEXT="InlineKeyboardButton" ID="ID_162698095" CREATED="1649150868302" MODIFIED="1649150886915"/>
</node>
</node>
</node>
<node TEXT="InlineKeyboardButton" ID="ID_281537660" CREATED="1649150329823" MODIFIED="1649150705954">
<node TEXT="description" ID="ID_1861990158" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents one button of an inline keyboard. You must use exactly one of the optional fields." ID="ID_1536607236" CREATED="1651398662276" MODIFIED="1651400845636"/>
</node>
<node TEXT="properties" ID="ID_1961418026" CREATED="1649150336028" MODIFIED="1649150338042">
<node ID="ID_1987157021" CREATED="1649150807897" MODIFIED="1649150807897"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    text
  </body>
</html>
</richcontent>
<node TEXT="description" ID="ID_34548095" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Label text on the button" ID="ID_1836103601" CREATED="1651398662276" MODIFIED="1651400852734"/>
</node>
</node>
<node ID="ID_944946011" CREATED="1649150811023" MODIFIED="1649150811023"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    url
  </body>
</html>
</richcontent>
<node TEXT="description" ID="ID_281841806" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="HTTP or tg:// url to be opened when the button is pressed. Links tg://user?id=&lt;user_id&gt; can be used to mention a user by their ID without using a username, if this is allowed by their privacy settings." ID="ID_1132091582" CREATED="1651398662276" MODIFIED="1651400860817"/>
</node>
</node>
<node TEXT="callback_data" ID="ID_1145329204" CREATED="1649150815968" MODIFIED="1715964257990">
<node TEXT="description" ID="ID_802735140" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Data to be sent in a callback query to the bot when button is pressed, 1-64 bytes" ID="ID_348690663" CREATED="1651398662276" MODIFIED="1651400926425"/>
</node>
</node>
<node TEXT="web_app" ID="ID_559896969" CREATED="1651400871949" MODIFIED="1651400874560">
<node TEXT="description" FOLDED="true" ID="ID_214379755" CREATED="1651398657654" MODIFIED="1654325127212">
<icon BUILTIN="bookmark"/>
<node TEXT="Description of the Web App that will be launched when the user presses the button. The Web App will be able to send an arbitrary message on behalf of the user using the method answerWebAppQuery. Available only in private chats between a user and the bot." ID="ID_1170088692" CREATED="1651398662276" MODIFIED="1654325127211"/>
</node>
<node TEXT="WebAppInfo" ID="ID_259905405" CREATED="1651400875296" MODIFIED="1651400881027"/>
</node>
<node FOLDED="true" ID="ID_986378449" CREATED="1649150813439" MODIFIED="1649150813439"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    login_url
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_504786002" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="An HTTP URL used to automatically authorize the user. Can be used as a replacement for the Telegram Login Widget." ID="ID_1881934673" CREATED="1651398662276" MODIFIED="1651400946012"/>
</node>
<node TEXT="LoginUrl" ID="ID_779990531" CREATED="1649150850947" MODIFIED="1649150853948"/>
</node>
<node FOLDED="true" ID="ID_1988173664" CREATED="1649150818359" MODIFIED="1649150818359"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    switch_inline_query
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_854648019" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="If set, pressing the button will prompt the user to select one of their chats, open that chat and insert the bot&apos;s username and the specified inline query in the input field. Can be empty, in which case just the bot&apos;s username will be inserted.&#xa;&#xa;Note: This offers an easy way for users to start using your bot in inline mode when they are currently in a private chat with it. Especially useful when combined with switch_pm… actions – in this case the user will be automatically returned to the chat they switched from, skipping the chat selection screen." ID="ID_225679793" CREATED="1651398662276" MODIFIED="1651400952078"/>
</node>
</node>
<node FOLDED="true" ID="ID_226870146" CREATED="1649150822886" MODIFIED="1649150822886"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    switch_inline_query_current_chat
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_709887464" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="If set, pressing the button will insert the bot&apos;s username and the specified inline query in the current chat&apos;s input field. Can be empty, in which case only the bot&apos;s username will be inserted.&#xa;&#xa;This offers a quick way for the user to open your bot in inline mode in the same chat – good for selecting something from multiple options." ID="ID_927270305" CREATED="1651398662276" MODIFIED="1651400967264"/>
</node>
</node>
<node FOLDED="true" ID="ID_848322441" CREATED="1649150825381" MODIFIED="1649150825381"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    callback_game
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_374053876" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Description of the game that will be launched when the user presses the button.&#xa;&#xa;NOTE: This type of button must always be the first button in the first row." ID="ID_1202224043" CREATED="1651398662276" MODIFIED="1651400980660"/>
</node>
<node TEXT="true" ID="ID_120085555" CREATED="1649150841668" MODIFIED="1649184212077"/>
</node>
<node FOLDED="true" ID="ID_306319635" CREATED="1649150828720" MODIFIED="1649150835279">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    pay
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1188837074" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Specify True, to send a Pay button.&#xa;&#xa;NOTE: This type of button must always be the first button in the first row and can only be used in invoice messages." ID="ID_1268252233" CREATED="1651398662276" MODIFIED="1651400989968"/>
</node>
</node>
</node>
</node>
<node TEXT="LoginUrl" ID="ID_106844900" CREATED="1649150329823" MODIFIED="1649150717139">
<node TEXT="description" FOLDED="true" ID="ID_1427744376" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a parameter of the inline keyboard button used to automatically authorize a user. Serves as a great replacement for the Telegram Login Widget when the user is coming from Telegram." ID="ID_684997670" CREATED="1651398662276" MODIFIED="1651401049901"/>
</node>
<node TEXT="required" FOLDED="true" ID="ID_1291662578" CREATED="1651401106678" MODIFIED="1651401108369">
<node TEXT="url" ID="ID_376590312" CREATED="1651401108661" MODIFIED="1651401111134"/>
</node>
<node TEXT="properties" ID="ID_401338239" CREATED="1649150336028" MODIFIED="1649150338042">
<node FOLDED="true" ID="ID_305812819" CREATED="1649150778295" MODIFIED="1649150778295"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    url
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_456106312" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="An HTTP URL to be opened with user authorization data added to the query string when the button is pressed. If the user refuses to provide authorization data, the original URL without information about the user will be opened. The data added is the same as described in Receiving authorization data.&#xa;&#xa;NOTE: You must always check the hash of the received data to verify the authentication and the integrity of the data as described in Checking authorization." ID="ID_1161621054" CREATED="1651398662276" MODIFIED="1651401081004"/>
</node>
</node>
<node FOLDED="true" ID="ID_1301696911" CREATED="1649150780900" MODIFIED="1649150780900"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    forward_text
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_398775111" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="New text of the button in forwarded messages." ID="ID_1279386911" CREATED="1651398662276" MODIFIED="1651401091955"/>
</node>
</node>
<node FOLDED="true" ID="ID_90477108" CREATED="1649150783602" MODIFIED="1649150783602"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    bot_username
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_916066011" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Username of a bot, which will be used for user authorization. See Setting up a bot for more details. If not specified, the current bot&apos;s username will be assumed. The url&apos;s domain must be the same as the domain linked with the bot. See Linking your domain to the bot for more details." ID="ID_647708582" CREATED="1651398662276" MODIFIED="1651401097776"/>
</node>
</node>
<node FOLDED="true" ID="ID_1931693043" CREATED="1649150786604" MODIFIED="1649150790018">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    request_write_access
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1932588391" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="Pass True to request the permission for your bot to send messages to the user." ID="ID_1166129894" CREATED="1651398662276" MODIFIED="1651401100951"/>
</node>
</node>
</node>
</node>
<node TEXT="CallbackQuery" ID="ID_1202652060" CREATED="1649150329823" MODIFIED="1649150718903">
<node TEXT="description" ID="ID_1470581326" CREATED="1651398657654" MODIFIED="1651398666531">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents an incoming callback query from a callback button in an inline keyboard. If the button that originated the query was attached to a message sent by the bot, the field message will be present. If the button was attached to a message sent via the bot (in inline mode), the field inline_message_id will be present. Exactly one of the fields data or game_short_name will be present." ID="ID_1762692248" CREATED="1651398662276" MODIFIED="1651401138273"/>
</node>
<node TEXT="properties" ID="ID_721864544" CREATED="1649150336028" MODIFIED="1649150338042">
<node ID="ID_321018536" CREATED="1649150741687" MODIFIED="1649150741687"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    id
  </body>
</html>
</richcontent>
<node TEXT="description" ID="ID_924377867" CREATED="1651401156615" MODIFIED="1651401168960">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier for this query" ID="ID_1234585211" CREATED="1651401143306" MODIFIED="1651401147540"/>
</node>
</node>
<node TEXT="from" FOLDED="true" ID="ID_982729919" CREATED="1649150742664" MODIFIED="1649150744189">
<node TEXT="description" FOLDED="true" ID="ID_197276184" CREATED="1651401148434" MODIFIED="1651401168959">
<icon BUILTIN="bookmark"/>
<node TEXT="Sender" ID="ID_1232749819" CREATED="1651401152285" MODIFIED="1651401154354"/>
</node>
<node TEXT="User" ID="ID_60839052" CREATED="1649150764915" MODIFIED="1649150766318"/>
</node>
<node TEXT="message" ID="ID_1896518339" CREATED="1649150744538" MODIFIED="1649150746117">
<node TEXT="description" ID="ID_485070012" CREATED="1651401156615" MODIFIED="1651401168960">
<icon BUILTIN="bookmark"/>
<node TEXT="Message with the callback button that originated the query. Note that message content and message date will not be available if the message is too old" ID="ID_1202407169" CREATED="1651401143306" MODIFIED="1651401185745"/>
</node>
<node TEXT="Message" ID="ID_1502553245" CREATED="1649150761796" MODIFIED="1649150763815"/>
</node>
<node TEXT="inline_message_id" FOLDED="true" ID="ID_352421097" CREATED="1649150749593" MODIFIED="1649150750179">
<node TEXT="description" FOLDED="true" ID="ID_1385936372" CREATED="1651401156615" MODIFIED="1651401168960">
<icon BUILTIN="bookmark"/>
<node TEXT="Identifier of the message sent via the bot in inline mode, that originated the query." ID="ID_287085076" CREATED="1651401143306" MODIFIED="1651401201664"/>
</node>
</node>
<node TEXT="chat_instance" FOLDED="true" ID="ID_848435922" CREATED="1649150753226" MODIFIED="1649150753732">
<node TEXT="description" FOLDED="true" ID="ID_1316353760" CREATED="1651401156615" MODIFIED="1651401168960">
<icon BUILTIN="bookmark"/>
<node TEXT="Global identifier, uniquely corresponding to the chat to which the message with the callback button was sent. Useful for high scores in games." ID="ID_315857500" CREATED="1651401143306" MODIFIED="1651401204834"/>
</node>
</node>
<node TEXT="data" ID="ID_351890748" CREATED="1649150754133" MODIFIED="1649150755243">
<node TEXT="description" ID="ID_1323483961" CREATED="1651401156615" MODIFIED="1651401168960">
<icon BUILTIN="bookmark"/>
<node TEXT="Data associated with the callback button. Be aware that a bad client can send arbitrary data in this field." ID="ID_1773043879" CREATED="1651401143306" MODIFIED="1651401218359"/>
</node>
</node>
<node FOLDED="true" ID="ID_81564325" CREATED="1649150759231" MODIFIED="1649150759231"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    game_short_name
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_851298146" CREATED="1651401156615" MODIFIED="1651401168960">
<icon BUILTIN="bookmark"/>
<node TEXT="Short name of a Game to be returned, serves as the unique identifier for the game" ID="ID_1098807505" CREATED="1651401143306" MODIFIED="1651401242028"/>
</node>
</node>
</node>
</node>
<node TEXT="ForceReply" ID="ID_37794930" CREATED="1649151536476" MODIFIED="1649151537314">
<node TEXT="description" FOLDED="true" ID="ID_644942549" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Upon receiving a message with this object, Telegram clients will display a reply interface to the user (act as if the user has selected the bot&apos;s message and tapped &apos;Reply&apos;). This can be extremely useful if you want to create user-friendly step-by-step interfaces without having to sacrifice privacy mode." ID="ID_967505232" CREATED="1651406625432" MODIFIED="1651406631365"/>
</node>
<node TEXT="properties" ID="ID_1838578873" CREATED="1649151537704" MODIFIED="1649151539881">
<node ID="ID_338297496" CREATED="1649151562715" MODIFIED="1649151562715"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    force_reply
  </body>
</html>
</richcontent>
<node TEXT="description" ID="ID_1590708269" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node ID="ID_486083224" CREATED="1651406634312" MODIFIED="1651406634312"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Shows reply interface to the user, as if they manually selected the bot's message and tapped 'Reply'
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="true" ID="ID_531983882" CREATED="1649151570283" MODIFIED="1649151571731"/>
</node>
<node ID="ID_313421562" CREATED="1649151565670" MODIFIED="1649151565670"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    input_field_placeholder
  </body>
</html>
</richcontent>
<node TEXT="description" ID="ID_1106200317" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node ID="ID_431465691" CREATED="1651406641732" MODIFIED="1651406641732"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The placeholder to be shown in the input field when the reply is active; 1-64 characters
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node ID="ID_425894007" CREATED="1649151568839" MODIFIED="1649151575893">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    selective
  </body>
</html>
</richcontent>
<node TEXT="description" ID="ID_1483485590" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Use this parameter if you want to force reply from specific users only. Targets: 1) users that are @mentioned in the text of the Message object; 2) if the bot&apos;s message is a reply (has reply_to_message_id), sender of the original message." ID="ID_1701523755" CREATED="1651406648043" MODIFIED="1651406650291"/>
</node>
</node>
</node>
</node>
<node TEXT="ChatPhoto" ID="ID_1857033095" CREATED="1649151536476" MODIFIED="1649151587079">
<node TEXT="description" FOLDED="true" ID="ID_393174495" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a chat photo." ID="ID_1619786031" CREATED="1651406659614" MODIFIED="1651406661364"/>
</node>
<node TEXT="properties" ID="ID_1387202940" CREATED="1649151537704" MODIFIED="1649151539881">
<node FOLDED="true" ID="ID_1870726370" CREATED="1649151592992" MODIFIED="1649151592992"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    small_file_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_727246909" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="File identifier of small (160x160) chat photo. This file_id can be used only for photo download and only for as long as the photo is not changed." ID="ID_174636824" CREATED="1651406668109" MODIFIED="1651406676243"/>
</node>
</node>
<node FOLDED="true" ID="ID_1102459182" CREATED="1649151596250" MODIFIED="1649151596250"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    small_file_unique_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_600146011" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node ID="ID_594715522" CREATED="1651406677914" MODIFIED="1651406677914"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Unique file identifier of small (160x160) chat photo, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node FOLDED="true" ID="ID_1864411634" CREATED="1649151598475" MODIFIED="1649151598475"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    big_file_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_745559514" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node ID="ID_385548286" CREATED="1651406682660" MODIFIED="1651406682660"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    File identifier of big (640x640) chat photo. This file_id can be used only for photo download and only for as long as the photo is not changed.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node FOLDED="true" ID="ID_205199042" CREATED="1649151600655" MODIFIED="1649151600655"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    big_file_unique_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_870856491" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node ID="ID_186695135" CREATED="1651406689514" MODIFIED="1651406689514"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Unique file identifier of big (640x640) chat photo, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="ChatInviteLink" FOLDED="true" ID="ID_1252346324" CREATED="1649151536476" MODIFIED="1649151590947">
<node TEXT="description" FOLDED="true" ID="ID_32754925" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node ID="ID_1775616068" CREATED="1651406696724" MODIFIED="1651406696724"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Represents an invite link for a chat.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1952299211" CREATED="1649151537704" MODIFIED="1649151539881">
<node FOLDED="true" ID="ID_1883999123" CREATED="1649151605048" MODIFIED="1649151605048"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    invite_link
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_97864823" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="The invite link. If the link was created by another chat administrator, then the second part of the link will be replaced with “…”." ID="ID_1623176782" CREATED="1651406700979" MODIFIED="1651406706884"/>
</node>
</node>
<node FOLDED="true" ID="ID_363760746" CREATED="1649151607816" MODIFIED="1649151607816"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    creator
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_248662434" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node ID="ID_1336909605" CREATED="1651406707581" MODIFIED="1651406707581"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Creator of the link
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="User" ID="ID_1308698089" CREATED="1649151650632" MODIFIED="1649184257563"/>
</node>
<node FOLDED="true" ID="ID_1485904948" CREATED="1649151610651" MODIFIED="1649151640263">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    creates_join_request
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_3373470" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if users joining the chat via the link need to be approved by chat administrators" ID="ID_467100126" CREATED="1651406722516" MODIFIED="1651406723664"/>
</node>
</node>
<node FOLDED="true" ID="ID_554735764" CREATED="1649151613659" MODIFIED="1649151640264">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    is_primary
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_273141336" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the link is primary" ID="ID_1572917664" CREATED="1651406729116" MODIFIED="1651406733349"/>
</node>
</node>
<node FOLDED="true" ID="ID_934963943" CREATED="1649151618453" MODIFIED="1649151618453"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    is_revoked
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1228567008" CREATED="1651406533674" MODIFIED="1651406735893">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the link is revoked" ID="ID_1781597165" CREATED="1651406733750" MODIFIED="1651406737776"/>
</node>
</node>
<node FOLDED="true" ID="ID_137659289" CREATED="1649151620740" MODIFIED="1649151620740"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    name
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1301125231" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Invite link name" ID="ID_403382424" CREATED="1651406748468" MODIFIED="1651406754581"/>
</node>
</node>
<node FOLDED="true" ID="ID_1952104752" CREATED="1649151623399" MODIFIED="1649151645228">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    expire_date
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_818410435" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Point in time (Unix timestamp) when the link will expire or has been expired" ID="ID_710897964" CREATED="1651406755439" MODIFIED="1651406757381"/>
</node>
</node>
<node FOLDED="true" ID="ID_1346013955" CREATED="1649151625579" MODIFIED="1649151645228">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    member_limit
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1456862379" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Maximum number of users that can be members of the chat simultaneously after joining the chat via this invite link; 1-99999" ID="ID_1620189727" CREATED="1651406763185" MODIFIED="1651406765058"/>
</node>
</node>
<node FOLDED="true" ID="ID_824748604" CREATED="1649151627818" MODIFIED="1649151645228">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    pending_join_request_count
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_962580770" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Number of pending join requests created using this link" ID="ID_1283701723" CREATED="1651406769934" MODIFIED="1651406771595"/>
</node>
</node>
</node>
</node>
<node TEXT="ChatMember" FOLDED="true" ID="ID_976664008" CREATED="1649151536476" MODIFIED="1649151676214">
<node TEXT="description" FOLDED="true" ID="ID_100144642" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object contains information about one member of a chat. Currently, the following 6 types of chat members are supported" ID="ID_1856819439" CREATED="1651406786381" MODIFIED="1651406788671"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_718011685" CREATED="1649151537704" MODIFIED="1649151539881">
<node FOLDED="true" ID="ID_529156904" CREATED="1649160886461" MODIFIED="1649160886461"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    status
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1205723389" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="The member&apos;s status in the chat, always “creator”" ID="ID_1832545982" CREATED="1651406800829" MODIFIED="1651406802118"/>
</node>
</node>
<node FOLDED="true" ID="ID_1236765023" CREATED="1649160889342" MODIFIED="1649160889342"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    user
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1029006954" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Information about the user" ID="ID_1979086138" CREATED="1651406807359" MODIFIED="1651406809867"/>
</node>
<node TEXT="User" ID="ID_1972944147" CREATED="1649160907054" MODIFIED="1649160908488"/>
</node>
</node>
</node>
<node TEXT="ChatMemberOwner" FOLDED="true" ID="ID_844454662" CREATED="1649151536476" MODIFIED="1649151709329">
<node TEXT="description" ID="ID_661804609" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
</node>
<node TEXT="extends" FOLDED="true" ID="ID_1196225831" CREATED="1649160933095" MODIFIED="1649160934811">
<node TEXT="ChatMember" ID="ID_1780787537" CREATED="1649160937399" MODIFIED="1649160940338"/>
</node>
<node TEXT="status" FOLDED="true" ID="ID_1813977669" CREATED="1649161266629" MODIFIED="1649161269171">
<node TEXT="creator" ID="ID_1130636194" CREATED="1649161269380" MODIFIED="1649161271190"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_967953333" CREATED="1649151537704" MODIFIED="1649151539881">
<node FOLDED="true" ID="ID_115382701" CREATED="1649160893674" MODIFIED="1649160905586">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    is_anonymous
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1304628181" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user&apos;s presence in the chat is hidden" ID="ID_1055207941" CREATED="1651406819772" MODIFIED="1651406825008"/>
</node>
</node>
<node FOLDED="true" ID="ID_773604240" CREATED="1649160897045" MODIFIED="1649160897045"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    custom_title
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1693692254" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Custom title for this user" ID="ID_1067614315" CREATED="1651406825338" MODIFIED="1651406826667"/>
</node>
</node>
</node>
</node>
<node TEXT="ChatMemberAdministrator" FOLDED="true" ID="ID_637393725" CREATED="1649151536476" MODIFIED="1649151711310">
<node TEXT="description" FOLDED="true" ID="ID_1425686626" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents a chat member that has some additional privileges." ID="ID_1462140794" CREATED="1651406949194" MODIFIED="1651406956387"/>
</node>
<node TEXT="extends" FOLDED="true" ID="ID_122313791" CREATED="1649160933095" MODIFIED="1649160934811">
<node TEXT="ChatMember" ID="ID_1986254966" CREATED="1649160937399" MODIFIED="1649160940338"/>
</node>
<node TEXT="status" FOLDED="true" ID="ID_1436340614" CREATED="1649161255041" MODIFIED="1649161257624">
<node TEXT="administrator" ID="ID_100075532" CREATED="1649161258130" MODIFIED="1649161261424"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_286304284" CREATED="1649151537704" MODIFIED="1649151539881">
<node FOLDED="true" ID="ID_616253691" CREATED="1649160983286" MODIFIED="1649161002006">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_be_edited
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_750683004" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the bot is allowed to edit administrator privileges of that user" ID="ID_672409506" CREATED="1651406838149" MODIFIED="1651406839775"/>
</node>
</node>
<node FOLDED="true" ID="ID_1346092065" CREATED="1649160987094" MODIFIED="1649161002007">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_manage_chat
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1262846834" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user&apos;s presence in the chat is hidden" ID="ID_877109707" CREATED="1651406843742" MODIFIED="1651406848705"/>
</node>
</node>
<node FOLDED="true" ID="ID_1239652927" CREATED="1649160990547" MODIFIED="1649161002007">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_delete_messages
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1205893146" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the administrator can access the chat event log, chat statistics, message statistics in channels, see channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other administrator privilege" ID="ID_319868926" CREATED="1651406849319" MODIFIED="1651406856794"/>
</node>
</node>
<node FOLDED="true" ID="ID_267592830" CREATED="1649160993237" MODIFIED="1649161002007">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_manage_voice_chats
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_125174154" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the administrator can delete messages of other users" ID="ID_689884626" CREATED="1651406857804" MODIFIED="1651406859175"/>
</node>
</node>
<node FOLDED="true" ID="ID_1692227381" CREATED="1649160996040" MODIFIED="1649161002007">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_restrict_members
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1746033516" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the administrator can manage video chats" ID="ID_1335275398" CREATED="1651406864362" MODIFIED="1651406867649"/>
</node>
</node>
<node FOLDED="true" ID="ID_1685903297" CREATED="1649161011433" MODIFIED="1649161045453">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_promote_members
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_834074150" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the administrator can restrict, ban or unban chat members" ID="ID_708442059" CREATED="1651406873370" MODIFIED="1651406874646"/>
</node>
</node>
<node FOLDED="true" ID="ID_966949917" CREATED="1649161014119" MODIFIED="1649161045453">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_change_info
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_548548137" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by the user)" ID="ID_1794967106" CREATED="1651406880206" MODIFIED="1651406881446"/>
</node>
</node>
<node FOLDED="true" ID="ID_1761116288" CREATED="1649161016701" MODIFIED="1649161045453">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_invite_users
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1912871037" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to change the chat title, photo and other settings" ID="ID_385122842" CREATED="1651406886560" MODIFIED="1651406890669"/>
</node>
</node>
<node FOLDED="true" ID="ID_981238839" CREATED="1649161019284" MODIFIED="1649161045453">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_post_messages
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_658609420" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to invite new users to the chat" ID="ID_1734651932" CREATED="1651406891979" MODIFIED="1651406899776"/>
</node>
</node>
<node FOLDED="true" ID="ID_944574056" CREATED="1649161023056" MODIFIED="1649161045453">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_edit_messages
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1893327652" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the administrator can post in the channel; channels only" ID="ID_845295269" CREATED="1651406900964" MODIFIED="1651406902367"/>
</node>
</node>
<node FOLDED="true" ID="ID_244828402" CREATED="1649161027098" MODIFIED="1649161045452">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_pin_messages
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_119680215" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the administrator can edit messages of other users and can pin messages; channels only" ID="ID_1319251030" CREATED="1651406913970" MODIFIED="1651406919085"/>
</node>
</node>
<node FOLDED="true" ID="ID_1609105733" CREATED="1649160893674" MODIFIED="1649160905586">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    is_anonymous
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1113417416" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to pin messages; groups and supergroups only" ID="ID_1288812522" CREATED="1651406919372" MODIFIED="1651406920699"/>
</node>
</node>
<node FOLDED="true" ID="ID_1841126088" CREATED="1649160897045" MODIFIED="1649160897045"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    custom_title
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_252870944" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node ID="ID_768281371" CREATED="1651406926114" MODIFIED="1651406926114"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Custom title for this user
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="ChatMemberMember" FOLDED="true" ID="ID_1540351097" CREATED="1649151536476" MODIFIED="1649151720807">
<node TEXT="description" FOLDED="true" ID="ID_1978658733" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents a chat member that has no additional privileges or restrictions." ID="ID_1082054063" CREATED="1651407081556" MODIFIED="1651407085509"/>
</node>
<node TEXT="extends" FOLDED="true" ID="ID_1053862078" CREATED="1649160933095" MODIFIED="1649160934811">
<node TEXT="ChatMember" ID="ID_261704747" CREATED="1649160937399" MODIFIED="1649160940338"/>
</node>
<node TEXT="status" FOLDED="true" ID="ID_75579665" CREATED="1649161237810" MODIFIED="1649161239618">
<node TEXT="member" ID="ID_577176630" CREATED="1649161240087" MODIFIED="1649161241679"/>
</node>
</node>
<node TEXT="ChatMemberRestricted" FOLDED="true" ID="ID_1015566287" CREATED="1649151536476" MODIFIED="1649151728559">
<node TEXT="description" FOLDED="true" ID="ID_1367315589" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents a chat member that is under certain restrictions in the chat. Supergroups only." ID="ID_399301328" CREATED="1651407103586" MODIFIED="1651407109473"/>
</node>
<node TEXT="extends" FOLDED="true" ID="ID_94886891" CREATED="1649160933095" MODIFIED="1649160934811">
<node TEXT="ChatMember" ID="ID_1248814078" CREATED="1649160937399" MODIFIED="1649160940338"/>
</node>
<node TEXT="status" FOLDED="true" ID="ID_769924309" CREATED="1649161182349" MODIFIED="1649161183859">
<node TEXT="restricted" ID="ID_1966523640" CREATED="1649161184102" MODIFIED="1649161226860"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1098059146" CREATED="1649151537704" MODIFIED="1649151539881">
<node FOLDED="true" ID="ID_1271262930" CREATED="1649161123701" MODIFIED="1649161162103">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    is_member
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_733636476" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is a member of the chat at the moment of the request" ID="ID_866139087" CREATED="1651407121814" MODIFIED="1651407126972"/>
</node>
</node>
<node FOLDED="true" ID="ID_1668129526" CREATED="1649161128039" MODIFIED="1649161162103">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_change_info
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1481642697" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to change the chat title, photo and other settings" ID="ID_70528920" CREATED="1651407128083" MODIFIED="1651407132343"/>
</node>
</node>
<node FOLDED="true" ID="ID_1487999467" CREATED="1649161131350" MODIFIED="1649161162103">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_invite_users
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1567051239" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to invite new users to the chat" ID="ID_1651696601" CREATED="1651407135312" MODIFIED="1651407138995"/>
</node>
</node>
<node FOLDED="true" ID="ID_742717791" CREATED="1649161134622" MODIFIED="1649161162103">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_pin_messages
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1064684704" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to pin messages" ID="ID_498633308" CREATED="1651407139700" MODIFIED="1651407142897"/>
</node>
</node>
<node FOLDED="true" ID="ID_1180020477" CREATED="1649161137694" MODIFIED="1649161162103">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_send_messages
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_819226847" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to send text messages, contacts, locations and venues" ID="ID_1997897640" CREATED="1651407143585" MODIFIED="1651407147438"/>
</node>
</node>
<node FOLDED="true" ID="ID_613651588" CREATED="1649161140455" MODIFIED="1649161162103">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_send_media_messages
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1266563050" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to send audios, documents, photos, videos, video notes and voice notes" ID="ID_427166839" CREATED="1651407148726" MODIFIED="1651407153147"/>
</node>
</node>
<node FOLDED="true" ID="ID_731471345" CREATED="1649161143581" MODIFIED="1649161162103">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_send_polls
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1188558047" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to send polls" ID="ID_1241783034" CREATED="1651407153918" MODIFIED="1651407157417"/>
</node>
</node>
<node FOLDED="true" ID="ID_151822421" CREATED="1649161147115" MODIFIED="1649161162103">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_send_other_messages
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_515265286" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to send animations, games, stickers and use inline bots" ID="ID_1744418405" CREATED="1651407257543" MODIFIED="1651407259328"/>
</node>
</node>
<node FOLDED="true" ID="ID_1348728738" CREATED="1649161150279" MODIFIED="1649161162102">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_add_web_page_previews
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_495196792" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to add web page previews to their messages" ID="ID_1160429997" CREATED="1651407263269" MODIFIED="1651407264602"/>
</node>
</node>
<node FOLDED="true" ID="ID_275810561" CREATED="1649161153688" MODIFIED="1649161156793">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    until_date
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_411777246" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Date when restrictions will be lifted for this user; unix time. If 0, then the user is restricted forever" ID="ID_511779105" CREATED="1651407158903" MODIFIED="1651407175448"/>
</node>
</node>
</node>
</node>
<node TEXT="ChatMemberLeft" FOLDED="true" ID="ID_646915528" CREATED="1649151536476" MODIFIED="1649151732411">
<node TEXT="description" FOLDED="true" ID="ID_1746451034" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents a chat member that isn&apos;t currently a member of the chat, but may join it themselves." ID="ID_463391616" CREATED="1651407278678" MODIFIED="1651407279977"/>
</node>
<node TEXT="extends" FOLDED="true" ID="ID_904963261" CREATED="1649160933095" MODIFIED="1649160934811">
<node TEXT="ChatMember" ID="ID_1768781534" CREATED="1649160937399" MODIFIED="1649160940338"/>
</node>
<node TEXT="status" FOLDED="true" ID="ID_586674615" CREATED="1649161182349" MODIFIED="1649161183859">
<node TEXT="left" ID="ID_718790906" CREATED="1649161184102" MODIFIED="1649161185817"/>
</node>
</node>
<node TEXT="ChatMemberBanned" FOLDED="true" ID="ID_949796478" CREATED="1649151536476" MODIFIED="1649151739121">
<node TEXT="description" FOLDED="true" ID="ID_1433841591" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents a chat member that was banned in the chat and can&apos;t return to the chat or view chat messages." ID="ID_1180616443" CREATED="1651407286789" MODIFIED="1651407288560"/>
</node>
<node TEXT="extends" FOLDED="true" ID="ID_210451621" CREATED="1649160933095" MODIFIED="1649160934811">
<node TEXT="ChatMember" ID="ID_245158077" CREATED="1649160937399" MODIFIED="1649160940338"/>
</node>
<node TEXT="status" FOLDED="true" ID="ID_1348862284" CREATED="1649161182349" MODIFIED="1649161183859">
<node TEXT="kicked" ID="ID_1164694195" CREATED="1649161184102" MODIFIED="1649161200328"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_488213796" CREATED="1649151537704" MODIFIED="1649151539881">
<node FOLDED="true" ID="ID_545292538" CREATED="1649161153688" MODIFIED="1649161156793">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    until_date
  </body>
</html>
</richcontent>
<node TEXT="Date when restrictions will be lifted for this user; unix time. If 0, then the user is banned forever" ID="ID_571201223" CREATED="1651407523624" MODIFIED="1651407527721"/>
</node>
</node>
</node>
<node TEXT="ChatMemberUpdated" FOLDED="true" ID="ID_562567451" CREATED="1649151536476" MODIFIED="1649151740639">
<node TEXT="description" FOLDED="true" ID="ID_1190024999" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents changes in the status of a chat member." ID="ID_1332226783" CREATED="1651407294100" MODIFIED="1651407295529"/>
</node>
<node TEXT="extends" FOLDED="true" ID="ID_321985778" CREATED="1649160933095" MODIFIED="1649160934811">
<node TEXT="ChatMember" ID="ID_438635028" CREATED="1649160937399" MODIFIED="1649160940338"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_804937963" CREATED="1649151537704" MODIFIED="1649151539881">
<node TEXT="chat" FOLDED="true" ID="ID_68914828" CREATED="1649161305912" MODIFIED="1649161307198">
<node TEXT="description" FOLDED="true" ID="ID_671526348" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Chat the user belongs to" ID="ID_389488253" CREATED="1651407508837" MODIFIED="1651407511652"/>
</node>
<node TEXT="Chat" ID="ID_75128586" CREATED="1649161307396" MODIFIED="1649161308679"/>
</node>
<node TEXT="from" FOLDED="true" ID="ID_371390185" CREATED="1649161310012" MODIFIED="1649161310883">
<node TEXT="description" FOLDED="true" ID="ID_1737635337" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Performer of the action, which resulted in the change" ID="ID_8425103" CREATED="1651407502506" MODIFIED="1651407508448"/>
</node>
<node TEXT="User" ID="ID_349237003" CREATED="1649161311070" MODIFIED="1649161312203"/>
</node>
<node TEXT="date" FOLDED="true" ID="ID_1934774849" CREATED="1649161312870" MODIFIED="1649161350205">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_903323841" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Date the change was done in Unix time" ID="ID_182096549" CREATED="1651407496370" MODIFIED="1651407497672"/>
</node>
</node>
<node FOLDED="true" ID="ID_1617231270" CREATED="1649161319959" MODIFIED="1649161319959"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    old_chat_member
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_397909932" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Previous information about the chat member" ID="ID_1787099637" CREATED="1651407485795" MODIFIED="1651407494981"/>
</node>
<node TEXT="ChatMember" ID="ID_657302160" CREATED="1649160937399" MODIFIED="1649160940338"/>
</node>
<node FOLDED="true" ID="ID_297209825" CREATED="1649161322653" MODIFIED="1649161322653"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    new_chat_member
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_112773313" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="New information about the chat member" ID="ID_556834567" CREATED="1651407481459" MODIFIED="1651407485433"/>
</node>
<node TEXT="ChatMember" ID="ID_1568941657" CREATED="1649160937399" MODIFIED="1649160940338"/>
</node>
<node FOLDED="true" ID="ID_1604419127" CREATED="1649161326108" MODIFIED="1649161326108"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    invite_link
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1958941895" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Chat invite link, which was used by the user to join the chat; for joining by invite link events only." ID="ID_191149544" CREATED="1651407476103" MODIFIED="1651407477499"/>
</node>
<node TEXT="ChatInviteLink" ID="ID_1394099840" CREATED="1649160937399" MODIFIED="1649161340727"/>
</node>
</node>
</node>
<node TEXT="ChatJoinRequest" FOLDED="true" ID="ID_1027320966" CREATED="1649151536476" MODIFIED="1649151760323">
<node TEXT="description" FOLDED="true" ID="ID_1713026258" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents a join request sent to a chat." ID="ID_1760247274" CREATED="1651407303961" MODIFIED="1651407310967"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1249088831" CREATED="1649151537704" MODIFIED="1649151539881">
<node TEXT="chat" FOLDED="true" ID="ID_1452707966" CREATED="1649161756716" MODIFIED="1649161758219">
<node TEXT="description" FOLDED="true" ID="ID_464402317" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Chat to which the request was sent" ID="ID_1672976126" CREATED="1651407466256" MODIFIED="1651407467525"/>
</node>
<node TEXT="Chat" ID="ID_862971724" CREATED="1649161758526" MODIFIED="1649161761802"/>
</node>
<node TEXT="from" FOLDED="true" ID="ID_1631333156" CREATED="1649161765193" MODIFIED="1649161766461">
<node TEXT="description" FOLDED="true" ID="ID_35760429" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="User that sent the join request" ID="ID_829662845" CREATED="1651407459768" MODIFIED="1651407462228"/>
</node>
<node TEXT="User" ID="ID_356897310" CREATED="1649161766686" MODIFIED="1649161767825"/>
</node>
<node TEXT="date" FOLDED="true" ID="ID_998100353" CREATED="1649161312870" MODIFIED="1649161350205">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1166998905" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Date the request was sent in Unix time" ID="ID_1227927913" CREATED="1651407449477" MODIFIED="1651407451893"/>
</node>
</node>
<node TEXT="bio" FOLDED="true" ID="ID_245941404" CREATED="1649161777717" MODIFIED="1649161780268">
<node TEXT="description" FOLDED="true" ID="ID_1804005366" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Bio of the user." ID="ID_1051840699" CREATED="1651407440817" MODIFIED="1651407442622"/>
</node>
</node>
<node FOLDED="true" ID="ID_591850970" CREATED="1649161326108" MODIFIED="1649161326108"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    invite_link
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_10169361" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Chat invite link that was used by the user to send the join request" ID="ID_1949261581" CREATED="1651407433848" MODIFIED="1651407438997"/>
</node>
<node TEXT="ChatInviteLink" ID="ID_1658510650" CREATED="1649160937399" MODIFIED="1649161340727"/>
</node>
</node>
</node>
<node TEXT="ChatPermissions" FOLDED="true" ID="ID_724499409" CREATED="1649151536476" MODIFIED="1649151766410">
<node TEXT="description" FOLDED="true" ID="ID_108012886" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Describes actions that a non-administrator user is allowed to take in a chat." ID="ID_837946045" CREATED="1651407311470" MODIFIED="1651407314005"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_996691694" CREATED="1649151537704" MODIFIED="1649151539881">
<node FOLDED="true" ID="ID_218331698" CREATED="1649161792882" MODIFIED="1649161816509">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_send_messages
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_658765640" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to send text messages, contacts, locations and venues" ID="ID_833468877" CREATED="1651407415423" MODIFIED="1651407418999"/>
</node>
</node>
<node FOLDED="true" ID="ID_1938061088" CREATED="1649161795756" MODIFIED="1649161816510">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_send_media_messages
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1147969964" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to send audios, documents, photos, videos, video notes and voice notes, implies can_send_messages" ID="ID_557450214" CREATED="1651407406049" MODIFIED="1651407407092"/>
</node>
</node>
<node FOLDED="true" ID="ID_557650037" CREATED="1649161798545" MODIFIED="1649161816510">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_send_polls
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_137877847" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to send polls, implies can_send_messages" ID="ID_128105133" CREATED="1651407392101" MODIFIED="1651407393436"/>
</node>
</node>
<node FOLDED="true" ID="ID_1782278254" CREATED="1649161801432" MODIFIED="1649161816510">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_send_other_messages
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_36806399" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to send animations, games, stickers and use inline bots, implies can_send_media_messages" ID="ID_1579858294" CREATED="1651407384949" MODIFIED="1651407391645"/>
</node>
</node>
<node FOLDED="true" ID="ID_618098078" CREATED="1649161803597" MODIFIED="1649161816510">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_add_web_page_previews
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1648407050" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to add web page previews to their messages, implies can_send_media_messages" ID="ID_356360655" CREATED="1651407376604" MODIFIED="1651407378296"/>
</node>
</node>
<node FOLDED="true" ID="ID_1098582725" CREATED="1649161806506" MODIFIED="1649161816510">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_change_info
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1901216423" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to change the chat title, photo and other settings. Ignored in public supergroups" ID="ID_1086332383" CREATED="1651407368991" MODIFIED="1651407370304"/>
</node>
</node>
<node FOLDED="true" ID="ID_833484071" CREATED="1649161809016" MODIFIED="1649161816510">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_invite_users
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1928687235" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to invite new users to the chat" ID="ID_1624596213" CREATED="1651407361905" MODIFIED="1651407368553"/>
</node>
</node>
<node FOLDED="true" ID="ID_233293565" CREATED="1649161811199" MODIFIED="1649161816510">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    can_pin_messages
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1478637746" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the user is allowed to pin messages. Ignored in public supergroups" ID="ID_1253129553" CREATED="1651407354125" MODIFIED="1651407360485"/>
</node>
</node>
</node>
</node>
<node TEXT="ChatLocation" FOLDED="true" ID="ID_499803504" CREATED="1649151536476" MODIFIED="1649151771411">
<node TEXT="description" FOLDED="true" ID="ID_196326078" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents a location to which a chat is connected." ID="ID_232524189" CREATED="1651407322987" MODIFIED="1651407325574"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1196071904" CREATED="1649151537704" MODIFIED="1649151539881">
<node FOLDED="true" ID="ID_1836133255" CREATED="1649161823843" MODIFIED="1649161823843"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    location
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1227830302" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="The location to which the supergroup is connected. Can&apos;t be a live location." ID="ID_652567935" CREATED="1651407338006" MODIFIED="1651407339312"/>
</node>
<node TEXT="Location" ID="ID_1282537197" CREATED="1649161825627" MODIFIED="1649161827818"/>
</node>
<node TEXT="address" FOLDED="true" ID="ID_1932889915" CREATED="1649161832206" MODIFIED="1649161832618">
<node TEXT="description" FOLDED="true" ID="ID_400769811" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Location address; 1-64 characters, as defined by the chat owner" ID="ID_1235323627" CREATED="1651407333101" MODIFIED="1651407336624"/>
</node>
</node>
</node>
</node>
<node TEXT="BotCommand" ID="ID_1764753253" CREATED="1649151536476" MODIFIED="1649151793177">
<node TEXT="description" FOLDED="true" ID="ID_1464984271" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a bot command." ID="ID_401198028" CREATED="1651407705290" MODIFIED="1651407837158"/>
</node>
<node TEXT="properties" ID="ID_233078169" CREATED="1649151537704" MODIFIED="1649151539881">
<node ID="ID_619616568" CREATED="1649161838958" MODIFIED="1649161838958"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    command
  </body>
</html>
</richcontent>
<node TEXT="description" ID="ID_1485849155" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Text of the command; 1-32 characters. Can contain only lowercase English letters, digits and underscores." ID="ID_545270582" CREATED="1651407816297" MODIFIED="1651407817819"/>
</node>
</node>
<node ID="ID_812332690" CREATED="1649161843832" MODIFIED="1649161843832"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    description
  </body>
</html>
</richcontent>
<node TEXT="description" ID="ID_1110074460" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Description of the command; 1-256 characters." ID="ID_371355828" CREATED="1651407823317" MODIFIED="1651407825027"/>
</node>
</node>
</node>
</node>
<node TEXT="BotCommandScope" ID="ID_460310343" CREATED="1649151536476" MODIFIED="1649151861740">
<node TEXT="description" ID="ID_1990746038" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents the scope to which bot commands are applied. Currently, the following 7 scopes are supported:&#xa;&#xa;    BotCommandScopeDefault&#xa;    BotCommandScopeAllPrivateChats&#xa;    BotCommandScopeAllGroupChats&#xa;    BotCommandScopeAllChatAdministrators&#xa;    BotCommandScopeChat&#xa;    BotCommandScopeChatAdministrators&#xa;    BotCommandScopeChatMember" ID="ID_1665354632" CREATED="1651407779146" MODIFIED="1651407853333"/>
</node>
<node TEXT="properties" ID="ID_520735819" CREATED="1649151537704" MODIFIED="1649151539881">
<node TEXT="_type" ID="ID_61665585" CREATED="1649161861142" MODIFIED="1649173604223">
<node TEXT="description" FOLDED="true" ID="ID_1404948136" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Scope type" ID="ID_815860601" CREATED="1651407797398" MODIFIED="1651407799045"/>
</node>
</node>
</node>
</node>
<node TEXT="BotCommandScopeDefault" ID="ID_1960181402" CREATED="1649151536476" MODIFIED="1649151873525">
<node TEXT="description" ID="ID_1326771991" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents the default scope of bot commands. Default commands are used if no commands with a narrower scope are specified for the user." ID="ID_1749937715" CREATED="1651407871421" MODIFIED="1651407872788"/>
</node>
<node TEXT="extends" ID="ID_1760399525" CREATED="1649161865041" MODIFIED="1649161869391">
<node TEXT="BotCommandScope" ID="ID_1454513013" CREATED="1649161872747" MODIFIED="1649161875232"/>
</node>
<node TEXT="_type" ID="ID_608757861" CREATED="1649161876439" MODIFIED="1649173609735">
<node TEXT="default" ID="ID_1103422435" CREATED="1649161878745" MODIFIED="1649161880112"/>
</node>
<node TEXT="properties" ID="ID_514181721" CREATED="1649151537704" MODIFIED="1649151539881"/>
</node>
<node TEXT="BotCommandScopeAllPrivateChats" FOLDED="true" ID="ID_1712957058" CREATED="1649151536476" MODIFIED="1649151881989">
<node TEXT="description" FOLDED="true" ID="ID_409692283" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents the scope of bot commands, covering all private chats." ID="ID_1345615963" CREATED="1651407878556" MODIFIED="1651407879874"/>
</node>
<node TEXT="extends" FOLDED="true" ID="ID_1007815298" CREATED="1649161865041" MODIFIED="1649161869391">
<node TEXT="BotCommandScope" ID="ID_1612864209" CREATED="1649161872747" MODIFIED="1649161875232"/>
</node>
<node TEXT="_type" FOLDED="true" ID="ID_502929751" CREATED="1649161876439" MODIFIED="1649173616928">
<node TEXT="all_private_chats" ID="ID_655428975" CREATED="1649161878745" MODIFIED="1649161923852"/>
</node>
<node TEXT="properties" ID="ID_835824438" CREATED="1649151537704" MODIFIED="1649151539881"/>
</node>
<node TEXT="BotCommandScopeAllGroupChats" FOLDED="true" ID="ID_1387221412" CREATED="1649151536476" MODIFIED="1649151883442">
<node TEXT="description" FOLDED="true" ID="ID_566673830" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents the scope of bot commands, covering all group and supergroup chats." ID="ID_41163098" CREATED="1651407886323" MODIFIED="1651407887569"/>
</node>
<node TEXT="extends" FOLDED="true" ID="ID_390976973" CREATED="1649161865041" MODIFIED="1649161869391">
<node TEXT="BotCommandScope" ID="ID_1893001313" CREATED="1649161872747" MODIFIED="1649161875232"/>
</node>
<node TEXT="_type" ID="ID_218716342" CREATED="1649161876439" MODIFIED="1649173630839">
<node TEXT="all_group_chats" ID="ID_270496732" CREATED="1649161878745" MODIFIED="1649161932295"/>
</node>
<node TEXT="properties" ID="ID_1520685558" CREATED="1649151537704" MODIFIED="1649151539881"/>
</node>
<node TEXT="BotCommandScopeAllChatAdministrators" FOLDED="true" ID="ID_1376087504" CREATED="1649151536476" MODIFIED="1649151889547">
<node TEXT="description" FOLDED="true" ID="ID_552135374" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents the scope of bot commands, covering all group and supergroup chat administrators." ID="ID_1551840530" CREATED="1651407893673" MODIFIED="1651407895618"/>
</node>
<node TEXT="extends" FOLDED="true" ID="ID_128093627" CREATED="1649161865041" MODIFIED="1649161869391">
<node TEXT="BotCommandScope" ID="ID_800017792" CREATED="1649161872747" MODIFIED="1649161875232"/>
</node>
<node TEXT="_type" FOLDED="true" ID="ID_1950949300" CREATED="1649161876439" MODIFIED="1649173635739">
<node TEXT="all_chat_administrators" ID="ID_1860816498" CREATED="1649161878745" MODIFIED="1649161943533"/>
</node>
<node TEXT="properties" ID="ID_1186263546" CREATED="1649151537704" MODIFIED="1649151539881"/>
</node>
<node TEXT="BotCommandScopeChat" ID="ID_523956091" CREATED="1649151536476" MODIFIED="1649151899433">
<node TEXT="description" FOLDED="true" ID="ID_699074519" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents the scope of bot commands, covering a specific chat." ID="ID_1264242965" CREATED="1651407901763" MODIFIED="1651407904329"/>
</node>
<node TEXT="extends" ID="ID_1596954037" CREATED="1649161865041" MODIFIED="1649161869391">
<node TEXT="BotCommandScope" ID="ID_1736127304" CREATED="1649161872747" MODIFIED="1649161875232"/>
</node>
<node TEXT="_type" FOLDED="true" ID="ID_963709166" CREATED="1649161876439" MODIFIED="1649173642766">
<node TEXT="chat" ID="ID_1340352374" CREATED="1649161878745" MODIFIED="1649161948990"/>
</node>
<node TEXT="properties" ID="ID_97839594" CREATED="1649151537704" MODIFIED="1649151539881">
<node TEXT="chat_id" FOLDED="true" ID="ID_1753865036" CREATED="1649161949642" MODIFIED="1649161951792">
<node TEXT="description" FOLDED="true" ID="ID_1479062294" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)" ID="ID_130022242" CREATED="1651407916763" MODIFIED="1651407918601"/>
</node>
</node>
</node>
</node>
<node TEXT="BotCommandScopeChatAdministrators" FOLDED="true" ID="ID_992227261" CREATED="1649151536476" MODIFIED="1649151901993">
<node TEXT="description" FOLDED="true" ID="ID_415878325" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents the scope of bot commands, covering all administrators of a specific group or supergroup chat." ID="ID_280484156" CREATED="1651407932066" MODIFIED="1651407935277"/>
</node>
<node TEXT="extends" FOLDED="true" ID="ID_1553548528" CREATED="1649161865041" MODIFIED="1649161869391">
<node TEXT="BotCommandScopeChat" ID="ID_1022906140" CREATED="1649161872747" MODIFIED="1651407948060"/>
</node>
<node TEXT="_type" FOLDED="true" ID="ID_424974353" CREATED="1649161876439" MODIFIED="1649173647956">
<node TEXT="chat_administrators" ID="ID_646508970" CREATED="1649161878745" MODIFIED="1649161964959"/>
</node>
</node>
<node TEXT="BotCommandScopeChatMember" FOLDED="true" ID="ID_770775241" CREATED="1649151536476" MODIFIED="1649151914807">
<node TEXT="description" ID="ID_1489461931" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
</node>
<node TEXT="extends" FOLDED="true" ID="ID_1945060961" CREATED="1649161865041" MODIFIED="1649161869391">
<node TEXT="BotCommandScopeChat" ID="ID_643739981" CREATED="1649161872747" MODIFIED="1651407953317"/>
</node>
<node TEXT="_type" FOLDED="true" ID="ID_666345551" CREATED="1649161876439" MODIFIED="1649173654329">
<node TEXT="default" ID="ID_1733309954" CREATED="1649161878745" MODIFIED="1649161880112"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_944069784" CREATED="1649151537704" MODIFIED="1649151539881">
<node TEXT="user_id" FOLDED="true" ID="ID_686281942" CREATED="1649161949642" MODIFIED="1649161986685">
<node TEXT="description" FOLDED="true" ID="ID_636947072" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier of the target user" ID="ID_864282655" CREATED="1651407916763" MODIFIED="1651407989339"/>
</node>
</node>
</node>
</node>
<node TEXT="ResponseParameters" FOLDED="true" ID="ID_472322878" CREATED="1649151536476" MODIFIED="1649151921687">
<node TEXT="description" FOLDED="true" ID="ID_1777997895" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Contains information about why a request was unsuccessful." ID="ID_440276517" CREATED="1651408010465" MODIFIED="1651408012085"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_177438504" CREATED="1649151537704" MODIFIED="1649151539881">
<node FOLDED="true" ID="ID_548636083" CREATED="1649153567252" MODIFIED="1649162001923">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    migrate_to_chat_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_726753864" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="The group has been migrated to a supergroup with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier." ID="ID_1115480640" CREATED="1651408026278" MODIFIED="1651408031634"/>
</node>
</node>
<node FOLDED="true" ID="ID_1736191820" CREATED="1649153570337" MODIFIED="1649162001923">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    retry_after
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_479695608" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="In case of exceeding flood control, the number of seconds left to wait before the request can be repeated" ID="ID_203897094" CREATED="1651408032761" MODIFIED="1651408034013"/>
</node>
</node>
</node>
</node>
<node TEXT="InputMedia" ID="ID_1902550830" CREATED="1649151536476" MODIFIED="1649151926208">
<node TEXT="description" FOLDED="true" ID="ID_8152466" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents the content of a media message to be sent. It should be one of&#xa;&#xa;    InputMediaAnimation&#xa;    InputMediaDocument&#xa;    InputMediaAudio&#xa;    InputMediaPhoto&#xa;    InputMediaVideo" ID="ID_534223358" CREATED="1651408046857" MODIFIED="1651408048638"/>
</node>
<node TEXT="required" FOLDED="true" ID="ID_870675627" CREATED="1651408088599" MODIFIED="1651408090838">
<node TEXT="type" ID="ID_761878080" CREATED="1651408091630" MODIFIED="1651408094482"/>
<node TEXT="media" ID="ID_522648592" CREATED="1651408095021" MODIFIED="1651408097033"/>
</node>
<node TEXT="properties" ID="ID_1255853609" CREATED="1649151537704" MODIFIED="1649151539881">
<node TEXT="_type" ID="ID_1137932030" CREATED="1649152015732" MODIFIED="1649173659418">
<node TEXT="description" ID="ID_817683678" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Type of the result" ID="ID_1721967003" CREATED="1651408062377" MODIFIED="1651408075569"/>
</node>
</node>
<node ID="ID_1948968467" CREATED="1649152018595" MODIFIED="1649152018595"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    media
  </body>
</html>
</richcontent>
<node TEXT="description" ID="ID_652965738" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://&lt;file_attach_name&gt;” to upload a new one using multipart/form-data under &lt;file_attach_name&gt; name." ID="ID_1940907589" CREATED="1651408076499" MODIFIED="1651408077938"/>
</node>
</node>
<node ID="ID_1518388155" CREATED="1649152023428" MODIFIED="1649152023428"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    caption
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_803856727" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Caption of the photo to be sent, 0-1024 characters after entities parsing" ID="ID_1294562687" CREATED="1651408083336" MODIFIED="1651408085400"/>
</node>
</node>
<node ID="ID_1656768002" CREATED="1649152025762" MODIFIED="1649152025762"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    parse_mode
  </body>
</html>
</richcontent>
<node TEXT="description" ID="ID_1462395010" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Mode for parsing entities in the photo caption. See formatting options for more details." ID="ID_388851655" CREATED="1651408109178" MODIFIED="1651408118056"/>
</node>
</node>
<node ID="ID_1701042199" CREATED="1649152028229" MODIFIED="1649152040110">
<icon BUILTIN="very_positive"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    caption_entities
  </body>
</html>
</richcontent>
<node TEXT="description" ID="ID_1773988240" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="List of special entities that appear in the caption, which can be specified instead of parse_mode" ID="ID_925220233" CREATED="1651408158302" MODIFIED="1651408159854"/>
</node>
<node TEXT="MessageEntity" ID="ID_1968349138" CREATED="1649153095461" MODIFIED="1649153105414"/>
</node>
</node>
</node>
<node TEXT="InputMediaPhoto" ID="ID_181528397" CREATED="1649151536476" MODIFIED="1649151932534">
<node TEXT="description" ID="ID_1720791549" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents a photo to be sent." ID="ID_1705257768" CREATED="1651408176679" MODIFIED="1651408178812"/>
</node>
<node TEXT="extends" ID="ID_617798747" CREATED="1649153296980" MODIFIED="1649153299982">
<node TEXT="InputMedia" ID="ID_15889336" CREATED="1649153301097" MODIFIED="1649153304656"/>
</node>
<node TEXT="_type" ID="ID_1698374940" CREATED="1649162020810" MODIFIED="1649173665513">
<node TEXT="photo" ID="ID_714014535" CREATED="1649162024104" MODIFIED="1649162026092"/>
</node>
</node>
<node TEXT="InputMediaVideo" ID="ID_1709099310" CREATED="1649151536476" MODIFIED="1649151942018">
<node TEXT="description" FOLDED="true" ID="ID_48737723" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents a video to be sent." ID="ID_303855305" CREATED="1651408183529" MODIFIED="1651408197477"/>
</node>
<node TEXT="extends" FOLDED="true" ID="ID_1002666432" CREATED="1649153296980" MODIFIED="1649153299982">
<node TEXT="InputMedia" ID="ID_1353892723" CREATED="1649153301097" MODIFIED="1649153304656"/>
</node>
<node TEXT="_type" FOLDED="true" ID="ID_1368711665" CREATED="1649162020810" MODIFIED="1649173670240">
<node TEXT="video" ID="ID_1168978893" CREATED="1649162024104" MODIFIED="1649162035227"/>
</node>
<node TEXT="properties" ID="ID_1128055192" CREATED="1649151537704" MODIFIED="1649151539881">
<node TEXT="thumb" FOLDED="true" ID="ID_547299357" CREATED="1651408210448" MODIFIED="1651408212765">
<node TEXT="description" FOLDED="true" ID="ID_772312626" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail&apos;s width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can&apos;t be reused and can be only uploaded as a new file, so you can pass “attach://&lt;file_attach_name&gt;” if the thumbnail was uploaded using multipart/form-data under &lt;file_attach_name&gt;." ID="ID_9442996" CREATED="1651408239596" MODIFIED="1651408240956"/>
</node>
<node TEXT="InputFile" ID="ID_1279035491" CREATED="1651408223612" MODIFIED="1651408226946"/>
</node>
<node TEXT="width" FOLDED="true" ID="ID_532627644" CREATED="1649153140770" MODIFIED="1649153179852">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1370201602" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Video width" ID="ID_701768313" CREATED="1651408259025" MODIFIED="1651408264510"/>
</node>
</node>
<node TEXT="height" FOLDED="true" ID="ID_10042373" CREATED="1649153143955" MODIFIED="1649153179852">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1477866680" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Video height" ID="ID_1266578115" CREATED="1651408264890" MODIFIED="1651408270446"/>
</node>
</node>
<node TEXT="duration" FOLDED="true" ID="ID_1979661593" CREATED="1649153146517" MODIFIED="1649153179851">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1824606873" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Video duration in seconds" ID="ID_548680763" CREATED="1651408270800" MODIFIED="1651408272060"/>
</node>
</node>
<node TEXT="supports_streaming" FOLDED="true" ID="ID_1871767931" CREATED="1649153207910" MODIFIED="1649153216251">
<icon BUILTIN="checked"/>
<node TEXT="description" FOLDED="true" ID="ID_1228121054" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Pass True, if the uploaded video is suitable for streaming" ID="ID_1489370305" CREATED="1651408278645" MODIFIED="1651408279703"/>
</node>
</node>
</node>
</node>
<node TEXT="InputMediaAnimation" ID="ID_1328921618" CREATED="1649151536476" MODIFIED="1649151948273">
<node TEXT="description" FOLDED="true" ID="ID_711321927" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents an animation file (GIF or H.264/MPEG-4 AVC video without sound) to be sent." ID="ID_1509355637" CREATED="1651408289075" MODIFIED="1651408290499"/>
</node>
<node TEXT="extends" ID="ID_428313503" CREATED="1649153296980" MODIFIED="1669025746612">
<node TEXT="InputMedia" ID="ID_1415242161" CREATED="1649153301097" MODIFIED="1669025746612"/>
</node>
<node TEXT="_type" FOLDED="true" ID="ID_1786201375" CREATED="1649162020810" MODIFIED="1649173676001">
<node TEXT="animation" ID="ID_137331296" CREATED="1649162024104" MODIFIED="1649162048310"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_927188597" CREATED="1649151537704" MODIFIED="1649151539881">
<node TEXT="width" FOLDED="true" ID="ID_1718034743" CREATED="1649153140770" MODIFIED="1649153179852">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1294146276" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Animation width" ID="ID_958834917" CREATED="1651408298943" MODIFIED="1651408303948"/>
</node>
</node>
<node TEXT="height" FOLDED="true" ID="ID_1590396314" CREATED="1649153143955" MODIFIED="1649153179852">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_341188478" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Animation height" ID="ID_1393727752" CREATED="1651408304294" MODIFIED="1651408309491"/>
</node>
</node>
<node TEXT="duration" FOLDED="true" ID="ID_956826661" CREATED="1649153146517" MODIFIED="1649153179851">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_24208952" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Animation duration in seconds" ID="ID_1971251531" CREATED="1651408309841" MODIFIED="1651408310951"/>
</node>
</node>
</node>
</node>
<node TEXT="InputMediaAudio" FOLDED="true" ID="ID_1227868449" CREATED="1649151536476" MODIFIED="1649151955054">
<node TEXT="description" FOLDED="true" ID="ID_1007232050" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Represents an audio file to be treated as music to be sent." ID="ID_285968478" CREATED="1651408353141" MODIFIED="1651408360414"/>
</node>
<node TEXT="extends" FOLDED="true" ID="ID_889490899" CREATED="1649153296980" MODIFIED="1649153299982">
<node TEXT="InputMedia" ID="ID_1064969123" CREATED="1649153301097" MODIFIED="1649153304656"/>
</node>
<node TEXT="_type" FOLDED="true" ID="ID_1849517828" CREATED="1649162059118" MODIFIED="1649173683662">
<node TEXT="audio" ID="ID_309979629" CREATED="1649162061227" MODIFIED="1649162063045"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1814017568" CREATED="1649151537704" MODIFIED="1649151539881">
<node TEXT="duration" FOLDED="true" ID="ID_1396593540" CREATED="1649152182111" MODIFIED="1649152189797">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1483682258" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Duration of the audio in seconds" ID="ID_1234218579" CREATED="1651408323157" MODIFIED="1651408327391"/>
</node>
</node>
<node TEXT="performer" FOLDED="true" ID="ID_1855837093" CREATED="1649152190202" MODIFIED="1649152192535">
<node TEXT="description" FOLDED="true" ID="ID_224062259" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Performer of the audio" ID="ID_501443808" CREATED="1651408328250" MODIFIED="1651408336352"/>
</node>
</node>
<node TEXT="title" FOLDED="true" ID="ID_1889394143" CREATED="1649152193147" MODIFIED="1649152194472">
<node TEXT="description" FOLDED="true" ID="ID_350846956" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Title of the audio" ID="ID_714880512" CREATED="1651408337048" MODIFIED="1651408339066"/>
</node>
</node>
</node>
</node>
<node TEXT="InputMediaDocument" FOLDED="true" ID="ID_705660959" CREATED="1649151536476" MODIFIED="1649151962310">
<node TEXT="description" FOLDED="true" ID="ID_1341946706" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node ID="ID_840868197" CREATED="1651408361441" MODIFIED="1651408361441"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Represents a general file to be sent.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="extends" ID="ID_51544697" CREATED="1649153296980" MODIFIED="1649153299982">
<node TEXT="InputMedia" ID="ID_1622374008" CREATED="1649153301097" MODIFIED="1649153304656"/>
</node>
<node TEXT="_type" ID="ID_1129564865" CREATED="1649162020810" MODIFIED="1649173688841">
<node TEXT="document" ID="ID_458149394" CREATED="1649162024104" MODIFIED="1649162073798"/>
</node>
<node TEXT="properties" ID="ID_1326033688" CREATED="1649151537704" MODIFIED="1649151539881">
<node FOLDED="true" ID="ID_1507393184" CREATED="1649152031819" MODIFIED="1649152036205">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    disable_content_type_detection
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1355169392" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Disables automatic server-side content type detection for files uploaded using multipart/form-data. Always True, if the document is sent as part of an album." ID="ID_1913261728" CREATED="1651408371294" MODIFIED="1651408373459"/>
</node>
</node>
</node>
</node>
<node TEXT="InputFile" FOLDED="true" ID="ID_28497166" CREATED="1649151536476" MODIFIED="1651408402968">
<node TEXT="description" ID="ID_1420006898" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents the contents of a file to be uploaded. Must be posted using multipart/form-data in the usual way that files are uploaded via the browser." ID="ID_1521707403" CREATED="1651408361441" MODIFIED="1651408418889"/>
</node>
<node TEXT="type" ID="ID_1968451869" CREATED="1651408426041" MODIFIED="1651408427979">
<node TEXT="object" ID="ID_1475432450" CREATED="1651408428218" MODIFIED="1651408429457"/>
</node>
</node>
<node TEXT="Sticker" FOLDED="true" ID="ID_225834328" CREATED="1649183133504" MODIFIED="1649183136116">
<node TEXT="description" ID="ID_691551782" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_490969221" CREATED="1649183137271" MODIFIED="1649183139179">
<node FOLDED="true" ID="ID_1104092987" CREATED="1649183142778" MODIFIED="1649183142778"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1680147739" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Identifier for this file, which can be used to download or reuse the file" ID="ID_623587939" CREATED="1651408693332" MODIFIED="1651408696536"/>
</node>
</node>
<node FOLDED="true" ID="ID_528153138" CREATED="1649183145218" MODIFIED="1649183145218"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_unique_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_725618040" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier for this file, which is supposed to be the same over time and for different bots. Can&apos;t be used to download or reuse the file." ID="ID_1974355160" CREATED="1651408697776" MODIFIED="1651408701340"/>
</node>
</node>
<node FOLDED="true" ID="ID_1171004370" CREATED="1649183147885" MODIFIED="1649183332214">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    width
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1258005475" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Sticker width" ID="ID_1246540941" CREATED="1651408702020" MODIFIED="1651408707966"/>
</node>
</node>
<node FOLDED="true" ID="ID_208132558" CREATED="1649183150222" MODIFIED="1649183332215">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    height
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_681488390" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Sticker height" ID="ID_12828003" CREATED="1651408708379" MODIFIED="1651409495055"/>
</node>
</node>
<node FOLDED="true" ID="ID_980296077" CREATED="1649183152877" MODIFIED="1649183292176">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    is_animated
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1527892561" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the sticker is animated" ID="ID_1439693686" CREATED="1651409502209" MODIFIED="1651409507114"/>
</node>
</node>
<node FOLDED="true" ID="ID_19816653" CREATED="1649183155065" MODIFIED="1649183292176">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    is_video
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1245311660" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the sticker is a video sticker" ID="ID_273215313" CREATED="1651409507948" MODIFIED="1651409514564"/>
</node>
</node>
<node FOLDED="true" ID="ID_195751229" CREATED="1649183157630" MODIFIED="1649183157630"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    thumb
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_983279456" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Sticker thumbnail in the .WEBP or .JPG format" ID="ID_1285099429" CREATED="1651409522074" MODIFIED="1651409524018"/>
</node>
<node TEXT="PhotoSize" ID="ID_1996957871" CREATED="1649183340765" MODIFIED="1649183344347"/>
</node>
<node FOLDED="true" ID="ID_1979871426" CREATED="1649183159960" MODIFIED="1649183159960"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    emoji
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_675973496" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Emoji associated with the sticker" ID="ID_680909170" CREATED="1651409531684" MODIFIED="1651409538507"/>
</node>
</node>
<node FOLDED="true" ID="ID_1236337997" CREATED="1649183163123" MODIFIED="1649183163123"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    set_name
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1508763414" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Name of the sticker set to which the sticker belongs" ID="ID_1104687225" CREATED="1651409538879" MODIFIED="1651409540144"/>
</node>
</node>
<node FOLDED="true" ID="ID_1349174953" CREATED="1649183165415" MODIFIED="1649183165415"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    mask_position
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_576783224" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="For mask stickers, the position where the mask should be placed" ID="ID_940585361" CREATED="1651409545645" MODIFIED="1651409546971"/>
</node>
<node TEXT="MaskPosition" ID="ID_1283565643" CREATED="1649183318694" MODIFIED="1649183319983"/>
</node>
<node FOLDED="true" ID="ID_94539966" CREATED="1649183167846" MODIFIED="1649183323931">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_size
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1065961554" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="File size in bytes" ID="ID_750604595" CREATED="1651409551780" MODIFIED="1651409553395"/>
</node>
</node>
</node>
</node>
<node TEXT="StickerSet" FOLDED="true" ID="ID_1923437072" CREATED="1649183171329" MODIFIED="1649183173934">
<node TEXT="description" FOLDED="true" ID="ID_982026250" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a sticker set." ID="ID_1332562963" CREATED="1651409563594" MODIFIED="1651409567316"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1900897140" CREATED="1649183175593" MODIFIED="1649183177209">
<node FOLDED="true" ID="ID_1700048369" CREATED="1649183181205" MODIFIED="1649183181205"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    name
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_631791463" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Sticker set name" ID="ID_663140787" CREATED="1651409567709" MODIFIED="1651409571100"/>
</node>
</node>
<node FOLDED="true" ID="ID_1820077207" CREATED="1649183183638" MODIFIED="1649183183638"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    title
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_728135236" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Sticker set title" ID="ID_154952312" CREATED="1651409571445" MODIFIED="1651409576656"/>
</node>
</node>
<node FOLDED="true" ID="ID_1899705862" CREATED="1649183187141" MODIFIED="1649183292176">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    is_animated
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1863683222" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the sticker set contains animated stickers" ID="ID_1107712317" CREATED="1651409577046" MODIFIED="1651409580577"/>
</node>
</node>
<node FOLDED="true" ID="ID_1572790758" CREATED="1649183190348" MODIFIED="1649183292176">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    is_video
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1866334500" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the sticker set contains video stickers" ID="ID_1573145196" CREATED="1651409582079" MODIFIED="1651409586798"/>
</node>
</node>
<node FOLDED="true" ID="ID_671173497" CREATED="1649183194597" MODIFIED="1649183292176">
<icon BUILTIN="checked"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    contains_masks
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1205927370" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="True, if the sticker set contains masks" ID="ID_804942780" CREATED="1651409589265" MODIFIED="1651409591011"/>
</node>
</node>
<node FOLDED="true" ID="ID_1272448816" CREATED="1649183197353" MODIFIED="1649183267832">
<icon BUILTIN="very_positive"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    stickers
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1856602186" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="List of all set stickers" ID="ID_1425051372" CREATED="1651409596483" MODIFIED="1651409597610"/>
</node>
<node TEXT="Sticker" ID="ID_900560430" CREATED="1649183260739" MODIFIED="1649183264329"/>
</node>
<node FOLDED="true" ID="ID_616558586" CREATED="1649183200128" MODIFIED="1649183200128"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    thumb
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1402896095" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Sticker set thumbnail in the .WEBP, .TGS, or .WEBM format" ID="ID_1531922709" CREATED="1651409604160" MODIFIED="1651409606561"/>
</node>
<node TEXT="PhotoSize" ID="ID_1278104756" CREATED="1649183269286" MODIFIED="1649183274521"/>
</node>
</node>
</node>
<node TEXT="MaskPosition" FOLDED="true" ID="ID_328281308" CREATED="1649183210465" MODIFIED="1649183211840">
<node TEXT="description" FOLDED="true" ID="ID_14214828" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object describes the position on faces where a mask should be placed by default." ID="ID_1766970720" CREATED="1651409613311" MODIFIED="1651409623426"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_538481716" CREATED="1649183212176" MODIFIED="1649183213805">
<node FOLDED="true" ID="ID_1725742938" CREATED="1649183218871" MODIFIED="1649183218871"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    point
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_529667466" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="The part of the face relative to which the mask should be placed. One of “forehead”, “eyes”, “mouth”, or “chin”." ID="ID_1793323580" CREATED="1651409624808" MODIFIED="1651409631185"/>
</node>
<node TEXT="enum" FOLDED="true" ID="ID_888921499" CREATED="1649183246752" MODIFIED="1649183248201">
<node TEXT="forehead" ID="ID_125288830" CREATED="1649183248512" MODIFIED="1649183250721"/>
<node TEXT="eyes" ID="ID_204522992" CREATED="1649183251004" MODIFIED="1649183252255"/>
<node TEXT="mouth" ID="ID_128263236" CREATED="1649183252703" MODIFIED="1649183253950"/>
<node TEXT="chin" ID="ID_1645180609" CREATED="1649183254491" MODIFIED="1649183255420"/>
</node>
</node>
<node FOLDED="true" ID="ID_1688873397" CREATED="1649183224180" MODIFIED="1649183235511">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    x_shift
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1091668004" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Shift by X-axis measured in widths of the mask scaled to the face size, from left to right. For example, choosing -1.0 will place mask just to the left of the default mask position." ID="ID_1634775664" CREATED="1651409639593" MODIFIED="1651409644530"/>
</node>
</node>
<node FOLDED="true" ID="ID_1639771140" CREATED="1649183227337" MODIFIED="1649183235512">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    y_shift
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1997115831" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom. For example, 1.0 will place the mask just below the default mask position." ID="ID_115996904" CREATED="1651409645576" MODIFIED="1651409647129"/>
</node>
</node>
<node FOLDED="true" ID="ID_99310413" CREATED="1649183230089" MODIFIED="1649183235512">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    scale
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_162120151" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Mask scaling coefficient. For example, 2.0 means double size." ID="ID_725415097" CREATED="1651409651527" MODIFIED="1651409653680"/>
</node>
</node>
</node>
</node>
<node TEXT="Game" FOLDED="true" ID="ID_983917565" CREATED="1649183465204" MODIFIED="1649183466563">
<node TEXT="description" FOLDED="true" ID="ID_1217707690" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a game. Use BotFather to create and edit games, their short names will act as unique identifiers." ID="ID_540372171" CREATED="1651409695560" MODIFIED="1651409697485"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_781989769" CREATED="1649183468206" MODIFIED="1649183469999">
<node TEXT="title" FOLDED="true" ID="ID_1806952655" CREATED="1649183471961" MODIFIED="1649183473123">
<node TEXT="description" FOLDED="true" ID="ID_327401300" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Title of the game" ID="ID_489987936" CREATED="1651409701758" MODIFIED="1651409705645"/>
</node>
</node>
<node TEXT="description" FOLDED="true" ID="ID_319927662" CREATED="1649183473439" MODIFIED="1649183475889">
<node TEXT="description" FOLDED="true" ID="ID_1730977257" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Description of the game" ID="ID_801633395" CREATED="1651409705981" MODIFIED="1651409710735"/>
</node>
</node>
<node TEXT="photo" FOLDED="true" ID="ID_508004287" CREATED="1649183476111" MODIFIED="1649183495524">
<icon BUILTIN="very_positive"/>
<node TEXT="description" FOLDED="true" ID="ID_492215727" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Photo that will be displayed in the game message in chats." ID="ID_229653233" CREATED="1651409711180" MODIFIED="1651409714378"/>
</node>
<node TEXT="PhotoSize" ID="ID_1341106992" CREATED="1649183489624" MODIFIED="1649183492192"/>
</node>
<node TEXT="text" FOLDED="true" ID="ID_1745232328" CREATED="1649183478694" MODIFIED="1649183481674">
<node TEXT="description" FOLDED="true" ID="ID_1522557616" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Brief description of the game or high scores included in the game message. Can be automatically edited to include current high scores for the game when the bot calls setGameScore, or manually edited using editMessageText. 0-4096 characters." ID="ID_1251039224" CREATED="1651409720342" MODIFIED="1651409721561"/>
</node>
</node>
<node TEXT="text_entities" FOLDED="true" ID="ID_698991444" CREATED="1649183481952" MODIFIED="1649183497532">
<icon BUILTIN="very_positive"/>
<node TEXT="description" FOLDED="true" ID="ID_1551600003" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Special entities that appear in text, such as usernames, URLs, bot commands, etc." ID="ID_1733226694" CREATED="1651409728244" MODIFIED="1651409729410"/>
</node>
<node TEXT="MessageEntity" ID="ID_1924984835" CREATED="1649183484893" MODIFIED="1649183488224"/>
</node>
<node TEXT="animation" FOLDED="true" ID="ID_981176896" CREATED="1649183499773" MODIFIED="1649183501723">
<node TEXT="description" FOLDED="true" ID="ID_1190038864" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Animation that will be displayed in the game message in chats. Upload via BotFather" ID="ID_1871794390" CREATED="1651409735346" MODIFIED="1651409737483"/>
</node>
<node TEXT="Animation" ID="ID_1190985158" CREATED="1649183501909" MODIFIED="1649183505719"/>
</node>
</node>
</node>
<node TEXT="Invoice" FOLDED="true" ID="ID_1339272329" CREATED="1649183541769" MODIFIED="1649183543785">
<node TEXT="description" FOLDED="true" ID="ID_864544136" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object contains basic information about an invoice." ID="ID_1564834717" CREATED="1651409793507" MODIFIED="1651409794913"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1152930270" CREATED="1649183550488" MODIFIED="1649183552701">
<node FOLDED="true" ID="ID_1974228970" CREATED="1649183561476" MODIFIED="1649183561476"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    title
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_691539625" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Product name" ID="ID_1503251841" CREATED="1651409799827" MODIFIED="1651409803572"/>
</node>
</node>
<node FOLDED="true" ID="ID_1428996613" CREATED="1649183564005" MODIFIED="1649183564005"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    description
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1560848311" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Product description" ID="ID_706100855" CREATED="1651409804025" MODIFIED="1651409807811"/>
</node>
</node>
<node FOLDED="true" ID="ID_1444334724" CREATED="1649183567250" MODIFIED="1649183567250"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    start_parameter
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1742996265" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique bot deep-linking parameter that can be used to generate this invoice" ID="ID_995032592" CREATED="1651409808224" MODIFIED="1651409812567"/>
</node>
</node>
<node FOLDED="true" ID="ID_1760966721" CREATED="1649183569974" MODIFIED="1649183569974"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    currency
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_544162404" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Three-letter ISO 4217 currency code" ID="ID_135952160" CREATED="1651409812926" MODIFIED="1651409814441"/>
</node>
</node>
<node FOLDED="true" ID="ID_1005661084" CREATED="1649183573050" MODIFIED="1649183573050"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    total_amount
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_434251690" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies)." ID="ID_335139403" CREATED="1651409821308" MODIFIED="1651409825791"/>
</node>
</node>
</node>
</node>
<node TEXT="ShippingAddress" ID="ID_1100741632" CREATED="1649183544239" MODIFIED="1649183549073">
<node TEXT="description" FOLDED="true" ID="ID_194432558" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a shipping address." ID="ID_1077680390" CREATED="1651409833061" MODIFIED="1651409839965"/>
</node>
<node TEXT="properties" ID="ID_1194717405" CREATED="1649183550488" MODIFIED="1649183552701">
<node FOLDED="true" ID="ID_1813294649" CREATED="1649183576811" MODIFIED="1649183576811"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    country_code
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_664002410" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="ISO 3166-1 alpha-2 country code" ID="ID_644294060" CREATED="1651409840291" MODIFIED="1651409844376"/>
</node>
</node>
<node FOLDED="true" ID="ID_475691906" CREATED="1649183578912" MODIFIED="1649183578912"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    state
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_206344682" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="State, if applicable" ID="ID_1511701773" CREATED="1651409844762" MODIFIED="1651409848114"/>
</node>
</node>
<node FOLDED="true" ID="ID_669925851" CREATED="1649183581387" MODIFIED="1649183581387"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    city
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_902215936" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="City" ID="ID_1368915105" CREATED="1651409848373" MODIFIED="1651409853666"/>
</node>
</node>
<node FOLDED="true" ID="ID_1445248957" CREATED="1649183584337" MODIFIED="1649183584337"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    street_line1
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_66243776" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="First line for the address" ID="ID_953465068" CREATED="1651409853957" MODIFIED="1651409857879"/>
</node>
</node>
<node FOLDED="true" ID="ID_1014307559" CREATED="1649183586787" MODIFIED="1649183586787"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    street_line2
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1243916691" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Second line for the address" ID="ID_202530349" CREATED="1651409858175" MODIFIED="1651409863746"/>
</node>
</node>
<node FOLDED="true" ID="ID_1315935414" CREATED="1649183589459" MODIFIED="1649183589459"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    post_code
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_824382814" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Address post code" ID="ID_1338249339" CREATED="1651409864028" MODIFIED="1651409869616"/>
</node>
</node>
</node>
</node>
<node TEXT="OrderInfo" FOLDED="true" ID="ID_370012920" CREATED="1649183594216" MODIFIED="1649183597838">
<node TEXT="description" FOLDED="true" ID="ID_250235553" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents information about an order." ID="ID_1171261644" CREATED="1651409870142" MODIFIED="1651409878247"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_936064667" CREATED="1649183598181" MODIFIED="1649183599819">
<node TEXT="name" FOLDED="true" ID="ID_1319571770" CREATED="1649183600521" MODIFIED="1649183601628">
<node TEXT="description" FOLDED="true" ID="ID_510792959" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="User name" ID="ID_1389893731" CREATED="1651409878707" MODIFIED="1651409886027"/>
</node>
</node>
<node TEXT="phone_number" FOLDED="true" ID="ID_1356072592" CREATED="1649183601847" MODIFIED="1651409877877">
<node TEXT="description" FOLDED="true" ID="ID_681002679" CREATED="1651406533674" MODIFIED="1651409877877">
<icon BUILTIN="bookmark"/>
<node TEXT="User&apos;s phone number" ID="ID_1735905429" CREATED="1651409887406" MODIFIED="1651409898663"/>
</node>
</node>
<node TEXT="email" FOLDED="true" ID="ID_1842985782" CREATED="1649183609928" MODIFIED="1649183610992">
<node TEXT="description" FOLDED="true" ID="ID_572978496" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="User email" ID="ID_1299655850" CREATED="1651409899073" MODIFIED="1651409904295"/>
</node>
</node>
<node TEXT="shipping_address" FOLDED="true" ID="ID_892763891" CREATED="1649183611362" MODIFIED="1649183616488">
<node TEXT="description" FOLDED="true" ID="ID_1610686953" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="User shipping address" ID="ID_1485535702" CREATED="1651409904622" MODIFIED="1651409906392"/>
</node>
<node TEXT="ShippingAddress" ID="ID_808364907" CREATED="1649183675939" MODIFIED="1649183678046"/>
</node>
</node>
</node>
<node TEXT="ShippingOption" FOLDED="true" ID="ID_1181597360" CREATED="1649183617972" MODIFIED="1651409939853">
<node TEXT="description" FOLDED="true" ID="ID_1515758120" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents one shipping option." ID="ID_1713891006" CREATED="1651409940180" MODIFIED="1651409941823"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1773084378" CREATED="1649183622710" MODIFIED="1649183625190">
<node TEXT="id" FOLDED="true" ID="ID_777978397" CREATED="1649183625379" MODIFIED="1649183626141">
<node TEXT="description" FOLDED="true" ID="ID_1282719855" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Shipping option identifier" ID="ID_1073810034" CREATED="1651409945522" MODIFIED="1651409948850"/>
</node>
</node>
<node TEXT="title" FOLDED="true" ID="ID_12234555" CREATED="1649183626701" MODIFIED="1649183628206">
<node TEXT="description" FOLDED="true" ID="ID_256261578" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Option title" ID="ID_1319013294" CREATED="1651409949159" MODIFIED="1651409952389"/>
</node>
</node>
<node TEXT="prices" FOLDED="true" ID="ID_972816422" CREATED="1649183631244" MODIFIED="1649183668394">
<icon BUILTIN="very_positive"/>
<node TEXT="description" FOLDED="true" ID="ID_1580444308" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="List of price portions" ID="ID_472128496" CREATED="1651409953078" MODIFIED="1651409954502"/>
</node>
<node TEXT="LabeledPrice" ID="ID_1069253424" CREATED="1651409956517" MODIFIED="1651409964477">
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
</node>
<node TEXT="SuccessfulPayment" FOLDED="true" ID="ID_77532828" CREATED="1649183670117" MODIFIED="1649183670703">
<node TEXT="description" FOLDED="true" ID="ID_1991055571" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object contains basic information about a successful payment." ID="ID_284296786" CREATED="1651409980238" MODIFIED="1651409982095"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1007267506" CREATED="1649183683733" MODIFIED="1649183685399">
<node TEXT="currency" FOLDED="true" ID="ID_1189419670" CREATED="1649183685669" MODIFIED="1649183687542">
<node TEXT="description" FOLDED="true" ID="ID_1082050505" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Three-letter ISO 4217 currency code" ID="ID_343713572" CREATED="1651409987760" MODIFIED="1651409994344"/>
</node>
</node>
<node TEXT="total_amout" FOLDED="true" ID="ID_1763688106" CREATED="1649183688289" MODIFIED="1649183727750">
<icon BUILTIN="neutral"/>
<node TEXT="description" FOLDED="true" ID="ID_1438315381" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies)." ID="ID_957992578" CREATED="1651409994689" MODIFIED="1651409996208"/>
</node>
</node>
<node TEXT="invoice_payload" FOLDED="true" ID="ID_607501788" CREATED="1649183694188" MODIFIED="1649183698618">
<node TEXT="description" FOLDED="true" ID="ID_330919287" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Bot specified invoice payload" ID="ID_473640568" CREATED="1651409999203" MODIFIED="1651410000244"/>
</node>
</node>
<node TEXT="shipping_option_id" FOLDED="true" ID="ID_1773318721" CREATED="1649183698900" MODIFIED="1649183703100">
<node TEXT="description" FOLDED="true" ID="ID_713615143" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Identifier of the shipping option chosen by the user" ID="ID_338717629" CREATED="1651410006074" MODIFIED="1651410007638"/>
</node>
</node>
<node TEXT="order_info" FOLDED="true" ID="ID_1707876669" CREATED="1649183703275" MODIFIED="1649183706958">
<node TEXT="description" FOLDED="true" ID="ID_727943215" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Order info provided by the user" ID="ID_720925662" CREATED="1651410016890" MODIFIED="1651410022135"/>
</node>
<node TEXT="OrderInfo" ID="ID_377145115" CREATED="1649183721098" MODIFIED="1649183724328"/>
</node>
<node TEXT="telegram_payment_charge_id" FOLDED="true" ID="ID_641195184" CREATED="1649183707280" MODIFIED="1649183713230">
<node TEXT="description" FOLDED="true" ID="ID_327589821" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Telegram payment identifier" ID="ID_363478490" CREATED="1651410022439" MODIFIED="1651410027049"/>
</node>
</node>
<node FOLDED="true" ID="ID_1225792090" CREATED="1649183716529" MODIFIED="1649183716529"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    provider_payment_charge_id
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_55935851" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Provider payment identifier" ID="ID_1012091295" CREATED="1651410027241" MODIFIED="1651410028610"/>
</node>
</node>
</node>
</node>
<node TEXT="PassportData" FOLDED="true" ID="ID_818859499" CREATED="1649183741136" MODIFIED="1649183741751">
<node TEXT="description" FOLDED="true" ID="ID_1927801719" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Contains information about Telegram Passport data shared with the bot by the user." ID="ID_31242377" CREATED="1651410051608" MODIFIED="1651410053107"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_1473828789" CREATED="1649183745099" MODIFIED="1649183749077">
<node TEXT="data" FOLDED="true" ID="ID_792710963" CREATED="1649183749296" MODIFIED="1649183757895">
<icon BUILTIN="very_positive"/>
<node TEXT="description" FOLDED="true" ID="ID_1806259995" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Array with information about documents and other Telegram Passport elements that was shared with the bot" ID="ID_1457566027" CREATED="1651410060455" MODIFIED="1651410065400"/>
</node>
<node TEXT="EncryptedPassportElement" ID="ID_822780450" CREATED="1649183758769" MODIFIED="1649183766718"/>
</node>
<node TEXT="credentials" FOLDED="true" ID="ID_1609062738" CREATED="1649183750975" MODIFIED="1649183753970">
<node TEXT="description" FOLDED="true" ID="ID_196491908" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Encrypted credentials required to decrypt the data" ID="ID_913375283" CREATED="1651410065572" MODIFIED="1651410072938"/>
</node>
<node TEXT="EncryptedCredentials" ID="ID_533295315" CREATED="1649183768456" MODIFIED="1649183773763"/>
</node>
</node>
</node>
<node TEXT="PassportFile" FOLDED="true" ID="ID_951984032" CREATED="1649183775806" MODIFIED="1649183778449">
<node TEXT="description" FOLDED="true" ID="ID_1463646403" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="This object represents a file uploaded to Telegram Passport. Currently all Telegram Passport files are in JPEG format when decrypted and don&apos;t exceed 10MB." ID="ID_1422118418" CREATED="1651410087595" MODIFIED="1651410089394"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_469101585" CREATED="1649183778903" MODIFIED="1649183781513">
<node TEXT="file_id" FOLDED="true" ID="ID_1949647192" CREATED="1649183782911" MODIFIED="1649183784476">
<node TEXT="description" FOLDED="true" ID="ID_1392859547" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Identifier for this file, which can be used to download or reuse the file" ID="ID_1905812909" CREATED="1651410095260" MODIFIED="1651410099611"/>
</node>
</node>
<node TEXT="file_unique_id" FOLDED="true" ID="ID_907470468" CREATED="1649183784631" MODIFIED="1649183789663">
<node TEXT="description" FOLDED="true" ID="ID_1818475421" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Unique identifier for this file, which is supposed to be the same over time and for different bots. Can&apos;t be used to download or reuse the file." ID="ID_547675019" CREATED="1651410100285" MODIFIED="1651410102054"/>
</node>
</node>
<node FOLDED="true" ID="ID_1521888511" CREATED="1649183795399" MODIFIED="1649183995077">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_size
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_951309500" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="File size in bytes" ID="ID_1329748619" CREATED="1651410105776" MODIFIED="1651410111104"/>
</node>
</node>
<node FOLDED="true" ID="ID_1462677242" CREATED="1649183798329" MODIFIED="1649183995078">
<icon BUILTIN="neutral"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    file_date
  </body>
</html>
</richcontent>
<node TEXT="description" FOLDED="true" ID="ID_1278657484" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Unix time when the file was uploaded" ID="ID_812211334" CREATED="1651410112470" MODIFIED="1651410113287"/>
</node>
</node>
</node>
</node>
<node TEXT="EncryptedPassportElement" FOLDED="true" ID="ID_1596179179" CREATED="1649183801946" MODIFIED="1649183802479">
<node TEXT="description" FOLDED="true" ID="ID_1790530034" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Contains information about documents or other Telegram Passport elements shared with the bot by the user." ID="ID_1306763474" CREATED="1651410148537" MODIFIED="1651410149873"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_233180753" CREATED="1649183803179" MODIFIED="1649183804609">
<node TEXT="_type" FOLDED="true" ID="ID_121316327" CREATED="1649183807965" MODIFIED="1649183814796">
<node TEXT="description" FOLDED="true" ID="ID_990080629" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Element type. One of “personal_details”, “passport”, “driver_license”, “identity_card”, “internal_passport”, “address”, “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration”, “temporary_registration”, “phone_number”, “email”" ID="ID_819308027" CREATED="1651410158920" MODIFIED="1651410160907"/>
</node>
<node TEXT="enum" FOLDED="true" ID="ID_1988370554" CREATED="1649183809169" MODIFIED="1649183810905">
<node TEXT="personal_details" ID="ID_846866150" CREATED="1649183920238" MODIFIED="1649183920238"/>
<node TEXT="passport" ID="ID_396043910" CREATED="1649183920238" MODIFIED="1649183920238"/>
<node TEXT="driver_license" ID="ID_54447109" CREATED="1649183920238" MODIFIED="1649183920238"/>
<node TEXT="identity_card" ID="ID_1861152206" CREATED="1649183920238" MODIFIED="1649183920238"/>
<node TEXT="internal_passport" ID="ID_1478643261" CREATED="1649183920239" MODIFIED="1649183920239"/>
<node TEXT="address" ID="ID_1233761368" CREATED="1649183920239" MODIFIED="1649183920239"/>
<node TEXT="utility_bill" ID="ID_357265264" CREATED="1649183920239" MODIFIED="1649183920239"/>
<node TEXT="bank_statement" ID="ID_36545715" CREATED="1649183920239" MODIFIED="1649183920239"/>
<node TEXT="rental_agreement" ID="ID_1804501632" CREATED="1649183920239" MODIFIED="1649183920239"/>
<node TEXT="passport_registration" ID="ID_1965053602" CREATED="1649183920240" MODIFIED="1649183920240"/>
<node TEXT="temporary_registration" ID="ID_732370763" CREATED="1649183920240" MODIFIED="1649183920240"/>
<node TEXT="phone_number" ID="ID_985728566" CREATED="1649183920240" MODIFIED="1649183920240"/>
<node TEXT="email" ID="ID_910514966" CREATED="1649183920240" MODIFIED="1649183920240"/>
</node>
</node>
<node TEXT="data" FOLDED="true" ID="ID_1197611031" CREATED="1649183929894" MODIFIED="1649183930480">
<node TEXT="description" FOLDED="true" ID="ID_1547882582" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Base64-encoded encrypted Telegram Passport element data provided by the user, available for “personal_details”, “passport”, “driver_license”, “identity_card”, “internal_passport” and “address” types. Can be decrypted and verified using the accompanying EncryptedCredentials." ID="ID_329954623" CREATED="1651410168868" MODIFIED="1651410173930"/>
</node>
</node>
<node TEXT="phone_number" FOLDED="true" ID="ID_1991030384" CREATED="1649183934859" MODIFIED="1649183938857">
<node TEXT="description" FOLDED="true" ID="ID_144409651" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="User&apos;s verified phone number, available only for “phone_number” type" ID="ID_833749771" CREATED="1651410175353" MODIFIED="1651410176473"/>
</node>
</node>
<node TEXT="email" FOLDED="true" ID="ID_699482246" CREATED="1649183939137" MODIFIED="1649183939608">
<node TEXT="description" FOLDED="true" ID="ID_1607775729" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="User&apos;s verified email address, available only for “email” type" ID="ID_496432398" CREATED="1651410185291" MODIFIED="1651410186595"/>
</node>
</node>
<node TEXT="files" FOLDED="true" ID="ID_1232841173" CREATED="1649183940441" MODIFIED="1649183953003">
<icon BUILTIN="very_positive"/>
<node TEXT="description" FOLDED="true" ID="ID_1900975634" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Array of encrypted files with documents provided by the user, available for “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration” and “temporary_registration” types. Files can be decrypted and verified using the accompanying EncryptedCredentials." ID="ID_400485157" CREATED="1651410194883" MODIFIED="1651410196703"/>
</node>
<node TEXT="PassportFile" ID="ID_1249996624" CREATED="1649183946707" MODIFIED="1649183950499"/>
</node>
<node TEXT="front_side" FOLDED="true" ID="ID_980125750" CREATED="1649183941868" MODIFIED="1649183945721">
<node TEXT="description" FOLDED="true" ID="ID_1990468176" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Encrypted file with the front side of the document, provided by the user. Available for “passport”, “driver_license”, “identity_card” and “internal_passport”. The file can be decrypted and verified using the accompanying EncryptedCredentials." ID="ID_1045574199" CREATED="1651410203838" MODIFIED="1651410210809"/>
</node>
<node TEXT="PassportFile" ID="ID_248109254" CREATED="1649183946707" MODIFIED="1649183950499"/>
</node>
<node TEXT="reverse_side" FOLDED="true" ID="ID_1310441887" CREATED="1649183960567" MODIFIED="1649183963634">
<node TEXT="description" FOLDED="true" ID="ID_580409281" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Encrypted file with the reverse side of the document, provided by the user. Available for “driver_license” and “identity_card”. The file can be decrypted and verified using the accompanying EncryptedCredentials." ID="ID_1391796037" CREATED="1651410211935" MODIFIED="1651410213623"/>
</node>
<node TEXT="PassportFile" ID="ID_1264147007" CREATED="1649183946707" MODIFIED="1649183950499"/>
</node>
<node TEXT="selfie" FOLDED="true" ID="ID_529719399" CREATED="1649183965082" MODIFIED="1649183967404">
<node TEXT="description" FOLDED="true" ID="ID_659070011" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Encrypted file with the selfie of the user holding a document, provided by the user; available for “passport”, “driver_license”, “identity_card” and “internal_passport”. The file can be decrypted and verified using the accompanying EncryptedCredentials." ID="ID_1939042940" CREATED="1651410221723" MODIFIED="1651410245905"/>
</node>
<node TEXT="PassportFile" ID="ID_1546036117" CREATED="1649183946707" MODIFIED="1649183950499"/>
</node>
<node TEXT="translation" FOLDED="true" ID="ID_747616723" CREATED="1649183968717" MODIFIED="1649183979776">
<icon BUILTIN="very_positive"/>
<node TEXT="description" FOLDED="true" ID="ID_373272256" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Array of encrypted files with translated versions of documents provided by the user. Available if requested for “passport”, “driver_license”, “identity_card”, “internal_passport”, “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration” and “temporary_registration” types. Files can be decrypted and verified using the accompanying EncryptedCredentials." ID="ID_1523286936" CREATED="1651410232486" MODIFIED="1651410234506"/>
</node>
<node TEXT="PassportFile" ID="ID_451970513" CREATED="1649183946707" MODIFIED="1649183950499"/>
</node>
<node TEXT="hash" FOLDED="true" ID="ID_545487928" CREATED="1649183981114" MODIFIED="1649183987619">
<node TEXT="description" FOLDED="true" ID="ID_1448096645" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Base64-encoded element hash for using in PassportElementErrorUnspecified" ID="ID_194566419" CREATED="1651410254169" MODIFIED="1651410255487"/>
</node>
</node>
</node>
</node>
<node TEXT="EncryptedCredentials" FOLDED="true" ID="ID_985128919" CREATED="1649184001130" MODIFIED="1649184001558">
<node TEXT="description" FOLDED="true" ID="ID_713248332" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Contains data required for decrypting and authenticating EncryptedPassportElement. See the Telegram Passport Documentation for a complete description of the data decryption and authentication processes." ID="ID_1050770193" CREATED="1651410263272" MODIFIED="1651410264504"/>
</node>
<node TEXT="properties" FOLDED="true" ID="ID_894701351" CREATED="1649184002045" MODIFIED="1649184004501">
<node TEXT="data" FOLDED="true" ID="ID_1787322871" CREATED="1649184004721" MODIFIED="1649184005995">
<node TEXT="description" FOLDED="true" ID="ID_29227159" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Base64-encoded encrypted JSON-serialized data with unique user&apos;s payload, data hashes and secrets required for EncryptedPassportElement decryption and authentication" ID="ID_961291442" CREATED="1651410270804" MODIFIED="1651410275355"/>
</node>
</node>
<node TEXT="hash" FOLDED="true" ID="ID_750257255" CREATED="1649184006297" MODIFIED="1649184007265">
<node TEXT="description" FOLDED="true" ID="ID_324769907" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Base64-encoded data hash for data authentication" ID="ID_1322694765" CREATED="1651410276136" MODIFIED="1651410278553"/>
</node>
</node>
<node TEXT="secret" FOLDED="true" ID="ID_1353149123" CREATED="1649184007927" MODIFIED="1649184009537">
<node TEXT="description" FOLDED="true" ID="ID_107407010" CREATED="1651406533674" MODIFIED="1651406540270">
<icon BUILTIN="bookmark"/>
<node TEXT="Base64-encoded secret, encrypted with the bot&apos;s public RSA key, required for data decryption" ID="ID_431741338" CREATED="1651410283240" MODIFIED="1651410285304"/>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
