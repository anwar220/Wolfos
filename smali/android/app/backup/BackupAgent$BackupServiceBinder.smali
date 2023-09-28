# classes.dex

.class Landroid/app/backup/BackupAgent$BackupServiceBinder;
.super Landroid/app/IBackupAgent$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupServiceBinder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupServiceBinder"


# instance fields
.field final synthetic this$0:Landroid/app/backup/BackupAgent;


# direct methods
.method private constructor <init>(Landroid/app/backup/BackupAgent;)V
    .registers 2

    iput-object p1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-direct {p0}, Landroid/app/IBackupAgent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent$BackupServiceBinder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;)V

    return-void
.end method

.method private doRestoreInternal(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "J",
            "Landroid/os/ParcelFileDescriptor;",
            "I",
            "Landroid/app/backup/IBackupManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    const-string v5, ") threw"

    const-string/jumbo v6, "onRestore ("

    const-string v7, "BackupServiceBinder"

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    new-instance v9, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const-wide/16 v12, 0x0

    :try_start_23
    iget-object v8, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_25} :catch_9e
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_25} :catch_74
    .catchall {:try_start_23 .. :try_end_25} :catchall_70

    if-eqz v4, :cond_32

    :try_start_27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_9e
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_2c} :catch_74
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2d

    goto :goto_36

    :catchall_2d
    move-exception v0

    move-object v6, v0

    move-wide v4, v12

    goto/16 :goto_cb

    :cond_32
    :try_start_32
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_69
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_36} :catch_74
    .catchall {:try_start_32 .. :try_end_36} :catchall_70

    :goto_36
    move-wide/from16 v10, p2

    move-object/from16 v16, v5

    move-wide v4, v12

    move-object/from16 v12, p4

    move-object v13, v0

    :try_start_3e
    invoke-virtual/range {v8 .. v13}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;Ljava/util/Set;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_67
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_41} :catch_65
    .catchall {:try_start_3e .. :try_end_41} :catchall_c9

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_49
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v4, v5}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_52} :catch_53

    goto :goto_54

    :catch_53
    move-exception v0

    :goto_54
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v0, v4, :cond_64

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {p4 .. p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_64
    return-void

    :catch_65
    move-exception v0

    goto :goto_78

    :catch_67
    move-exception v0

    goto :goto_6d

    :catch_69
    move-exception v0

    move-object/from16 v16, v5

    move-wide v4, v12

    :goto_6d
    move-object/from16 v8, v16

    goto :goto_a1

    :catchall_70
    move-exception v0

    move-wide v4, v12

    :goto_72
    move-object v6, v0

    goto :goto_cb

    :catch_74
    move-exception v0

    move-object/from16 v16, v5

    move-wide v4, v12

    :goto_78
    :try_start_78
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v8, v16

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v0

    :catch_9e
    move-exception v0

    move-object v8, v5

    move-wide v4, v12

    :goto_a1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_c9
    .catchall {:try_start_78 .. :try_end_c9} :catchall_c9

    :catchall_c9
    move-exception v0

    goto :goto_72

    :goto_cb
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_d3
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v4, v5}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_dc
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_dc} :catch_dd

    goto :goto_de

    :catch_dd
    move-exception v0

    :goto_de
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v0, v4, :cond_ee

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {p4 .. p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_ee
    throw v6
.end method


# virtual methods
.method public doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    const-string v3, ") threw"

    const-string/jumbo v4, "onBackup ("

    const-string v5, "BackupServiceBinder"

    new-instance v0, Landroid/app/backup/BackupDataOutput;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    move-wide/from16 v7, p4

    move/from16 v9, p7

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;JI)V

    move-object v6, v0

    const-wide/16 v10, -0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_1f
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_21} :catch_87
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_21} :catch_5c
    .catchall {:try_start_1f .. :try_end_21} :catchall_53

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    :try_start_25
    invoke-virtual {v0, v14, v6, v15}, Landroid/app/backup/BackupAgent;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_4f
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_4d
    .catchall {:try_start_25 .. :try_end_28} :catchall_4b

    const-wide/16 v3, 0x0

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_32
    invoke-interface {v2, v3, v4}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    move-exception v0

    :goto_37
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v0, v5, :cond_4a

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {p3 .. p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_4a
    return-void

    :catchall_4b
    move-exception v0

    goto :goto_58

    :catch_4d
    move-exception v0

    goto :goto_61

    :catch_4f
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_8e

    :catchall_53
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    :goto_58
    move-object v3, v0

    move-object/from16 v16, v6

    goto :goto_b8

    :catch_5c
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    :goto_61
    move-object/from16 v16, v6

    :try_start_63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v0

    :catch_87
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    move-object/from16 v16, v6

    :goto_8e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_b6
    .catchall {:try_start_63 .. :try_end_b6} :catchall_b6

    :catchall_b6
    move-exception v0

    move-object v3, v0

    :goto_b8
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_c0
    invoke-interface {v2, v10, v11}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_c5

    :catch_c4
    move-exception v0

    :goto_c5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v0, v4, :cond_d8

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {p3 .. p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_d8
    throw v3
.end method

.method public doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    .registers 23

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, ") threw"

    const-string v5, "Unable to finalize backup stream!"

    const-string/jumbo v6, "onFullBackup ("

    const-string v7, "BackupServiceBinder"

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v12, 0x4

    :try_start_19
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    new-instance v13, Landroid/app/backup/FullBackupDataOutput;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_99
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1d} :catch_6e
    .catchall {:try_start_19 .. :try_end_1d} :catchall_65

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    :try_start_23
    invoke-direct {v13, v14, v10, v11, v15}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    invoke-virtual {v0, v13}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_29} :catch_63
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_29} :catch_61
    .catchall {:try_start_23 .. :try_end_29} :catchall_5f

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    :try_start_2e
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-array v4, v12, [B

    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception v0

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_44
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    const-wide/16 v4, 0x0

    invoke-interface {v3, v0, v2, v4, v5}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception v0

    :goto_51
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v0, v4, :cond_5e

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_5e
    return-void

    :catchall_5f
    move-exception v0

    goto :goto_6c

    :catch_61
    move-exception v0

    goto :goto_75

    :catch_63
    move-exception v0

    goto :goto_a0

    :catchall_65
    move-exception v0

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    :goto_6c
    move-object v4, v0

    goto :goto_c8

    :catch_6e
    move-exception v0

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    :goto_75
    :try_start_75
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v0

    :catch_99
    move-exception v0

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    :goto_a0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_c8
    .catchall {:try_start_75 .. :try_end_c8} :catchall_5f

    :goto_c8
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    :try_start_cd
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-array v6, v12, [B

    invoke-virtual {v0, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_db} :catch_dc

    goto :goto_e0

    :catch_dc
    move-exception v0

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_e3
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    const-wide/16 v5, 0x0

    invoke-interface {v3, v0, v2, v5, v6}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_e3 .. :try_end_ee} :catch_ef

    goto :goto_f0

    :catch_ef
    move-exception v0

    :goto_f0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v0, v5, :cond_fd

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_fd
    throw v4
.end method

.method public doMeasureFullBackup(JILandroid/app/backup/IBackupManager;I)V
    .registers 14

    const-string v0, ") threw"

    const-string/jumbo v1, "onFullBackup[M] ("

    const-string v2, "BackupServiceBinder"

    new-instance v3, Landroid/app/backup/FullBackupDataOutput;

    invoke-direct {v3, p1, p2, p5}, Landroid/app/backup/FullBackupDataOutput;-><init>(JI)V

    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_15
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6, v3}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1a} :catch_30
    .catchall {:try_start_15 .. :try_end_1a} :catchall_2e

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_1d
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-virtual {v3}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    move-result-wide v1

    invoke-interface {p4, v0, p3, v1, v2}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2a} :catch_2b

    goto :goto_2d

    :catch_2b
    move-exception v0

    nop

    :goto_2d
    return-void

    :catchall_2e
    move-exception v0

    goto :goto_7e

    :catch_30
    move-exception v6

    :try_start_31
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v6

    :catch_55
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_7e
    .catchall {:try_start_31 .. :try_end_7e} :catchall_2e

    :goto_7e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_81
    iget-object v1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v1}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v1

    invoke-virtual {v3}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    move-result-wide v6

    invoke-interface {p4, v1, p3, v6, v7}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_8e} :catch_8f

    goto :goto_90

    :catch_8f
    move-exception v1

    :goto_90
    throw v0
