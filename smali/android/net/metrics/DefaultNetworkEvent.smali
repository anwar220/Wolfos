# classes2.dex

.class public Landroid/net/metrics/DefaultNetworkEvent;
.super Ljava/lang/Object;


# instance fields
.field public final creationTimeMs:J

.field public durationMs:J

.field public finalScore:I

.field public initialScore:I

.field public ipv4:Z

.field public ipv6:Z

.field public netId:I

.field public previousTransports:I

.field public transports:I

.field public validatedMs:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    iput-wide p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->creationTimeMs:J

    return-void
.end method

.method private ipSupport()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v1, :cond_b

    const-string v0, "IPv4v6"

    return-object v0

    :cond_b
    iget-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v1, :cond_12

    const-string v0, "IPv6"

    return-object v0

    :cond_12
    if-eqz v0, :cond_17

    const-string v0, "IPv4"

    return-object v0

    :cond_17
    const-string v0, "NONE"

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string v2, "DefaultNetworkEvent("

    const-string v3, ")"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

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

    iget v4, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    int-to-long v4, v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    invoke-static {v3}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ip="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/metrics/DefaultNetworkEvent;->ipSupport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    if-lez v1, :cond_7c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initial_score="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_7c
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    if-lez v1, :cond_98

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final_score="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_98
    new-array v1, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    long-to-double v3, v3

    const-wide v7, 0x408f400000000000L  # 1000.0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v6

    const-string v3, "duration=%.0fs"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-array v1, v2, [Ljava/lang/Object;

    iget-wide v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    mul-double/2addr v2, v4

    iget-wide v4, p0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "validation=%04.1f%%"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateDuration(J)V
    .registers 5

    iget-wide v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->creationTimeMs:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    return-void
.end method
