# classes4.dex

.class public Lcom/android/server/backup/PermissionBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final STATE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PermissionBackup"


# instance fields
.field private final mPermissionManager:Landroid/permission/PermissionManagerInternal;

.field private final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const-string/jumbo v0, "permissions"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/backup/PermissionBackupHelper;->mUserId:I

    const-class v0, Landroid/permission/PermissionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManagerInternal;

    iput-object v0, p0, Lcom/android/server/backup/PermissionBackupHelper;->mPermissionManager:Landroid/permission/PermissionManagerInternal;

    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 7

    const-string v0, "PermissionBackup"

    const/4 v1, -0x1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_50

    :cond_a
    goto :goto_15

    :pswitch_b  #0x4392f484
    const-string/jumbo v2, "permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x0

    :goto_15
    packed-switch v1, :pswitch_data_56

    goto :goto_21

    :pswitch_19  #0x0
    iget-object v1, p0, Lcom/android/server/backup/PermissionBackupHelper;->mPermissionManager:Landroid/permission/PermissionManagerInternal;

    iget v2, p0, Lcom/android/server/backup/PermissionBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/permission/PermissionManagerInternal;->restoreRuntimePermissions([BI)V

    goto :goto_37

    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected restore key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_37} :catch_38

    :goto_37
    goto :goto_4f

    :catch_38
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to restore key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4f
    return-void

    :pswitch_data_50
    .packed-switch 0x4392f484
        :pswitch_b  #4392f484
    .end packed-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_19  #00000000
    .end packed-switch
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .registers 6

    const-string v0, "PermissionBackup"

    const/4 v1, -0x1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_52

    :cond_a
    goto :goto_15

    :pswitch_b  #0x4392f484
    const-string/jumbo v2, "permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x0

    :goto_15
    packed-switch v1, :pswitch_data_58

    goto :goto_22

    :pswitch_19  #0x0
    iget-object v1, p0, Lcom/android/server/backup/PermissionBackupHelper;->mPermissionManager:Landroid/permission/PermissionManagerInternal;

    iget v2, p0, Lcom/android/server/backup/PermissionBackupHelper;->mUserId:I

    invoke-interface {v1, v2}, Landroid/permission/PermissionManagerInternal;->backupRuntimePermissions(I)[B

    move-result-object v0

    return-object v0

    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected backup key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_38} :catch_39

    goto :goto_50

    :catch_39
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to store payload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_50
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_52
    .packed-switch 0x4392f484
        :pswitch_b  #4392f484
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_19  #00000000
    .end packed-switch
.end method
