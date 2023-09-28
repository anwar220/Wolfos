# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private T:[[J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    if-nez v0, :cond_15

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_54

    const-class v1, J

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    goto :goto_1e

    :cond_15
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    :goto_1e
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->H:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B[J)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v0, v0, v2

    invoke-static {v0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP7([J[J)V

    const/4 v0, 0x2

    :goto_34
    const/16 v1, 0x100

    if-ge v0, v1, :cond_53

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    shr-int/lit8 v3, v0, 0x1

    aget-object v3, v1, v3

    aget-object v1, v1, v0

    invoke-static {v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->divideP([J[J)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v3, v1, v0

    aget-object v4, v1, v2

    add-int/lit8 v5, v0, 0x1

    aget-object v1, v1, v5

    invoke-static {v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_34

    :cond_53
    return-void

    :array_54
    .array-data 4
        0x100
        0x2
    .end array-data
.end method

.method public multiplyH([B)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    const/16 v3, 0xf

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const/4 v6, 0x1

    aget-wide v7, v2, v6

    const/16 v9, 0xe

    :goto_16
    const/16 v10, 0x8

    if-ltz v9, :cond_45

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-byte v12, v1, v9

    and-int/lit16 v12, v12, 0xff

    aget-object v2, v11, v12

    const/16 v11, 0x38

    shl-long v12, v7, v11

    aget-wide v14, v2, v6

    ushr-long v16, v7, v10

    shl-long v18, v4, v11

    or-long v16, v16, v18

    xor-long v7, v14, v16

    aget-wide v14, v2, v3

    ushr-long v10, v4, v10

    xor-long/2addr v10, v14

    xor-long/2addr v10, v12

    ushr-long v14, v12, v6

    xor-long/2addr v10, v14

    const/4 v14, 0x2

    ushr-long v14, v12, v14

    xor-long/2addr v10, v14

    const/4 v14, 0x7

    ushr-long v14, v12, v14

    xor-long v4, v10, v14

    add-int/lit8 v9, v9, -0x1

    goto :goto_16

    :cond_45
    invoke-static {v4, v5, v1, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    invoke-static {v7, v8, v1, v10}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method
