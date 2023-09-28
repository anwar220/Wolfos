# classes4.dex

.class public final Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final GF256_FDBK:I = 0x169

.field private static final GF256_FDBK_2:I = 0xb4

.field private static final GF256_FDBK_4:I = 0x5a

.field private static final INPUT_WHITEN:I = 0x0

.field private static final MAX_KEY_BITS:I = 0x100

.field private static final MAX_ROUNDS:I = 0x10

.field private static final OUTPUT_WHITEN:I = 0x4

.field private static final P:[[B

.field private static final P_00:I = 0x1

.field private static final P_01:I = 0x0

.field private static final P_02:I = 0x0

.field private static final P_03:I = 0x1

.field private static final P_04:I = 0x1

.field private static final P_10:I = 0x0

.field private static final P_11:I = 0x0

.field private static final P_12:I = 0x1

.field private static final P_13:I = 0x1

.field private static final P_14:I = 0x0

.field private static final P_20:I = 0x1

.field private static final P_21:I = 0x1

.field private static final P_22:I = 0x0

.field private static final P_23:I = 0x0

.field private static final P_24:I = 0x0

.field private static final P_30:I = 0x0

.field private static final P_31:I = 0x1

.field private static final P_32:I = 0x1

.field private static final P_33:I = 0x0

.field private static final P_34:I = 0x1

.field private static final ROUNDS:I = 0x10

.field private static final ROUND_SUBKEYS:I = 0x8

.field private static final RS_GF_FDBK:I = 0x14d

.field private static final SK_BUMP:I = 0x1010101

.field private static final SK_ROTL:I = 0x9

.field private static final SK_STEP:I = 0x2020202

.field private static final TOTAL_SUBKEYS:I = 0x28


# instance fields
.field private encrypting:Z

.field private gMDS0:[I

.field private gMDS1:[I

.field private gMDS2:[I

.field private gMDS3:[I

.field private gSBox:[I

.field private gSubKeys:[I

.field private k64Cnt:I

.field private workingKey:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x100

    new-array v2, v1, [B

    fill-array-data v2, :array_18

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_9c

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    return-void

    :array_18
    .array-data 1
        -0x57t
        0x67t
        -0x4dt
        -0x18t
        0x4t
        -0x3t
        -0x5dt
        0x76t
        -0x66t
        -0x6et
        -0x80t
        0x78t
        -0x1ct
        -0x23t
        -0x2ft
        0x38t
        0xdt
        -0x3at
        0x35t
        -0x68t
        0x18t
        -0x9t
        -0x14t
        0x6ct
        0x43t
        0x75t
        0x37t
        0x26t
        -0x6t
        0x13t
        -0x6ct
        0x48t
        -0xet
        -0x30t
        -0x75t
        0x30t
        -0x7ct
        0x54t
        -0x21t
        0x23t
        0x19t
        0x5bt
        0x3dt
        0x59t
        -0xdt
        -0x52t
        -0x5et
        -0x7et
        0x63t
        0x1t
        -0x7dt
        0x2et
        -0x27t
        0x51t
        -0x65t
        0x7ct
        -0x5at
        -0x15t
        -0x5bt
        -0x42t
        0x16t
        0xct
        -0x1dt
        0x61t
        -0x40t
        -0x74t
        0x3at
        -0xbt
        0x73t
        0x2ct
        0x25t
        0xbt
        -0x45t
        0x4et
        -0x77t
        0x6bt
        0x53t
        0x6at
        -0x4ct
        -0xft
        -0x1ft
        -0x1at
        -0x43t
        0x45t
        -0x1et
        -0xct
        -0x4at
        0x66t
        -0x34t
        -0x6bt
        0x3t
        0x56t
        -0x2ct
        0x1ct
        0x1et
        -0x29t
        -0x5t
        -0x3dt
        -0x72t
        -0x4bt
        -0x17t
        -0x31t
        -0x41t
        -0x46t
        -0x16t
        0x77t
        0x39t
        -0x51t
        0x33t
        -0x37t
        0x62t
        0x71t
        -0x7ft
        0x79t
        0x9t
        -0x53t
        0x24t
        -0x33t
        -0x7t
        -0x28t
        -0x1bt
        -0x3bt
        -0x47t
        0x4dt
        0x44t
        0x8t
        -0x7at
        -0x19t
        -0x5ft
        0x1dt
        -0x56t
        -0x13t
        0x6t
        0x70t
        -0x4et
        -0x2et
        0x41t
        0x7bt
        -0x60t
        0x11t
        0x31t
        -0x3et
        0x27t
        -0x70t
        0x20t
        -0xat
        0x60t
        -0x1t
        -0x6at
        0x5ct
        -0x4ft
        -0x55t
        -0x62t
        -0x64t
        0x52t
        0x1bt
        0x5ft
        -0x6dt
        0xat
        -0x11t
        -0x6ft
        -0x7bt
        0x49t
        -0x12t
        0x2dt
        0x4ft
        -0x71t
        0x3bt
        0x47t
        -0x79t
        0x6dt
        0x46t
        -0x2at
        0x3et
        0x69t
        0x64t
        0x2at
        -0x32t
        -0x35t
        0x2ft
        -0x4t
        -0x69t
        0x5t
        0x7at
        -0x54t
        0x7ft
        -0x2bt
        0x1at
        0x4bt
        0xet
        -0x59t
        0x5at
        0x28t
        0x14t
        0x3ft
        0x29t
        -0x78t
        0x3ct
        0x4ct
        0x2t
        -0x48t
        -0x26t
        -0x50t
        0x17t
        0x55t
        0x1ft
        -0x76t
        0x7dt
        0x57t
        -0x39t
        -0x73t
        0x74t
        -0x49t
        -0x3ct
        -0x61t
        0x72t
        0x7et
        0x15t
        0x22t
        0x12t
        0x58t
        0x7t
        -0x67t
        0x34t
        0x6et
        0x50t
        -0x22t
        0x68t
        0x65t
        -0x44t
        -0x25t
        -0x8t
        -0x38t
        -0x58t
        0x2bt
        0x40t
        -0x24t
        -0x2t
        0x32t
        -0x5ct
        -0x36t
        0x10t
        0x21t
        -0x10t
        -0x2dt
        0x5dt
        0xft
        0x0t
        0x6ft
        -0x63t
        0x36t
        0x42t
        0x4at
        0x5et
        -0x3ft
        -0x20t
    .end array-data

    :array_9c
    .array-data 1
        0x75t
        -0xdt
        -0x3at
        -0xct
        -0x25t
        0x7bt
        -0x5t
        -0x38t
        0x4at
        -0x2dt
        -0x1at
        0x6bt
        0x45t
        0x7dt
        -0x18t
        0x4bt
        -0x2at
        0x32t
        -0x28t
        -0x3t
        0x37t
        0x71t
        -0xft
        -0x1ft
        0x30t
        0xft
        -0x8t
        0x1bt
        -0x79t
        -0x6t
        0x6t
        0x3ft
        0x5et
        -0x46t
        -0x52t
        0x5bt
        -0x76t
        0x0t
        -0x44t
        -0x63t
        0x6dt
        -0x3ft
        -0x4ft
        0xet
        -0x80t
        0x5dt
        -0x2et
        -0x2bt
        -0x60t
        -0x7ct
        0x7t
        0x14t
        -0x4bt
        -0x70t
        0x2ct
        -0x5dt
        -0x4et
        0x73t
        0x4ct
        0x54t
        -0x6et
        0x74t
        0x36t
        0x51t
        0x38t
        -0x50t
        -0x43t
        0x5at
        -0x4t
        0x60t
        0x62t
        -0x6at
        0x6ct
        0x42t
        -0x9t
        0x10t
        0x7ct
        0x28t
        0x27t
        -0x74t
        0x13t
        -0x6bt
        -0x64t
        -0x39t
        0x24t
        0x46t
        0x3bt
        0x70t
        -0x36t
        -0x1dt
        -0x7bt
        -0x35t
        0x11t
        -0x30t
        -0x6dt
        -0x48t
        -0x5at
        -0x7dt
        0x20t
        -0x1t
        -0x61t
        0x77t
        -0x3dt
        -0x34t
        0x3t
        0x6ft
        0x8t
        -0x41t
        0x40t
        -0x19t
        0x2bt
        -0x1et
        0x79t
        0xct
        -0x56t
        -0x7et
        0x41t
        0x3at
        -0x16t
        -0x47t
        -0x1ct
        -0x66t
        -0x5ct
        -0x69t
        0x7et
        -0x26t
        0x7at
        0x17t
        0x66t
        -0x6ct
        -0x5ft
        0x1dt
        0x3dt
        -0x10t
        -0x22t
        -0x4dt
        0xbt
        0x72t
        -0x59t
        0x1ct
        -0x11t
        -0x2ft
        0x53t
        0x3et
        -0x71t
        0x33t
        0x26t
        0x5ft
        -0x14t
        0x76t
        0x2at
        0x49t
        -0x7ft
        -0x78t
        -0x12t
        0x21t
        -0x3ct
        0x1at
        -0x15t
        -0x27t
        -0x3bt
        0x39t
        -0x67t
        -0x33t
        -0x53t
        0x31t
        -0x75t
        0x1t
        0x18t
        0x23t
        -0x23t
        0x1ft
        0x4et
        0x2dt
        -0x7t
        0x48t
        0x4ft
        -0xet
        0x65t
        -0x72t
        0x78t
        0x5ct
        0x58t
        0x19t
        -0x73t
        -0x1bt
        -0x68t
        0x57t
        0x67t
        0x7ft
        0x5t
        0x64t
        -0x51t
        0x63t
        -0x4at
        -0x2t
        -0xbt
        -0x49t
        0x3ct
        -0x5bt
        -0x32t
        -0x17t
        0x68t
        0x44t
        -0x20t
        0x4dt
        0x43t
        0x69t
        0x29t
        0x2et
        -0x54t
        0x15t
        0x59t
        -0x58t
        0xat
        -0x62t
        0x6et
        0x47t
        -0x21t
        0x34t
        0x35t
        0x6at
        -0x31t
        -0x24t
        0x22t
        -0x37t
        -0x40t
        -0x65t
        -0x77t
        -0x2ct
        -0x13t
        -0x55t
        0x12t
        -0x5et
        0xdt
        0x52t
        -0x45t
        0x2t
        0x2ft
        -0x57t
        -0x29t
        0x61t
        0x1et
        -0x4ct
        0x50t
        0x4t
        -0xat
        -0x3et
        0x16t
        0x25t
        -0x7at
        0x56t
        0x55t
        0x9t
        -0x42t
        -0x6ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    const/16 v1, 0x100

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    const/4 v2, 0x2

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v2, v2, [I

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v1, :cond_b2

    sget-object v6, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, v6, v0

    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    aput v7, v3, v0

    invoke-direct {p0, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v4, v0

    invoke-direct {p0, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v2, v0

    const/4 v8, 0x1

    aget-object v6, v6, v8

    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v8

    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v4, v8

    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v2, v8

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    aget v9, v3, v8

    aget v10, v4, v8

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget v10, v2, v8

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    aget v10, v2, v8

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v7, v5

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget v9, v2, v0

    aget v10, v2, v0

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget v10, v4, v0

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    aget v10, v3, v0

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v7, v5

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget v9, v4, v8

    aget v10, v2, v8

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget v10, v3, v8

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    aget v8, v2, v8

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v8, v9

    aput v8, v7, v5

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget v8, v4, v0

    aget v9, v3, v0

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget v9, v2, v0

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget v9, v4, v0

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    aput v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_25

    :cond_b2
    return-void
.end method

.method private Bits32ToBytes(I[BI)V
    .registers 6

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method private BytesTo32Bits([BI)I
    .registers 5

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private F32(I[I)I
    .registers 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v1

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v2

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v3

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v4

    const/4 v5, 0x0

    aget v6, p2, v5

    const/4 v7, 0x1

    aget v8, p2, v7

    const/4 v9, 0x2

    aget v9, p2, v9

    const/4 v10, 0x3

    aget v11, p2, v10

    const/4 v12, 0x0

    iget v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/2addr v10, v13

    packed-switch v10, :pswitch_data_13e

    goto/16 :goto_13d

    :pswitch_27  #0x1
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v14, v13, v5

    aget-byte v14, v14, v1

    and-int/lit16 v14, v14, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v15

    xor-int/2addr v14, v15

    aget v10, v10, v14

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget-object v5, v13, v5

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v15

    xor-int/2addr v5, v15

    aget v5, v14, v5

    xor-int/2addr v5, v10

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget-object v14, v13, v7

    aget-byte v14, v14, v3

    and-int/lit16 v14, v14, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v15

    xor-int/2addr v14, v15

    aget v10, v10, v14

    xor-int/2addr v5, v10

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget-object v7, v13, v7

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int/2addr v7, v13

    aget v7, v10, v7

    xor-int v12, v5, v7

    goto/16 :goto_13d

    :pswitch_6b  #0x0
    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v13, v10, v7

    aget-byte v13, v13, v1

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v14

    xor-int v1, v13, v14

    aget-object v13, v10, v5

    aget-byte v13, v13, v2

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v14

    xor-int v2, v13, v14

    aget-object v13, v10, v5

    aget-byte v13, v13, v3

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v14

    xor-int v3, v13, v14

    aget-object v10, v10, v7

    aget-byte v10, v10, v4

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int v4, v10, v13

    :pswitch_9d  #0x3
    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v13, v10, v7

    aget-byte v13, v13, v1

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v14

    xor-int v1, v13, v14

    aget-object v13, v10, v7

    aget-byte v13, v13, v2

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v14

    xor-int v2, v13, v14

    aget-object v13, v10, v5

    aget-byte v13, v13, v3

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v14

    xor-int v3, v13, v14

    aget-object v10, v10, v5

    aget-byte v10, v10, v4

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int v4, v10, v13

    :pswitch_cf  #0x2
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v14, v13, v5

    aget-byte v15, v14, v1

    and-int/lit16 v15, v15, 0xff

    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v16

    xor-int v15, v15, v16

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v15

    xor-int/2addr v14, v15

    aget v10, v10, v14

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget-object v15, v13, v5

    aget-object v16, v13, v7

    aget-byte v5, v16, v2

    and-int/lit16 v5, v5, 0xff

    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v16

    xor-int v5, v5, v16

    aget-byte v5, v15, v5

    and-int/lit16 v5, v5, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v15

    xor-int/2addr v5, v15

    aget v5, v14, v5

    xor-int/2addr v5, v10

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget-object v14, v13, v7

    const/4 v15, 0x0

    aget-object v15, v13, v15

    aget-byte v15, v15, v3

    and-int/lit16 v15, v15, 0xff

    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v16

    xor-int v15, v15, v16

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v15

    xor-int/2addr v14, v15

    aget v10, v10, v14

    xor-int/2addr v5, v10

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget-object v7, v13, v7

    aget-byte v13, v7, v4

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget-byte v7, v7, v13

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int/2addr v7, v13

    aget v7, v10, v7

    xor-int v12, v5, v7

    :goto_13d
    return v12

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_6b  #00000000
        :pswitch_27  #00000001
        :pswitch_cf  #00000002
        :pswitch_9d  #00000003
    .end packed-switch
.end method

.method private Fe32_0(I)I
    .registers 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v1, v0, v1

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v0, v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Fe32_3(I)I
    .registers 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v1, v0, v1

    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v0, v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private LFSR1(I)I
    .registers 4

    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_9

    const/16 v1, 0xb4

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    xor-int/2addr v0, v1

    return v0
.end method

.method private LFSR2(I)I
    .registers 5

    shr-int/lit8 v0, p1, 0x2

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    const/16 v1, 0xb4

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    xor-int/2addr v0, v1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_12

    const/16 v2, 0x5a

    :cond_12
    xor-int/2addr v0, v2

    return v0
.end method

.method private Mx_X(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v0

    xor-int/2addr v0, p1

    return v0
.end method

.method private Mx_Y(I)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR1(I)I

    move-result v0

    xor-int/2addr v0, p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private RS_MDS_Encode(II)I
    .registers 6

    move v0, p2

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_c

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    xor-int/2addr v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_17

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_17
    return v0
.end method

.method private RS_rem(I)I
    .registers 7

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x1

    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    const/16 v2, 0x14d

    goto :goto_f

    :cond_e
    move v2, v3

    :goto_f
    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v2, v0, 0x1

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1a

    const/16 v3, 0xa6

    :cond_1a
    xor-int/2addr v2, v3

    xor-int/2addr v2, v1

    shl-int/lit8 v3, p1, 0x8

    shl-int/lit8 v4, v2, 0x18

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0x10

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x8

    xor-int/2addr v3, v4

    xor-int/2addr v3, v0

    return v3
.end method

.method private b0(I)I
    .registers 3

    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private b1(I)I
    .registers 3

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private b2(I)I
    .registers 3

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private b3(I)I
    .registers 3

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private decryptBlock([BI[BI)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct/range {p0 .. p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v4

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    xor-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    invoke-direct {v0, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v5

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    xor-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x8

    invoke-direct {v0, v1, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v6

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v8, 0x6

    aget v7, v7, v8

    xor-int/2addr v6, v7

    add-int/lit8 v7, p2, 0xc

    invoke-direct {v0, v1, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v7

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v9, 0x7

    aget v8, v8, v9

    xor-int/2addr v7, v8

    const/16 v8, 0x27

    const/4 v9, 0x0

    :goto_39
    const/16 v10, 0x10

    if-ge v9, v10, :cond_8f

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v10

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v11

    mul-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v10

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v14, v8, -0x1

    aget v8, v13, v8

    add-int/2addr v12, v8

    xor-int/2addr v7, v12

    shl-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v12, v6, 0x1f

    or-int/2addr v8, v12

    add-int v12, v10, v11

    add-int/lit8 v15, v14, -0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    xor-int v6, v8, v12

    ushr-int/lit8 v8, v7, 0x1

    shl-int/lit8 v12, v7, 0x1f

    or-int v7, v8, v12

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v8

    invoke-direct {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v10

    mul-int/lit8 v11, v10, 0x2

    add-int/2addr v11, v8

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v13, v15, -0x1

    aget v14, v12, v15

    add-int/2addr v11, v14

    xor-int/2addr v5, v11

    shl-int/lit8 v11, v4, 0x1

    ushr-int/lit8 v14, v4, 0x1f

    or-int/2addr v11, v14

    add-int v14, v8, v10

    add-int/lit8 v15, v13, -0x1

    aget v12, v12, v13

    add-int/2addr v14, v12

    xor-int v4, v11, v14

    ushr-int/lit8 v11, v5, 0x1

    shl-int/lit8 v12, v5, 0x1f

    or-int v5, v11, v12

    add-int/lit8 v9, v9, 0x2

    move v8, v15

    goto :goto_39

    :cond_8f
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    xor-int/2addr v9, v6

    invoke-direct {v0, v9, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    xor-int/2addr v9, v7

    add-int/lit8 v10, v3, 0x4

    invoke-direct {v0, v9, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    xor-int/2addr v9, v4

    add-int/lit8 v10, v3, 0x8

    invoke-direct {v0, v9, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    xor-int/2addr v9, v5

    add-int/lit8 v10, v3, 0xc

    invoke-direct {v0, v9, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    return-void
.end method

.method private encryptBlock([BI[BI)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct/range {p0 .. p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v4

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    xor-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    invoke-direct {v0, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v5

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x8

    invoke-direct {v0, v1, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v6

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    xor-int/2addr v6, v7

    add-int/lit8 v7, p2, 0xc

    invoke-direct {v0, v1, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v7

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    xor-int/2addr v7, v8

    const/16 v8, 0x8

    const/4 v9, 0x0

    :goto_39
    const/16 v10, 0x10

    if-ge v9, v10, :cond_8f

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v10

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v11

    add-int v12, v10, v11

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v14, v8, 0x1

    aget v8, v13, v8

    add-int/2addr v12, v8

    xor-int/2addr v6, v12

    ushr-int/lit8 v8, v6, 0x1

    shl-int/lit8 v12, v6, 0x1f

    or-int v6, v8, v12

    shl-int/lit8 v8, v7, 0x1

    ushr-int/lit8 v12, v7, 0x1f

    or-int/2addr v8, v12

    mul-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v10

    add-int/lit8 v15, v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    xor-int v7, v8, v12

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v8

    invoke-direct {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v10

    add-int v11, v8, v10

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v13, v15, 0x1

    aget v14, v12, v15

    add-int/2addr v11, v14

    xor-int/2addr v4, v11

    ushr-int/lit8 v11, v4, 0x1

    shl-int/lit8 v14, v4, 0x1f

    or-int v4, v11, v14

    shl-int/lit8 v11, v5, 0x1

    ushr-int/lit8 v14, v5, 0x1f

    or-int/2addr v11, v14

    mul-int/lit8 v14, v10, 0x2

    add-int/2addr v14, v8

    add-int/lit8 v15, v13, 0x1

    aget v12, v12, v13

    add-int/2addr v14, v12

    xor-int v5, v11, v14

    add-int/lit8 v9, v9, 0x2

    move v8, v15

    goto :goto_39

    :cond_8f
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x4

    aget v9, v9, v10

    xor-int/2addr v9, v6

    invoke-direct {v0, v9, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x5

    aget v9, v9, v10

    xor-int/2addr v9, v7

    add-int/lit8 v10, v3, 0x4

    invoke-direct {v0, v9, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x6

    aget v9, v9, v10

    xor-int/2addr v9, v4

    add-int/lit8 v10, v3, 0x8

    invoke-direct {v0, v9, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x7

    aget v9, v9, v10

    xor-int/2addr v9, v5

    add-int/lit8 v10, v3, 0xc

    invoke-direct {v0, v9, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    return-void
.end method

.method private setKey([B)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [I

    const/16 v6, 0x28

    new-array v6, v6, [I

    iput-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    const/4 v7, 0x1

    if-lt v6, v7, :cond_20e

    if-gt v6, v2, :cond_206

    const/4 v2, 0x0

    :goto_19
    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    if-ge v2, v6, :cond_3e

    mul-int/lit8 v6, v2, 0x8

    invoke-direct {v0, v1, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v8

    aput v8, v3, v2

    add-int/lit8 v8, v6, 0x4

    invoke-direct {v0, v1, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v8

    aput v8, v4, v2

    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    sub-int/2addr v8, v7

    sub-int/2addr v8, v2

    aget v9, v3, v2

    aget v10, v4, v2

    invoke-direct {v0, v9, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->RS_MDS_Encode(II)I

    move-result v9

    aput v9, v5, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    const/16 v6, 0x14

    if-ge v2, v6, :cond_6e

    const v6, 0x2020202

    mul-int/2addr v6, v2

    invoke-direct {v0, v6, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v8

    const v9, 0x1010101

    add-int/2addr v9, v6

    invoke-direct {v0, v9, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v9

    shl-int/lit8 v10, v9, 0x8

    ushr-int/lit8 v11, v9, 0x18

    or-int v9, v10, v11

    add-int/2addr v8, v9

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    mul-int/lit8 v11, v2, 0x2

    aput v8, v10, v11

    add-int/2addr v8, v9

    mul-int/lit8 v11, v2, 0x2

    add-int/2addr v11, v7

    shl-int/lit8 v12, v8, 0x9

    ushr-int/lit8 v13, v8, 0x17

    or-int/2addr v12, v13

    aput v12, v10, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_6e
    const/4 v2, 0x0

    aget v6, v5, v2

    aget v8, v5, v7

    const/4 v9, 0x2

    aget v9, v5, v9

    const/4 v10, 0x3

    aget v11, v5, v10

    const/16 v12, 0x400

    new-array v12, v12, [I

    iput-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    const/4 v12, 0x0

    :goto_80
    const/16 v13, 0x100

    if-ge v12, v13, :cond_205

    move v13, v12

    move v14, v12

    move v15, v12

    move/from16 v16, v12

    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/2addr v7, v10

    packed-switch v7, :pswitch_data_216

    move-object/from16 v18, v3

    goto/16 :goto_1fa

    :pswitch_93  #0x3
    const/4 v2, 0x1

    goto/16 :goto_133

    :pswitch_96  #0x1
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v18, v12, 0x2

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v19, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v20, v19, v2

    aget-byte v2, v20, v16

    and-int/lit16 v2, v2, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v20

    xor-int v2, v2, v20

    aget v2, v10, v2

    aput v2, v7, v18

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v7, v12, 0x2

    const/4 v10, 0x1

    add-int/2addr v7, v10

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    const/16 v18, 0x0

    aget-object v20, v19, v18

    aget-byte v1, v20, v15

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v18

    xor-int v1, v1, v18

    aget v1, v10, v1

    aput v1, v2, v7

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v2, v12, 0x2

    add-int/lit16 v2, v2, 0x200

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    const/4 v10, 0x1

    aget-object v18, v19, v10

    aget-byte v10, v18, v14

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v18

    xor-int v10, v10, v18

    aget v7, v7, v10

    aput v7, v1, v2

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v2, v12, 0x2

    add-int/lit16 v2, v2, 0x201

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    const/4 v10, 0x1

    aget-object v17, v19, v10

    aget-byte v10, v17, v13

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v17

    xor-int v10, v10, v17

    aget v7, v7, v10

    aput v7, v1, v2

    move-object/from16 v18, v3

    goto/16 :goto_1fa

    :pswitch_fe  #0x0
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v2, 0x1

    aget-object v7, v1, v2

    aget-byte v2, v7, v16

    and-int/lit16 v2, v2, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v7

    xor-int v16, v2, v7

    const/4 v2, 0x0

    aget-object v7, v1, v2

    aget-byte v7, v7, v15

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v10

    xor-int v15, v7, v10

    aget-object v7, v1, v2

    aget-byte v2, v7, v14

    and-int/lit16 v2, v2, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v7

    xor-int v14, v2, v7

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-byte v1, v1, v13

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v7

    xor-int v13, v1, v7

    :goto_133
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, v1, v2

    aget-byte v7, v7, v16

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v10

    xor-int v16, v7, v10

    aget-object v7, v1, v2

    aget-byte v2, v7, v15

    and-int/lit16 v2, v2, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v7

    xor-int v15, v2, v7

    const/4 v2, 0x0

    aget-object v7, v1, v2

    aget-byte v7, v7, v14

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v10

    xor-int v14, v7, v10

    aget-object v1, v1, v2

    aget-byte v1, v1, v13

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v2

    xor-int v13, v1, v2

    :pswitch_166  #0x2
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v2, v12, 0x2

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v18, 0x0

    aget-object v19, v10, v18

    move-object/from16 v18, v3

    aget-byte v3, v19, v16

    and-int/lit16 v3, v3, 0xff

    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v20

    xor-int v3, v3, v20

    aget-byte v3, v19, v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v19

    xor-int v3, v3, v19

    aget v3, v7, v3

    aput v3, v1, v2

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v2, v12, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    const/16 v17, 0x0

    aget-object v19, v10, v17

    aget-object v20, v10, v3

    aget-byte v3, v20, v15

    and-int/lit16 v3, v3, 0xff

    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v20

    xor-int v3, v3, v20

    aget-byte v3, v19, v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v19

    xor-int v3, v3, v19

    aget v3, v7, v3

    aput v3, v1, v2

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v2, v12, 0x2

    add-int/lit16 v2, v2, 0x200

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    const/4 v7, 0x1

    aget-object v19, v10, v7

    const/4 v7, 0x0

    aget-object v20, v10, v7

    aget-byte v7, v20, v14

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v20

    xor-int v7, v7, v20

    aget-byte v7, v19, v7

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v19

    xor-int v7, v7, v19

    aget v3, v3, v7

    aput v3, v1, v2

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v2, v12, 0x2

    add-int/lit16 v2, v2, 0x201

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    const/4 v7, 0x1

    aget-object v10, v10, v7

    aget-byte v7, v10, v13

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v19

    xor-int v7, v7, v19

    aget-byte v7, v10, v7

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v10

    xor-int/2addr v7, v10

    aget v3, v3, v7

    aput v3, v1, v2

    :goto_1fa
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v18

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x3

    goto/16 :goto_80

    :cond_205
    return-void

    :cond_206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Key size larger than 256 bits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Key size less than 64 bits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_216
    .packed-switch 0x0
        :pswitch_fe  #00000000
        :pswitch_96  #00000001
        :pswitch_166  #00000002
        :pswitch_93  #00000003
    .end packed-switch
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "Twofish"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_18

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    array-length v1, v0

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Twofish init - "

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

.method public processBlock([BI[BI)I
    .registers 7

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_2d

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_25

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    if-eqz v0, :cond_16

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->encryptBlock([BI[BI)V

    goto :goto_19

    :cond_16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->decryptBlock([BI[BI)V

    :goto_19
    const/16 v0, 0x10

    return v0

    :cond_1c
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Twofish not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    :cond_7
    return-void
.end method
