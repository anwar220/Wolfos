# classes3.dex

.class public Landroid/telecom/CallerInfo;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field public static final USER_TYPE_CURRENT:J = 0x0L

.field public static final USER_TYPE_WORK:J = 0x1L

.field private static final VDBG:Z


# instance fields
.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public cachedPhotoIcon:Landroid/graphics/Bitmap;

.field public cnapName:Ljava/lang/String;

.field private contactDisplayPhotoUri:Landroid/net/Uri;

.field public contactExists:Z

.field private contactIdOrZero:J

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field public geoDescription:Ljava/lang/String;

.field public isCachedPhotoCurrent:Z

.field public lookupKey:Ljava/lang/String;

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field private name:Ljava/lang/String;

.field public namePresentation:I

.field public needUpdate:Z

.field public normalizedNumber:Ljava/lang/String;

.field public numberLabel:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public phoneLabel:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field public photoResource:I

.field public preferredPhoneAccountComponent:Landroid/content/ComponentName;

.field public preferredPhoneAccountId:Ljava/lang/String;

.field public shouldSendToVoicemail:Z

.field public userType:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    sput-boolean v0, Landroid/telecom/CallerInfo;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsEmergency:Z

    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsVoiceMail:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/CallerInfo;->userType:J

    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfo;)Landroid/telecom/CallerInfo;
    .registers 6

    iget-boolean v0, p2, Landroid/telecom/CallerInfo;->contactExists:Z

    if-nez v0, :cond_22

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/telecom/CallerInfo;

    move-result-object p2

    :cond_22
    return-object p2
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/telecom/CallerInfo;
    .registers 10

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/telecom/CallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v7

    if-eqz v7, :cond_22

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    :try_start_d
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telecom/CallerInfo;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_15} :catch_17

    move-object v0, v1

    goto :goto_22

    :catch_17
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CallerInfo"

    const-string v4, "Error getting caller info."

    invoke-static {v3, v1, v4, v2}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    :goto_22
    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telecom/CallerInfo;
    .registers 15

    const/16 v0, 0xc

    invoke-static {v0, p1}, Landroid/util/SeempLog;->record_uri(ILandroid/net/Uri;)I

    new-instance v0, Landroid/telecom/CallerInfo;

    invoke-direct {v0}, Landroid/telecom/CallerInfo;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/telecom/CallerInfo;->photoResource:I

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/telecom/CallerInfo;->phoneLabel:Ljava/lang/String;

    iput v1, v0, Landroid/telecom/CallerInfo;->numberType:I

    iput-object v2, v0, Landroid/telecom/CallerInfo;->numberLabel:Ljava/lang/String;

    iput-object v2, v0, Landroid/telecom/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, v0, Landroid/telecom/CallerInfo;->isCachedPhotoCurrent:Z

    iput-boolean v1, v0, Landroid/telecom/CallerInfo;->contactExists:Z

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/telecom/CallerInfo;->userType:J

    sget-boolean v5, Landroid/telecom/CallerInfo;->VDBG:Z

    const-string v6, "CallerInfo"

    if-eqz v5, :cond_2b

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "getCallerInfo() based on cursor..."

    invoke-static {v6, v8, v7}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    if-eqz p2, :cond_17e

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_17a

    const-string v7, "display_name"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_42

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    :cond_42
    const-string/jumbo v9, "number"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v8, :cond_51

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_51
    const-string/jumbo v9, "normalized_number"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v8, :cond_60

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    :cond_60
    const-string/jumbo v9, "label"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v8, :cond_8a

    const-string/jumbo v9, "type"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v8, :cond_8a

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v0, Landroid/telecom/CallerInfo;->numberType:I

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/telecom/CallerInfo;->numberLabel:Ljava/lang/String;

    iget v11, v0, Landroid/telecom/CallerInfo;->numberType:I

    invoke-static {p0, v11, v10}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/telecom/CallerInfo;->phoneLabel:Ljava/lang/String;

    :cond_8a
    invoke-static {p1, p2}, Landroid/telecom/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v7

    if-eq v7, v8, :cond_c7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    cmp-long v3, v9, v3

    if-eqz v3, :cond_bc

    invoke-static {v9, v10}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v3

    if-nez v3, :cond_bc

    iput-wide v9, v0, Landroid/telecom/CallerInfo;->contactIdOrZero:J

    if-eqz v5, :cond_bc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> got info.contactIdOrZero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Landroid/telecom/CallerInfo;->contactIdOrZero:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v6, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_bc
    invoke-static {v9, v10}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v3

    if-eqz v3, :cond_c6

    const-wide/16 v3, 0x1

    iput-wide v3, v0, Landroid/telecom/CallerInfo;->userType:J

    :cond_c6
    goto :goto_df

    :cond_c7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find contact_id column for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v6, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_df
    const-string/jumbo v3, "lookup"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_ee

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->lookupKey:Ljava/lang/String;

    :cond_ee
    const-string/jumbo v4, "photo_uri"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_108

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_108

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    goto :goto_10a

    :cond_108
    iput-object v2, v0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    :goto_10a
    const-string/jumbo v4, "preferred_phone_account_component_name"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_124

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_124

    nop

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->preferredPhoneAccountComponent:Landroid/content/ComponentName;

    :cond_124
    const-string/jumbo v4, "preferred_phone_account_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_139

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_139

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->preferredPhoneAccountId:Ljava/lang/String;

    :cond_139
    const-string v4, "custom_ringtone"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_161

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_161

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_156

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v2, v0, Landroid/telecom/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_163

    :cond_156
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroid/telecom/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_163

    :cond_161
    iput-object v2, v0, Landroid/telecom/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    :goto_163
    const-string/jumbo v2, "send_to_voicemail"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v8, :cond_175

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v3, :cond_175

    move v4, v3

    goto :goto_176

    :cond_175
    move v4, v1

    :goto_176
    iput-boolean v4, v0, Landroid/telecom/CallerInfo;->shouldSendToVoicemail:Z

    iput-boolean v3, v0, Landroid/telecom/CallerInfo;->contactExists:Z

    :cond_17a
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    const/4 p2, 0x0

    :cond_17e
    iput-boolean v1, v0, Landroid/telecom/CallerInfo;->needUpdate:Z

    iget-object v1, v0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/telecom/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    iput-object p1, v0, Landroid/telecom/CallerInfo;->contactRefUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/CallerInfo;
    .registers 5

    sget-boolean v0, Landroid/telecom/CallerInfo;->VDBG:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CallerInfo"

    const-string v2, "getCallerInfo() based on number..."

    invoke-static {v1, v2, v0}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/telecom/CallerInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/telecom/CallerInfo;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    return-object v1

    :cond_2b
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    new-instance v1, Landroid/telecom/CallerInfo;

    invoke-direct {v1}, Landroid/telecom/CallerInfo;-><init>()V

    invoke-virtual {v1, p0}, Landroid/telecom/CallerInfo;->markAsEmergency(Landroid/content/Context;)Landroid/telecom/CallerInfo;

    move-result-object v1

    return-object v1

    :cond_43
    invoke-static {v1, p2, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    new-instance v1, Landroid/telecom/CallerInfo;

    invoke-direct {v1}, Landroid/telecom/CallerInfo;-><init>()V

    invoke-virtual {v1, p0, p2}, Landroid/telecom/CallerInfo;->markAsVoiceMail(Landroid/content/Context;I)Landroid/telecom/CallerInfo;

    move-result-object v1

    return-object v1

    :cond_53
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/telecom/CallerInfo;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/telecom/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfo;)Landroid/telecom/CallerInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6f

    iput-object p1, v2, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_6f
    return-object v2
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .registers 9

    sget-boolean v0, Landroid/telecom/CallerInfo;->VDBG:Z

    const/4 v1, 0x0

    const-string v2, "CallerInfo"

    if-eqz v0, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "content://com.android.contacts/data/phones"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    if-eqz v0, :cond_3b

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v2, v6, v5}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3b
    const-string v4, "contact_id"

    goto :goto_84

    :cond_3e
    const-string v5, "content://com.android.contacts/data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    if-eqz v0, :cond_4f

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v2, v6, v5}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4f
    const-string v4, "contact_id"

    goto :goto_84

    :cond_52
    const-string v5, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    if-eqz v0, :cond_63

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v2, v6, v5}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_63
    const-string v4, "_id"

    goto :goto_84

    :cond_66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected prefix for contactRef \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_84
    if-eqz v4, :cond_8b

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    goto :goto_8c

    :cond_8b
    const/4 v5, -0x1

    :goto_8c
    if-eqz v0, :cond_b6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> Using column \'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\' (columnIndex = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ") for person_id lookup..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b6
    return v5
