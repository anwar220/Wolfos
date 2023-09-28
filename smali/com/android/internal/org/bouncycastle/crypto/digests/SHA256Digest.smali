# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;
.super Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/digests/EncodableDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x20

.field static final K:[I


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private H6:I

.field private H7:I

.field private H8:I

.field private X:[I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    return-void

    :array_a
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c  # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa  # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc  # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a  # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;-><init>([B)V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    const/16 v0, 0x24

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/4 v0, 0x0

    :goto_52
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    if-eq v0, v1, :cond_65

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x34

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    :cond_65
    return-void
.end method

.method private static Ch(III)I
    .registers 5

    and-int v0, p0, p1

    not-int v1, p0

    and-int/2addr v1, p2

    xor-int/2addr v0, v1

    return v0
.end method

.method private static Maj(III)I
    .registers 5

    and-int v0, p0, p1

    xor-int v1, p0, p1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private static Sum0(I)I
    .registers 4

    ushr-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xd

    shl-int/lit8 v2, p0, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x16

    shl-int/lit8 v2, p0, 0xa

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private static Sum1(I)I
    .registers 4

    ushr-int/lit8 v0, p0, 0x6

    shl-int/lit8 v1, p0, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xb

    shl-int/lit8 v2, p0, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x19

    shl-int/lit8 v2, p0, 0x7

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private static Theta0(I)I
    .registers 4

    ushr-int/lit8 v0, p0, 0x7

    shl-int/lit8 v1, p0, 0x19

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x12

    shl-int/lit8 v2, p0, 0xe

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x3

    xor-int/2addr v0, v1

    return v0
.end method

.method private static Theta1(I)I
    .registers 4

    ushr-int/lit8 v0, p0, 0x11

    shl-int/lit8 v1, p0, 0xf

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x13

    shl-int/lit8 v2, p0, 0xd

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xa

    xor-int/2addr v0, v1

    return v0
.end method

.method private copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/internal/org/bouncycastle/util/Memoable;
    .registers 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->finish()V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/lit8 v1, p2, 0x1c

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "SHA-256"

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method public getEncodedState()[B
    .registers 5

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x34

    new-array v0, v0, [B

    invoke-super {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->populateState([B)V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    const/16 v2, 0x24

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    const/16 v2, 0x28

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    const/16 v2, 0x2c

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 v2, 0x30

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    const/4 v1, 0x0

    :goto_4b
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    if-eq v1, v2, :cond_5d

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x34

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_5d
    return-object v0
.end method

.method protected processBlock()V
    .registers 14

    const/16 v0, 0x10

    :goto_2
    const/16 v1, 0x3f

    if-gt v0, v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v2, v0, -0x2

    aget v2, v1, v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Theta1(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v4, v0, -0x7

    aget v4, v3, v4

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, -0xf

    aget v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Theta0(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v4, v0, -0x10

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2c
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iget v7, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3e
    const/16 v10, 0x8

    if-ge v9, v10, :cond_140

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v12, v11, v8

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v10, v12

    add-int/2addr v7, v10

    add-int/2addr v3, v7

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v7, v10

    add-int/lit8 v8, v8, 0x1

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v12

    add-int/2addr v10, v12

    aget v12, v11, v8

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v10, v12

    add-int/2addr v6, v10

    add-int/2addr v2, v6

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v7, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v6, v10

    add-int/lit8 v8, v8, 0x1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v12

    add-int/2addr v10, v12

    aget v12, v11, v8

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v10, v12

    add-int/2addr v5, v10

    add-int/2addr v1, v5

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v6, v7, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v5, v10

    add-int/lit8 v8, v8, 0x1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v12

    add-int/2addr v10, v12

    aget v12, v11, v8

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v10, v12

    add-int/2addr v4, v10

    add-int/2addr v0, v4

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v12

    add-int/2addr v10, v12

    aget v12, v11, v8

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v10, v12

    add-int/2addr v3, v10

    add-int/2addr v7, v3

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v3, v10

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v7, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v12

    add-int/2addr v10, v12

    aget v12, v11, v8

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v10, v12

    add-int/2addr v2, v10

    add-int/2addr v6, v2

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v2, v10

    add-int/lit8 v8, v8, 0x1

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v6, v7, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v12

    add-int/2addr v10, v12

    aget v12, v11, v8

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v10, v12

    add-int/2addr v1, v10

    add-int/2addr v5, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v1, v10

    add-int/lit8 v8, v8, 0x1

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v12

    add-int/2addr v10, v12

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    add-int/2addr v4, v0

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3e

    :cond_140
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/2addr v9, v1

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/2addr v9, v3

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/2addr v9, v6

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/2addr v9, v7

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/4 v10, 0x0

    :goto_16c
    const/16 v11, 0x10

    if-ge v10, v11, :cond_177

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aput v9, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_16c

    :cond_177
    return-void
.end method

.method protected processLength(J)V
    .registers 7

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    :cond_9
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    return-void
.end method

.method protected processWord([BI)V
    .registers 7

    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    if-ne v3, v2, :cond_2d

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    :cond_2d
    return-void
.end method

.method public reset()V
    .registers 5

    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x6a09e667

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    const v0, -0x4498517b

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    const v0, 0x3c6ef372

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    const v0, -0x5ab00ac6

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    const v0, 0x510e527f

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    const v0, -0x64fa9774

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    const v0, 0x1f83d9ab

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    const v0, 0x5be0cd19

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/4 v1, 0x0

    :goto_2f
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_39

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_39
    return-void
.end method

.method public reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V
    .registers 3

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;)V

    return-void
.end method
