# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private T:[[[J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .registers 9

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    if-nez v0, :cond_15

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_6a

    const-class v1, J

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[J

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    goto :goto_1e

    :cond_15
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    :goto_1e
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    const/4 v0, 0x0

    :goto_25
    const/16 v1, 0x20

    if-ge v0, v1, :cond_69

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    aget-object v2, v1, v0

    const/4 v3, 0x1

    if-nez v0, :cond_3f

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    aget-object v4, v2, v3

    invoke-static {v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B[J)V

    aget-object v1, v2, v3

    aget-object v4, v2, v3

    invoke-static {v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP3([J[J)V

    goto :goto_4a

    :cond_3f
    add-int/lit8 v4, v0, -0x1

    aget-object v1, v1, v4

    aget-object v1, v1, v3

    aget-object v4, v2, v3

    invoke-static {v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP4([J[J)V

    :goto_4a
    const/4 v1, 0x2

    :goto_4b
    const/16 v4, 0x10

    if-ge v1, v4, :cond_66

    shr-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    aget-object v5, v2, v1

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->divideP([J[J)V

    aget-object v4, v2, v1

    aget-object v5, v2, v3

    add-int/lit8 v6, v1, 0x1

    aget-object v6, v2, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J[J)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_4b

    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_69
    return-void

    :array_6a
    .array-data 4
        0x20
        0x10
        0x2
    .end array-data
.end method

.method public multiplyH([B)V
    .registers 15

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/16 v4, 0xf

    :goto_6
    const/4 v5, 0x0

    if-ltz v4, :cond_33

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    add-int v7, v4, v4

    const/4 v8, 0x1

    add-int/2addr v7, v8

    aget-object v7, v6, v7

    aget-byte v9, p1, v4

    and-int/lit8 v9, v9, 0xf

    aget-object v7, v7, v9

    add-int v9, v4, v4

    aget-object v6, v6, v9

    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xf0

    ushr-int/lit8 v9, v9, 0x4

    aget-object v6, v6, v9

    aget-wide v9, v7, v5

    aget-wide v11, v6, v5

    xor-long/2addr v9, v11

    xor-long/2addr v0, v9

    aget-wide v9, v7, v8

    aget-wide v11, v6, v8

    xor-long v8, v9, v11

    xor-long/2addr v2, v8

    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_33
    invoke-static {v0, v1, p1, v5}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    const/16 v4, 0x8

    invoke-static {v2, v3, p1, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method