.end method

.method protected static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telecom/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    const/4 v2, 0x0

    const-string v3, "CallerInfo"

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_19
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "CountryDetector.detectCountry() returned null."

    invoke-static {v3, v5, v7, v6}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    :goto_25
    if-nez v0, :cond_43

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_43
    return-object v0
.end method

.method public static getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    sget-boolean v0, Landroid/telecom/CallerInfo;->VDBG:Z

    const/4 v1, 0x0

    const-string v2, "CallerInfo"

    if-eqz v0, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGeoDescription(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2d

    return-object v4

    :cond_2d
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p0, v6}, Landroid/telecom/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "\'"

    if-eqz v0, :cond_71

    :try_start_48
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parsing \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' for countryIso \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v1, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_71
    invoke-virtual {v3, p1, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v10

    move-object v8, v10

    if-eqz v0, :cond_90

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- parsed number: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v10}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_90
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_48 .. :try_end_90} :catch_91

    :cond_90
    goto :goto_b2

    :catch_91
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v1, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_b2
    if-eqz v8, :cond_d9

    invoke-virtual {v5, v8, v6}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v4, Landroid/telecom/CallerInfo;->VDBG:Z

    if-eqz v4, :cond_d8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- got description: \'"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d8
    return-object v0

    :cond_d9
    return-object v4
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return-object v0

    :cond_b
    :goto_b
    return-object p0
