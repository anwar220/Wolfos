# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final MAX_INPUT_SIZE:J = 0xfffffffe0L


# instance fields
.field private H:[B

.field private J0:[B

.field private S:[B

.field private S_at:[B

.field private S_atPre:[B

.field private atBlock:[B

.field private atBlockPos:I

.field private atLength:J

.field private atLengthPre:J

.field private blocksRemaining:I

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private counter:[B

.field private exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private initialised:Z

.field private lastKey:[B

.field private macBlock:[B

.field private macSize:I

.field private multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private nonce:[B

.field private totalLength:J


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    if-nez p2, :cond_13

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;-><init>()V

    move-object p2, v0

    :cond_13
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkStatus()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GCM cipher cannot be reused for encryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GCM cipher needs to be initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    return-void
.end method

.method private gHASH([B[BI)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_11

    sub-int v1, p3, v0

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_11
    return-void
.end method

.method private gHASHBlock([B[B)V
    .registers 4

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private gHASHBlock([B[BI)V
    .registers 5

    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BI)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private gHASHPartial([B[BII)V
    .registers 6

    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BII)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private getNextCTRBlock([B)V
    .registers 6

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    if-eqz v0, :cond_40

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/16 v2, 0xf

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    ushr-int/lit8 v0, v0, 0x8

    const/16 v2, 0xe

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    ushr-int/lit8 v0, v0, 0x8

    const/16 v2, 0xd

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    ushr-int/lit8 v0, v0, 0x8

    const/16 v2, 0xc

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, p1, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-void

    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to process too many blocks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getTotalInputSizeAfterNewInput(I)J
    .registers 6

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private initCipher()V
    .registers 10

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x10

    const/4 v4, 0x0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {v0, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    :cond_16
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    if-lez v0, :cond_29

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v5, v6, v4, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    :cond_29
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v0, v5, v2

    if-lez v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    return-void
.end method

.method private processBlock([BI[BI)V
    .registers 13

    array-length v0, p3

    sub-int/2addr v0, p4

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3d

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    :cond_11
    new-array v0, v1, [B

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCTRBlock([B)V

    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_27

    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BI)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    const/4 v2, 0x0

    invoke-static {v0, v2, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_35

    :cond_27
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[BI)V

    const/4 v3, 0x0

    move-object v2, v0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([BI[BI[BI)V

    :goto_35
    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    return-void

    :cond_3d
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processPartial([BII[BI)V
    .registers 11

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCTRBlock([B)V

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    invoke-static {p1, p2, v0, v2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([BI[BII)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    goto :goto_1d

    :cond_15
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    invoke-static {p1, p2, v0, v2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([BI[BII)V

    :goto_1d
    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    return-void
.end method

.method private reset(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/4 v3, -0x2

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    if-eqz v1, :cond_36

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    :cond_36
    if-eqz p1, :cond_3b

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    :cond_3b
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_42

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    goto :goto_4a

    :cond_42
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz v1, :cond_4a

    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    :cond_4a
    :goto_4a
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    :cond_e
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const-string v4, "Output buffer too short"

    if-eqz v1, :cond_24

    array-length v1, p1

    sub-int/2addr v1, p2

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v5, v0

    if-lt v1, v5, :cond_1e

    goto :goto_2d

    :cond_1e
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-lt v0, v1, :cond_f0

    sub-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p2

    if-lt v1, v0, :cond_ea

    :goto_2d
    if-lez v0, :cond_39

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/4 v7, 0x0

    move-object v5, p0

    move v8, v0

    move-object v9, p1

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processPartial([BII[BI)V

    :cond_39
    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v4, v4, v6

    const-wide/16 v5, 0x8

    const/16 v7, 0x10

    const/4 v8, 0x0

    if-lez v4, :cond_8d

    if-lez v1, :cond_55

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v4, v9, v8, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    :cond_55
    iget-wide v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v1, v9, v2

    if-lez v1, :cond_62

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    :cond_62
    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long/2addr v1, v5

    const-wide/16 v3, 0x7f

    add-long/2addr v1, v3

    const/4 v3, 0x7

    ushr-long/2addr v1, v3

    new-array v3, v7, [B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    if-nez v4, :cond_7c

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;

    invoke-direct {v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;-><init>()V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v4, v9}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->init([B)V

    :cond_7c
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    invoke-interface {v4, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->exponentiateX(J[B)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {v4, v9}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    :cond_8d
    new-array v1, v7, [B

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    mul-long/2addr v2, v5

    invoke-static {v2, v3, v1, v8}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long/2addr v2, v5

    const/16 v4, 0x8

    invoke-static {v2, v3, v1, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    new-array v2, v7, [B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-interface {v3, v4, v8, v2, v8}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    move v3, v0

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v5, v4, [B

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v2, v8, v5, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v4, :cond_cc

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v5, p2

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v4, v8, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v3, v4

    goto :goto_dd

    :cond_cc
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v5, v4, [B

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {v6, v0, v5, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_e1

    :goto_dd
    invoke-direct {p0, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    return v3

    :cond_e1
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v6, "mac check in GCM failed"

    invoke-direct {v4, v6}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_ea
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f0
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v2, "data too short"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v0, v0, [B

    return-object v0

    :cond_9
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .registers 4

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v1, v0

    return v1

    :cond_b
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_11

    const/4 v1, 0x0

    goto :goto_13

    :cond_11
    sub-int v1, v0, v1

    :goto_13
    return v1
.end method

.method public getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .registers 4

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v1, :cond_e

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_d

    const/4 v1, 0x0

    return v1

    :cond_d
    sub-int/2addr v0, v1

    :cond_e
    rem-int/lit8 v1, v0, 0x10

    sub-int v1, v0, v1

    return v1
.end method

.method public init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    const/4 v2, 0x0

    instance-of v3, p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    const/16 v4, 0x10

    if-eqz v3, :cond_4e

    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v5

    const/16 v6, 0x20

    if-lt v5, v6, :cond_35

    const/16 v6, 0x80

    if-gt v5, v6, :cond_35

    rem-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_35

    div-int/lit8 v6, v5, 0x8

    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v3

    goto :goto_65

    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value for MAC size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    instance-of v3, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_136

    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    nop

    :goto_65
    if-eqz p1, :cond_69

    move v5, v4

    goto :goto_6c

    :cond_69
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v5, v4

    :goto_6c
    new-array v6, v5, [B

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    if-eqz v2, :cond_12e

    array-length v6, v2

    if-lt v6, v1, :cond_12e

    if-eqz p1, :cond_a0

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    if-eqz v6, :cond_a0

    invoke-static {v6, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v6

    if-eqz v6, :cond_a0

    const-string v6, "cannot reuse nonce for GCM encryption"

    if-eqz v3, :cond_9a

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->lastKey:[B

    if-eqz v7, :cond_a0

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v7

    if-nez v7, :cond_94

    goto :goto_a0

    :cond_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a0
    :goto_a0
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    if-eqz v3, :cond_aa

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->lastKey:[B

    :cond_aa
    const/4 v6, 0x0

    if-eqz v3, :cond_c5

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v8, v7, v6, v7, v6}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    goto :goto_c9

    :cond_c5
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    if-eqz v0, :cond_126

    :goto_c9
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v8, v7

    const/16 v9, 0xc

    if-ne v8, v9, :cond_df

    array-length v8, v7

    invoke-static {v7, v6, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/16 v7, 0xf

    aput-byte v1, v0, v7

    goto :goto_f6

    :cond_df
    array-length v1, v7

    invoke-direct {p0, v0, v7, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASH([B[BI)V

    new-array v0, v4, [B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v1, v1

    int-to-long v7, v1

    const-wide/16 v9, 0x8

    mul-long/2addr v7, v9

    const/16 v1, 0x8

    invoke-static {v7, v8, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    :goto_f6
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/4 v4, -0x2

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz v0, :cond_125

    array-length v1, v0

    invoke-virtual {p0, v0, v6, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    :cond_125
    return-void

    :cond_126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key must be specified in initial init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV must be at least 1 byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to GCM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processAADByte(B)V
    .registers 7

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v1

    const-wide v3, 0xfffffffe0L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2e

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    aput-byte p1, v1, v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const/16 v0, 0x10

    if-ne v2, v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    :cond_2d
    return-void

    :cond_2e
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input exceeded 68719476704 bytes"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processAADBytes([BII)V
    .registers 9

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v0

    const-wide v2, 0xfffffffe0L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_38

    const/4 v0, 0x0

    :goto_11
    if-ge v0, p3, :cond_37

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_34

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-direct {p0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_37
    return-void

    :cond_38
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input exceeded 68719476704 bytes"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processByte(B[BI)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v1

    const-wide v3, 0xfffffffe0L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_37

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    array-length v0, v1

    const/4 v3, 0x0

    if-ne v2, v0, :cond_36

    invoke-direct {p0, v1, v3, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processBlock([BI[BI)V

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_2a

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    goto :goto_35

    :cond_2a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    :goto_35
    return v1

    :cond_36
    return v3

    :cond_37
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input exceeded 68719476704 bytes"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBytes([BII[BI)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v0

    const-wide v2, 0xfffffffe0L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_89

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_81

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-eqz v1, :cond_57

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    if-eqz v1, :cond_3f

    :goto_20
    if-lez p3, :cond_3f

    add-int/lit8 p3, p3, -0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/lit8 v5, p2, 0x1

    aget-byte p2, p1, p2

    aput-byte p2, v1, v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    if-ne v4, v3, :cond_3d

    invoke-direct {p0, v1, v2, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processBlock([BI[BI)V

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/lit8 v0, v0, 0x10

    move p2, v5

    goto :goto_3f

    :cond_3d
    move p2, v5

    goto :goto_20

    :cond_3f
    :goto_3f
    if-lt p3, v3, :cond_4d

    add-int v1, p5, v0

    invoke-direct {p0, p1, p2, p4, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processBlock([BI[BI)V

    add-int/lit8 p2, p2, 0x10

    add-int/lit8 p3, p3, -0x10

    add-int/lit8 v0, v0, 0x10

    goto :goto_3f

    :cond_4d
    if-lez p3, :cond_80

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    goto :goto_80

    :cond_57
    const/4 v1, 0x0

    :goto_58
    if-ge v1, p3, :cond_80

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int v6, p2, v1

    aget-byte v6, p1, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    array-length v6, v4

    if-ne v5, v6, :cond_7d

    add-int v5, p5, v0

    invoke-direct {p0, v4, v2, p4, v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processBlock([BI[BI)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v4, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/lit8 v0, v0, 0x10

    :cond_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_80
    :goto_80
    return v0

    :cond_81
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_89
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input exceeded 68719476704 bytes"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    return-void
.end method
