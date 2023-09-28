# classes.dex

.class public Landroid/app/BroadcastOptions;
.super Landroid/app/ComponentOptions;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CHANGE_ALWAYS_DISABLED:J = 0xc916a0fL

.field public static final CHANGE_ALWAYS_ENABLED:J = 0xc82a338L

.field public static final CHANGE_INVALID:J = -0x8000000000000000L

.field private static final KEY_ALLOW_BACKGROUND_ACTIVITY_STARTS:Ljava/lang/String; = "android:broadcast.allowBackgroundActivityStarts"

.field private static final KEY_DONT_SEND_TO_RESTRICTED_APPS:Ljava/lang/String; = "android:broadcast.dontSendToRestrictedApps"

.field private static final KEY_ID_FOR_RESPONSE_EVENT:Ljava/lang/String; = "android:broadcast.idForResponseEvent"

.field private static final KEY_MAX_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.maxManifestReceiverApiLevel"

.field private static final KEY_MIN_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.minManifestReceiverApiLevel"

.field public static final KEY_REQUIRE_ALL_OF_PERMISSIONS:Ljava/lang/String; = "android:broadcast.requireAllOfPermissions"

.field private static final KEY_REQUIRE_COMPAT_CHANGE_ENABLED:Ljava/lang/String; = "android:broadcast.requireCompatChangeEnabled"

.field private static final KEY_REQUIRE_COMPAT_CHANGE_ID:Ljava/lang/String; = "android:broadcast.requireCompatChangeId"

.field public static final KEY_REQUIRE_NONE_OF_PERMISSIONS:Ljava/lang/String; = "android:broadcast.requireNoneOfPermissions"

.field private static final KEY_TEMPORARY_APP_ALLOWLIST_DURATION:Ljava/lang/String; = "android:broadcast.temporaryAppAllowlistDuration"

.field private static final KEY_TEMPORARY_APP_ALLOWLIST_REASON:Ljava/lang/String; = "android:broadcast.temporaryAppAllowlistReason"

.field private static final KEY_TEMPORARY_APP_ALLOWLIST_REASON_CODE:Ljava/lang/String; = "android:broadcast.temporaryAppAllowlistReasonCode"

.field private static final KEY_TEMPORARY_APP_ALLOWLIST_TYPE:Ljava/lang/String; = "android:broadcast.temporaryAppAllowlistType"

.field public static final TEMPORARY_WHITELIST_TYPE_FOREGROUND_SERVICE_ALLOWED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TEMPORARY_WHITELIST_TYPE_FOREGROUND_SERVICE_NOT_ALLOWED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mAllowBackgroundActivityStarts:Z

.field private mDontSendToRestrictedApps:Z

.field private mIdForResponseEvent:J

.field private mMaxManifestReceiverApiLevel:I

.field private mMinManifestReceiverApiLevel:I

