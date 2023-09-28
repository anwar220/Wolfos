# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B

.field protected padding:B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->initialiseDecodingTable()V

    return-void

    :array_1a
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private decodeLastBlock(Ljava/io/OutputStream;CCCC)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    const-string v1, "invalid characters encountered at end of base64 data"

    if-ne p4, v0, :cond_28

    if-ne p5, v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v0, p2

    aget-byte v0, v0, p3

    or-int v3, v2, v0

    if-ltz v3, :cond_1c

    shl-int/lit8 v1, v2, 0x2

    shr-int/lit8 v3, v0, 0x4

    or-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v1, 0x1

    return v1

    :cond_1c
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_22
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    if-ne p5, v0, :cond_4f

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v0, p2

    aget-byte v3, v0, p3

    aget-byte v0, v0, p4

    or-int v4, v2, v3

    or-int/2addr v4, v0

    if-ltz v4, :cond_49

    shl-int/lit8 v1, v2, 0x2

    shr-int/lit8 v4, v3, 0x4

    or-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v3, 0x4

    shr-int/lit8 v4, v0, 0x2

    or-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v1, 0x2

    return v1

    :cond_49
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v0, p2

    aget-byte v3, v0, p3

    aget-byte v4, v0, p4

    aget-byte v0, v0, p5

    or-int v5, v2, v3

    or-int/2addr v5, v4

    or-int/2addr v5, v0

    if-ltz v5, :cond_77

    shl-int/lit8 v1, v2, 0x2

    shr-int/lit8 v5, v3, 0x4

    or-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v3, 0x4

    shr-int/lit8 v5, v4, 0x2

    or-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v4, 0x6

    or-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v1, 0x3

    return v1

    :cond_77
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private ignore(C)Z
    .registers 3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_13

    const/16 v0, 0xd

    if-eq p1, v0, :cond_13

    const/16 v0, 0x9

    if-eq p1, v0, :cond_13

    const/16 v0, 0x20

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private nextI(Ljava/lang/String;II)I
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_f

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_f

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_f
    return p2
.end method

