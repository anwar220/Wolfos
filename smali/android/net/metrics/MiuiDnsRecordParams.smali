# classes2.dex

.class public Landroid/net/metrics/MiuiDnsRecordParams;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/net/metrics/MiuiDnsRecordParams;",
        ">;"
    }
.end annotation


# instance fields
.field private eventType:I

.field private hostname:Ljava/lang/String;

.field private ipAddresses:[Ljava/lang/String;

.field private ipAddressesCount:I

.field private latency:I

.field private requestTime:J

.field private returnCode:I

.field private timestamp:J

.field private uid:I


# direct methods
.method public constructor <init>(IIII[Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->latency:I

    iput p2, p0, Landroid/net/metrics/MiuiDnsRecordParams;->eventType:I

    iput p3, p0, Landroid/net/metrics/MiuiDnsRecordParams;->returnCode:I

    iput p4, p0, Landroid/net/metrics/MiuiDnsRecordParams;->ipAddressesCount:I

    iput-object p5, p0, Landroid/net/metrics/MiuiDnsRecordParams;->ipAddresses:[Ljava/lang/String;

    iput-object p6, p0, Landroid/net/metrics/MiuiDnsRecordParams;->hostname:Ljava/lang/String;

    iput p7, p0, Landroid/net/metrics/MiuiDnsRecordParams;->uid:I

    iput-wide p8, p0, Landroid/net/metrics/MiuiDnsRecordParams;->timestamp:J

    int-to-long v0, p1

    sub-long v0, p8, v0

    iput-wide v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->requestTime:J

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/net/metrics/MiuiDnsRecordParams;)I
    .registers 6

    iget-wide v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->requestTime:J

    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getRequestTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, -0x1

    :goto_d
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroid/net/metrics/MiuiDnsRecordParams;

    invoke-virtual {p0, p1}, Landroid/net/metrics/MiuiDnsRecordParams;->compareTo(Landroid/net/metrics/MiuiDnsRecordParams;)I

    move-result p1

    return p1
.end method

.method public getEventType()I
    .registers 2

    iget v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->eventType:I

    return v0
.end method

.method public getHostname()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddresses()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->ipAddresses:[Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddressesCount()I
    .registers 2

    iget v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->ipAddressesCount:I

    return v0
.end method

.method public getLatencyMs()I
    .registers 2

    iget v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->latency:I

    return v0
.end method

.method public getRequestTime()J
    .registers 3

    iget-wide v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->requestTime:J

    return-wide v0
.end method

.method public getReturnCode()I
    .registers 2

    iget v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->returnCode:I

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->timestamp:J

    return-wide v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->uid:I

    return v0
.end method

.method public setEventType(I)V
    .registers 2

    iput p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->eventType:I

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->hostname:Ljava/lang/String;

    return-void
.end method

.method public setIpAddresses([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->ipAddresses:[Ljava/lang/String;

    return-void
.end method

.method public setIpAddressesCount(I)V
    .registers 2

    iput p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->ipAddressesCount:I

    return-void
.end method

.method public setLatencyMs(I)V
    .registers 2

    iput p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->latency:I

    return-void
.end method

.method public setReturnCode(I)V
    .registers 2

    iput p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->returnCode:I

    return-void
.end method

.method public setTimestamp(J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->timestamp:J

    return-void
.end method

.method public setUid(I)V
    .registers 2

    iput p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->uid:I

    return-void
.end method