.field private mRequireAllOfPermissions:[Ljava/lang/String;

.field private mRequireCompatChangeEnabled:Z

.field private mRequireCompatChangeId:J

.field private mRequireNoneOfPermissions:[Ljava/lang/String;

.field private mTemporaryAppAllowlistDuration:J

.field private mTemporaryAppAllowlistReason:Ljava/lang/String;

.field private mTemporaryAppAllowlistReasonCode:I

.field private mTemporaryAppAllowlistType:I


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/ComponentOptions;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    const/16 v1, 0x2710

    iput v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeEnabled:Z

    invoke-direct {p0}, Landroid/app/BroadcastOptions;->resetTemporaryAppAllowlist()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 9

    invoke-direct {p0, p1}, Landroid/app/ComponentOptions;-><init>(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    const/16 v1, 0x2710

    iput v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeEnabled:Z

    const-string v5, "android:broadcast.temporaryAppAllowlistDuration"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    const-string v5, "android:broadcast.temporaryAppAllowlistType"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    const-string v5, "android:broadcast.temporaryAppAllowlistReasonCode"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    const-string v5, "android:broadcast.temporaryAppAllowlistReason"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReason:Ljava/lang/String;

    goto :goto_3d

    :cond_3a
    invoke-direct {p0}, Landroid/app/BroadcastOptions;->resetTemporaryAppAllowlist()V

    :goto_3d
    const-string v5, "android:broadcast.minManifestReceiverApiLevel"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    const-string v5, "android:broadcast.maxManifestReceiverApiLevel"

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    const-string v1, "android:broadcast.dontSendToRestrictedApps"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    const-string v1, "android:broadcast.allowBackgroundActivityStarts"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mAllowBackgroundActivityStarts:Z

    const-string v0, "android:broadcast.requireAllOfPermissions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BroadcastOptions;->mRequireAllOfPermissions:[Ljava/lang/String;

    const-string v0, "android:broadcast.requireNoneOfPermissions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BroadcastOptions;->mRequireNoneOfPermissions:[Ljava/lang/String;

    const-string v0, "android:broadcast.requireCompatChangeId"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    const-string v0, "android:broadcast.requireCompatChangeEnabled"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeEnabled:Z

    const-string v0, "android:broadcast.idForResponseEvent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mIdForResponseEvent:J

    return-void
.end method

.method private isTemporaryAppAllowlistSet()Z
    .registers 5

    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    iget v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static makeBasic()Landroid/app/BroadcastOptions;
    .registers 1

    new-instance v0, Landroid/app/BroadcastOptions;

    invoke-direct {v0}, Landroid/app/BroadcastOptions;-><init>()V

    return-object v0
.end method

.method private resetTemporaryAppAllowlist()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public allowsBackgroundActivityStarts()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/BroadcastOptions;->mAllowBackgroundActivityStarts:Z

    return v0
.end method

.method public clearRequireCompatChange()V
    .registers 3

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeEnabled:Z

    return-void
.end method

.method public getIdForResponseEvent()J
    .registers 3

    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mIdForResponseEvent:J

    return-wide v0
.end method

.method public getMaxManifestReceiverApiLevel()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    return v0
.end method

.method public getMinManifestReceiverApiLevel()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    return v0
.end method

.method public getRequireCompatChangeId()J
    .registers 3

    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    return-wide v0
.end method

.method public getTemporaryAppAllowlistDuration()J
    .registers 3

    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    return-wide v0
.end method

.method public getTemporaryAppAllowlistReason()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReason:Ljava/lang/String;

    return-object v0
.end method

.method public getTemporaryAppAllowlistReasonCode()I
    .registers 2

    iget v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    return v0
.end method

.method public getTemporaryAppAllowlistType()I
    .registers 2

    iget v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    return v0
.end method

.method public isDontSendToRestrictedApps()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    return v0
.end method

.method public isPendingIntentBackgroundActivityLaunchAllowed()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-super {p0}, Landroid/app/ComponentOptions;->isPendingIntentBackgroundActivityLaunchAllowed()Z

    move-result v0

    return v0
.end method

.method public recordResponseEventWhileInBackground(J)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mIdForResponseEvent:J

    return-void
.end method

.method public setBackgroundActivityStartsAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/BroadcastOptions;->mAllowBackgroundActivityStarts:Z

    return-void
.end method

.method public setDontSendToRestrictedApps(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    return-void
.end method

.method public setMaxManifestReceiverApiLevel(I)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    return-void
.end method

.method public setMinManifestReceiverApiLevel(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    return-void
.end method

.method public setPendingIntentBackgroundActivityLaunchAllowed(Z)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-super {p0, p1}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    return-void
.end method

.method public setRequireAllOfPermissions([Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/app/BroadcastOptions;->mRequireAllOfPermissions:[Ljava/lang/String;

    return-void
.end method

.method public setRequireCompatChange(JZ)V
    .registers 4

    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    iput-boolean p3, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeEnabled:Z

    return-void
.end method

.method public setRequireNoneOfPermissions([Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/app/BroadcastOptions;->mRequireNoneOfPermissions:[Ljava/lang/String;

    return-void
.end method

.method public setTemporaryAppAllowlist(JIILjava/lang/String;)V
    .registers 7

    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    iput p3, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    iput p4, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    iput-object p5, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReason:Ljava/lang/String;

    invoke-direct {p0}, Landroid/app/BroadcastOptions;->isTemporaryAppAllowlistSet()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Landroid/app/BroadcastOptions;->resetTemporaryAppAllowlist()V

    :cond_11
    return-void
.end method

.method public setTemporaryAppWhitelistDuration(J)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    return-void
.end method

.method public testRequireCompatChange(I)Z
    .registers 6

    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    iget-boolean v1, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeEnabled:Z

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    return v3

    :cond_14
    return v3
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 6

    invoke-super {p0}, Landroid/app/ComponentOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0}, Landroid/app/BroadcastOptions;->isTemporaryAppAllowlistSet()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-wide v1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    const-string v3, "android:broadcast.temporaryAppAllowlistDuration"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget v1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    const-string v2, "android:broadcast.temporaryAppAllowlistType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    const-string v2, "android:broadcast.temporaryAppAllowlistReasonCode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReason:Ljava/lang/String;

    const-string v2, "android:broadcast.temporaryAppAllowlistReason"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    iget v1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    if-eqz v1, :cond_2f

    const-string v2, "android:broadcast.minManifestReceiverApiLevel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2f
    iget v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    const/16 v2, 0x2710

    if-eq v1, v2, :cond_3a

    const-string v2, "android:broadcast.maxManifestReceiverApiLevel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3a
    iget-boolean v1, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_44

    const-string v1, "android:broadcast.dontSendToRestrictedApps"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_44
    iget-boolean v1, p0, Landroid/app/BroadcastOptions;->mAllowBackgroundActivityStarts:Z

    if-eqz v1, :cond_4d

    const-string v1, "android:broadcast.allowBackgroundActivityStarts"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4d
    iget-object v1, p0, Landroid/app/BroadcastOptions;->mRequireAllOfPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_56

    const-string v2, "android:broadcast.requireAllOfPermissions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_56
    iget-object v1, p0, Landroid/app/BroadcastOptions;->mRequireNoneOfPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_5f

    const-string v2, "android:broadcast.requireNoneOfPermissions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_5f
    iget-wide v1, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-eqz v3, :cond_73

    const-string v3, "android:broadcast.requireCompatChangeId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v1, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeEnabled:Z

    const-string v2, "android:broadcast.requireCompatChangeEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_73
    iget-wide v1, p0, Landroid/app/BroadcastOptions;->mIdForResponseEvent:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_80

    const-string v3, "android:broadcast.idForResponseEvent"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_80
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_88

    const/4 v1, 0x0

    goto :goto_89

    :cond_88
    move-object v1, v0

    :goto_89
    return-object v1
.end method
