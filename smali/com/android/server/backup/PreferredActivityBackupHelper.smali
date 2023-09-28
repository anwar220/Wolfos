# classes4.dex

.class public Lcom/android/server/backup/PreferredActivityBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/PreferredActivityBackupHelper$Key;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEYS:[Ljava/lang/String;

.field private static final KEY_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final KEY_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final KEY_INTENT_VERIFICATION:Ljava/lang/String; = "intent-verification"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_PREFERRED:Ljava/lang/String; = "preferred-activity"

.field private static final STATE_VERSION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PreferredBackup"


# instance fields
.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "preferred-activity"

    const-string v1, "default-apps"

    const-string v2, "intent-verification"

    const-string v3, "domain-verification"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/PreferredActivityBackupHelper;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    sget-object v0, Lcom/android/server/backup/PreferredActivityBackupHelper;->KEYS:[Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 8

    const-string v0, "PreferredBackup"

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, -0x1

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_7e

    :cond_e
    goto :goto_37

    :sswitch_f
    const-string/jumbo v3, "preferred-activity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v2, 0x0

    goto :goto_37

    :sswitch_1a
    const-string v3, "intent-verification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v2, 0x2

    goto :goto_37

    :sswitch_24
    const-string v3, "domain-verification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v2, 0x3

    goto :goto_37

    :sswitch_2e
    const-string v3, "default-apps"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v2, 0x1

    :goto_37
    packed-switch v2, :pswitch_data_90

    goto :goto_4e

    :pswitch_3b  #0x3
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreDomainVerification([BI)V

    goto :goto_64

    :pswitch_41  #0x2
    goto :goto_64

    :pswitch_42  #0x1
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreDefaultApps([BI)V

    goto :goto_64

    :pswitch_48  #0x0
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restorePreferredActivities([BI)V

    goto :goto_64

    :goto_4e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected restore key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_64} :catch_65

    :goto_64
    goto :goto_7c

    :catch_65
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to restore key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7c
    return-void

    nop

    :sswitch_data_7e
    .sparse-switch
        -0x298b2982 -> :sswitch_2e
        -0x20befb7c -> :sswitch_24
        -0x19949e54 -> :sswitch_1a
        0x4fa3eadb -> :sswitch_f
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_48  #00000000
        :pswitch_42  #00000001
        :pswitch_41  #00000002
        :pswitch_3b  #00000003
    .end packed-switch
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .registers 8

    const-string v0, "PreferredBackup"

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_82

    :cond_f
    goto :goto_38

    :sswitch_10
    const-string/jumbo v4, "preferred-activity"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x0

    goto :goto_38

    :sswitch_1b
    const-string v4, "intent-verification"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x2

    goto :goto_38

    :sswitch_25
    const-string v4, "domain-verification"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x3

    goto :goto_38

    :sswitch_2f
    const-string v4, "default-apps"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x1

    :goto_38
    packed-switch v2, :pswitch_data_94

    goto :goto_52

    :pswitch_3c  #0x3
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getDomainVerificationBackup(I)[B

    move-result-object v0

    return-object v0

    :pswitch_43  #0x2
    return-object v3

    :pswitch_44  #0x1
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getDefaultAppsBackup(I)[B

    move-result-object v0

    return-object v0

    :pswitch_4b  #0x0
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getPreferredActivityBackup(I)[B

    move-result-object v0

    return-object v0

    :goto_52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected backup key "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_68} :catch_69

    goto :goto_80

    :catch_69
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to store payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_80
    return-object v3

    nop

    :sswitch_data_82
    .sparse-switch
        -0x298b2982 -> :sswitch_2f
        -0x20befb7c -> :sswitch_25
        -0x19949e54 -> :sswitch_1b
        0x4fa3eadb -> :sswitch_10
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_4b  #00000000
        :pswitch_44  #00000001
        :pswitch_43  #00000002
        :pswitch_3c  #00000003
    .end packed-switch
.end method
