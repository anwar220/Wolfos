# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;


# static fields
.field private static final STATE_LENGTH:I = 0x100


# instance fields
.field private engineState:[B

.field private workingKey:[B

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    return-void
.end method

.method private setKey([B)V
    .registers 9

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    const/16 v1, 0x100

    if-nez v0, :cond_11

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-ge v0, v1, :cond_1c

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1c
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v1, :cond_3d

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v6, v5, v3

    add-int/2addr v4, v6

    add-int/2addr v4, v2

    and-int/lit16 v2, v4, 0xff

    aget-byte v4, v5, v3

    aget-byte v6, v5, v2

    aput-byte v6, v5, v3

    aput-byte v4, v5, v2

    add-int/lit8 v5, v0, 0x1

    array-length v6, p1

    rem-int v0, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_3d
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "RC4"

    return-object v0
.end method

.method public init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_11

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to RC4 init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBytes([BII[BI)I
    .registers 12

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_46

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_3d

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p3, :cond_3c

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v3, v2, v1

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v4, v2, v1

    aget-byte v5, v2, v3

    aput-byte v5, v2, v1

    aput-byte v4, v2, v3

    add-int v3, v0, p5

    add-int v5, v0, p2

    aget-byte v5, p1, v5

    aget-byte v1, v2, v1

    add-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    xor-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_3c
    return p3

    :cond_3d
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    return-void
.end method

.method public returnByte(B)B
    .registers 7

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v2, v1, v0

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v3, v1, v0

    aget-byte v4, v1, v2

    aput-byte v4, v1, v0

    aput-byte v3, v1, v2

    aget-byte v0, v1, v0

    add-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v1, v0

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method