.end method

.method public doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V
    .registers 14

    const-wide/16 v0, -0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_6
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/app/backup/BackupAgent;->onQuotaExceeded(JJ)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_1e
    .catchall {:try_start_6 .. :try_end_b} :catchall_1c

    const-wide/16 v0, 0x0

    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_15
    invoke-interface {p5, v0, v1}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_1b

    :catch_19
    move-exception v4

    nop

    :goto_1b
    return-void

    :catchall_1c
    move-exception v4

    goto :goto_4a

    :catch_1e
    move-exception v4

    :try_start_1f
    const-string v5, "BackupServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onQuotaExceeded("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") threw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v4
    :try_end_4a
    .catchall {:try_start_1f .. :try_end_4a} :catchall_1c

    :goto_4a
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v5}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_52
    invoke-interface {p5, v0, v1}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v5

    :goto_57
    throw v4
.end method

.method public doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->doRestoreInternal(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V

    return-void
.end method

.method public doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p11

    move-object/from16 v3, p12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    :try_start_c
    iget-object v8, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    invoke-virtual/range {v8 .. v18}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1f} :catch_48
    .catchall {:try_start_c .. :try_end_1f} :catchall_45

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_2c
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v6, v7}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    move-exception v0

    :goto_37
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v0, v6, :cond_44

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_44
    return-void

    :catchall_45
    move-exception v0

    move-object v8, v0

    goto :goto_78

    :catch_48
    move-exception v0

    :try_start_49
    const-string v8, "BackupServiceBinder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onRestoreFile ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") threw"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_78
    .catchall {:try_start_49 .. :try_end_78} :catchall_45

    :goto_78
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_85
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v6, v7}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_8e} :catch_8f

    goto :goto_90

    :catch_8f
    move-exception v0

    :goto_90
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v0, v6, :cond_9d

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_9d
    throw v8
.end method

.method public doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    .registers 11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    :try_start_6
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4}, Landroid/app/backup/BackupAgent;->onRestoreFinished()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_22
    .catchall {:try_start_6 .. :try_end_b} :catchall_20

    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_13
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v4

    invoke-interface {p2, v4, p1, v2, v3}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_1f

    :catch_1d
    move-exception v2

    nop

    :goto_1f
    return-void

    :catchall_20
    move-exception v4

    goto :goto_4e

    :catch_22
    move-exception v4

    :try_start_23
    const-string v5, "BackupServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onRestoreFinished ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") threw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v4
    :try_end_4e
    .catchall {:try_start_23 .. :try_end_4e} :catchall_20

    :goto_4e
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v5}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_56
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v5}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v5

    invoke-interface {p2, v5, p1, v2, v3}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5f} :catch_60

    goto :goto_61

    :catch_60
    move-exception v2

    :goto_61
    throw v4
.end method

.method public doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "J",
            "Landroid/os/ParcelFileDescriptor;",
            "I",
            "Landroid/app/backup/IBackupManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->doRestoreInternal(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V

    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/backup/BackupAgent$FailRunnable;

    invoke-direct {v1, p1}, Landroid/app/backup/BackupAgent$FailRunnable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
