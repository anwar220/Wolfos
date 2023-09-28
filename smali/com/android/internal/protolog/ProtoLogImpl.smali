# classes4.dex

.class public Lcom/android/internal/protolog/ProtoLogImpl;
.super Lcom/android/internal/protolog/BaseProtoLogImpl;


# static fields
.field private static final BUFFER_CAPACITY:I = 0x100000

.field private static final LOG_FILENAME:Ljava/lang/String; = "/data/misc/wmtrace/wm_log.winscope"

.field private static final VIEWER_CONFIG_FILENAME:Ljava/lang/String; = "/system/etc/protolog.conf.json.gz"

.field private static sServiceInstance:Lcom/android/internal/protolog/ProtoLogImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/ProtoLogImpl;

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogGroup;->values()[Lcom/android/internal/protolog/ProtoLogGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->addLogGroupEnum([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/android/internal/protolog/ProtoLogViewerConfigReader;)V
    .registers 5

    const-string v0, "/system/etc/protolog.conf.json.gz"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/protolog/BaseProtoLogImpl;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/android/internal/protolog/ProtoLogViewerConfigReader;)V

    return-void
.end method

.method public static varargs d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->DEBUG:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->ERROR:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;
    .registers 5

    const-class v0, Lcom/android/internal/protolog/ProtoLogImpl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/ProtoLogImpl;

    if-nez v1, :cond_1c

    new-instance v1, Lcom/android/internal/protolog/ProtoLogImpl;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/wmtrace/wm_log.winscope"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x100000

    new-instance v4, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-direct {v4}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;-><init>(Ljava/io/File;ILcom/android/internal/protolog/ProtoLogViewerConfigReader;)V

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/ProtoLogImpl;

    :cond_1c
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/ProtoLogImpl;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    monitor-exit v0

    return-object v1

    :catchall_20
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->INFO:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z
    .registers 2

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method public static declared-synchronized setSingleInstance(Lcom/android/internal/protolog/ProtoLogImpl;)V
    .registers 2

    const-class v0, Lcom/android/internal/protolog/ProtoLogImpl;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/ProtoLogImpl;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->VERBOSE:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->WARN:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->WTF:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
