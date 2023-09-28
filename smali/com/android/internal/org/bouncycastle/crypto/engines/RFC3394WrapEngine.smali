# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Wrapper;


# instance fields
.field private engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

.field private wrapCipherMode:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    return-void

    nop

    :array_14
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
    .end array-data
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_d

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    :cond_d
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_17

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    goto :goto_3f

    :cond_17
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3f

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    goto :goto_3f

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV not equal to 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    :goto_3f
    return-void
.end method

.method public unwrap([BII)[B
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v4, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-nez v4, :cond_9e

    div-int/lit8 v4, v3, 0x8

    mul-int/lit8 v5, v4, 0x8

    if-ne v5, v3, :cond_95

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v6, v5

    sub-int v6, v3, v6

    new-array v6, v6, [B

    array-length v7, v5

    new-array v7, v7, [B

    array-length v8, v5

    const/16 v9, 0x8

    add-int/2addr v8, v9

    new-array v8, v8, [B

    array-length v5, v5

    const/4 v10, 0x0

    invoke-static {v1, v2, v7, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v5

    add-int/2addr v11, v2

    array-length v5, v5

    sub-int v5, v3, v5

    invoke-static {v1, v11, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-boolean v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    const/4 v12, 0x1

    xor-int/2addr v11, v12

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v5, v11, v13}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    sub-int/2addr v4, v12

    const/4 v5, 0x5

    :goto_3e
    if-ltz v5, :cond_84

    move v11, v4

    :goto_41
    if-lt v11, v12, :cond_80

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v13, v13

    invoke-static {v7, v10, v8, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v11, -0x1

    mul-int/2addr v13, v9

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v14, v14

    invoke-static {v6, v13, v8, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v13, v4, v5

    add-int/2addr v13, v11

    const/4 v14, 0x1

    :goto_56
    if-eqz v13, :cond_6c

    int-to-byte v15, v13

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v12, v12

    sub-int/2addr v12, v14

    aget-byte v16, v8, v12

    xor-int v9, v16, v15

    int-to-byte v9, v9

    aput-byte v9, v8, v12

    ushr-int/lit8 v13, v13, 0x8

    add-int/lit8 v14, v14, 0x1

    const/16 v9, 0x8

    const/4 v12, 0x1

    goto :goto_56

    :cond_6c
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v9, v8, v10, v8, v10}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/16 v9, 0x8

    invoke-static {v8, v10, v7, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v12, v11, -0x1

    mul-int/2addr v12, v9

    invoke-static {v8, v9, v6, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x1

    goto :goto_41

    :cond_80
    add-int/lit8 v5, v5, -0x1

    const/4 v12, 0x1

    goto :goto_3e

    :cond_84
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v7, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v5

    if-eqz v5, :cond_8d

    return-object v6

    :cond_8d
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v9, "checksum failed"

    invoke-direct {v5, v9}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_95
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v6, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9e
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "not set for unwrapping"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public wrap([BII)[B
    .registers 16

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_72

    div-int/lit8 v0, p3, 0x8

    mul-int/lit8 v1, v0, 0x8

    if-ne v1, p3, :cond_69

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v2, v1

    add-int/2addr v2, p3

    new-array v2, v2, [B

    array-length v3, v1

    const/16 v4, 0x8

    add-int/2addr v3, v4

    new-array v3, v3, [B

    array-length v5, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v1, v1

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-boolean v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v1, v5, v7}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    const/4 v1, 0x0

    :goto_2b
    const/4 v5, 0x6

    if-eq v1, v5, :cond_68

    const/4 v5, 0x1

    :goto_2f
    if-gt v5, v0, :cond_65

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v7, v7

    invoke-static {v2, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v7, v5, 0x8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    invoke-static {v2, v7, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v3, v6, v3, v6}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    mul-int v7, v0, v1

    add-int/2addr v7, v5

    const/4 v8, 0x1

    :goto_48
    if-eqz v7, :cond_5a

    int-to-byte v9, v7

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v10, v10

    sub-int/2addr v10, v8

    aget-byte v11, v3, v10

    xor-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    ushr-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    :cond_5a
    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v8, v5, 0x8

    invoke-static {v3, v4, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_68
    return-object v2

    :cond_69
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v2, "wrap data must be a multiple of 8 bytes"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not set for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
