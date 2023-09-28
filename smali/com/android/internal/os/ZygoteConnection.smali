# classes4.dex

.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "Zygote"


# instance fields
.field private final abiList:Ljava/lang/String;

.field private isEof:Z

.field private final mSocket:Landroid/net/LocalSocket;

.field private final mSocketOutStream:Ljava/io/DataOutputStream;

.field private final peer:Landroid/net/Credentials;


# direct methods
.method constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    iput-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    :try_start_17
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_22

    nop

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    return-void

    :catch_22
    move-exception v0

    const-string v1, "Zygote"

    const-string v2, "Cannot read peer credentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method private handleAbiListQuery()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleApiDenylistExemptions(Lcom/android/internal/os/ZygoteServer;[Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 4

    new-instance v0, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/ZygoteConnection;->stateChangeWithUsapPoolReset(Lcom/android/internal/os/ZygoteServer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private handleBootCompleted()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_b

    nop

    invoke-static {}, Ldalvik/system/VMRuntime;->bootCompleted()V

    return-void

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleChildProc(Lcom/android/internal/os/ZygoteArguments;Ljava/io/FileDescriptor;Z)Ljava/lang/Runnable;
    .registers 11

    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    const-string v0, "Zygote"

    invoke-static {p1, v0}, Lcom/android/internal/os/Zygote;->setAppProcessName(Lcom/android/internal/os/ZygoteArguments;Ljava/lang/String;)V

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, p1, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v0, :cond_26

    if-nez p3, :cond_1f

    iget v0, p1, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object v1, p1, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object v2, p1, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    :cond_1f
    iget-object v0, p1, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->childZygoteInit([Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    :cond_26
    iget-object v1, p1, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WrapperInit.execApplication unexpectedly returned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleHiddenApiAccessLogSampleRate(Lcom/android/internal/os/ZygoteServer;II)Ljava/lang/Runnable;
    .registers 5

    new-instance v0, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/ZygoteConnection;->stateChangeWithUsapPoolReset(Lcom/android/internal/os/ZygoteServer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private handleParentProc(ILjava/io/FileDescriptor;)V
    .registers 24

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "Error reading pid from wrapped process, child may have died"

    const-string v5, "Zygote"

    if-lez v2, :cond_f

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/ZygoteConnection;->setChildPgid(I)V

    :cond_f
    const/4 v6, 0x0

    if-eqz v3, :cond_108

    if-lez v2, :cond_108

    const/4 v7, -0x1

    const/4 v0, 0x4

    const/4 v8, 0x1

    :try_start_17
    new-array v9, v8, [Landroid/system/StructPollfd;

    new-instance v10, Landroid/system/StructPollfd;

    invoke-direct {v10}, Landroid/system/StructPollfd;-><init>()V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x4

    new-array v10, v10, [B

    const/16 v12, 0x7530

    const/4 v13, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    :goto_2b
    array-length v8, v10

    if-ge v13, v8, :cond_8f

    if-lez v12, :cond_8f

    aget-object v8, v9, v11

    iput-object v3, v8, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v8, v9, v11

    sget v11, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v11, v11

    iput-short v11, v8, Landroid/system/StructPollfd;->events:S

    const/4 v8, 0x0

    aget-object v11, v9, v8

    iput-short v8, v11, Landroid/system/StructPollfd;->revents:S

    aget-object v11, v9, v8

    const/4 v8, 0x0

    iput-object v8, v11, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    invoke-static {v9, v12}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4f} :catch_b8

    move/from16 v18, v6

    move/from16 v19, v7

    sub-long v6, v16, v14

    move/from16 v20, v0

    :try_start_57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v6, v7, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    long-to-int v0, v6

    rsub-int v12, v0, 0x7530

    if-lez v8, :cond_7d

    const/4 v6, 0x0

    aget-object v7, v9, v6

    iget-short v7, v7, Landroid/system/StructPollfd;->revents:S

    sget v11, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v7, v11

    if-eqz v7, :cond_95

    const/4 v7, 0x1

    invoke-static {v3, v10, v13, v7}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v11

    if-ltz v11, :cond_75

    add-int/2addr v13, v11

    goto :goto_86

    :cond_75
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Some error"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7d
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v8, :cond_86

    const-string v11, "Timed out waiting for child."

    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    :goto_86
    move v11, v6

    move v8, v7

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v0, v20

    goto :goto_2b

    :cond_8f
    move/from16 v20, v0

    move/from16 v18, v6

    move/from16 v19, v7

    :cond_95
    array-length v0, v10

    if-ne v13, v0, :cond_a8

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_a6} :catch_b4

    move v7, v6

    goto :goto_aa

    :cond_a8
    move/from16 v7, v19

    :goto_aa
    const/4 v0, -0x1

    if-ne v7, v0, :cond_b3

    :try_start_ad
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_b3

    :catch_b1
    move-exception v0

    goto :goto_bd

    :cond_b3
    :goto_b3
    goto :goto_c0

    :catch_b4
    move-exception v0

    move/from16 v7, v19

    goto :goto_bd

    :catch_b8
    move-exception v0

    move/from16 v18, v6

    move/from16 v19, v7

    :goto_bd
    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c0
    if-lez v7, :cond_10a

    move v0, v7

    :goto_c3
    if-lez v0, :cond_cc

    if-eq v0, v2, :cond_cc

    invoke-static {v0}, Landroid/os/Process;->getParentPid(I)I

    move-result v0

    goto :goto_c3

    :cond_cc
    if-lez v0, :cond_e7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrapped process has pid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    const/4 v6, 0x1

    goto :goto_10c

    :cond_e7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrapped process reported a pid that is not a child of the process that we forked: childPid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " innerPid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10a

    :cond_108
    move/from16 v18, v6

    :cond_10a
    :goto_10a
    move/from16 v6, v18

    :goto_10c
    :try_start_10c
    iget-object v0, v1, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, v1, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_116} :catch_118

    nop

    return-void

    :catch_118
    move-exception v0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Error writing to command socket"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private handlePidQuery()V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1b

    nop

    return-void

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handlePreload()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->isPreloadComplete()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_16

    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->preload()V

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_18

    :goto_16
    nop

    return-void

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleUsapPoolStatusChange(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/os/ZygoteServer;->setUsapPoolStatus(ZLandroid/net/LocalSocket;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_12

    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$handleApiDenylistExemptions$0([Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->setApiDenylistExemptions([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handleHiddenApiAccessLogSampleRate$1(II)V
    .registers 4

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->setHiddenApiAccessLogSampleRate(I)V

    invoke-static {p0, p1}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->setHiddenApiAccessLogSampleRates(II)V

    invoke-static {}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->getInstance()Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V

    return-void
.end method

.method private setChildPgid(I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v0}, Landroid/net/Credentials;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/system/Os;->getpgid(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/system/Os;->setpgid(II)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception v0

    const-string v1, "Zygote"

    const-string v2, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method

.method private stateChangeWithUsapPoolReset(Lcom/android/internal/os/ZygoteServer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->isUsapPoolEnabled()Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_3f

    const-string v1, "Zygote"

    if-eqz v0, :cond_10

    :try_start_8
    const-string v0, "Emptying USAP Pool due to state change."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/Zygote;->emptyUsapPool()V

    :cond_10
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->isUsapPoolEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v3, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    aput v3, v0, v2

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V

    return-object v0

    :cond_33
    const-string v3, "Finished refilling USAP Pool after state change."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3d} :catch_3f

    const/4 v0, 0x0

    return-object v0

    :catch_3f
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected canPreloadApp()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method closeSocket()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "Zygote"

    const-string v2, "Exception while closing command socket in parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected getSocketOutputStream()Ljava/io/DataOutputStream;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method protected handlePreloadApp(Landroid/content/pm/ApplicationInfo;)V
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Zygote does not support app preloading"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Zygote does not support package preloading"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isClosedByPeer()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    return v0
.end method

.method protected isPreloadComplete()Z
    .registers 2

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete()Z

    move-result v0

    return v0
.end method

.method protected preload()V
    .registers 1

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->lazyPreload()V

    return-void
.end method

.method processCommand(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;
    .registers 39

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Lcom/android/internal/os/ZygoteCommandBuffer;

    iget-object v3, v1, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-direct {v0, v3}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>(Landroid/net/LocalSocket;)V

    move-object v3, v0

    :goto_c
    :try_start_c
    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_2ac
    .catchall {:try_start_c .. :try_end_10} :catchall_2a2

    move-object v4, v0

    nop

    const/4 v0, 0x1

    const/4 v5, 0x0

    if-nez v4, :cond_28

    :try_start_16
    iput-boolean v0, v1, Lcom/android/internal/os/ZygoteConnection;->isEof:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_1d

    nop

    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v5

    :catchall_1d
    move-exception v0

    move-object/from16 v32, v3

    move-object v3, v0

    move-object/from16 v35, v2

    move-object v2, v1

    move-object/from16 v1, v35

    goto/16 :goto_2c0

    :cond_28
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_2a
    iget-boolean v8, v4, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2a2

    if-eqz v8, :cond_36

    :try_start_2e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handleBootCompleted()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_1d

    nop

    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v5

    :cond_36
    :try_start_36
    iget-boolean v8, v4, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_2a2

    if-eqz v8, :cond_42

    :try_start_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handleAbiListQuery()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_1d

    nop

    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v5

    :cond_42
    :try_start_42
    iget-boolean v8, v4, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_2a2

    if-eqz v8, :cond_4e

    :try_start_46
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handlePidQuery()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_1d

    nop

    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v5

    :cond_4e
    :try_start_4e
    iget-boolean v8, v4, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_2a2

    const/4 v9, -0x1

    if-nez v8, :cond_268

    :try_start_53
    iget-object v8, v4, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    if-nez v8, :cond_268

    iget v8, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    if-ne v8, v9, :cond_268

    iget v8, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    if-eq v8, v9, :cond_64

    move-object v2, v1

    move-object/from16 v32, v3

    goto/16 :goto_26b

    :cond_64
    iget-boolean v8, v4, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z
    :try_end_66
    .catchall {:try_start_53 .. :try_end_66} :catchall_261

    if-eqz v8, :cond_70

    :try_start_68
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handlePreload()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_1d

    nop

    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v5

    :cond_70
    :try_start_70
    iget-object v8, v4, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackage:Ljava/lang/String;
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_261

    if-eqz v8, :cond_84

    :try_start_74
    iget-object v0, v4, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackage:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageLibs:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageLibFileName:Ljava/lang/String;

    iget-object v10, v4, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageCacheKey:Ljava/lang/String;

    invoke-virtual {v1, v0, v8, v9, v10}, Lcom/android/internal/os/ZygoteConnection;->handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_1d

    nop

    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v5

    :cond_84
    :try_start_84
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->canPreloadApp()Z

    move-result v8
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_261

    const/4 v10, 0x0

    if-eqz v8, :cond_c1

    :try_start_8b
    iget-object v8, v4, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-eqz v8, :cond_c1

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    iget-object v8, v4, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    array-length v9, v0

    invoke-virtual {v8, v0, v10, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v8, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v9, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    if-eqz v9, :cond_b9

    invoke-virtual {v1, v9}, Lcom/android/internal/os/ZygoteConnection;->handlePreloadApp(Landroid/content/pm/ApplicationInfo;)V
    :try_end_b4
    .catchall {:try_start_8b .. :try_end_b4} :catchall_1d

    nop

    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v5

    :cond_b9
    :try_start_b9
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v10, "Failed to deserialize --preload-app"

    invoke-direct {v5, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_c1
    .catchall {:try_start_b9 .. :try_end_c1} :catchall_1d

    :cond_c1
    :try_start_c1
    iget-wide v11, v4, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-nez v8, :cond_22a

    iget-wide v11, v4, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    cmp-long v8, v11, v13

    if-nez v8, :cond_22a

    iget-object v8, v1, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v4, v8}, Lcom/android/internal/os/Zygote;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V

    iget-object v8, v1, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v4, v8}, Lcom/android/internal/os/Zygote;->applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V

    invoke-static {v4}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    invoke-static {v4}, Lcom/android/internal/os/Zygote;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    const/4 v8, 0x0

    iget-object v11, v4, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;
    :try_end_e2
    .catchall {:try_start_c1 .. :try_end_e2} :catchall_261

    if-eqz v11, :cond_ef

    :try_start_e4
    iget-object v11, v4, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    sget-object v12, Lcom/android/internal/os/Zygote;->INT_ARRAY_2D:[[I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I
    :try_end_ee
    .catchall {:try_start_e4 .. :try_end_ee} :catchall_1d

    move-object v8, v11

    :cond_ef
    const/4 v11, 0x0

    :try_start_f0
    iget-object v12, v4, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;
    :try_end_f2
    .catchall {:try_start_f0 .. :try_end_f2} :catchall_261

    const/4 v13, 0x2

    if-eqz v12, :cond_121

    :try_start_f5
    sget v12, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v12}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v12

    aget-object v14, v12, v0

    move-object v6, v14

    aget-object v14, v12, v10

    move-object v7, v14

    sget v14, Landroid/system/OsConstants;->F_SETFD:I

    invoke-static {v6, v14, v10}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    new-array v14, v13, [I

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v15

    aput v15, v14, v10

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v15

    aput v15, v14, v0
    :try_end_114
    .catch Landroid/system/ErrnoException; {:try_start_f5 .. :try_end_114} :catch_118
    .catchall {:try_start_f5 .. :try_end_114} :catchall_1d

    move-object v11, v14

    move-object/from16 v29, v11

    goto :goto_123

    :catch_118
    move-exception v0

    :try_start_119
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v9, "Unable to set up pipe for invoke-with"

    invoke-direct {v5, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_121
    .catchall {:try_start_119 .. :try_end_121} :catchall_1d

    :cond_121
    move-object/from16 v29, v11

    :goto_123
    :try_start_123
    new-array v11, v13, [I

    aput v9, v11, v10

    aput v9, v11, v0

    move-object v9, v11

    iget-object v11, v1, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11
    :try_end_130
    .catchall {:try_start_123 .. :try_end_130} :catchall_261

    move-object/from16 v30, v11

    if-eqz v30, :cond_13a

    :try_start_134
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v11

    aput v11, v9, v10
    :try_end_13a
    .catchall {:try_start_134 .. :try_end_13a} :catchall_1d

    :cond_13a
    :try_start_13a
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->getZygoteSocketFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10
    :try_end_13e
    .catchall {:try_start_13a .. :try_end_13e} :catchall_261

    if-eqz v10, :cond_146

    :try_start_140
    invoke-virtual {v10}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v11

    aput v11, v9, v0
    :try_end_146
    .catchall {:try_start_140 .. :try_end_146} :catchall_1d

    :cond_146
    :try_start_146
    iget-object v0, v4, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;
    :try_end_148
    .catchall {:try_start_146 .. :try_end_148} :catchall_261

    if-nez v0, :cond_189

    :try_start_14a
    iget-boolean v0, v4, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-nez v0, :cond_189

    if-eqz p2, :cond_189

    iget-object v0, v1, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v0}, Landroid/net/Credentials;->getUid()I

    move-result v0

    const/16 v11, 0x3e8

    if-eq v0, v11, :cond_15b

    goto :goto_189

    :cond_15b
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->getZygoteSocketFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v5, v1, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v5}, Landroid/net/Credentials;->getUid()I

    move-result v5

    iget-object v11, v1, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v11}, Lcom/android/internal/os/Zygote;->minChildUid(Landroid/net/Credentials;)I

    move-result v11

    iget-object v12, v4, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v3, v0, v5, v11, v12}, Lcom/android/internal/os/Zygote;->forkSimpleApps(Lcom/android/internal/os/ZygoteCommandBuffer;Ljava/io/FileDescriptor;IILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_17c

    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    goto/16 :goto_c

    :cond_17c
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V

    const-string v5, "Zygote"

    invoke-static {v4, v5}, Lcom/android/internal/os/Zygote;->setAppProcessName(Lcom/android/internal/os/ZygoteArguments;Ljava/lang/String;)V
    :try_end_184
    .catchall {:try_start_14a .. :try_end_184} :catchall_1d

    nop

    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v0

    :cond_189
    :goto_189
    :try_start_189
    iget v11, v4, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iget v12, v4, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iget-object v13, v4, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    iget v14, v4, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    iget v0, v4, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    iget-object v15, v4, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    iget-object v5, v4, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    move-object/from16 v31, v10

    iget-boolean v10, v4, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    iget-object v2, v4, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;
    :try_end_19d
    .catchall {:try_start_189 .. :try_end_19d} :catchall_261

    move-object/from16 v32, v3

    :try_start_19f
    iget-object v3, v4, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;
    :try_end_1a1
    .catchall {:try_start_19f .. :try_end_1a1} :catchall_227

    :try_start_1a1
    iget-boolean v1, v4, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    move-object/from16 v33, v6

    iget-object v6, v4, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;

    move-object/from16 v34, v7

    iget-object v7, v4, Lcom/android/internal/os/ZygoteArguments;->mAllowlistedDataInfoList:[Ljava/lang/String;

    move-object/from16 v26, v7

    iget-boolean v7, v4, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z

    move/from16 v27, v7

    iget-boolean v7, v4, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    move-object/from16 v17, v15

    move-object v15, v8

    move/from16 v16, v0

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    move-object/from16 v20, v29

    move/from16 v21, v10

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v24, v1

    move-object/from16 v25, v6

    move/from16 v28, v7

    invoke-static/range {v11 .. v28}, Lcom/android/internal/os/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)I

    move-result v0
    :try_end_1ce
    .catchall {:try_start_1a1 .. :try_end_1ce} :catchall_223

    move v1, v0

    if-nez v1, :cond_1fd

    :try_start_1d1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    invoke-static/range {v34 .. v34}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1da
    .catchall {:try_start_1d1 .. :try_end_1da} :catchall_1f5

    const/4 v7, 0x0

    :try_start_1db
    iget-boolean v0, v4, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z
    :try_end_1dd
    .catchall {:try_start_1db .. :try_end_1dd} :catchall_1ef

    move-object/from16 v2, p0

    move-object/from16 v6, v33

    :try_start_1e1
    invoke-direct {v2, v4, v6, v0}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteArguments;Ljava/io/FileDescriptor;Z)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_1e5
    .catchall {:try_start_1e1 .. :try_end_1e5} :catchall_216

    :try_start_1e5
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1eb
    .catchall {:try_start_1e5 .. :try_end_1eb} :catchall_25c

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v0

    :catchall_1ef
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v6, v33

    goto :goto_21b

    :catchall_1f5
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v6, v33

    move-object/from16 v7, v34

    goto :goto_21b

    :cond_1fd
    move-object/from16 v2, p0

    move-object/from16 v6, v33

    :try_start_201
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_204
    .catchall {:try_start_201 .. :try_end_204} :catchall_218

    const/4 v6, 0x0

    move-object/from16 v7, v34

    :try_start_207
    invoke-direct {v2, v1, v7}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(ILjava/io/FileDescriptor;)V
    :try_end_20a
    .catchall {:try_start_207 .. :try_end_20a} :catchall_216

    nop

    :try_start_20b
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_211
    .catchall {:try_start_20b .. :try_end_211} :catchall_25c

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    const/4 v0, 0x0

    return-object v0

    :catchall_216
    move-exception v0

    goto :goto_21b

    :catchall_218
    move-exception v0

    move-object/from16 v7, v34

    :goto_21b
    :try_start_21b
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    nop

    throw v0

    :catchall_223
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_25d

    :catchall_227
    move-exception v0

    move-object v2, v1

    goto :goto_25d

    :cond_22a
    move-object v2, v1

    move-object/from16 v32, v3

    new-instance v0, Lcom/android/internal/os/ZygoteSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client may not specify capabilities: permitted=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, v4, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", effective=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, v4, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25c
    .catchall {:try_start_21b .. :try_end_25c} :catchall_25c

    :catchall_25c
    move-exception v0

    :goto_25d
    move-object/from16 v1, p1

    goto/16 :goto_2bf

    :catchall_261
    move-exception v0

    move-object v2, v1

    move-object/from16 v32, v3

    move-object/from16 v1, p1

    goto :goto_2aa

    :cond_268
    move-object v2, v1

    move-object/from16 v32, v3

    :goto_26b
    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    iget-boolean v0, v4, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    if-eqz v0, :cond_27b

    iget-boolean v0, v4, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolEnabled:Z

    move-object/from16 v1, p1

    invoke-direct {v2, v1, v0}, Lcom/android/internal/os/ZygoteConnection;->handleUsapPoolStatusChange(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    :cond_27b
    move-object/from16 v1, p1

    iget-object v0, v4, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    if-eqz v0, :cond_288

    iget-object v0, v4, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Lcom/android/internal/os/ZygoteConnection;->handleApiDenylistExemptions(Lcom/android/internal/os/ZygoteServer;[Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    :cond_288
    iget v0, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    if-ne v0, v9, :cond_299

    iget v0, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    if-eq v0, v9, :cond_291

    goto :goto_299

    :cond_291
    new-instance v0, Ljava/lang/AssertionError;

    const-string v3, "Shouldn\'t get here"

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_299
    :goto_299
    iget v0, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    iget v3, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    invoke-direct {v2, v1, v0, v3}, Lcom/android/internal/os/ZygoteConnection;->handleHiddenApiAccessLogSampleRate(Lcom/android/internal/os/ZygoteServer;II)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    :catchall_2a2
    move-exception v0

    move-object/from16 v32, v3

    move-object/from16 v35, v2

    move-object v2, v1

    move-object/from16 v1, v35

    :goto_2aa
    move-object v3, v0

    goto :goto_2c0

    :catch_2ac
    move-exception v0

    move-object/from16 v32, v3

    move-object/from16 v35, v2

    move-object v2, v1

    move-object/from16 v1, v35

    move-object v3, v0

    move-object v0, v3

    :try_start_2b6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "IOException on command socket"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2be
    .catchall {:try_start_2b6 .. :try_end_2be} :catchall_2be

    :catchall_2be
    move-exception v0

    :goto_2bf
    move-object v3, v0

    :goto_2c0
    :try_start_2c0
    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V
    :try_end_2c3
    .catchall {:try_start_2c0 .. :try_end_2c3} :catchall_2c4

    goto :goto_2c9

    :catchall_2c4
    move-exception v0

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c9
    throw v3
.end method
