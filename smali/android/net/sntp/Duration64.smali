# classes2.dex

.class public final Landroid/net/sntp/Duration64;
.super Ljava/lang/Object;


# static fields
.field public static final ZERO:Landroid/net/sntp/Duration64;


# instance fields
.field private final mBits:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/net/sntp/Duration64;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/sntp/Duration64;-><init>(J)V

    sput-object v0, Landroid/net/sntp/Duration64;->ZERO:Landroid/net/sntp/Duration64;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/net/sntp/Duration64;->mBits:J

    return-void
.end method

.method public static between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;
    .registers 11

    invoke-virtual {p0}, Landroid/net/sntp/Timestamp64;->getEraSeconds()J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/net/sntp/Timestamp64;->getFractionBits()I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    invoke-virtual {p1}, Landroid/net/sntp/Timestamp64;->getEraSeconds()J

    move-result-wide v3

    shl-long v2, v3, v2

    invoke-virtual {p1}, Landroid/net/sntp/Timestamp64;->getFractionBits()I

    move-result v4

    int-to-long v7, v4

    and-long v4, v7, v5

    or-long/2addr v2, v4

    sub-long v4, v2, v0

    new-instance v6, Landroid/net/sntp/Duration64;

    invoke-direct {v6, v4, v5}, Landroid/net/sntp/Duration64;-><init>(J)V

    return-object v6
.end method

.method public static fromDuration(Ljava/time/Duration;)Landroid/net/sntp/Duration64;
    .registers 9

    invoke-virtual {p0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2d

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2d

    const/16 v2, 0x20

    shl-long v2, v0, v2

    invoke-virtual {p0}, Ljava/time/Duration;->getNano()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Landroid/net/sntp/Timestamp64;->nanosToFractionBits(J)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    new-instance v4, Landroid/net/sntp/Duration64;

    invoke-direct {v4, v2, v3}, Landroid/net/sntp/Duration64;-><init>(J)V

    return-object v4

    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_20

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/sntp/Duration64;

    iget-wide v3, p0, Landroid/net/sntp/Duration64;->mBits:J

    iget-wide v5, v2, Landroid/net/sntp/Duration64;->mBits:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    return v0

    :cond_20
    :goto_20
    return v1
.end method

.method public getNanos()I
    .registers 5

    iget-wide v0, p0, Landroid/net/sntp/Duration64;->mBits:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Landroid/net/sntp/Timestamp64;->fractionBitsToNanos(I)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .registers 4

    iget-wide v0, p0, Landroid/net/sntp/Duration64;->mBits:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/net/sntp/Duration64;->mBits:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public plus(Landroid/net/sntp/Duration64;)Ljava/time/Duration;
    .registers 4

    invoke-virtual {p0}, Landroid/net/sntp/Duration64;->toDuration()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/sntp/Duration64;->toDuration()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Duration;->plus(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public toDuration()Ljava/time/Duration;
    .registers 7

    invoke-virtual {p0}, Landroid/net/sntp/Duration64;->getSeconds()I

    move-result v0

    invoke-virtual {p0}, Landroid/net/sntp/Duration64;->getNanos()I

    move-result v1

    int-to-long v2, v0

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/net/sntp/Duration64;->toDuration()Ljava/time/Duration;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Landroid/net/sntp/Duration64;->mBits:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Duration;->getNano()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ns)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