.method private nextI([BII)I
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_e

    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_e

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_e
    return p2
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/16 v0, 0x36

    new-array v9, v0, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    move v10, v2

    :goto_11
    if-lez v10, :cond_23

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {v6, v2}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_23

    :cond_20
    add-int/lit8 v10, v10, -0x1

    goto :goto_11

    :cond_23
    :goto_23
    const/4 v2, 0x0

    if-nez v10, :cond_27

    return v2

    :cond_27
    const/4 v3, 0x0

    move v4, v10

    move v11, v4

    :goto_2a
    if-lez v11, :cond_40

    const/4 v4, 0x4

    if-eq v3, v4, :cond_40

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {v6, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v4

    if-nez v4, :cond_3d

    add-int/lit8 v3, v3, 0x1

    :cond_3d
    add-int/lit8 v11, v11, -0x1

    goto :goto_2a

    :cond_40
    invoke-direct {v6, v7, v2, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v3

    move v12, v0

    move v13, v1

    move v14, v3

    :goto_47
    if-ge v14, v11, :cond_ba

    iget-object v0, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v1, v14, 0x1

    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v0, v0, v3

    invoke-direct {v6, v7, v1, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v1

    iget-object v3, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v1, v3, v1

    invoke-direct {v6, v7, v4, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v3

    iget-object v4, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v4, v3

    invoke-direct {v6, v7, v5, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v4

    iget-object v5, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v5, v4

    or-int v5, v0, v1

    or-int/2addr v5, v3

    or-int/2addr v5, v4

    if-ltz v5, :cond_b2

    add-int/lit8 v5, v12, 0x1

    shl-int/lit8 v15, v0, 0x2

    shr-int/lit8 v16, v1, 0x4

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v9, v12

    add-int/lit8 v12, v5, 0x1

    shl-int/lit8 v15, v1, 0x4

    shr-int/lit8 v16, v3, 0x2

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v9, v5

    add-int/lit8 v5, v12, 0x1

    shl-int/lit8 v15, v3, 0x6

    or-int/2addr v15, v4

    int-to-byte v15, v15

    aput-byte v15, v9, v12

    add-int/lit8 v13, v13, 0x3

    array-length v12, v9

    if-ne v5, v12, :cond_ac

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    const/4 v5, 0x0

    move v12, v5

    goto :goto_ad

    :cond_ac
    move v12, v5

    :goto_ad
    invoke-direct {v6, v7, v14, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v14

    goto :goto_47

    :cond_b2
    new-instance v2, Ljava/io/IOException;

    const-string v5, "invalid characters encountered in base64 data"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ba
    if-lez v12, :cond_bf

    invoke-virtual {v8, v9, v2, v12}, Ljava/io/OutputStream;->write([BII)V

    :cond_bf
    invoke-direct {v6, v7, v14, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v15

    add-int/lit8 v0, v15, 0x1

    invoke-direct {v6, v7, v0, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    invoke-direct {v6, v7, v0, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    invoke-direct {v6, v7, v0, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v3

    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v19, v3

    move/from16 v3, v16

    move/from16 v16, v4

    move/from16 v4, v17

    move/from16 v17, v5

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v13, v0

    return v13
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p4

    const/16 v0, 0x36

    new-array v10, v0, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    add-int v2, v8, p3

    move v11, v2

    :goto_11
    if-le v11, v8, :cond_22

    add-int/lit8 v2, v11, -0x1

    aget-byte v2, v7, v2

    int-to-char v2, v2

    invoke-direct {v6, v2}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_22

    :cond_1f
    add-int/lit8 v11, v11, -0x1

    goto :goto_11

    :cond_22
    :goto_22
    const/4 v2, 0x0

    if-nez v11, :cond_26

    return v2

    :cond_26
    const/4 v3, 0x0

    move v4, v11

    move v12, v4

    :goto_29
    if-le v12, v8, :cond_3e

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3e

    add-int/lit8 v4, v12, -0x1

    aget-byte v4, v7, v4

    int-to-char v4, v4

    invoke-direct {v6, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v4

    if-nez v4, :cond_3b

    add-int/lit8 v3, v3, 0x1

    :cond_3b
    add-int/lit8 v12, v12, -0x1

    goto :goto_29

    :cond_3e
    invoke-direct {v6, v7, v8, v12}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v3

    move v13, v0

    move v14, v1

    move v15, v3

    :goto_45
    if-ge v15, v12, :cond_b1

    iget-object v0, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v1, v15, 0x1

    aget-byte v3, v7, v15

    aget-byte v0, v0, v3

    invoke-direct {v6, v7, v1, v12}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v1

    iget-object v3, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v7, v1

    aget-byte v1, v3, v1

    invoke-direct {v6, v7, v4, v12}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v3

    iget-object v4, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v7, v3

    aget-byte v3, v4, v3

    invoke-direct {v6, v7, v5, v12}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v4

    iget-object v5, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v4, 0x1

    aget-byte v4, v7, v4

    aget-byte v4, v5, v4

    or-int v5, v0, v1

    or-int/2addr v5, v3

    or-int/2addr v5, v4

    if-ltz v5, :cond_a9

    add-int/lit8 v5, v13, 0x1

    shl-int/lit8 v16, v0, 0x2

    shr-int/lit8 v17, v1, 0x4

    or-int v2, v16, v17

    int-to-byte v2, v2

    aput-byte v2, v10, v13

    add-int/lit8 v2, v5, 0x1

    shl-int/lit8 v13, v1, 0x4

    shr-int/lit8 v16, v3, 0x2

    or-int v13, v13, v16

    int-to-byte v13, v13

    aput-byte v13, v10, v5

    add-int/lit8 v5, v2, 0x1

    shl-int/lit8 v13, v3, 0x6

    or-int/2addr v13, v4

    int-to-byte v13, v13

    aput-byte v13, v10, v2

    array-length v2, v10

    if-ne v5, v2, :cond_a0

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write([B)V

    const/4 v2, 0x0

    move v13, v2

    goto :goto_a1

    :cond_a0
    move v13, v5

    :goto_a1
    add-int/lit8 v14, v14, 0x3

    invoke-direct {v6, v7, v15, v12}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v15

    const/4 v2, 0x0

    goto :goto_45

    :cond_a9
    new-instance v2, Ljava/io/IOException;

    const-string v5, "invalid characters encountered in base64 data"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b1
    if-lez v13, :cond_b7

    const/4 v0, 0x0

    invoke-virtual {v9, v10, v0, v13}, Ljava/io/OutputStream;->write([BII)V

    :cond_b7
    invoke-direct {v6, v7, v15, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v16

    add-int/lit8 v0, v16, 0x1

    invoke-direct {v6, v7, v0, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v17

    add-int/lit8 v0, v17, 0x1

    invoke-direct {v6, v7, v0, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v18

    add-int/lit8 v0, v18, 0x1

    invoke-direct {v6, v7, v0, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v19

    aget-byte v0, v7, v16

    int-to-char v2, v0

    aget-byte v0, v7, v17

    int-to-char v3, v0

    aget-byte v0, v7, v18

    int-to-char v4, v0

    aget-byte v0, v7, v19

    int-to-char v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v14, v0

    return v14
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x48

    new-array v0, v0, [B

    :goto_4
    if-lez p3, :cond_1d

    const/16 v1, 0x36

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v7

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encode([BII[BI)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr p2, v7

    sub-int/2addr p3, v7

    goto :goto_4

    :cond_1d
    add-int/lit8 v1, p3, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    return v1
.end method

.method public encode([BII[BI)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x2

    move v2, p5

    :goto_6
    if-ge v0, v1, :cond_48

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v8, v0, 0x2

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, p4, v2

    add-int/lit8 v2, v6, 0x1

    shl-int/lit8 v8, v0, 0x4

    ushr-int/lit8 v9, v3, 0x4

    or-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, p4, v6

    add-int/lit8 v6, v2, 0x1

    shl-int/lit8 v8, v3, 0x2

    ushr-int/lit8 v9, v4, 0x6

    or-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, p4, v2

    add-int/lit8 v2, v6, 0x1

    and-int/lit8 v8, v4, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, p4, v6

    move v0, v5

    goto :goto_6

    :cond_48
    sub-int v3, v0, p2

    sub-int v3, p3, v3

    packed-switch v3, :pswitch_data_b2

    goto :goto_ae

    :pswitch_50  #0x2
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v7, v0, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v6, v7

    aput-byte v7, p4, v2

    add-int/lit8 v2, v5, 0x1

    shl-int/lit8 v7, v0, 0x4

    ushr-int/lit8 v8, v3, 0x4

    or-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v6, v7

    aput-byte v7, p4, v5

    add-int/lit8 v5, v2, 0x1

    shl-int/lit8 v7, v3, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, p4, v2

    add-int/lit8 v2, v5, 0x1

    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    aput-byte v6, p4, v5

    move v0, v4

    goto :goto_ae

    :pswitch_87  #0x1
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v6, v0, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v5, v6

    aput-byte v6, p4, v2

    add-int/lit8 v2, v4, 0x1

    shl-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, p4, v4

    add-int/lit8 v4, v2, 0x1

    iget-byte v5, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    aput-byte v5, p4, v2

    add-int/lit8 v2, v4, 0x1

    aput-byte v5, p4, v4

    move v0, v3

    :goto_ae
    sub-int v3, v2, p5

    return v3

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_87  #00000001
        :pswitch_50  #00000002
    .end packed-switch
.end method

.method protected initialiseDecodingTable()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    array-length v2, v1

    if-ge v0, v2, :cond_c

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method
