# classes4.dex

.class public Lcom/android/server/backup/ShortcutBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;


# static fields
.field private static final BLOB_VERSION:I = 0x1

.field private static final KEY_USER_FILE:Ljava/lang/String; = "shortcutuser.xml"

.field private static final TAG:Ljava/lang/String; = "ShortcutBackupAgent"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string/jumbo v0, "shortcutuser.xml"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    return-void
.end method

.method private getShortcutService()Landroid/content/pm/IShortcutService;
    .registers 2

    nop

    const-string/jumbo v0, "shortcut"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_42

    :cond_8
    goto :goto_14

    :pswitch_9  #0xd0bcfdba
    const-string/jumbo v0, "shortcutuser.xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_15

    :goto_14
    const/4 v0, -0x1

    :goto_15
    const-string v2, "ShortcutBackupAgent"

    packed-switch v0, :pswitch_data_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :pswitch_31  #0x0
    :try_start_31
    invoke-direct {p0}, Lcom/android/server/backup/ShortcutBackupHelper;->getShortcutService()Landroid/content/pm/IShortcutService;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/content/pm/IShortcutService;->applyRestore([BI)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_38} :catch_39

    goto :goto_40

    :catch_39
    move-exception v0

    const-string v1, "Restore failed"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch -0x2f430246
        :pswitch_9  #d0bcfdba
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_31  #00000000
    .end packed-switch
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_44

    :cond_8
    goto :goto_14

    :pswitch_9  #0xd0bcfdba
    const-string/jumbo v0, "shortcutuser.xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_15

    :goto_14
    const/4 v0, -0x1

    :goto_15
    const-string v2, "ShortcutBackupAgent"

    packed-switch v0, :pswitch_data_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :pswitch_31  #0x0
    :try_start_31
    invoke-direct {p0}, Lcom/android/server/backup/ShortcutBackupHelper;->getShortcutService()Landroid/content/pm/IShortcutService;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/pm/IShortcutService;->getBackupPayload(I)[B

    move-result-object v0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_3a

    return-object v0

    :catch_3a
    move-exception v0

    const-string v1, "Backup failed"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_41
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_44
    .packed-switch -0x2f430246
        :pswitch_9  #d0bcfdba
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_31  #00000000
    .end packed-switch
.end method
