# classes4.dex

.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat192;
.super Ljava/lang/Object;


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)I
    .registers 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    ushr-long/2addr v0, v2

    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    ushr-long/2addr v0, v2

    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    ushr-long/2addr v0, v2

    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    ushr-long/2addr v0, v2

    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    ushr-long/2addr v0, v2

    long-to-int v2, v0

    return v2
.end method

.method public static addBothTo([I[I[I)I
    .registers 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    ushr-long/2addr v0, v2

    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    ushr-long/2addr v0, v2

    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    ushr-long/2addr v0, v2

    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    ushr-long/2addr v0, v2

    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    ushr-long/2addr v0, v2

    long-to-int v2, v0

    return v2
.end method

.method public static addTo([II[III)I
    .registers 14

    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x0

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    add-int/lit8 v2, p3, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long/2addr v0, v4

    long-to-int v2, v0

    return v2
.end method

.method public static addTo([I[I)I
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p1, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p1, v3

    ushr-long/2addr v0, v2

    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p1, v3

    ushr-long/2addr v0, v2

    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p1, v3

    ushr-long/2addr v0, v2

    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p1, v3

    ushr-long/2addr v0, v2

    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p1, v3

    ushr-long/2addr v0, v2

    long-to-int v2, v0

    return v2
.end method

.method public static addToEachOther([II[II)I
    .registers 14

    const-wide/16 v0, 0x0

    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v3, p1, 0x1

    long-to-int v6, v0

    aput v6, p0, v3

    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    ushr-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v3, p1, 0x2

    long-to-int v6, v0

    aput v6, p0, v3

    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    ushr-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v3, p1, 0x3

    long-to-int v6, v0

    aput v6, p0, v3

    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    ushr-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v3, p1, 0x4

    long-to-int v6, v0

    aput v6, p0, v3

    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    ushr-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    add-int/lit8 v3, p1, 0x5

    long-to-int v4, v0

    aput v4, p0, v3

    add-int/lit8 v3, p3, 0x5

    long-to-int v4, v0

    aput v4, p2, v3

    ushr-long/2addr v0, v2

    long-to-int v2, v0

    return v2
.end method

.method public static copy([II[II)V
    .registers 6

    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    aput v1, p2, v0

    return-void
.end method

.method public static copy([I[I)V
    .registers 4

    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x4

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x5

    aget v1, p0, v0

    aput v1, p1, v0

    return-void
.end method

.method public static copy64([JI[JI)V
    .registers 7

    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    return-void
.end method

.method public static copy64([J[J)V
    .registers 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    return-void
.end method

.method public static create()[I
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    return-object v0
.end method

.method public static create64()[J
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [J

    return-object v0
.end method

.method public static createExt()[I
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt64()[J
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [J

    return-object v0
.end method

.method public static diff([II[II[II)Z
    .registers 13

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([II[II)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([II[II[II)I

    goto :goto_13

    :cond_a
    move-object v1, p2

    move v2, p3

    move-object v3, p0

    move v4, p1

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([II[II[II)I

    :goto_13
    return v0
.end method

.method public static eq([I[I)Z
    .registers 5

    const/4 v0, 0x5

    :goto_1
    if-ltz v0, :cond_e

    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_b

    const/4 v1, 0x0

    return v1

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public static eq64([J[J)Z
    .registers 7

    const/4 v0, 0x2

    :goto_1
    if-ltz v0, :cond_10

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    return v1

    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc0

    if-gt v0, v1, :cond_26

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x6

    if-ge v1, v2, :cond_25

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_25
    return-object v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static fromBigInteger64(Ljava/math/BigInteger;)[J
    .registers 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc0

    if-gt v0, v1, :cond_26

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v0

    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x3

    if-ge v1, v2, :cond_25

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_25
    return-object v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getBit([II)I
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_8

    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    :cond_8
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_18

    const/4 v2, 0x6

    if-lt v1, v2, :cond_10

    goto :goto_18

    :cond_10
    and-int/lit8 v0, p1, 0x1f

    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    return v2

    :cond_18
    :goto_18
    return v0
.end method

.method public static gte([II[II)Z
    .registers 9

    const/4 v0, 0x5

    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_1a

    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_14

    const/4 v1, 0x0

    return v1

    :cond_14
    if-le v2, v3, :cond_17

    return v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1a
    return v1
.end method

.method public static gte([I[I)Z
    .registers 7

    const/4 v0, 0x5

    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_16

    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    aget v4, p1, v0

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_10

    const/4 v1, 0x0

    return v1

    :cond_10
    if-le v2, v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_16
    return v1
.end method

.method public static isOne([I)Z
    .registers 5

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    const/4 v1, 0x1

    :goto_8
    const/4 v3, 0x6

    if-ge v1, v3, :cond_13

    aget v3, p0, v1

    if-eqz v3, :cond_10

    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    return v2
.end method

.method public static isOne64([J)Z
    .registers 7

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    return v0

    :cond_a
    const/4 v1, 0x1

    :goto_b
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1a

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public static isZero([I)Z
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_d

    aget v1, p0, v0

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public static isZero64([J)Z
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_11

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public static mul([II[II[II)V
    .registers 32

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    const-wide/16 v14, 0x0

    add-int/lit8 v16, p1, 0x0

    move-wide/from16 v17, v12

    aget v12, p0, v16

    int-to-long v12, v12

    and-long/2addr v12, v2

    mul-long v19, v12, v0

    add-long v14, v14, v19

    add-int/lit8 v16, p5, 0x0

    long-to-int v2, v14

    aput v2, p4, v16

    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    mul-long v21, v12, v4

    add-long v14, v14, v21

    add-int/lit8 v3, p5, 0x1

    long-to-int v2, v14

    aput v2, p4, v3

    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    mul-long v21, v12, v6

    add-long v14, v14, v21

    add-int/lit8 v3, p5, 0x2

    long-to-int v2, v14

    aput v2, p4, v3

    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    mul-long v21, v12, v8

    add-long v14, v14, v21

    add-int/lit8 v3, p5, 0x3

    long-to-int v2, v14

    aput v2, p4, v3

    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    mul-long v21, v12, v10

    add-long v14, v14, v21

    add-int/lit8 v3, p5, 0x4

    long-to-int v2, v14

    aput v2, p4, v3

    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    mul-long v21, v12, v17

    add-long v14, v14, v21

    add-int/lit8 v3, p5, 0x5

    long-to-int v2, v14

    aput v2, p4, v3

    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v14

    aput v3, p4, v2

    const/4 v2, 0x1

    move v3, v2

    move/from16 v2, p5

    :goto_84
    const/4 v12, 0x6

    if-ge v3, v12, :cond_136

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v12, 0x0

    add-int v14, p1, v3

    aget v14, p0, v14

    int-to-long v14, v14

    const-wide v19, 0xffffffffL

    and-long v14, v14, v19

    mul-long v21, v14, v0

    add-int/lit8 v23, v2, 0x0

    move-wide/from16 v24, v0

    aget v0, p4, v23

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long v21, v21, v0

    add-long v12, v12, v21

    add-int/lit8 v0, v2, 0x0

    long-to-int v1, v12

    aput v1, p4, v0

    const/16 v0, 0x20

    ushr-long/2addr v12, v0

    mul-long v0, v14, v4

    add-int/lit8 v21, v2, 0x1

    move-wide/from16 v22, v4

    aget v4, p4, v21

    int-to-long v4, v4

    const-wide v19, 0xffffffffL

    and-long v4, v4, v19

    add-long/2addr v0, v4

    add-long/2addr v12, v0

    add-int/lit8 v0, v2, 0x1

    long-to-int v1, v12

    aput v1, p4, v0

    const/16 v0, 0x20

    ushr-long v4, v12, v0

    mul-long v0, v14, v6

    add-int/lit8 v12, v2, 0x2

    aget v12, p4, v12

    int-to-long v12, v12

    const-wide v19, 0xffffffffL

    and-long v12, v12, v19

    add-long/2addr v0, v12

    add-long/2addr v4, v0

    add-int/lit8 v0, v2, 0x2

    long-to-int v1, v4

    aput v1, p4, v0

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    mul-long v0, v14, v8

    add-int/lit8 v12, v2, 0x3

    aget v12, p4, v12

    int-to-long v12, v12

    const-wide v19, 0xffffffffL

    and-long v12, v12, v19

    add-long/2addr v0, v12

    add-long/2addr v4, v0

    add-int/lit8 v0, v2, 0x3

    long-to-int v1, v4

    aput v1, p4, v0

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    mul-long v0, v14, v10

    add-int/lit8 v12, v2, 0x4

    aget v12, p4, v12

    int-to-long v12, v12

    const-wide v19, 0xffffffffL

    and-long v12, v12, v19

    add-long/2addr v0, v12

    add-long/2addr v4, v0

    add-int/lit8 v0, v2, 0x4

    long-to-int v1, v4

    aput v1, p4, v0

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    mul-long v12, v14, v17

    add-int/lit8 v0, v2, 0x5

    aget v0, p4, v0

    int-to-long v0, v0

    const-wide v19, 0xffffffffL

    and-long v0, v0, v19

    add-long/2addr v12, v0

    add-long/2addr v4, v12

    add-int/lit8 v0, v2, 0x5

    long-to-int v1, v4

    aput v1, p4, v0

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    add-int/lit8 v1, v2, 0x6

    long-to-int v12, v4

    aput v12, p4, v1

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v4, v22

    move-wide/from16 v0, v24

    goto/16 :goto_84

    :cond_136
    return-void
.end method

.method public static mul([I[I[I)V
    .registers 33

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/4 v14, 0x4

    aget v15, p1, v14

    int-to-long v14, v15

    and-long/2addr v14, v3

    const/16 v17, 0x5

    aget v11, p1, v17

    move-wide/from16 v20, v9

    int-to-long v8, v11

    and-long/2addr v8, v3

    const-wide/16 v10, 0x0

    aget v5, p0, v0

    move-wide/from16 v24, v1

    int-to-long v0, v5

    and-long/2addr v0, v3

    mul-long v26, v0, v24

    add-long v10, v10, v26

    long-to-int v2, v10

    const/4 v5, 0x0

    aput v2, p2, v5

    const/16 v2, 0x20

    ushr-long/2addr v10, v2

    mul-long v26, v0, v6

    add-long v10, v10, v26

    long-to-int v5, v10

    const/16 v22, 0x1

    aput v5, p2, v22

    ushr-long/2addr v10, v2

    mul-long v22, v0, v20

    add-long v10, v10, v22

    long-to-int v5, v10

    const/16 v19, 0x2

    aput v5, p2, v19

    ushr-long/2addr v10, v2

    mul-long v22, v0, v12

    add-long v10, v10, v22

    long-to-int v5, v10

    const/16 v18, 0x3

    aput v5, p2, v18

    ushr-long/2addr v10, v2

    mul-long v18, v0, v14

    add-long v10, v10, v18

    long-to-int v5, v10

    const/16 v16, 0x4

    aput v5, p2, v16

    ushr-long/2addr v10, v2

    mul-long v18, v0, v8

    add-long v10, v10, v18

    long-to-int v5, v10

    aput v5, p2, v17

    ushr-long/2addr v10, v2

    long-to-int v5, v10

    const/4 v2, 0x6

    aput v5, p2, v2

    const/4 v0, 0x1

    :goto_6e
    if-ge v0, v2, :cond_fc

    const-wide/16 v10, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    and-long/2addr v1, v3

    mul-long v17, v1, v24

    add-int/lit8 v19, v0, 0x0

    aget v5, p2, v19

    move-wide/from16 v26, v8

    int-to-long v8, v5

    and-long/2addr v8, v3

    add-long v17, v17, v8

    add-long v10, v10, v17

    add-int/lit8 v5, v0, 0x0

    long-to-int v8, v10

    aput v8, p2, v5

    const/16 v5, 0x20

    ushr-long v8, v10, v5

    mul-long v10, v1, v6

    add-int/lit8 v5, v0, 0x1

    aget v5, p2, v5

    move-wide/from16 v17, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v10, v5

    add-long/2addr v8, v10

    add-int/lit8 v5, v0, 0x1

    long-to-int v6, v8

    aput v6, p2, v5

    const/16 v5, 0x20

    ushr-long v6, v8, v5

    mul-long v9, v1, v20

    add-int/lit8 v5, v0, 0x2

    aget v5, p2, v5

    move-wide/from16 v28, v14

    int-to-long v14, v5

    and-long/2addr v14, v3

    add-long/2addr v9, v14

    add-long/2addr v6, v9

    add-int/lit8 v5, v0, 0x2

    long-to-int v8, v6

    aput v8, p2, v5

    const/16 v5, 0x20

    ushr-long/2addr v6, v5

    mul-long v8, v1, v12

    add-int/lit8 v5, v0, 0x3

    aget v5, p2, v5

    int-to-long v10, v5

    and-long/2addr v10, v3

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v5, v0, 0x3

    long-to-int v8, v6

    aput v8, p2, v5

    const/16 v5, 0x20

    ushr-long/2addr v6, v5

    mul-long v14, v1, v28

    add-int/lit8 v5, v0, 0x4

    aget v5, p2, v5

    int-to-long v8, v5

    and-long/2addr v8, v3

    add-long/2addr v14, v8

    add-long/2addr v6, v14

    add-int/lit8 v5, v0, 0x4

    long-to-int v8, v6

    aput v8, p2, v5

    const/16 v5, 0x20

    ushr-long/2addr v6, v5

    mul-long v8, v1, v26

    add-int/lit8 v5, v0, 0x5

    aget v5, p2, v5

    int-to-long v10, v5

    and-long/2addr v10, v3

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v5, v0, 0x5

    long-to-int v8, v6

    aput v8, p2, v5

    const/16 v5, 0x20

    ushr-long/2addr v6, v5

    add-int/lit8 v8, v0, 0x6

    long-to-int v9, v6

    aput v9, p2, v8

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v6, v17

    move-wide/from16 v8, v26

    move-wide/from16 v14, v28

    const/4 v2, 0x6

    goto/16 :goto_6e

    :cond_fc
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .registers 32

    const-wide/16 v0, 0x0

    move/from16 v2, p0

    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int/lit8 v7, p2, 0x0

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    mul-long v9, v3, v7

    add-int/lit8 v11, p4, 0x0

    aget v11, p3, v11

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    add-long/2addr v0, v9

    add-int/lit8 v9, p6, 0x0

    long-to-int v10, v0

    aput v10, p5, v9

    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    add-int/lit8 v10, p2, 0x1

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    mul-long v12, v3, v10

    add-long/2addr v12, v7

    add-int/lit8 v14, p4, 0x1

    aget v14, p3, v14

    int-to-long v14, v14

    and-long/2addr v14, v5

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    add-int/lit8 v12, p6, 0x1

    long-to-int v13, v0

    aput v13, p5, v12

    ushr-long/2addr v0, v9

    add-int/lit8 v12, p2, 0x2

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v5

    mul-long v14, v3, v12

    add-long/2addr v14, v10

    add-int/lit8 v16, p4, 0x2

    aget v9, p3, v16

    move-wide/from16 v17, v7

    int-to-long v7, v9

    and-long/2addr v7, v5

    add-long/2addr v14, v7

    add-long/2addr v0, v14

    add-int/lit8 v7, p6, 0x2

    long-to-int v8, v0

    aput v8, p5, v7

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    add-int/lit8 v7, p2, 0x3

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    mul-long v14, v3, v7

    add-long/2addr v14, v12

    add-int/lit8 v9, p4, 0x3

    aget v9, p3, v9

    move-wide/from16 v19, v10

    int-to-long v9, v9

    and-long/2addr v9, v5

    add-long/2addr v14, v9

    add-long/2addr v0, v14

    add-int/lit8 v9, p6, 0x3

    long-to-int v10, v0

    aput v10, p5, v9

    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    add-int/lit8 v9, p2, 0x4

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v5

    mul-long v14, v3, v9

    add-long/2addr v14, v7

    add-int/lit8 v11, p4, 0x4

    aget v11, p3, v11

    move-wide/from16 v21, v7

    int-to-long v7, v11

    and-long/2addr v7, v5

    add-long/2addr v14, v7

    add-long/2addr v0, v14

    add-int/lit8 v7, p6, 0x4

    long-to-int v8, v0

    aput v8, p5, v7

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    add-int/lit8 v7, p2, 0x5

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    mul-long v14, v3, v7

    add-long/2addr v14, v9

    add-int/lit8 v11, p4, 0x5

    aget v11, p3, v11

    move-wide/from16 v23, v3

    int-to-long v2, v11

    and-long/2addr v2, v5

    add-long/2addr v14, v2

    add-long/2addr v0, v14

    add-int/lit8 v2, p6, 0x5

    long-to-int v3, v0

    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    add-long/2addr v0, v7

    return-wide v0
.end method

.method public static mul33DWordAdd(IJ[II)I
    .registers 24

    move-object/from16 v0, p3

    move/from16 v1, p4

    const-wide/16 v2, 0x0

    move/from16 v4, p0

    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    and-long v9, p1, v7

    mul-long v11, v5, v9

    add-int/lit8 v13, v1, 0x0

    aget v13, v0, v13

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-long/2addr v11, v13

    add-long/2addr v2, v11

    add-int/lit8 v11, v1, 0x0

    long-to-int v12, v2

    aput v12, v0, v11

    const/16 v11, 0x20

    ushr-long/2addr v2, v11

    ushr-long v12, p1, v11

    mul-long v14, v5, v12

    add-long/2addr v14, v9

    add-int/lit8 v16, v1, 0x1

    aget v11, v0, v16

    move-wide/from16 v17, v5

    int-to-long v4, v11

    and-long/2addr v4, v7

    add-long/2addr v14, v4

    add-long/2addr v2, v14

    add-int/lit8 v4, v1, 0x1

    long-to-int v5, v2

    aput v5, v0, v4

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x2

    aget v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    add-long/2addr v4, v12

    add-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x2

    long-to-int v5, v2

    aput v5, v0, v4

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x3

    aget v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    add-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x3

    long-to-int v5, v2

    aput v5, v0, v4

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_61

    const/4 v4, 0x0

    goto :goto_67

    :cond_61
    const/4 v4, 0x6

    const/4 v5, 0x4

    invoke-static {v4, v0, v1, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_67
    return v4
.end method

.method public static mul33WordAdd(II[II)I
    .registers 16

    const-wide/16 v0, 0x0

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    int-to-long v6, p1

    and-long/2addr v6, v4

    mul-long v8, v6, v2

    add-int/lit8 v10, p3, 0x0

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    add-int/lit8 v8, p3, 0x0

    long-to-int v9, v0

    aput v9, p2, v8

    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    add-int/lit8 v9, p3, 0x1

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v9, v6

    add-long/2addr v0, v9

    add-int/lit8 v9, p3, 0x1

    long-to-int v10, v0

    aput v10, p2, v9

    ushr-long/2addr v0, v8

    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    add-int/lit8 v4, p3, 0x2

    long-to-int v5, v0

    aput v5, p2, v4

    ushr-long/2addr v0, v8

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_40

    const/4 v4, 0x0

    goto :goto_46

    :cond_40
    const/4 v4, 0x6

    const/4 v5, 0x3

    invoke-static {v4, p2, p3, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_46
    return v4
.end method

.method public static mulAddTo([II[II[II)I
    .registers 35

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move-wide/from16 v17, v14

    move/from16 v15, v16

    move/from16 v14, p5

    :goto_33
    const/4 v2, 0x6

    if-ge v15, v2, :cond_107

    const-wide/16 v2, 0x0

    add-int v16, p1, v15

    move/from16 p5, v15

    aget v15, p0, v16

    move-wide/from16 v21, v12

    int-to-long v12, v15

    const-wide v15, 0xffffffffL

    and-long/2addr v12, v15

    mul-long v23, v12, v0

    add-int/lit8 v19, v14, 0x0

    move-wide/from16 v25, v0

    aget v0, p4, v19

    int-to-long v0, v0

    and-long/2addr v0, v15

    add-long v23, v23, v0

    add-long v2, v2, v23

    add-int/lit8 v0, v14, 0x0

    long-to-int v1, v2

    aput v1, p4, v0

    const/16 v0, 0x20

    ushr-long v1, v2, v0

    mul-long v15, v12, v4

    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    move-wide/from16 v27, v1

    int-to-long v0, v3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v15, v0

    add-long v1, v27, v15

    add-int/lit8 v0, v14, 0x1

    long-to-int v3, v1

    aput v3, p4, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    mul-long v15, v12, v6

    add-int/lit8 v0, v14, 0x2

    aget v0, p4, v0

    move-wide/from16 v27, v4

    int-to-long v3, v0

    const-wide v19, 0xffffffffL

    and-long v3, v3, v19

    add-long/2addr v15, v3

    add-long/2addr v1, v15

    add-int/lit8 v0, v14, 0x2

    long-to-int v3, v1

    aput v3, p4, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    mul-long v3, v12, v8

    add-int/lit8 v0, v14, 0x3

    aget v0, p4, v0

    move-wide v15, v6

    int-to-long v5, v0

    const-wide v19, 0xffffffffL

    and-long v5, v5, v19

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    add-int/lit8 v0, v14, 0x3

    long-to-int v3, v1

    aput v3, p4, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    mul-long v3, v12, v10

    add-int/lit8 v0, v14, 0x4

    aget v0, p4, v0

    int-to-long v5, v0

    const-wide v19, 0xffffffffL

    and-long v5, v5, v19

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    add-int/lit8 v0, v14, 0x4

    long-to-int v3, v1

    aput v3, p4, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    mul-long v3, v12, v21

    add-int/lit8 v0, v14, 0x5

    aget v0, p4, v0

    int-to-long v5, v0

    const-wide v19, 0xffffffffL

    and-long v5, v5, v19

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    add-int/lit8 v0, v14, 0x5

    long-to-int v3, v1

    aput v3, p4, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    add-int/lit8 v0, v14, 0x6

    aget v0, p4, v0

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-long/2addr v3, v1

    move-wide/from16 v5, v17

    add-long/2addr v3, v5

    add-int/lit8 v0, v14, 0x6

    long-to-int v5, v3

    aput v5, p4, v0

    const/16 v0, 0x20

    ushr-long v17, v3, v0

    nop

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v0, p5, 0x1

    move-wide v6, v15

    move-wide/from16 v12, v21

    move-wide/from16 v4, v27

    const-wide v2, 0xffffffffL

    move v15, v0

    move-wide/from16 v0, v25

    goto/16 :goto_33

    :cond_107
    move-wide/from16 v25, v0

    move-wide/from16 v5, v17

    long-to-int v0, v5

    return v0
.end method

.method public static mulAddTo([I[I[I)I
    .registers 31

    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/4 v6, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    const/4 v8, 0x3

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    const/4 v10, 0x4

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    const/4 v12, 0x5

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_29
    const/4 v3, 0x6

    if-ge v2, v3, :cond_ee

    const-wide/16 v18, 0x0

    aget v3, p0, v2

    move-wide/from16 v20, v14

    int-to-long v14, v3

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    mul-long v22, v14, v0

    add-int/lit8 v3, v2, 0x0

    aget v3, p2, v3

    move-wide/from16 v24, v0

    int-to-long v0, v3

    and-long v0, v0, v16

    add-long v22, v22, v0

    add-long v0, v18, v22

    add-int/lit8 v3, v2, 0x0

    move-wide/from16 v18, v12

    long-to-int v12, v0

    aput v12, p2, v3

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    mul-long v12, v14, v4

    add-int/lit8 v22, v2, 0x1

    aget v3, p2, v22

    move-wide/from16 v26, v4

    int-to-long v3, v3

    const-wide v16, 0xffffffffL

    and-long v3, v3, v16

    add-long/2addr v12, v3

    add-long/2addr v0, v12

    add-int/lit8 v3, v2, 0x1

    long-to-int v4, v0

    aput v4, p2, v3

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    mul-long v3, v14, v6

    add-int/lit8 v5, v2, 0x2

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v16, 0xffffffffL

    and-long v12, v12, v16

    add-long/2addr v3, v12

    add-long/2addr v0, v3

    add-int/lit8 v3, v2, 0x2

    long-to-int v4, v0

    aput v4, p2, v3

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    mul-long v3, v14, v8

    add-int/lit8 v5, v2, 0x3

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v16, 0xffffffffL

    and-long v12, v12, v16

    add-long/2addr v3, v12

    add-long/2addr v0, v3

    add-int/lit8 v3, v2, 0x3

    long-to-int v4, v0

    aput v4, p2, v3

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    mul-long v3, v14, v10

    add-int/lit8 v5, v2, 0x4

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v16, 0xffffffffL

    and-long v12, v12, v16

    add-long/2addr v3, v12

    add-long/2addr v0, v3

    add-int/lit8 v3, v2, 0x4

    long-to-int v4, v0

    aput v4, p2, v3

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    mul-long v12, v14, v18

    add-int/lit8 v3, v2, 0x5

    aget v3, p2, v3

    int-to-long v3, v3

    const-wide v16, 0xffffffffL

    and-long v3, v3, v16

    add-long/2addr v12, v3

    add-long/2addr v0, v12

    add-int/lit8 v3, v2, 0x5

    long-to-int v4, v0

    aput v4, p2, v3

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v3, v2, 0x6

    aget v3, p2, v3

    int-to-long v3, v3

    const-wide v12, 0xffffffffL

    and-long/2addr v3, v12

    add-long/2addr v3, v0

    add-long v3, v20, v3

    add-int/lit8 v5, v2, 0x6

    long-to-int v12, v3

    aput v12, p2, v5

    const/16 v5, 0x20

    ushr-long v14, v3, v5

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v12, v18

    move-wide/from16 v0, v24

    move-wide/from16 v4, v26

    goto/16 :goto_29

    :cond_ee
    move-wide/from16 v24, v0

    long-to-int v0, v14

    return v0
.end method

.method public static mulWord(I[I[II)I
    .registers 13

    const-wide/16 v0, 0x0

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x0

    :goto_a
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    add-int v7, p3, v6

    long-to-int v8, v0

    aput v8, p2, v7

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x6

    if-lt v6, v7, :cond_1f

    long-to-int v4, v0

    return v4

    :cond_1f
    goto :goto_a
.end method

.method public static mulWordAddExt(I[II[II)I
    .registers 16

    const-wide/16 v0, 0x0

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p2, 0x0

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    mul-long/2addr v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    add-int/lit8 v7, p2, 0x1

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    ushr-long/2addr v0, v6

    add-int/lit8 v7, p2, 0x2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x2

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    add-int/lit8 v7, p4, 0x2

    long-to-int v8, v0

    aput v8, p3, v7

    ushr-long/2addr v0, v6

    add-int/lit8 v7, p2, 0x3

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x3

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    add-int/lit8 v7, p4, 0x3

    long-to-int v8, v0

    aput v8, p3, v7

    ushr-long/2addr v0, v6

    add-int/lit8 v7, p2, 0x4

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    add-int/lit8 v7, p4, 0x4

    long-to-int v8, v0

    aput v8, p3, v7

    ushr-long/2addr v0, v6

    add-int/lit8 v7, p2, 0x5

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x5

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    add-int/lit8 v4, p4, 0x5

    long-to-int v5, v0

    aput v5, p3, v4

    ushr-long/2addr v0, v6

    long-to-int v4, v0

    return v4
.end method

.method public static mulWordDwordAdd(IJ[II)I
    .registers 16

    const-wide/16 v0, 0x0

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    and-long v6, p1, v4

    mul-long/2addr v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    ushr-long v7, p1, v6

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    ushr-long/2addr v0, v6

    add-int/lit8 v7, p4, 0x2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v4, v7

    add-long/2addr v0, v4

    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    ushr-long/2addr v0, v6

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_42

    const/4 v4, 0x0

    goto :goto_48

    :cond_42
    const/4 v4, 0x6

    const/4 v5, 0x3

    invoke-static {v4, p3, p4, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_48
    return v4
.end method

.method public static square([II[II)V
    .registers 45

    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/16 v6, 0xc

    :goto_f
    add-int/lit8 v7, v5, -0x1

    add-int v5, p1, v5

    aget v5, p0, v5

    int-to-long v8, v5

    and-long/2addr v8, v2

    mul-long v10, v8, v8

    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    shl-int/lit8 v12, v4, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v10, v13

    long-to-int v14, v14

    or-int/2addr v12, v14

    aput v12, p2, v5

    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v12, 0x1

    ushr-long v14, v10, v12

    long-to-int v14, v14

    aput v14, p2, v5

    long-to-int v4, v10

    if-gtz v7, :cond_1f0

    mul-long v8, v0, v0

    shl-int/lit8 v5, v4, 0x1f

    int-to-long v10, v5

    and-long/2addr v10, v2

    ushr-long v13, v8, v13

    or-long/2addr v10, v13

    add-int/lit8 v5, p3, 0x0

    long-to-int v13, v8

    aput v13, p2, v5

    const/16 v5, 0x20

    ushr-long v13, v8, v5

    long-to-int v13, v13

    and-int/lit8 v4, v13, 0x1

    add-int/lit8 v6, p1, 0x1

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x2

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    mul-long v12, v6, v0

    add-long/2addr v10, v12

    long-to-int v12, v10

    add-int/lit8 v13, p3, 0x1

    shl-int/lit8 v14, v12, 0x1

    or-int/2addr v14, v4

    aput v14, p2, v13

    ushr-int/lit8 v4, v12, 0x1f

    ushr-long v13, v10, v5

    add-long/2addr v8, v13

    add-int/lit8 v13, p1, 0x2

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v2

    add-int/lit8 v15, p3, 0x3

    aget v15, p2, v15

    move-wide/from16 v17, v6

    int-to-long v5, v15

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    move-wide/from16 v19, v10

    int-to-long v10, v7

    and-long/2addr v10, v2

    mul-long v21, v13, v0

    add-long v8, v8, v21

    long-to-int v7, v8

    add-int/lit8 v12, p3, 0x2

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    ushr-int/lit8 v4, v7, 0x1f

    const/16 v12, 0x20

    ushr-long v15, v8, v12

    mul-long v21, v13, v17

    add-long v15, v15, v21

    add-long/2addr v5, v15

    ushr-long v21, v5, v12

    add-long v10, v10, v21

    and-long/2addr v5, v2

    add-int/lit8 v12, p1, 0x3

    aget v12, p0, v12

    move-wide/from16 v21, v8

    move v9, v7

    int-to-long v7, v12

    and-long/2addr v7, v2

    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    move-wide/from16 v23, v13

    int-to-long v12, v12

    and-long/2addr v12, v2

    const/16 v14, 0x20

    ushr-long v15, v10, v14

    add-long/2addr v12, v15

    and-long/2addr v10, v2

    add-int/lit8 v15, p3, 0x6

    aget v15, p2, v15

    move/from16 v25, v9

    move-wide/from16 v26, v10

    int-to-long v9, v15

    and-long/2addr v9, v2

    ushr-long v28, v12, v14

    add-long v9, v9, v28

    and-long v11, v12, v2

    mul-long v13, v7, v0

    add-long/2addr v5, v13

    long-to-int v13, v5

    add-int/lit8 v14, p3, 0x3

    shl-int/lit8 v15, v13, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v14

    ushr-int/lit8 v4, v13, 0x1f

    const/16 v14, 0x20

    ushr-long v15, v5, v14

    mul-long v28, v7, v17

    add-long v15, v15, v28

    add-long v15, v26, v15

    ushr-long v25, v15, v14

    mul-long v27, v7, v23

    add-long v25, v25, v27

    add-long v11, v11, v25

    and-long v25, v15, v2

    ushr-long v27, v11, v14

    add-long v9, v9, v27

    and-long/2addr v11, v2

    add-int/lit8 v14, p1, 0x4

    aget v14, p0, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    add-int/lit8 v27, p3, 0x7

    move-wide/from16 v28, v5

    aget v5, p2, v27

    int-to-long v5, v5

    and-long/2addr v5, v2

    const/16 v16, 0x20

    ushr-long v30, v9, v16

    add-long v5, v5, v30

    and-long/2addr v9, v2

    add-int/lit8 v27, p3, 0x8

    move/from16 v30, v13

    aget v13, p2, v27

    move-wide/from16 v31, v7

    int-to-long v7, v13

    and-long/2addr v7, v2

    ushr-long v33, v5, v16

    add-long v7, v7, v33

    and-long/2addr v5, v2

    mul-long v33, v14, v0

    add-long v2, v25, v33

    long-to-int v13, v2

    add-int/lit8 v25, p3, 0x4

    shl-int/lit8 v26, v13, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    ushr-int/lit8 v4, v13, 0x1f

    const/16 v16, 0x20

    ushr-long v25, v2, v16

    mul-long v33, v14, v17

    add-long v25, v25, v33

    add-long v11, v11, v25

    ushr-long v25, v11, v16

    mul-long v33, v14, v23

    add-long v25, v25, v33

    add-long v9, v9, v25

    const-wide v25, 0xffffffffL

    and-long v11, v11, v25

    ushr-long v33, v9, v16

    mul-long v35, v14, v31

    add-long v33, v33, v35

    add-long v5, v5, v33

    and-long v9, v9, v25

    ushr-long v33, v5, v16

    add-long v7, v7, v33

    and-long v5, v5, v25

    add-int/lit8 v27, p1, 0x5

    move-wide/from16 v33, v2

    aget v2, p0, v27

    int-to-long v2, v2

    and-long v2, v2, v25

    add-int/lit8 v27, p3, 0x9

    move/from16 v30, v13

    aget v13, p2, v27

    move-wide/from16 v35, v14

    int-to-long v13, v13

    and-long v13, v13, v25

    const/16 v15, 0x20

    ushr-long v37, v7, v15

    add-long v13, v13, v37

    and-long v7, v7, v25

    add-int/lit8 v16, p3, 0xa

    aget v15, p2, v16

    move-wide/from16 v37, v7

    int-to-long v7, v15

    and-long v7, v7, v25

    const/16 v15, 0x20

    ushr-long v39, v13, v15

    add-long v7, v7, v39

    and-long v13, v13, v25

    mul-long v25, v2, v0

    add-long v11, v11, v25

    long-to-int v15, v11

    add-int/lit8 v25, p3, 0x5

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    ushr-int/lit8 v4, v15, 0x1f

    const/16 v16, 0x20

    ushr-long v25, v11, v16

    mul-long v39, v2, v17

    add-long v25, v25, v39

    add-long v9, v9, v25

    ushr-long v25, v9, v16

    mul-long v39, v2, v23

    add-long v25, v25, v39

    add-long v5, v5, v25

    ushr-long v25, v5, v16

    mul-long v39, v2, v31

    add-long v25, v25, v39

    move-wide/from16 v39, v0

    add-long v0, v37, v25

    ushr-long v25, v0, v16

    mul-long v37, v2, v35

    add-long v25, v25, v37

    add-long v13, v13, v25

    ushr-long v25, v13, v16

    add-long v7, v7, v25

    long-to-int v15, v9

    add-int/lit8 v25, p3, 0x6

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    ushr-int/lit8 v4, v15, 0x1f

    long-to-int v15, v5

    add-int/lit8 v25, p3, 0x7

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    ushr-int/lit8 v4, v15, 0x1f

    long-to-int v15, v0

    add-int/lit8 v25, p3, 0x8

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    ushr-int/lit8 v4, v15, 0x1f

    long-to-int v15, v13

    add-int/lit8 v25, p3, 0x9

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    ushr-int/lit8 v4, v15, 0x1f

    long-to-int v15, v7

    add-int/lit8 v25, p3, 0xa

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    ushr-int/lit8 v4, v15, 0x1f

    add-int/lit8 v25, p3, 0xb

    aget v25, p2, v25

    move-wide/from16 v26, v0

    const/16 v16, 0x20

    ushr-long v0, v7, v16

    long-to-int v0, v0

    add-int v25, v25, v0

    add-int/lit8 v0, p3, 0xb

    shl-int/lit8 v1, v25, 0x1

    or-int/2addr v1, v4

    aput v1, p2, v0

    return-void

    :cond_1f0
    move-wide/from16 v39, v0

    move-wide/from16 v25, v2

    move v5, v7

    goto/16 :goto_f
.end method

.method public static square([I[I)V
    .registers 50

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/16 v7, 0xc

    :goto_e
    add-int/lit8 v8, v6, -0x1

    aget v6, p0, v6

    int-to-long v9, v6

    and-long/2addr v9, v3

    mul-long v11, v9, v9

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v6, v5, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v11, v13

    long-to-int v14, v14

    or-int/2addr v6, v14

    aput v6, p1, v7

    add-int/lit8 v7, v7, -0x1

    const/4 v6, 0x1

    ushr-long v14, v11, v6

    long-to-int v14, v14

    aput v14, p1, v7

    long-to-int v5, v11

    if-gtz v8, :cond_1ba

    mul-long v9, v1, v1

    shl-int/lit8 v11, v5, 0x1f

    int-to-long v11, v11

    and-long/2addr v11, v3

    ushr-long v13, v9, v13

    or-long/2addr v11, v13

    long-to-int v13, v9

    aput v13, p1, v0

    const/16 v0, 0x20

    ushr-long v13, v9, v0

    long-to-int v13, v13

    and-int/lit8 v5, v13, 0x1

    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v13, v10

    and-long/2addr v13, v3

    mul-long v15, v7, v1

    add-long/2addr v11, v15

    long-to-int v10, v11

    shl-int/lit8 v15, v10, 0x1

    or-int/2addr v15, v5

    aput v15, p1, v6

    ushr-int/lit8 v5, v10, 0x1f

    ushr-long v15, v11, v0

    add-long/2addr v13, v15

    aget v6, p0, v9

    move/from16 v16, v10

    int-to-long v9, v6

    and-long/2addr v9, v3

    const/4 v6, 0x3

    aget v15, p1, v6

    move-wide/from16 v18, v7

    int-to-long v6, v15

    and-long/2addr v6, v3

    const/4 v15, 0x4

    aget v8, p1, v15

    move-wide/from16 v21, v1

    int-to-long v0, v8

    and-long/2addr v0, v3

    mul-long v23, v9, v21

    add-long v13, v13, v23

    long-to-int v8, v13

    shl-int/lit8 v16, v8, 0x1

    or-int v16, v16, v5

    const/16 v17, 0x2

    aput v16, p1, v17

    ushr-int/lit8 v5, v8, 0x1f

    const/16 v2, 0x20

    ushr-long v16, v13, v2

    mul-long v23, v9, v18

    add-long v16, v16, v23

    add-long v6, v6, v16

    ushr-long v16, v6, v2

    add-long v0, v0, v16

    and-long/2addr v6, v3

    const/16 v16, 0x3

    aget v2, p0, v16

    move/from16 v16, v8

    move-wide/from16 v23, v9

    int-to-long v8, v2

    and-long/2addr v8, v3

    const/4 v10, 0x5

    aget v2, p1, v10

    move-wide/from16 v25, v11

    int-to-long v10, v2

    and-long/2addr v10, v3

    const/16 v2, 0x20

    ushr-long v27, v0, v2

    add-long v10, v10, v27

    and-long/2addr v0, v3

    const/16 v17, 0x6

    aget v12, p1, v17

    move-wide/from16 v28, v13

    int-to-long v12, v12

    and-long/2addr v12, v3

    ushr-long v30, v10, v2

    add-long v12, v12, v30

    and-long/2addr v10, v3

    mul-long v30, v8, v21

    add-long v6, v6, v30

    long-to-int v14, v6

    shl-int/lit8 v16, v14, 0x1

    or-int v16, v16, v5

    const/16 v20, 0x3

    aput v16, p1, v20

    ushr-int/lit8 v5, v14, 0x1f

    const/16 v2, 0x20

    ushr-long v30, v6, v2

    mul-long v32, v8, v18

    add-long v30, v30, v32

    add-long v0, v0, v30

    ushr-long v30, v0, v2

    mul-long v32, v8, v23

    add-long v30, v30, v32

    add-long v10, v10, v30

    and-long/2addr v0, v3

    ushr-long v30, v10, v2

    add-long v12, v12, v30

    and-long/2addr v10, v3

    aget v2, p0, v15

    move-wide/from16 v30, v6

    int-to-long v6, v2

    and-long/2addr v6, v3

    const/16 v20, 0x7

    aget v2, p1, v20

    move-wide/from16 v32, v8

    int-to-long v8, v2

    and-long/2addr v8, v3

    const/16 v2, 0x20

    ushr-long v34, v12, v2

    add-long v8, v8, v34

    and-long/2addr v12, v3

    const/16 v16, 0x8

    aget v15, p1, v16

    move/from16 v35, v14

    int-to-long v14, v15

    and-long/2addr v14, v3

    ushr-long v36, v8, v2

    add-long v14, v14, v36

    and-long/2addr v8, v3

    mul-long v36, v6, v21

    add-long v0, v0, v36

    long-to-int v2, v0

    shl-int/lit8 v35, v2, 0x1

    or-int v35, v35, v5

    const/16 v34, 0x4

    aput v35, p1, v34

    ushr-int/lit8 v5, v2, 0x1f

    const/16 v34, 0x20

    ushr-long v35, v0, v34

    mul-long v37, v6, v18

    add-long v35, v35, v37

    add-long v10, v10, v35

    ushr-long v35, v10, v34

    mul-long v37, v6, v23

    add-long v35, v35, v37

    add-long v12, v12, v35

    and-long/2addr v10, v3

    ushr-long v35, v12, v34

    mul-long v37, v6, v32

    add-long v35, v35, v37

    add-long v8, v8, v35

    and-long v35, v12, v3

    ushr-long v12, v8, v34

    add-long/2addr v14, v12

    and-long/2addr v8, v3

    const/4 v12, 0x5

    aget v13, p0, v12

    int-to-long v12, v13

    and-long/2addr v12, v3

    const/16 v37, 0x9

    move-wide/from16 v38, v0

    aget v0, p1, v37

    int-to-long v0, v0

    and-long/2addr v0, v3

    const/16 v34, 0x20

    ushr-long v40, v14, v34

    add-long v0, v0, v40

    and-long/2addr v14, v3

    const/16 v40, 0xa

    move/from16 v41, v2

    aget v2, p1, v40

    move-wide/from16 v42, v6

    int-to-long v6, v2

    and-long/2addr v6, v3

    ushr-long v44, v0, v34

    add-long v6, v6, v44

    and-long/2addr v0, v3

    mul-long v3, v12, v21

    add-long/2addr v10, v3

    long-to-int v3, v10

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v4, v5

    const/16 v27, 0x5

    aput v4, p1, v27

    ushr-int/lit8 v4, v3, 0x1f

    const/16 v2, 0x20

    ushr-long v44, v10, v2

    mul-long v46, v12, v18

    add-long v44, v44, v46

    move-wide/from16 v46, v10

    add-long v10, v35, v44

    ushr-long v34, v10, v2

    mul-long v44, v12, v23

    add-long v34, v34, v44

    add-long v8, v8, v34

    ushr-long v34, v8, v2

    mul-long v44, v12, v32

    add-long v34, v34, v44

    add-long v14, v14, v34

    ushr-long v34, v14, v2

    mul-long v44, v12, v42

    add-long v34, v34, v44

    add-long v0, v0, v34

    ushr-long v34, v0, v2

    add-long v6, v6, v34

    long-to-int v3, v10

    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v5, v4

    aput v5, p1, v17

    ushr-int/lit8 v4, v3, 0x1f

    long-to-int v3, v8

    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v5, v4

    aput v5, p1, v20

    ushr-int/lit8 v4, v3, 0x1f

    long-to-int v3, v14

    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v5, v4

    aput v5, p1, v16

    ushr-int/lit8 v4, v3, 0x1f

    long-to-int v3, v0

    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v5, v4

    aput v5, p1, v37

    ushr-int/lit8 v4, v3, 0x1f

    long-to-int v3, v6

    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v5, v4

    aput v5, p1, v40

    ushr-int/lit8 v4, v3, 0x1f

    const/16 v5, 0xb

    aget v16, p1, v5

    move-wide/from16 v34, v0

    const/16 v2, 0x20

    ushr-long v0, v6, v2

    long-to-int v0, v0

    add-int v16, v16, v0

    shl-int/lit8 v0, v16, 0x1

    or-int/2addr v0, v4

    aput v0, p1, v5

    return-void

    :cond_1ba
    move-wide/from16 v21, v1

    move v6, v8

    goto/16 :goto_e
.end method

.method public static sub([II[II[II)I
    .registers 16

    const-wide/16 v0, 0x0

    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    shr-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    shr-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    shr-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    shr-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    sub-long/2addr v6, v3

    add-long/2addr v0, v6

    add-int/lit8 v3, p5, 0x5

    long-to-int v4, v0

    aput v4, p4, v3

    shr-long/2addr v0, v2

    long-to-int v2, v0

    return v2
.end method

.method public static sub([I[I[I)I
    .registers 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    shr-long/2addr v0, v2

    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    shr-long/2addr v0, v2

    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    shr-long/2addr v0, v2

    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    shr-long/2addr v0, v2

    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    shr-long/2addr v0, v2

    long-to-int v2, v0

    return v2
.end method

.method public static subBothFrom([I[I[I)I
    .registers 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const/4 v3, 0x1

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    shr-long/2addr v0, v2

    const/4 v3, 0x2

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    shr-long/2addr v0, v2

    const/4 v3, 0x3

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    shr-long/2addr v0, v2

    const/4 v3, 0x4

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    shr-long/2addr v0, v2

    const/4 v3, 0x5

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p2, v3

    shr-long/2addr v0, v2

    long-to-int v2, v0

    return v2
.end method

.method public static subFrom([II[II)I
    .registers 14

    const-wide/16 v0, 0x0

    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p1, 0x0

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    shr-long/2addr v0, v2

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    shr-long/2addr v0, v2

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    shr-long/2addr v0, v2

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    shr-long/2addr v0, v2

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    sub-long/2addr v6, v3

    add-long/2addr v0, v6

    add-int/lit8 v3, p3, 0x5

    long-to-int v4, v0

    aput v4, p2, v3

    shr-long/2addr v0, v2

    long-to-int v2, v0

    return v2
.end method

.method public static subFrom([I[I)I
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p1, v2

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const/4 v3, 0x1

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p1, v3

    shr-long/2addr v0, v2

    const/4 v3, 0x2

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p1, v3

    shr-long/2addr v0, v2

    const/4 v3, 0x3

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p1, v3

    shr-long/2addr v0, v2

    const/4 v3, 0x4

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p1, v3

    shr-long/2addr v0, v2

    const/4 v3, 0x5

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    long-to-int v4, v0

    aput v4, p1, v3

    shr-long/2addr v0, v2

    long-to-int v2, v0

    return v2
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .registers 5

    const/16 v0, 0x18

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x6

    if-ge v1, v2, :cond_16

    aget v2, p0, v1

    if-eqz v2, :cond_13

    rsub-int/lit8 v3, v1, 0x5

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static toBigInteger64([J)Ljava/math/BigInteger;
    .registers 8

    const/16 v0, 0x18

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1a

    aget-wide v3, p0, v1

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_17

    rsub-int/lit8 v5, v1, 0x2

    shl-int/lit8 v2, v5, 0x3

    invoke-static {v3, v4, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1a
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static zero([I)V
    .registers 3

    const/4 v0, 0x0

    aput v0, p0, v0

    const/4 v1, 0x1

    aput v0, p0, v1

    const/4 v1, 0x2

    aput v0, p0, v1

    const/4 v1, 0x3

    aput v0, p0, v1

    const/4 v1, 0x4

    aput v0, p0, v1

    const/4 v1, 0x5

    aput v0, p0, v1

    return-void
.end method
