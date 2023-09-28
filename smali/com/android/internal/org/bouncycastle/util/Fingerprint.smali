# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/util/Fingerprint;
.super Ljava/lang/Object;


# static fields
.field private static encodingTable:[C


# instance fields
.field private final fingerprint:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->encodingTable:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 3

    const/16 v0, 0xa0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/util/Fingerprint;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->calculateFingerprint([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    return-void
.end method

.method public static calculateFingerprint([B)[B
    .registers 2

    const/16 v0, 0xa0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->calculateFingerprint([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static calculateFingerprint([BI)[B
    .registers 8

    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_22

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    div-int/lit8 v1, p1, 0x8

    new-array v1, v1, [B

    const/16 v3, 0x20

    new-array v4, v3, [B

    invoke-interface {v0, v4, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    div-int/lit8 v5, p1, 0x8

    if-lt v5, v3, :cond_1d

    return-object v4

    :cond_1d
    array-length v3, v1

    invoke-static {v4, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength must be a multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/util/Fingerprint;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;

    iget-object v0, v0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getFingerprint()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    array-length v2, v2

    if-eq v1, v2, :cond_31

    if-lez v1, :cond_12

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    sget-object v2, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->encodingTable:[C

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    aget-byte v3, v3, v1

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->encodingTable:[C

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    aget-byte v3, v3, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
