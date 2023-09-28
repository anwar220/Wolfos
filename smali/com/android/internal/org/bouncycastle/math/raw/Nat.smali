# classes4.dex

.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat;
.super Ljava/lang/Object;


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(I[I[I[I)I
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1d

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p3, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1d
    long-to-int v2, v0

    return v2
.end method

.method public static add33At(II[II)I
    .registers 11

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_34

    :cond_2e
    add-int/lit8 v2, p3, 0x2

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_34
    return v2
.end method

.method public static add33At(II[III)I
    .registers 12

    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    add-int v4, p3, p4

    long-to-int v5, v0

    aput v5, p2, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int v5, p3, p4

    add-int/lit8 v5, v5, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_32

    const/4 v2, 0x0

    goto :goto_38

    :cond_32
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_38
    return v2
.end method

.method public static add33To(II[I)I
    .registers 12

    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    const/4 v6, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    add-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p2, v6

    ushr-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_27

    goto :goto_2c

    :cond_27
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static add33To(II[II)I
    .registers 11

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_33

    :cond_2e
    const/4 v2, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_33
    return v2
.end method

.method public static addBothTo(I[II[II[II)I
    .registers 16

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_2a

    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-int v7, p6, v2

    aget v7, p5, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2a
    long-to-int v2, v0

    return v2
.end method

.method public static addBothTo(I[I[I[I)I
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_22

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    aget v7, p3, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p3, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_22
    long-to-int v2, v0

    return v2
.end method

.method public static addDWordAt(IJ[II)I
    .registers 12

    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    ushr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_34

    :cond_2e
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_34
    return v2
.end method

.method public static addDWordAt(IJ[III)I
    .registers 13

    add-int v0, p4, p5

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    add-int v4, p4, p5

    long-to-int v5, v0

    aput v5, p3, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int v5, p4, p5

    add-int/lit8 v5, v5, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    ushr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_32

    const/4 v2, 0x0

    goto :goto_38

    :cond_32
    add-int/lit8 v2, p5, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_38
    return v2
.end method

.method public static addDWordTo(IJ[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p3, v0

    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    const/4 v6, 0x1

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long v7, p1, v5

    add-long/2addr v3, v7

    add-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p3, v6

    ushr-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_27

    goto :goto_2c

    :cond_27
    const/4 v0, 0x2

    invoke-static {p0, p3, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static addDWordTo(IJ[II)I
    .registers 12

    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    ushr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_33

    :cond_2e
    const/4 v2, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_33
    return v2
.end method

.method public static addTo(I[II[II)I
    .registers 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_23

    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_23
    long-to-int v2, v0

    return v2
.end method

.method public static addTo(I[II[III)I
    .registers 15

    int-to-long v0, p5

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, p0, :cond_23

    add-int v5, p2, v4

    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int v7, p4, v4

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int v5, p4, v4

    long-to-int v6, v0

    aput v6, p3, v5

    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_23
    long-to-int v2, v0

    return v2
.end method

.method public static addTo(I[I[I)I
    .registers 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1d

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1d
    long-to-int v2, v0

    return v2
.end method

.method public static addToEachOther(I[II[II)I
    .registers 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_28

    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p2, v2

    long-to-int v4, v0

    aput v4, p1, v3

    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_28
    long-to-int v2, v0

    return v2
.end method

.method public static addWordAt(II[II)I
    .registers 10

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p2, p3

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_20

    :cond_1a
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_20
    return v2
.end method

.method public static addWordAt(II[III)I
    .registers 11

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int v4, p3, p4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_24

    :cond_1e
    add-int/lit8 v2, p4, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_24
    return v2
.end method

.method public static addWordTo(II[I)I
    .registers 10

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x0

    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v2, v5

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p2, v4

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    goto :goto_1f

    :cond_1a
    const/4 v2, 0x1

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v4

    :goto_1f
    return v4
.end method

.method public static addWordTo(II[II)I
    .registers 10

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p2, p3

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_1f

    :cond_1a
    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_1f
    return v2
.end method

.method public static cadd(II[I[I[I)I
    .registers 16

    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_d
    if-ge v6, p0, :cond_22

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p3, v6

    int-to-long v9, v9

    and-long/2addr v9, v0

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    aput v7, p4, v6

    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_22
    long-to-int v2, v4

    return v2
.end method

.method public static cmov(II[II[II)V
    .registers 10

    and-int/lit8 v0, p1, 0x1

    neg-int p1, v0

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p0, :cond_19

    add-int v1, p5, v0

    aget v1, p4, v1

    add-int v2, p3, v0

    aget v2, p2, v2

    xor-int/2addr v2, v1

    and-int v3, v2, p1

    xor-int/2addr v1, v3

    add-int v3, p5, v0

    aput v1, p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_19
    return-void
.end method

.method public static compare(I[II[II)I
    .registers 9

    add-int/lit8 v0, p0, -0x1

    :goto_2
    if-ltz v0, :cond_1b

    add-int v1, p2, v0

    aget v1, p1, v1

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    add-int v3, p4, v0

    aget v3, p3, v3

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_14

    const/4 v3, -0x1

    return v3

    :cond_14
    if-le v1, v2, :cond_18

    const/4 v3, 0x1

    return v3

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static compare(I[I[I)I
    .registers 7

    add-int/lit8 v0, p0, -0x1

    :goto_2
    if-ltz v0, :cond_17

    aget v1, p1, v0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    aget v3, p2, v0

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_10

    const/4 v3, -0x1

    return v3

    :cond_10
    if-le v1, v2, :cond_14

    const/4 v3, 0x1

    return v3

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static copy(I[II[II)V
    .registers 5

    invoke-static {p1, p2, p3, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static copy(I[I[I)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static copy(I[I)[I
    .registers 4

    new-array v0, p0, [I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copy64(I[JI[JI)V
    .registers 5

    invoke-static {p1, p2, p3, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static copy64(I[J[J)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static copy64(I[J)[J
    .registers 4

    new-array v0, p0, [J

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static create(I)[I
    .registers 2

    new-array v0, p0, [I

    return-object v0
.end method

.method public static create64(I)[J
    .registers 2

    new-array v0, p0, [J

    return-object v0
.end method

.method public static csub(II[II[II[II)I
    .registers 20

    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_d
    move v7, p0

    if-ge v6, v7, :cond_29

    add-int v8, p3, v6

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int v10, p5, v6

    aget v10, p4, v10

    int-to-long v10, v10

    and-long/2addr v10, v0

    sub-long/2addr v8, v10

    add-long/2addr v4, v8

    add-int v8, p7, v6

    long-to-int v9, v4

    aput v9, p6, v8

    const/16 v8, 0x20

    shr-long/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_29
    long-to-int v2, v4

    return v2
.end method

.method public static csub(II[I[I[I)I
    .registers 16

    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_d
    if-ge v6, p0, :cond_22

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p3, v6

    int-to-long v9, v9

    and-long/2addr v9, v0

    sub-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    aput v7, p4, v6

    const/16 v7, 0x20

    shr-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_22
    long-to-int v2, v4

    return v2
.end method

.method public static dec(I[I)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/4 v1, -0x1

    if-ge v0, p0, :cond_11

    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return v1
.end method

.method public static dec(I[I[I)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/4 v1, -0x1

    if-ge v0, p0, :cond_1a

    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    if-eq v2, v1, :cond_19

    :goto_e
    if-ge v0, p0, :cond_17

    aget v1, p1, v0

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_17
    const/4 v1, 0x0

    return v1

    :cond_19
    goto :goto_1

    :cond_1a
    return v1
.end method

.method public static decAt(I[II)I
    .registers 6

    move v0, p2

    :goto_1
    const/4 v1, -0x1

    if-ge v0, p0, :cond_11

    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return v1
.end method

.method public static decAt(I[III)I
    .registers 8

    move v0, p3

    :goto_1
    const/4 v1, -0x1

    if-ge v0, p0, :cond_13

    add-int v2, p2, v0

    aget v3, p1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p1, v2

    if-eq v3, v1, :cond_10

    const/4 v1, 0x0

    return v1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return v1
.end method

.method public static diff(I[II[II[II)Z
    .registers 15

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[II[II)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static/range {p0 .. p6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[II[II[II)I

    goto :goto_14

    :cond_a
    move v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move v5, p2

    move-object v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[II[II[II)I

    :goto_14
    return v0
.end method

.method public static eq(I[I[I)Z
    .registers 6

    add-int/lit8 v0, p0, -0x1

    :goto_2
    if-ltz v0, :cond_f

    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public static equalTo(I[II)I
    .registers 6

    const/4 v0, 0x0

    aget v0, p1, v0

    xor-int/2addr v0, p2

    const/4 v1, 0x1

    :goto_5
    if-ge v1, p0, :cond_d

    aget v2, p1, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static equalTo(I[III)I
    .registers 7

    aget v0, p1, p2

    xor-int/2addr v0, p3

    const/4 v1, 0x1

    :goto_4
    if-ge v1, p0, :cond_e

    add-int v2, p2, v1

    aget v2, p1, v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static equalTo(I[II[II)I
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p0, :cond_11

    add-int v2, p2, v1

    aget v2, p1, v2

    add-int v3, p4, v1

    aget v3, p3, v3

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static equalTo(I[I[I)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p0, :cond_d

    aget v2, p1, v1

    aget v3, p2, v1

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static equalToZero(I[I)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p0, :cond_a

    aget v2, p1, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static equalToZero(I[II)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p0, :cond_c

    add-int v2, p2, v1

    aget v2, p1, v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static fromBigInteger(ILjava/math/BigInteger;)[I
    .registers 6

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_27

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_27

    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_26

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v1, v2

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_26
    return-object v1

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static fromBigInteger64(ILjava/math/BigInteger;)[J
    .registers 7

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_27

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_27

    add-int/lit8 v0, p0, 0x3f

    shr-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_26

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_26
    return-object v1

    :cond_27
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

    array-length v2, p0

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

.method public static gte(I[II[II)Z
    .registers 10

    add-int/lit8 v0, p0, -0x1

    :goto_2
    const/4 v1, 0x1

    if-ltz v0, :cond_1b

    add-int v2, p2, v0

    aget v2, p1, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    add-int v4, p4, v0

    aget v4, p3, v4

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_15

    const/4 v1, 0x0

    return v1

    :cond_15
    if-le v2, v3, :cond_18

    return v1

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_1b
    return v1
.end method

.method public static gte(I[I[I)Z
    .registers 8

    add-int/lit8 v0, p0, -0x1

    :goto_2
    const/4 v1, 0x1

    if-ltz v0, :cond_17

    aget v2, p1, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    aget v4, p2, v0

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_11

    const/4 v1, 0x0

    return v1

    :cond_11
    if-le v2, v3, :cond_14

    return v1

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_17
    return v1
.end method

.method public static inc(I[I)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x1

    if-ge v0, p0, :cond_10

    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    if-eqz v2, :cond_d

    const/4 v1, 0x0

    return v1

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return v1
.end method

.method public static inc(I[I[I)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x1

    if-ge v0, p0, :cond_19

    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    if-eqz v2, :cond_18

    :goto_d
    if-ge v0, p0, :cond_16

    aget v1, p1, v0

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_16
    const/4 v1, 0x0

    return v1

    :cond_18
    goto :goto_1

    :cond_19
    return v1
.end method

.method public static incAt(I[II)I
    .registers 6

    move v0, p2

    :goto_1
    const/4 v1, 0x1

    if-ge v0, p0, :cond_10

    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    if-eqz v2, :cond_d

    const/4 v1, 0x0

    return v1

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return v1
.end method

.method public static incAt(I[III)I
    .registers 8

    move v0, p3

    :goto_1
    const/4 v1, 0x1

    if-ge v0, p0, :cond_12

    add-int v2, p2, v0

    aget v3, p1, v2

    add-int/2addr v3, v1

    aput v3, p1, v2

    if-eqz v3, :cond_f

    const/4 v1, 0x0

    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return v1
.end method

.method public static isOne(I[I)Z
    .registers 6

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    const/4 v1, 0x1

    :goto_8
    if-ge v1, p0, :cond_12

    aget v3, p1, v1

    if-eqz v3, :cond_f

    return v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    return v2
.end method

.method public static isZero(I[I)Z
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_c

    aget v1, p1, v0

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    return v1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public static lessThan(I[II[II)I
    .registers 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1e

    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1e
    long-to-int v2, v0

    return v2
.end method

.method public static lessThan(I[I[I)I
    .registers 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1a

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1a
    long-to-int v2, v0

    return v2
.end method

.method public static mul(I[II[II[II)V
    .registers 16

    add-int v0, p6, p0

    aget v2, p1, p2

    move v1, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result v1

    aput v1, p5, v0

    const/4 v0, 0x1

    :goto_10
    if-ge v0, p0, :cond_28

    add-int v1, p6, v0

    add-int/2addr v1, p0

    add-int v2, p2, v0

    aget v4, p1, v2

    add-int v8, p6, v0

    move v3, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v2

    aput v2, p5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_28
    return-void
.end method

.method public static mul(I[I[I[I)V
    .registers 12

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {p0, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWord(II[I[I)I

    move-result v0

    aput v0, p3, p0

    const/4 v0, 0x1

    :goto_a
    if-ge v0, p0, :cond_1e

    add-int v7, v0, p0

    aget v2, p1, v0

    const/4 v4, 0x0

    move v1, p0

    move-object v3, p2

    move-object v5, p3

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v1

    aput v1, p3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1e
    return-void
.end method

.method public static mul([III[III[II)V
    .registers 17

    add-int v6, p7, p5

    aget v1, p0, p1

    move v0, p5

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result v0

    aput v0, p6, v6

    const/4 v0, 0x1

    move v6, v0

    :goto_12
    move v7, p2

    if-ge v6, v7, :cond_2c

    add-int v0, p7, v6

    add-int v8, v0, p5

    add-int v0, p1, v6

    aget v1, p0, v0

    add-int v5, p7, v6

    move v0, p5

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v0

    aput v0, p6, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_2c
    return-void
.end method

.method public static mul31BothAdd(II[II[I[II)I
    .registers 22

    const-wide/16 v0, 0x0

    move/from16 v2, p1

    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    move/from16 v7, p3

    int-to-long v8, v7

    and-long/2addr v8, v5

    const/4 v10, 0x0

    :goto_10
    aget v11, p2, v10

    int-to-long v11, v11

    and-long/2addr v11, v5

    mul-long/2addr v11, v3

    aget v13, p4, v10

    int-to-long v13, v13

    and-long/2addr v13, v5

    mul-long/2addr v13, v8

    add-long/2addr v11, v13

    add-int v13, p6, v10

    aget v13, p5, v13

    int-to-long v13, v13

    and-long/2addr v13, v5

    add-long/2addr v11, v13

    add-long/2addr v0, v11

    add-int v11, p6, v10

    long-to-int v12, v0

    aput v12, p5, v11

    const/16 v11, 0x20

    ushr-long/2addr v0, v11

    add-int/lit8 v10, v10, 0x1

    move v11, p0

    if-lt v10, v11, :cond_32

    long-to-int v5, v0

    return v5

    :cond_32
    goto :goto_10
.end method

.method public static mulAddTo(I[II[II[II)I
    .registers 16

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_2e

    add-int v3, p2, v2

    aget v4, p1, v3

    move v3, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p6, p0

    aget v3, p5, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p6, p0

    long-to-int v4, v0

    aput v4, p5, v3

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 p6, p6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2e
    long-to-int v2, v0

    return v2
.end method

.method public static mulAddTo(I[I[I[I)I
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v8, v2

    :goto_4
    if-ge v8, p0, :cond_2b

    aget v3, p1, v8

    const/4 v5, 0x0

    move v2, p0

    move-object v4, p2

    move-object v6, p3

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int v2, v8, p0

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int v2, v8, p0

    long-to-int v3, v0

    aput v3, p3, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_2b
    long-to-int v2, v0

    return v2
.end method

.method public static mulWord(II[II[II)I
    .registers 15

    const-wide/16 v0, 0x0

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x0

    :goto_a
    add-int v7, p3, v6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    add-int v7, p5, v6

    long-to-int v8, v0

    aput v8, p4, v7

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    if-lt v6, p0, :cond_20

    long-to-int v4, v0

    return v4

    :cond_20
    goto :goto_a
.end method

.method public static mulWord(II[I[I)I
    .registers 13

    const-wide/16 v0, 0x0

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x0

    :goto_a
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    long-to-int v7, v0

    aput v7, p3, v6

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    if-lt v6, p0, :cond_1c

    long-to-int v4, v0

    return v4

    :cond_1c
    goto :goto_a
.end method

.method public static mulWordAddTo(II[II[II)I
    .registers 18

    const-wide/16 v0, 0x0

    move v2, p1

    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/4 v7, 0x0

    :goto_b
    add-int v8, p3, v7

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v5

    mul-long/2addr v8, v3

    add-int v10, p5, v7

    aget v10, p4, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    add-int v8, p5, v7

    long-to-int v9, v0

    aput v9, p4, v8

    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    add-int/lit8 v7, v7, 0x1

    move v8, p0

    if-lt v7, v8, :cond_29

    long-to-int v5, v0

    return v5

    :cond_29
    goto :goto_b
.end method

.method public static mulWordDwordAddAt(IIJ[II)I
    .registers 19

    move-object/from16 v0, p4

    const-wide/16 v1, 0x0

    move v3, p1

    int-to-long v4, v3

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    and-long v8, p2, v6

    mul-long/2addr v8, v4

    add-int/lit8 v10, p5, 0x0

    aget v10, v0, v10

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v8, v10

    add-long/2addr v1, v8

    add-int/lit8 v8, p5, 0x0

    long-to-int v9, v1

    aput v9, v0, v8

    const/16 v8, 0x20

    ushr-long/2addr v1, v8

    ushr-long v9, p2, v8

    mul-long/2addr v9, v4

    add-int/lit8 v11, p5, 0x1

    aget v11, v0, v11

    int-to-long v11, v11

    and-long/2addr v11, v6

    add-long/2addr v9, v11

    add-long/2addr v1, v9

    add-int/lit8 v9, p5, 0x1

    long-to-int v10, v1

    aput v10, v0, v9

    ushr-long/2addr v1, v8

    add-int/lit8 v9, p5, 0x2

    aget v9, v0, v9

    int-to-long v9, v9

    and-long/2addr v6, v9

    add-long/2addr v1, v6

    add-int/lit8 v6, p5, 0x2

    long-to-int v7, v1

    aput v7, v0, v6

    ushr-long/2addr v1, v8

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-nez v6, :cond_46

    const/4 v6, 0x0

    move v7, p0

    goto :goto_4d

    :cond_46
    add-int/lit8 v6, p5, 0x3

    move v7, p0

    invoke-static {p0, v0, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v6

    :goto_4d
    return v6
.end method

.method public static shiftDownBit(I[II)I
    .registers 7

    move v0, p0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_10

    aget v1, p1, v0

    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    move p2, v1

    goto :goto_1

    :cond_10
    shl-int/lit8 v1, p2, 0x1f

    return v1
.end method

.method public static shiftDownBit(I[III)I
    .registers 9

    move v0, p0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p2, v0

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p1, v2

    move p3, v1

    goto :goto_1

    :cond_14
    shl-int/lit8 v1, p3, 0x1f

    return v1
.end method

.method public static shiftDownBit(I[III[II)I
    .registers 11

    move v0, p0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p5, v0

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    move p3, v1

    goto :goto_1

    :cond_14
    shl-int/lit8 v1, p3, 0x1f

    return v1
.end method

.method public static shiftDownBit(I[II[I)I
    .registers 8

    move v0, p0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_10

    aget v1, p1, v0

    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    move p2, v1

    goto :goto_1

    :cond_10
    shl-int/lit8 v1, p2, 0x1f

    return v1
.end method

.method public static shiftDownBits(I[III)I
    .registers 8

    move v0, p0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    aget v1, p1, v0

    ushr-int v2, v1, p2

    neg-int v3, p2

    shl-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    move p3, v1

    goto :goto_1

    :cond_11
    neg-int v1, p2

    shl-int v1, p3, v1

    return v1
.end method

.method public static shiftDownBits(I[IIII)I
    .registers 10

    move v0, p0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p2, v0

    ushr-int v3, v1, p3

    neg-int v4, p3

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p1, v2

    move p4, v1

    goto :goto_1

    :cond_15
    neg-int v1, p3

    shl-int v1, p4, v1

    return v1
.end method

.method public static shiftDownBits(I[IIII[II)I
    .registers 12

    move v0, p0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p6, v0

    ushr-int v3, v1, p3

    neg-int v4, p3

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    move p4, v1

    goto :goto_1

    :cond_15
    neg-int v1, p3

    shl-int v1, p4, v1

    return v1
.end method

.method public static shiftDownBits(I[III[I)I
    .registers 9

    move v0, p0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    aget v1, p1, v0

    ushr-int v2, v1, p2

    neg-int v3, p2

    shl-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    move p3, v1

    goto :goto_1

    :cond_11
    neg-int v1, p2

    shl-int v1, p3, v1

    return v1
.end method

.method public static shiftDownWord(I[II)I
    .registers 5

    move v0, p0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    aget v1, p1, v0

    aput p2, p1, v0

    move p2, v1

    goto :goto_1

    :cond_b
    return p2
.end method

.method public static shiftUpBit(I[II)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_10

    aget v1, p1, v0

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    move p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    ushr-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static shiftUpBit(I[III)I
    .registers 9

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_14

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p2, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p1, v2

    move p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    ushr-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static shiftUpBit(I[III[II)I
    .registers 11

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_14

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p5, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    move p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    ushr-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static shiftUpBit(I[II[I)I
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_10

    aget v1, p1, v0

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    move p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    ushr-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static shiftUpBit64(I[JIJ[JI)J
    .registers 16

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x3f

    if-ge v0, p0, :cond_17

    add-int v2, p2, v0

    aget-wide v2, p1, v2

    add-int v4, p6, v0

    const/4 v5, 0x1

    shl-long v5, v2, v5

    ushr-long v7, p3, v1

    or-long/2addr v5, v7

    aput-wide v5, p5, v4

    move-wide p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    ushr-long v0, p3, v1

    return-wide v0
.end method

.method public static shiftUpBits(I[III)I
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_11

    aget v1, p1, v0

    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    move p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static shiftUpBits(I[IIII)I
    .registers 10

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_15

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p2, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p1, v2

    move p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    neg-int v0, p3

    ushr-int v0, p4, v0

    return v0
.end method

.method public static shiftUpBits(I[IIII[II)I
    .registers 12

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_15

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p6, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    move p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    neg-int v0, p3

    ushr-int v0, p4, v0

    return v0
.end method

.method public static shiftUpBits(I[III[I)I
    .registers 9

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_11

    aget v1, p1, v0

    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    move p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static shiftUpBits64(I[JIIJ)J
    .registers 14

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_15

    add-int v1, p2, v0

    aget-wide v1, p1, v1

    add-int v3, p2, v0

    shl-long v4, v1, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    move-wide p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    neg-int v0, p3

    ushr-long v0, p4, v0

    return-wide v0
.end method

.method public static shiftUpBits64(I[JIIJ[JI)J
    .registers 16

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_15

    add-int v1, p2, v0

    aget-wide v1, p1, v1

    add-int v3, p7, v0

    shl-long v4, v1, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p6, v3

    move-wide p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    neg-int v0, p3

    ushr-long v0, p4, v0

    return-wide v0
.end method

.method public static square(I[II[II)V
    .registers 23

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    shl-int/lit8 v5, v0, 0x1

    const/4 v6, 0x0

    move/from16 v7, p0

    move v8, v5

    :goto_10
    add-int/lit8 v7, v7, -0x1

    add-int v9, v2, v7

    aget v9, v1, v9

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    mul-long v13, v9, v9

    add-int/lit8 v8, v8, -0x1

    add-int v15, v4, v8

    shl-int/lit8 v16, v6, 0x1f

    const/16 v17, 0x21

    ushr-long v11, v13, v17

    long-to-int v11, v11

    or-int v11, v16, v11

    aput v11, v3, v15

    add-int/lit8 v8, v8, -0x1

    add-int v11, v4, v8

    const/4 v12, 0x1

    move-wide v15, v9

    move v10, v8

    ushr-long v8, v13, v12

    long-to-int v8, v8

    aput v8, v3, v11

    long-to-int v6, v13

    if-gtz v7, :cond_7a

    const-wide/16 v8, 0x0

    add-int/lit8 v11, v4, 0x2

    const/4 v12, 0x1

    :goto_42
    if-ge v12, v0, :cond_72

    invoke-static {v1, v2, v12, v3, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->squareWordAddTo([III[II)I

    move-result v13

    int-to-long v13, v13

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    add-long/2addr v8, v13

    aget v13, v3, v11

    int-to-long v13, v13

    and-long/2addr v13, v15

    add-long/2addr v8, v13

    add-int/lit8 v13, v11, 0x1

    long-to-int v14, v8

    aput v14, v3, v11

    const/16 v11, 0x20

    ushr-long/2addr v8, v11

    aget v14, v3, v13

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-long/2addr v8, v14

    add-int/lit8 v14, v13, 0x1

    long-to-int v15, v8

    aput v15, v3, v13

    ushr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    move v11, v14

    goto :goto_42

    :cond_72
    aget v12, v1, v2

    shl-int/lit8 v12, v12, 0x1f

    invoke-static {v5, v3, v4, v12}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[III)I

    return-void

    :cond_7a
    move v8, v10

    goto :goto_10
.end method

.method public static square(I[I[I)V
    .registers 16

    shl-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    move v2, p0

    move v3, v0

    :goto_5
    add-int/lit8 v2, v2, -0x1

    aget v4, p1, v2

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    mul-long v8, v4, v4

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v10, v1, 0x1f

    const/16 v11, 0x21

    ushr-long v11, v8, v11

    long-to-int v11, v11

    or-int/2addr v10, v11

    aput v10, p2, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v10, 0x1

    ushr-long v10, v8, v10

    long-to-int v10, v10

    aput v10, p2, v3

    long-to-int v1, v8

    if-gtz v2, :cond_5b

    const-wide/16 v4, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    :goto_2d
    if-ge v9, p0, :cond_52

    invoke-static {p1, v9, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->squareWordAddTo([II[I)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v4, v10

    aget v10, p2, v8

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v4, v10

    add-int/lit8 v10, v8, 0x1

    long-to-int v11, v4

    aput v11, p2, v8

    const/16 v8, 0x20

    ushr-long/2addr v4, v8

    aget v11, p2, v10

    int-to-long v11, v11

    and-long/2addr v11, v6

    add-long/2addr v4, v11

    add-int/lit8 v11, v10, 0x1

    long-to-int v12, v4

    aput v12, p2, v10

    ushr-long/2addr v4, v8

    add-int/lit8 v9, v9, 0x1

    move v8, v11

    goto :goto_2d

    :cond_52
    const/4 v6, 0x0

    aget v6, p1, v6

    shl-int/lit8 v6, v6, 0x1f

    invoke-static {v0, p2, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II)I

    return-void

    :cond_5b
    goto :goto_5
.end method

.method public static squareWordAdd([III[II)I
    .registers 16

    const-wide/16 v0, 0x0

    add-int v2, p1, p2

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x0

    :goto_e
    add-int v7, p1, v6

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p2, p4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    add-int v7, p2, p4

    long-to-int v8, v0

    aput v8, p3, v7

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v6, v6, 0x1

    if-lt v6, p2, :cond_2d

    long-to-int v4, v0

    return v4

    :cond_2d
    goto :goto_e
.end method

.method public static squareWordAdd([II[I)I
    .registers 14

    const-wide/16 v0, 0x0

    aget v2, p0, p1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x0

    :goto_c
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p1, v6

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    add-int v7, p1, v6

    long-to-int v8, v0

    aput v8, p2, v7

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    if-lt v6, p1, :cond_27

    long-to-int v4, v0

    return v4

    :cond_27
    goto :goto_c
.end method

.method public static squareWordAddTo([III[II)I
    .registers 16

    const-wide/16 v0, 0x0

    add-int v2, p1, p2

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x0

    :goto_e
    add-int v7, p1, v6

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p2, p4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    add-int v7, p2, p4

    long-to-int v8, v0

    aput v8, p3, v7

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v6, v6, 0x1

    if-lt v6, p2, :cond_2d

    long-to-int v4, v0

    return v4

    :cond_2d
    goto :goto_e
.end method

.method public static squareWordAddTo([II[I)I
    .registers 14

    const-wide/16 v0, 0x0

    aget v2, p0, p1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x0

    :goto_c
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p1, v6

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    add-int v7, p1, v6

    long-to-int v8, v0

    aput v8, p2, v7

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    if-lt v6, p1, :cond_27

    long-to-int v4, v0

    return v4

    :cond_27
    goto :goto_c
.end method

.method public static sub(I[II[II[II)I
    .registers 16

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_23

    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_23
    long-to-int v2, v0

    return v2
.end method

.method public static sub(I[I[I[I)I
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1d

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p3, v2

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1d
    long-to-int v2, v0

    return v2
.end method

.method public static sub33At(II[II)I
    .registers 11

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    shr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_34

    :cond_2e
    add-int/lit8 v2, p3, 0x2

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_34
    return v2
.end method

.method public static sub33At(II[III)I
    .registers 12

    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    add-int v4, p3, p4

    long-to-int v5, v0

    aput v5, p2, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int v5, p3, p4

    add-int/lit8 v5, v5, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    shr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_32

    const/4 v2, 0x0

    goto :goto_38

    :cond_32
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_38
    return v2
.end method

.method public static sub33From(II[I)I
    .registers 12

    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v5, 0x20

    shr-long/2addr v1, v5

    const/4 v6, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p2, v6

    shr-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_27

    goto :goto_2c

    :cond_27
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static sub33From(II[II)I
    .registers 11

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    shr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_33

    :cond_2e
    const/4 v2, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_33
    return v2
.end method

.method public static subBothFrom(I[II[II[II)I
    .registers 16

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_2a

    add-int v3, p6, v2

    aget v3, p5, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p2, v2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2a
    long-to-int v2, v0

    return v2
.end method

.method public static subBothFrom(I[I[I[I)I
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_22

    aget v3, p3, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p3, v2

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_22
    long-to-int v2, v0

    return v2
.end method

.method public static subDWordAt(IJ[II)I
    .registers 12

    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    shr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_34

    :cond_2e
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_34
    return v2
.end method

.method public static subDWordAt(IJ[III)I
    .registers 13

    add-int v0, p4, p5

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    add-int v4, p4, p5

    long-to-int v5, v0

    aput v5, p3, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int v5, p4, p5

    add-int/lit8 v5, v5, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    shr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_32

    const/4 v2, 0x0

    goto :goto_38

    :cond_32
    add-int/lit8 v2, p5, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_38
    return v2
.end method

.method public static subDWordFrom(IJ[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p3, v0

    const/16 v5, 0x20

    shr-long/2addr v1, v5

    const/4 v6, 0x1

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long v7, p1, v5

    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p3, v6

    shr-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_27

    goto :goto_2c

    :cond_27
    const/4 v0, 0x2

    invoke-static {p0, p3, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static subDWordFrom(IJ[II)I
    .registers 12

    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    shr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_33

    :cond_2e
    const/4 v2, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_33
    return v2
.end method

.method public static subFrom(I[II[II)I
    .registers 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_23

    add-int v3, p4, v2

    aget v3, p3, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p2, v2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_23
    long-to-int v2, v0

    return v2
.end method

.method public static subFrom(I[I[I)I
    .registers 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1d

    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1d
    long-to-int v2, v0

    return v2
.end method

.method public static subWordAt(II[II)I
    .registers 10

    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p2, p3

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_20

    :cond_1a
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_20
    return v2
.end method

.method public static subWordAt(II[III)I
    .registers 11

    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_24

    :cond_1e
    add-int/lit8 v2, p4, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_24
    return v2
.end method

.method public static subWordFrom(II[I)I
    .registers 10

    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p2, v0

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1a

    goto :goto_1f

    :cond_1a
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_1f
    return v0
.end method

.method public static subWordFrom(II[II)I
    .registers 10

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_23

    :cond_1e
    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_23
    return v2
.end method

.method public static toBigInteger(I[I)Ljava/math/BigInteger;
    .registers 6

    shl-int/lit8 v0, p0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    if-ge v1, p0, :cond_16

    aget v2, p1, v1

    if-eqz v2, :cond_13

    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v1

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

.method public static zero(I[I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_9

    const/4 v1, 0x0

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method public static zero(I[II)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_b

    add-int v1, p2, v0

    const/4 v2, 0x0

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method public static zero64(I[J)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_a

    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method
