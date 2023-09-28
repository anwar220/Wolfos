# classes4.dex

.class public final Lcom/android/net/module/util/BestClock;
.super Ljava/time/Clock;


# static fields
.field private static final TAG:Ljava/lang/String; = "BestClock"


# instance fields
.field private final mClocks:[Ljava/time/Clock;

.field private final mZone:Ljava/time/ZoneId;


# direct methods
.method public varargs constructor <init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V
    .registers 3

    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    iput-object p1, p0, Lcom/android/net/module/util/BestClock;->mZone:Ljava/time/ZoneId;

    iput-object p2, p0, Lcom/android/net/module/util/BestClock;->mClocks:[Ljava/time/Clock;

    return-void
.end method


# virtual methods
.method public getZone()Ljava/time/ZoneId;
    .registers 2

    iget-object v0, p0, Lcom/android/net/module/util/BestClock;->mZone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public instant()Ljava/time/Instant;
    .registers 3

    invoke-virtual {p0}, Lcom/android/net/module/util/BestClock;->millis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public millis()J
    .registers 8

    iget-object v0, p0, Lcom/android/net/module/util/BestClock;->mClocks:[Ljava/time/Clock;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    :try_start_8
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v0
    :try_end_c
    .catch Ljava/time/DateTimeException; {:try_start_8 .. :try_end_c} :catch_d

    return-wide v0

    :catch_d
    move-exception v4

    invoke-virtual {v4}, Ljava/time/DateTimeException;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BestClock"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1a
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No clocks in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/net/module/util/BestClock;->mClocks:[Ljava/time/Clock;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " were able to provide time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 4

    new-instance v0, Lcom/android/net/module/util/BestClock;

    iget-object v1, p0, Lcom/android/net/module/util/BestClock;->mClocks:[Ljava/time/Clock;

    invoke-direct {v0, p1, v1}, Lcom/android/net/module/util/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    return-object v0
.end method
