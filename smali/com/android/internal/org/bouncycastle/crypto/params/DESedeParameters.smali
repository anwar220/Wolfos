# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;


# static fields
.field public static final DES_EDE_KEY_LENGTH:I = 0x18


# direct methods
.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;-><init>([B)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attempt to create weak DESede key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isReal2Key([BI)Z
    .registers 6

    const/4 v0, 0x0

    move v1, p1

    :goto_2
    add-int/lit8 v2, p1, 0x8

    if-eq v1, v2, :cond_12

    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x8

    aget-byte v3, p0, v3

    if-eq v2, v3, :cond_f

    const/4 v0, 0x1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return v0
.end method

.method public static isReal3Key([BI)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    :goto_4
    add-int/lit8 v4, p1, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_31

    aget-byte v4, p0, v3

    add-int/lit8 v7, v3, 0x8

    aget-byte v7, p0, v7

    if-eq v4, v7, :cond_14

    move v4, v6

    goto :goto_15

    :cond_14
    move v4, v5

    :goto_15
    or-int/2addr v0, v4

    aget-byte v4, p0, v3

    add-int/lit8 v7, v3, 0x10

    aget-byte v7, p0, v7

    if-eq v4, v7, :cond_20

    move v4, v6

    goto :goto_21

    :cond_20
    move v4, v5

    :goto_21
    or-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x8

    aget-byte v4, p0, v4

    add-int/lit8 v7, v3, 0x10

    aget-byte v7, p0, v7

    if-eq v4, v7, :cond_2d

    move v5, v6

    :cond_2d
    or-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_31
    if-eqz v0, :cond_38

    if-eqz v1, :cond_38

    if-eqz v2, :cond_38

    move v5, v6

    :cond_38
    return v5
.end method

.method public static isRealEDEKey([BI)Z
    .registers 4

    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isReal2Key([BI)Z

    move-result v0

    goto :goto_e

    :cond_a
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isReal3Key([BI)Z

    move-result v0

    :goto_e
    return v0
.end method

.method public static isWeakKey([BI)Z
    .registers 3

    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v0

    return v0
.end method

.method public static isWeakKey([BII)Z
    .registers 5

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_e

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    return v1

    :cond_b
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_e
    const/4 v0, 0x0

    return v0
.end method
