# classes2.dex

.class public Landroid/net/metrics/ConnectStats;
.super Ljava/lang/Object;


# static fields
.field private static final CONVERSION_DIVISOR:I = 0x100000

.field private static final EALREADY:I

.field private static final EINPROGRESS:I


# instance fields
.field private final CONNECT_INFO_COUNT_MAX:I

.field private final DNS_INFO_COUNT_MAX:I

.field private final REASONABLE_INITIAL_CAPACITY:I

.field public connectBlockingCount:I

.field public connectCount:I

.field private dnsRecordCount:I

.field private dnsRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/metrics/MiuiDnsRecordParams;",
            ">;"
        }
    .end annotation
.end field

.field private dnsRecordsHead:I

.field private dnsRecordsTail:I

.field public final errnos:Landroid/util/SparseIntArray;

.field public eventCount:I

.field public ipv6ConnectCount:I

.field private isResetRecords:Z

.field public final latencies:Landroid/util/IntArray;

.field public latencyCount:J

.field public latencySum:J

.field public final mLatencyTb:Lcom/android/internal/util/TokenBucket;

.field public final mMaxLatencyRecords:I

.field public final netId:I

.field private statsMemoryUsage:D

.field private tcpConnectRecordCount:I

.field private tcpConnectRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/metrics/MiuiTcpRecordParams;",
            ">;"
        }
    .end annotation
.end field

.field private tcpConnectRecordsHead:I

.field private tcpConnectRecordsTail:I

.field public tcpCount:J

.field public tcpLossSum:J

.field public tcpRttSum:J

.field public tcpSendSum:J

.field public final transports:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Landroid/system/OsConstants;->EALREADY:I

    sput v0, Landroid/net/metrics/ConnectStats;->EALREADY:I

    sget v0, Landroid/system/OsConstants;->EINPROGRESS:I

    sput v0, Landroid/net/metrics/ConnectStats;->EINPROGRESS:I

    return-void
.end method

.method public constructor <init>(IJLcom/android/internal/util/TokenBucket;I)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/net/metrics/ConnectStats;->DNS_INFO_COUNT_MAX:I

    iput v0, p0, Landroid/net/metrics/ConnectStats;->CONNECT_INFO_COUNT_MAX:I

    const/16 v0, 0x80

    iput v0, p0, Landroid/net/metrics/ConnectStats;->REASONABLE_INITIAL_CAPACITY:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsTail:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsHead:I

    iput v2, p0, Landroid/net/metrics/ConnectStats;->dnsRecordCount:I

    iput v1, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsTail:I

    iput v2, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsHead:I

    iput v2, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordCount:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/net/metrics/ConnectStats;->statsMemoryUsage:D

    iput-boolean v2, p0, Landroid/net/metrics/ConnectStats;->isResetRecords:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    iput v2, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    iput v2, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    iput v2, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    iput v2, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpLossSum:J

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpSendSum:J

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpRttSum:J

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpCount:J

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->latencyCount:J

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->latencySum:J

    iput p1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    iput-wide p2, p0, Landroid/net/metrics/ConnectStats;->transports:J

    iput-object p4, p0, Landroid/net/metrics/ConnectStats;->mLatencyTb:Lcom/android/internal/util/TokenBucket;

    iput p5, p0, Landroid/net/metrics/ConnectStats;->mMaxLatencyRecords:I

    return-void
.end method

.method private appendDNSRecord(Landroid/net/metrics/MiuiDnsRecordParams;)V
    .registers 5

    iget v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsTail:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3e8

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsTail:I

    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_17

    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_17
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    iget v2, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsTail:I

    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1e
    iget v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecordCount:I

    if-ne v0, v1, :cond_2a

    iget v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsHead:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsHead:I

    goto :goto_2e

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecordCount:I

    :goto_2e
    return-void
.end method

.method private appendTcpConnectRecord(Landroid/net/metrics/MiuiTcpRecordParams;)V
    .registers 5

    iget v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsTail:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3e8

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsTail:I

    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_17

    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_17
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    iget v2, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsTail:I

    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1e
    iget v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordCount:I

    if-ne v0, v1, :cond_2a

    iget v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsHead:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsHead:I

    goto :goto_2e

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordCount:I

    :goto_2e
    return-void
.end method

