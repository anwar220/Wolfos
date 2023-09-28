# classes2.dex

.class public final Landroid/net/metrics/DnsEvent;
.super Ljava/lang/Object;


# static fields
.field private static final SIZE_LIMIT:I = 0x4e20


# instance fields
.field public eventCount:I

.field public eventTypes:[B

.field public latenciesMs:[I

.field public latencySum:J

.field public final netId:I

.field public returnCodes:[B

.field public successCount:I

.field public final transports:J


# direct methods
.method public constructor <init>(IJI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/metrics/DnsEvent;->latencySum:J

    iput p1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    iput-wide p2, p0, Landroid/net/metrics/DnsEvent;->transports:J

    new-array v0, p4, [B

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    new-array v0, p4, [B

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    new-array v0, p4, [I

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    return-void
.end method


# virtual methods
.method addResult(BBI)Z
    .registers 11

    const/4 v0, 0x1

    if-nez p2, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    iget v2, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    const/16 v3, 0x4e20

    if-lt v2, v3, :cond_d

    return v1

    :cond_d
    iget-object v3, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    array-length v3, v3

    if-ne v2, v3, :cond_25

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1a

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/net/metrics/DnsEvent;->resize(I)V

    goto :goto_25

    :cond_1a
    const-wide v3, 0x3ff6666666666666L  # 1.4

    int-to-double v5, v2

    mul-double/2addr v5, v3

    double-to-int v2, v5

    invoke-virtual {p0, v2}, Landroid/net/metrics/DnsEvent;->resize(I)V

    :cond_25
    :goto_25
    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    iget v3, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    aput-byte p1, v2, v3

    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    aput-byte p2, v2, v3

    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    aput p3, v2, v3

    add-int/2addr v3, v0

    iput v3, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    iget-wide v2, p0, Landroid/net/metrics/DnsEvent;->latencySum:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/metrics/DnsEvent;->latencySum:J

    if-eqz v1, :cond_43

    iget v2, p0, Landroid/net/metrics/DnsEvent;->successCount:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/net/metrics/DnsEvent;->successCount:I

    :cond_43
    return v1
.end method

.method public resize(I)V
    .registers 3

    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DnsEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transports="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [J

    iget-wide v3, p0, Landroid/net/metrics/DnsEvent;->transports:J

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

    iget v3, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%d events, "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/DnsEvent;->successCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%d success, "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Landroid/net/metrics/DnsEvent;->latencySum:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "%d ms)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
