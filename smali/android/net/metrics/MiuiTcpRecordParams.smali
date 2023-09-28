# classes2.dex

.class public Landroid/net/metrics/MiuiTcpRecordParams;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/net/metrics/MiuiTcpRecordParams;",
        ">;"
    }
.end annotation


# instance fields
.field private error:I

.field private ipAddr:Ljava/lang/String;

.field private latencyMs:I

.field private port:I

.field private requestTime:J

.field private timestamp:J

.field private uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IIJ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/metrics/MiuiTcpRecordParams;->error:I

    iput p2, p0, Landroid/net/metrics/MiuiTcpRecordParams;->latencyMs:I

    iput-object p3, p0, Landroid/net/metrics/MiuiTcpRecordParams;->ipAddr:Ljava/lang/String;

    iput p4, p0, Landroid/net/metrics/MiuiTcpRecordParams;->port:I

    iput p5, p0, Landroid/net/metrics/MiuiTcpRecordParams;->uid:I

    iput-wide p6, p0, Landroid/net/metrics/MiuiTcpRecordParams;->timestamp:J

    int-to-long v0, p2

    sub-long v0, p6, v0

    iput-wide v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->requestTime:J

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/net/metrics/MiuiTcpRecordParams;)I
    .registers 6

    iget-wide v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->requestTime:J

    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getRequestTime()J

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

    check-cast p1, Landroid/net/metrics/MiuiTcpRecordParams;

    invoke-virtual {p0, p1}, Landroid/net/metrics/MiuiTcpRecordParams;->compareTo(Landroid/net/metrics/MiuiTcpRecordParams;)I

    move-result p1

    return p1
.end method

.method public getError()I
    .registers 2

    iget v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->error:I

    return v0
.end method

.method public getIpAddr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->ipAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getLatencyMs()I
    .registers 2

    iget v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->latencyMs:I

    return v0
.end method

.method public getPort()I
    .registers 2

    iget v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->port:I

    return v0
.end method

.method public getRequestTime()J
    .registers 3

    iget-wide v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->requestTime:J

    return-wide v0
.end method

.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->timestamp:J

    return-wide v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->uid:I

    return v0
.end method

.method public setError(I)V
    .registers 2

    iput p1, p0, Landroid/net/metrics/MiuiTcpRecordParams;->error:I

    return-void
.end method

.method public setIpAddr(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/metrics/MiuiTcpRecordParams;->ipAddr:Ljava/lang/String;

    return-void
.end method

.method public setLatencyMs(I)V
    .registers 2

    iput p1, p0, Landroid/net/metrics/MiuiTcpRecordParams;->latencyMs:I

    return-void
.end method

.method public setPort(I)V
    .registers 2

    iput p1, p0, Landroid/net/metrics/MiuiTcpRecordParams;->port:I

    return-void
.end method

.method public setTimestamp(J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/metrics/MiuiTcpRecordParams;->timestamp:J

    return-void
.end method

.method public setUid(I)V
    .registers 2

    iput p1, p0, Landroid/net/metrics/MiuiTcpRecordParams;->uid:I

    return-void
.end method