.method private concealedHostname(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-char v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-char v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private concealedIPAddr(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Landroid/net/metrics/ConnectStats;->parseIp(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6e

    array-length v2, v1

    if-lez v2, :cond_6e

    const/4 v2, 0x0

    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_6e

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "*"

    const/4 v5, 0x1

    if-nez v3, :cond_21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    :cond_21
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_40

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    :cond_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v2

    const/4 v7, 0x0

    aget-object v8, v1, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_62
    array-length v3, v1

    sub-int/2addr v3, v5

    if-eq v2, v3, :cond_6b

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private countConnect(ILjava/lang/String;)V
    .registers 4

    iget v0, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    :cond_12
    invoke-static {p2}, Landroid/net/metrics/ConnectStats;->isIPv6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    :cond_1e
    return-void
.end method

.method private countError(I)V
    .registers 4

    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private countLatency(II)V
    .registers 7

    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->mLatencyTb:Lcom/android/internal/util/TokenBucket;

    invoke-virtual {v0}, Lcom/android/internal/util/TokenBucket;->get()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    iget v1, p0, Landroid/net/metrics/ConnectStats;->mMaxLatencyRecords:I

    if-lt v0, v1, :cond_1b

    return-void

    :cond_1b
    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->latencyCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->latencyCount:J

    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->latencySum:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->latencySum:J

    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {v0, p2}, Landroid/util/IntArray;->add(I)V

    return-void
.end method

.method private dnsRecordToString(Landroid/net/metrics/MiuiDnsRecordParams;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ipAddresses: {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getIpAddresses()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    array-length v3, v1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_25

    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Landroid/net/metrics/ConnectStats;->concealedIPAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    sub-int/2addr v3, v4

    if-eq v2, v3, :cond_22

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_25
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getRequestTime()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Landroid/net/metrics/ConnectStats;->formatTimeStamp(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getHostname()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/metrics/ConnectStats;->concealedHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getLatencyMs()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getEventType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getReturnCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%-26s ,uid:%-5d  , hostname:%-5s, latencyMs:%-5d, eventType:%-5d, returnCode:%-5d, %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private formatTimeStamp(J)Ljava/lang/String;
    .registers 6

    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    nop

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static isIPv6(Ljava/lang/String;)Z
    .registers 2

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static isNonBlocking(I)Z
    .registers 2

    sget v0, Landroid/net/metrics/ConnectStats;->EINPROGRESS:I

    if-eq p0, v0, :cond_b

    sget v0, Landroid/net/metrics/ConnectStats;->EALREADY:I

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static isSuccess(I)Z
    .registers 2

    if-eqz p0, :cond_b

    invoke-static {p0}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private parseIp(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const-string v0, "::ffff:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\\."

    const-string v2, ":"

    if-nez v0, :cond_3a

    const-string v0, "0:0:0:0:0:ffff:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "0000:0000:0000:0000:0000:ffff:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_3a

    :cond_1d
    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_35
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3a
    :goto_3a
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tcpRecordToString(Landroid/net/metrics/MiuiTcpRecordParams;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getRequestTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/net/metrics/ConnectStats;->formatTimeStamp(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getIpAddr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/metrics/ConnectStats;->concealedIPAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getLatencyMs()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getError()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "%-26s ,uid:%-5d  , ip:%-45s, latencyMs:%-5d, error:%-5d, port:%-5d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public CalculateMemoryUsage(Z)D
    .registers 13

    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->statsMemoryUsage:D

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-lez v0, :cond_f

    if-nez p1, :cond_f

    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->statsMemoryUsage:D

    return-wide v0

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_12
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_55

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/metrics/MiuiDnsRecordParams;

    invoke-virtual {v5}, Landroid/net/metrics/MiuiDnsRecordParams;->getHostname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    invoke-virtual {v5}, Landroid/net/metrics/MiuiDnsRecordParams;->getIpAddresses()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_38
    if-ge v8, v7, :cond_49

    aget-object v9, v6, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v0, v10

    nop

    add-int/lit8 v0, v0, 0x28

    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    :cond_49
    invoke-virtual {v5}, Landroid/net/metrics/MiuiDnsRecordParams;->getHostname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    goto :goto_1b

    :cond_55
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    if-eqz v3, :cond_75

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/metrics/MiuiTcpRecordParams;

    invoke-virtual {v5}, Landroid/net/metrics/MiuiTcpRecordParams;->getIpAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    goto :goto_5d

    :cond_75
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    if-nez v3, :cond_7b

    move v3, v4

    goto :goto_7f

    :cond_7b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_7f
    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v0

    iget-object v5, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    if-nez v5, :cond_87

    :goto_86
    goto :goto_8c

    :cond_87
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_8b} :catch_92

    goto :goto_86

    :goto_8c
    mul-int/lit8 v4, v4, 0x50

    add-int/2addr v3, v4

    add-int v2, v3, v1

    goto :goto_ab

    :catch_92
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CalculateMemoryUsage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ConnectStats"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ab
    int-to-double v3, v2

    const-wide/high16 v5, 0x4130000000000000L  # 1048576.0

    div-double/2addr v3, v5

    iput-wide v3, p0, Landroid/net/metrics/ConnectStats;->statsMemoryUsage:D

    return-wide v3
.end method

.method addConnectEvent(Landroid/net/metrics/MiuiTcpRecordParams;)V
    .registers 3

    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getIpAddr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-direct {p0, p1}, Landroid/net/metrics/ConnectStats;->appendTcpConnectRecord(Landroid/net/metrics/MiuiTcpRecordParams;)V

    return-void
.end method

.method addDnsEvent(Landroid/net/metrics/MiuiDnsRecordParams;)V
    .registers 4

    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getHostname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getIpAddresses()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_22

    :cond_12
    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_1e

    return-void

    :cond_1e
    invoke-direct {p0, p1}, Landroid/net/metrics/ConnectStats;->appendDNSRecord(Landroid/net/metrics/MiuiDnsRecordParams;)V

    return-void

    :cond_22
    :goto_22
    return-void
.end method

.method addEvent(IILjava/lang/String;)Z
    .registers 6

    iget v0, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p1, p3}, Landroid/net/metrics/ConnectStats;->countConnect(ILjava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/net/metrics/ConnectStats;->countLatency(II)V

    return v1

    :cond_13
    invoke-direct {p0, p1}, Landroid/net/metrics/ConnectStats;->countError(I)V

    const/4 v0, 0x0

    return v0
.end method

.method addTcpEvent(III)V
    .registers 8

    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpCount:J

    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpSendSum:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpSendSum:J

    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpLossSum:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpLossSum:J

    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpRttSum:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpRttSum:J

    return-void
.end method

.method public clearDnsRecords()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    return-void
.end method

.method public clearTcpConnectRecords()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    return-void
.end method

.method public isResetRecords()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/metrics/ConnectStats;->isResetRecords:Z

    return v0
.end method

.method public resetRecords()V
    .registers 11

    iget-boolean v0, p0, Landroid/net/metrics/ConnectStats;->isResetRecords:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/net/metrics/MiuiDnsRecordParams;

    invoke-virtual {v1}, Landroid/net/metrics/MiuiDnsRecordParams;->getReturnCode()I

    move-result v3

    if-nez v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    :cond_2c
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_49

    iput v4, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsHead:I

    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    iput v3, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsTail:I

    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Landroid/net/metrics/ConnectStats;->dnsRecordCount:I

    :cond_49
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    if-nez v3, :cond_4e

    return-void

    :cond_4e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    :cond_59
    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    check-cast v6, Landroid/net/metrics/MiuiTcpRecordParams;

    invoke-virtual {v6}, Landroid/net/metrics/MiuiTcpRecordParams;->getError()I

    move-result v8

    if-eqz v8, :cond_74

    invoke-virtual {v6}, Landroid/net/metrics/MiuiTcpRecordParams;->getError()I

    move-result v8

    const/16 v9, 0x73

    if-ne v8, v9, :cond_59

    :cond_74
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_59

    :cond_78
    iget-object v8, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_93

    iput v4, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsHead:I

    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsTail:I

    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordCount:I

    :cond_93
    iput-boolean v5, p0, Landroid/net/metrics/ConnectStats;->isResetRecords:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectStats("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transports="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [J

    iget-wide v3, p0, Landroid/net/metrics/ConnectStats;->transports:J

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-static {v2}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%d events, "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%d success, "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%d blocking, "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%d IPv6 dst"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_7c
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_ab

    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/system/OsConstants;->errnoName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, ", %s: %d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_ab
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    if-eqz v4, :cond_c5

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    if-eqz v4, :cond_bf

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_bf
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v2

    :cond_c5
    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    if-nez v4, :cond_d3

    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    if-nez v4, :cond_d3

    const-string v4, ",\ntrackDnsInfos(empty): {\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e2

    :cond_d3
    iget-boolean v4, p0, Landroid/net/metrics/ConnectStats;->isResetRecords:Z

    if-eqz v4, :cond_dd

    const-string v4, ",\ntrackDnsInfos(only error): {\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e2

    :cond_dd
    const-string v4, ",\ntrackDnsInfos: {\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e2
    const/4 v4, 0x0

    iget-object v8, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    if-eqz v8, :cond_eb

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    :cond_eb
    const/4 v8, 0x0

    :goto_ec
    const-string v9, "%s;%n"

    if-ge v8, v4, :cond_10a

    new-array v10, v1, [Ljava/lang/Object;

    iget-object v11, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/metrics/MiuiDnsRecordParams;

    invoke-direct {p0, v11}, Landroid/net/metrics/ConnectStats;->dnsRecordToString(Landroid/net/metrics/MiuiDnsRecordParams;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_ec

    :cond_10a
    const-string v8, "}"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",\ntrackConnectInfos: {\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    iget-object v10, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    if-eqz v10, :cond_11d

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    :cond_11d
    const/4 v10, 0x0

    :goto_11e
    if-ge v10, v4, :cond_13a

    new-array v11, v1, [Ljava/lang/Object;

    iget-object v12, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/metrics/MiuiTcpRecordParams;

    invoke-direct {p0, v12}, Landroid/net/metrics/ConnectStats;->tcpRecordToString(Landroid/net/metrics/MiuiTcpRecordParams;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_11e

    :cond_13a
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/net/metrics/ConnectStats;->CalculateMemoryUsage(Z)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v5

    const-string v9, "recordsMemoryUsage: %.4f Mb"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v5

    const-string v5, "sortedTime: %s Ms"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
