# classes3.dex

.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/util/TrustedTime;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/NtpTrustedTime$NtpConnectionInfo;,
        Landroid/util/NtpTrustedTime$TimeResult;
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private final mConnectivityManagerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHostnameForTests:Ljava/lang/String;

.field private mPortForTests:Ljava/lang/Integer;

.field private volatile mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

.field private mTimeoutForTests:Ljava/time/Duration;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Landroid/util/NtpTrustedTime;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/NtpTrustedTime$1;

    invoke-direct {v0, p0}, Landroid/util/NtpTrustedTime$1;-><init>(Landroid/util/NtpTrustedTime;)V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mConnectivityManagerSupplier:Ljava/util/function/Supplier;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .registers 6

    const-class v0, Landroid/util/NtpTrustedTime;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/util/NtpTrustedTime;

    invoke-direct {v4, v3}, Landroid/util/NtpTrustedTime;-><init>(Landroid/content/Context;)V

    sput-object v4, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    :cond_1a
    sget-object v1, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-object v1

    :catchall_1e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getNtpConnectionInfo()Landroid/util/NtpTrustedTime$NtpConnectionInfo;
    .registers 8

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mHostnameForTests:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mHostnameForTests:Ljava/lang/String;

    goto :goto_27

    :cond_13
    nop

    const-string/jumbo v2, "ntp_server"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    move-object v3, v2

    goto :goto_27

    :cond_1f
    const v3, 0x10402a1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :goto_27
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mPortForTests:Ljava/lang/Integer;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mPortForTests:Ljava/lang/Integer;

    goto :goto_34

    :cond_2e
    const/16 v3, 0x7b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_34
    iget-object v4, p0, Landroid/util/NtpTrustedTime;->mTimeoutForTests:Ljava/time/Duration;

    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    long-to-int v4, v4

    goto :goto_4d

    :cond_3e
    const v4, 0x10e00c5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const-string/jumbo v5, "ntp_timeout"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move v4, v5

    :goto_4d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_55

    const/4 v5, 0x0

    goto :goto_5e

    :cond_55
    new-instance v5, Landroid/util/NtpTrustedTime$NtpConnectionInfo;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v2, v6, v4}, Landroid/util/NtpTrustedTime$NtpConnectionInfo;-><init>(Ljava/lang/String;II)V

    :goto_5e
    return-object v5
.end method


# virtual methods
.method public clearCachedTimeResult()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public currentTimeMillis()J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->currentTimeMillis()J

    move-result-wide v1

    return-wide v1

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing authoritative time source"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNtpConnectionInfo()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getNtpConnectionInfo()Landroid/util/NtpTrustedTime$NtpConnectionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTimeResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-eqz v0, :cond_59

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTimeResult.getAgeMillis()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_59
    monitor-exit p0

    return-void

    :catchall_5b
    move-exception v0

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method public forceRefresh()Z
    .registers 22

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/util/NtpTrustedTime;->getNtpConnectionInfo()Landroid/util/NtpTrustedTime$NtpConnectionInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_c

    monitor-exit p0

    return v2

    :cond_c
    iget-object v3, v1, Landroid/util/NtpTrustedTime;->mConnectivityManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    if-nez v3, :cond_18

    monitor-exit p0

    return v2

    :cond_18
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_5d

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_29

    goto :goto_5d

    :cond_29
    new-instance v6, Landroid/net/SntpClient;

    invoke-direct {v6}, Landroid/net/SntpClient;-><init>()V

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->getServer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->getPort()I

    move-result v8

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->getTimeoutMillis()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;IILandroid/net/Network;)Z

    move-result v10

    if-eqz v10, :cond_5b

    invoke-virtual {v6}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v10

    const-wide/16 v12, 0x2

    div-long v19, v10, v12

    new-instance v2, Landroid/util/NtpTrustedTime$TimeResult;

    invoke-virtual {v6}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v15

    invoke-virtual {v6}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v17

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Landroid/util/NtpTrustedTime$TimeResult;-><init>(JJJ)V

    iput-object v2, v1, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    const/4 v2, 0x1

    monitor-exit p0

    return v2

    :cond_5b
    monitor-exit p0

    return v2

    :cond_5d
    :goto_5d
    monitor-exit p0

    return v2

    :catchall_5f
    move-exception v0

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method public getCacheAge()J
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1

    :cond_e
    const-wide v1, 0x7fffffffffffffffL

    return-wide v1
.end method

.method public getCachedNtpTime()J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-nez v0, :cond_7

    const-wide/16 v1, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v1

    :goto_b
    return-wide v1
.end method

.method public getCachedNtpTimeReference()J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-nez v0, :cond_7

    const-wide/16 v1, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v1

    :goto_b
    return-wide v1
.end method

.method public getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;
    .registers 2

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    return-object v0
.end method

.method public hasCache()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setServerConfigForTests(Ljava/lang/String;Ljava/lang/Integer;Ljava/time/Duration;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mHostnameForTests:Ljava/lang/String;

    iput-object p2, p0, Landroid/util/NtpTrustedTime;->mPortForTests:Ljava/lang/Integer;

    iput-object p3, p0, Landroid/util/NtpTrustedTime;->mTimeoutForTests:Ljava/time/Duration;

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method
