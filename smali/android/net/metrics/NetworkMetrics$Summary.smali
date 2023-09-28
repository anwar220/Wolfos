# classes2.dex

.class public Landroid/net/metrics/NetworkMetrics$Summary;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/NetworkMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Summary"
.end annotation


# instance fields
.field public final connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final netId:I

.field public final roundTripTimeUs:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final sentAckTimeDiffenceMs:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final transports:J


# direct methods
.method public constructor <init>(IJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->roundTripTimeUs:Landroid/net/metrics/NetworkMetrics$Metrics;

    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->sentAckTimeDiffenceMs:Landroid/net/metrics/NetworkMetrics$Metrics;

    iput p1, p0, Landroid/net/metrics/NetworkMetrics$Summary;->netId:I

    iput-wide p2, p0, Landroid/net/metrics/NetworkMetrics$Summary;->transports:J

    return-void
.end method


# virtual methods
.method merge(Landroid/net/metrics/NetworkMetrics$Summary;)V
    .registers 4

    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-object v1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V

    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-object v1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V

    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-object v1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V

    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-object v1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V

    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-object v1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string v2, "{"

    const-string v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/metrics/NetworkMetrics$Summary;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transports="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [J

    iget-wide v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->transports:J

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    invoke-static {v3}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v4}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-wide v4, v4, Landroid/net/metrics/NetworkMetrics$Metrics;->max:D

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v4}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v4

    const-wide/high16 v7, 0x4059000000000000L  # 100.0

    mul-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget v4, v4, Landroid/net/metrics/NetworkMetrics$Metrics;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v3, v9

    const-string v4, "dns avg=%dms max=%dms err=%.1f%% tot=%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v3}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    iget-object v3, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-wide v3, v3, Landroid/net/metrics/NetworkMetrics$Metrics;->max:D

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v3}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v3

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v5

    iget-object v3, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget v3, v3, Landroid/net/metrics/NetworkMetrics$Metrics;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    const-string v3, "connect avg=%dms max=%dms err=%.1f%% tot=%d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v3}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v3

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v6

    iget-object v3, p0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget v3, v3, Landroid/net/metrics/NetworkMetrics$Metrics;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-wide v3, v3, Landroid/net/metrics/NetworkMetrics$Metrics;->sum:D

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    const-string v3, "tcp avg_loss=%.1f%% total_sent=%d total_lost=%d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/metrics/NetworkMetrics$Summary;->roundTripTimeUs:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v3}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v3

    const-wide v7, 0x408f400000000000L  # 1000.0

    div-double/2addr v3, v7

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    const-string v3, "tcp rtt=%dms"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/metrics/NetworkMetrics$Summary;->sentAckTimeDiffenceMs:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v2}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "tcp sent-ack_diff=%dms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
