# classes4.dex

.class public Lcom/android/internal/protolog/BaseProtoLogImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;
    }
.end annotation


# static fields
.field protected static final LOG_GROUPS:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAGIC_NUMBER_VALUE:J = 0x474f4c4f544f5250L

.field static final PROTOLOG_VERSION:Ljava/lang/String; = "1.0.0"

.field private static final TAG:Ljava/lang/String; = "ProtoLog"

.field public static sCacheUpdater:Ljava/lang/Runnable;


# instance fields
.field private final mBuffer:Lcom/android/internal/util/TraceBuffer;

.field private final mLogFile:Ljava/io/File;

.field private mProtoLogEnabled:Z

.field private final mProtoLogEnabledLock:Ljava/lang/Object;

.field private mProtoLogEnabledLockFree:Z

.field protected final mViewerConfig:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

.field private final mViewerConfigFilename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl;->LOG_GROUPS:Ljava/util/TreeMap;

    new-instance v0, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;ILcom/android/internal/protolog/ProtoLogViewerConfigReader;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mLogFile:Ljava/io/File;

    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {v0, p3}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iput-object p2, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mViewerConfigFilename:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    return-void
.end method

.method protected static addLogGroupEnum([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    sget-object v3, Lcom/android/internal/protolog/BaseProtoLogImpl;->LOG_GROUPS:Ljava/util/TreeMap;

    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return-void
.end method

.method static synthetic lambda$getStatus$3(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z
    .registers 2

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$getStatus$4(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z
    .registers 2

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$logToProto$1(Ljava/lang/Long;)J
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$logToProto$2(Ljava/lang/Double;)D
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$static$0()V
    .registers 0

    return-void
.end method

.method static logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    const-string v0, "ProtoLog"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_d
    return-void
.end method

.method private logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    const/4 v0, 0x0

    if-nez p4, :cond_9

    iget-object v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-virtual {v1, p3}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->getViewerString(I)Ljava/lang/String;

    move-result-object p4

    :cond_9
    if-eqz p4, :cond_19

    :try_start_b
    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_f
    .catch Ljava/util/IllegalFormatConversionException; {:try_start_b .. :try_end_f} :catch_11

    move-object v0, v1

    goto :goto_19

    :catch_11
    move-exception v1

    const-string v2, "ProtoLog"

    const-string v3, "Invalid ProtoLog format string."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_19
    if-nez v0, :cond_4f

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN MESSAGE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p5

    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v2, :cond_4b

    aget-object v4, p5, v3

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4f
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method private logToProto(II[Ljava/lang/Object;)V
    .registers 24

    move-object/from16 v1, p3

    const-string v2, "ProtoLog"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    :try_start_b
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    move-object v3, v0

    const-wide v4, 0x20b00000004L

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_148

    const-wide v6, 0x10f00000001L

    move/from16 v8, p1

    :try_start_21
    invoke-virtual {v3, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10600000002L

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    invoke-virtual {v3, v6, v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    if-eqz v1, :cond_133

    const/4 v0, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    array-length v10, v1

    const/4 v11, 0x0

    move v12, v11

    move v11, v0

    :goto_46
    if-ge v12, v10, :cond_c8

    aget-object v0, v1, v12

    move-object v13, v0

    move/from16 v14, p2

    invoke-static {v14, v11}, Lcom/android/internal/protolog/common/LogDataType;->bitmaskToLogDataType(II)I

    move-result v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_51} :catch_144

    move v15, v0

    move-wide/from16 v16, v4

    const-wide v4, 0x20900000003L

    packed-switch v15, :pswitch_data_154

    move-object v5, v13

    goto :goto_be

    :pswitch_5e  #0x3
    :try_start_5e
    move-object v0, v13

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v13

    goto :goto_be

    :pswitch_6e  #0x2
    move-object v0, v13

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v13

    goto :goto_be

    :pswitch_7e  #0x1
    move-object v0, v13

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v13

    goto :goto_be

    :pswitch_8e  #0x0
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/ClassCastException; {:try_start_5e .. :try_end_95} :catch_97
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_95} :catch_144

    move-object v5, v13

    goto :goto_be

    :catch_97
    move-exception v0

    :try_start_98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(INVALID PARAMS_MASK) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v13

    const-wide v13, 0x20900000003L

    invoke-virtual {v3, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-string v4, "Invalid ProtoLog paramsMask"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bf

    :goto_be
    nop

    :goto_bf
    nop

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v16

    goto/16 :goto_46

    :cond_c8
    move-wide/from16 v16, v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e9

    const-wide v4, 0x51200000004L

    invoke-virtual {v6}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v10, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda3;

    invoke-direct {v10}, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v10}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->writePackedSInt64(J[J)V

    :cond_e9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_108

    const-wide v4, 0x50100000005L

    invoke-virtual {v7}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v10, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda4;

    invoke-direct {v10}, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v10}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->writePackedDouble(J[D)V

    :cond_108
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_135

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v4, 0x0

    :goto_115
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_12a

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    aput-boolean v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_115

    :cond_12a
    const-wide v4, 0x50800000006L

    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->writePackedBool(J[Z)V

    goto :goto_135

    :cond_133
    move-wide/from16 v16, v4

    :cond_135
    :goto_135
    move-wide/from16 v4, v16

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_13a} :catch_144

    move-object/from16 v6, p0

    :try_start_13c
    iget-object v0, v6, Lcom/android/internal/protolog/BaseProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_141} :catch_142

    goto :goto_152

    :catch_142
    move-exception v0

    goto :goto_14d

    :catch_144
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_14d

    :catch_148
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v8, p1

    :goto_14d
    const-string v3, "Exception while logging to proto"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_152
    return-void

    nop

    :pswitch_data_154
    .packed-switch 0x0
        :pswitch_8e  #00000000
        :pswitch_7e  #00000001
        :pswitch_6e  #00000002
        :pswitch_5e  #00000003
    .end packed-switch
.end method

.method private unknownCommand(Ljava/io/PrintWriter;)I
    .registers 3

    const-string v0, "Unknown command"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Window manager logging options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  start: Start proto logging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  stop: Stop proto logging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  enable [group...]: Enable proto logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  disable [group...]: Disable proto logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  enable-text [group...]: Enable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  disable-text [group...]: Disable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method private writeProtoLogToFileLocked()V
    .registers 8

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v3, 0x10600000001L

    const-wide v5, 0x474f4c4f544f5250L

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10900000002L

    const-string v5, "1.0.0"

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10600000003L

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v3, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object v4, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_41

    :catch_39
    move-exception v0

    const-string v1, "ProtoLog"

    const-string v2, "Unable to write buffer to file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_41
    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtoLog status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->isProtoEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "Enabled"

    goto :goto_16

    :cond_14
    const-string v1, "Disabled"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nEnabled log groups: \n  Proto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl;->LOG_GROUPS:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    const-string v3, " "

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n  Logcat: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nLogging definitions loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-virtual {v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->knownViewerStringsNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isProtoEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabledLockFree:Z

    return v0
.end method

.method public log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .registers 14

    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p3, p4, p6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logToProto(II[Ljava/lang/Object;)V

    :cond_9
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public onShellCommand(Landroid/os/ShellCommand;)I
    .registers 11

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    invoke-direct {p0, v0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_14
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_1f

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v6, :sswitch_data_b2

    :cond_35
    goto :goto_7e

    :sswitch_36
    const-string v6, "disable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    const/4 v5, 0x5

    goto :goto_7e

    :sswitch_40
    const-string/jumbo v6, "start"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    move v5, v8

    goto :goto_7e

    :sswitch_4b
    const-string/jumbo v6, "stop"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    move v5, v7

    goto :goto_7e

    :sswitch_56
    const-string/jumbo v6, "status"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    const/4 v5, 0x2

    goto :goto_7e

    :sswitch_61
    const-string v6, "disable-text"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    const/4 v5, 0x6

    goto :goto_7e

    :sswitch_6b
    const-string v6, "enable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    const/4 v5, 0x3

    goto :goto_7e

    :sswitch_75
    const-string v6, "enable-text"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    const/4 v5, 0x4

    :goto_7e
    packed-switch v5, :pswitch_data_d0

    invoke-direct {p0, v0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v5

    return v5

    :pswitch_86  #0x6
    invoke-virtual {p0, v7, v8, v0, v3}, Lcom/android/internal/protolog/BaseProtoLogImpl;->setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I

    move-result v5

    return v5

    :pswitch_8b  #0x5
    invoke-virtual {p0, v8, v8, v0, v3}, Lcom/android/internal/protolog/BaseProtoLogImpl;->setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I

    move-result v5

    return v5

    :pswitch_90  #0x4
    iget-object v5, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    iget-object v6, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mViewerConfigFilename:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfig(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p0, v7, v7, v0, v3}, Lcom/android/internal/protolog/BaseProtoLogImpl;->setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I

    move-result v5

    return v5

    :pswitch_9c  #0x3
    invoke-virtual {p0, v8, v7, v0, v3}, Lcom/android/internal/protolog/BaseProtoLogImpl;->setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I

    move-result v5

    return v5

    :pswitch_a1  #0x2
    invoke-virtual {p0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v8

    :pswitch_a9  #0x1
    invoke-virtual {p0, v0, v7}, Lcom/android/internal/protolog/BaseProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    return v8

    :pswitch_ad  #0x0
    invoke-virtual {p0, v0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    return v8

    nop

    :sswitch_data_b2
    .sparse-switch
        -0x57eac4c9 -> :sswitch_75
        -0x4d6ada7d -> :sswitch_6b
        -0x3d842b0e -> :sswitch_61
        -0x3532300e -> :sswitch_56
        0x360802 -> :sswitch_4b
        0x68ac462 -> :sswitch_40
        0x639e22e8 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_ad  #00000000
        :pswitch_a9  #00000001
        :pswitch_a1  #00000002
        :pswitch_9c  #00000003
        :pswitch_90  #00000004
        :pswitch_8b  #00000005
        :pswitch_86  #00000006
    .end packed-switch
.end method

.method public passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl$1;->$SwitchMap$com$android$internal$protolog$BaseProtoLogImpl$LogLevel:[I

    invoke-virtual {p2}, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    goto :goto_24

    :pswitch_c  #0x6
    invoke-static {p1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :pswitch_10  #0x5
    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :pswitch_14  #0x4
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :pswitch_18  #0x3
    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :pswitch_1c  #0x2
    invoke-static {p1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :pswitch_20  #0x1
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_20  #00000001
        :pswitch_1c  #00000002
        :pswitch_18  #00000003
        :pswitch_14  #00000004
        :pswitch_10  #00000005
        :pswitch_c  #00000006
    .end packed-switch
.end method

.method protected varargs setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I
    .registers 10

    const/4 v0, 0x0

    :goto_1
    array-length v1, p4

    if-ge v0, v1, :cond_34

    aget-object v1, p4, v0

    sget-object v2, Lcom/android/internal/protolog/BaseProtoLogImpl;->LOG_GROUPS:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/common/IProtoLogGroup;

    if-eqz v2, :cond_1c

    if-eqz p1, :cond_16

    invoke-interface {v2, p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->setLogToLogcat(Z)V

    goto :goto_19

    :cond_16
    invoke-interface {v2, p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->setLogToProto(Z)V

    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No IProtoLogGroup named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :cond_34
    sget-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    return v0
.end method

.method public startProtoLog(Ljava/io/PrintWriter;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start logging to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabled:Z

    iput-boolean v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabledLockFree:Z

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_39

    sget-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public stopProtoLog(Ljava/io/PrintWriter;Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop logging to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Waiting for log to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabled:Z

    if-eqz p2, :cond_50

    invoke-direct {p0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->writeProtoLogToFileLocked()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_50
    iget-boolean v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabled:Z

    if-nez v1, :cond_5b

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_a .. :try_end_55} :catchall_69

    sget-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_5b
    :try_start_5b
    const-string v1, "ERROR: logging was re-enabled while waiting for flush."

    invoke-static {p1, v1}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "logging enabled while waiting for flush."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_5b .. :try_end_6b} :catchall_69

    throw v1
.end method