.end method


# virtual methods
.method public SetContactDisplayPhotoUri(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    return-void
.end method

.method public getContactDisplayPhotoUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getContactId()J
    .registers 3

    iget-wide v0, p0, Landroid/telecom/CallerInfo;->contactIdOrZero:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isEmergencyNumber()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method markAsEmergency(Landroid/content/Context;)Landroid/telecom/CallerInfo;
    .registers 3

    const v0, 0x104037f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    const v0, 0x10806b7

    iput v0, p0, Landroid/telecom/CallerInfo;->photoResource:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsEmergency:Z

    return-object p0
.end method

.method markAsVoiceMail(Landroid/content/Context;I)Landroid/telecom/CallerInfo;
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsVoiceMail:Z

    :try_start_3
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_21

    :catch_16
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallerInfo"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v0, v3, v1}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_21
    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    const-string/jumbo v4, "null"

    const-string/jumbo v5, "non-null"

    if-nez v3, :cond_3b

    move-object v3, v4

    goto :goto_3c

    :cond_3b
    move-object v3, v5

    :goto_3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", phoneNumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v3, :cond_58

    goto :goto_59

    :cond_58
    move-object v4, v5

    :goto_59
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p2

    goto :goto_c

    :cond_a
    iget-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    :goto_c
    invoke-static {p1, v0}, Landroid/telecom/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telecom/CallerInfo;->geoDescription:Ljava/lang/String;

    return-void
.end method
