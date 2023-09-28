# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x8

.field private static final SP1:[I

.field private static final SP2:[I

.field private static final SP3:[I

.field private static final SP4:[I

.field private static final SP5:[I

.field private static final SP6:[I

.field private static final SP7:[I

.field private static final SP8:[I

.field private static final bigbyte:[I

.field private static final bytebit:[S

.field private static final pc1:[B

.field private static final pc2:[B

.field private static final totrot:[B


# instance fields
.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    new-array v0, v0, [S

    fill-array-data v0, :array_68

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->bytebit:[S

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_74

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_a8

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->pc1:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_c8

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_d4

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    const/16 v0, 0x40

    new-array v1, v0, [I

    fill-array-data v1, :array_f0

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_174

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1f8

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_27c

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_300

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_384

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_408

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_48c

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    return-void

    :array_68
    .array-data 2
        0x80s
        0x40s
        0x20s
        0x10s
        0x8s
        0x4s
        0x2s
        0x1s
    .end array-data

    :array_74
    .array-data 4
        0x800000
        0x400000
        0x200000
        0x100000
        0x80000
        0x40000
        0x20000
        0x10000
        0x8000
        0x4000
        0x2000
        0x1000
        0x800
        0x400
        0x200
        0x100
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

    :array_a8
    .array-data 1
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x0t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x1bt
        0x13t
        0xbt
        0x3t
    .end array-data

    :array_c8
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x6t
        0x8t
        0xat
        0xct
        0xet
        0xft
        0x11t
        0x13t
        0x15t
        0x17t
        0x19t
        0x1bt
        0x1ct
    .end array-data

    :array_d4
    .array-data 1
        0xdt
        0x10t
        0xat
        0x17t
        0x0t
        0x4t
        0x2t
        0x1bt
        0xet
        0x5t
        0x14t
        0x9t
        0x16t
        0x12t
        0xbt
        0x3t
        0x19t
        0x7t
        0xft
        0x6t
        0x1at
        0x13t
        0xct
        0x1t
        0x28t
        0x33t
        0x1et
        0x24t
        0x2et
        0x36t
        0x1dt
        0x27t
        0x32t
        0x2ct
        0x20t
        0x2ft
        0x2bt
        0x30t
        0x26t
        0x37t
        0x21t
        0x34t
        0x2dt
        0x29t
        0x31t
        0x23t
        0x1ct
        0x1ft
    .end array-data

    :array_f0
    .array-data 4
        0x1010400
        0x0
        0x10000
        0x1010404
        0x1010004
        0x10404
        0x4
        0x10000
        0x400
        0x1010400
        0x1010404
        0x400
        0x1000404
        0x1010004
        0x1000000
        0x4
        0x404
        0x1000400
        0x1000400
        0x10400
        0x10400
        0x1010000
        0x1010000
        0x1000404
        0x10004
        0x1000004
        0x1000004
        0x10004
        0x0
        0x404
        0x10404
        0x1000000
        0x10000
        0x1010404
        0x4
        0x1010000
        0x1010400
        0x1000000
        0x1000000
        0x400
        0x1010004
        0x10000
        0x10400
        0x1000004
        0x400
        0x4
        0x1000404
        0x10404
        0x1010404
        0x10004
        0x1010000
        0x1000404
        0x1000004
        0x404
        0x10404
        0x1010400
        0x404
        0x1000400
        0x1000400
        0x0
        0x10004
        0x10400
        0x0
        0x1010004
    .end array-data

    :array_174
    .array-data 4
        -0x7fef7fe0
        -0x7fff8000
        0x8000
        0x108020
        0x100000
        0x20
        -0x7fefffe0
        -0x7fff7fe0
        -0x7fffffe0
        -0x7fef7fe0
        -0x7fef8000
        -0x80000000
        -0x7fff8000
        0x100000
        0x20
        -0x7fefffe0
        0x108000
        0x100020
        -0x7fff7fe0
        0x0
        -0x80000000
        0x8000
        0x108020
        -0x7ff00000
        0x100020
        -0x7fffffe0
        0x0
        0x108000
        0x8020
        -0x7fef8000
        -0x7ff00000
        0x8020
        0x0
        0x108020
        -0x7fefffe0
        0x100000
        -0x7fff7fe0
        -0x7ff00000
        -0x7fef8000
        0x8000
        -0x7ff00000
        -0x7fff8000
        0x20
        -0x7fef7fe0
        0x108020
        0x20
        0x8000
        -0x80000000
        0x8020
        -0x7fef8000
        0x100000
        -0x7fffffe0
        0x100020
        -0x7fff7fe0
        -0x7fffffe0
        0x100020
        0x108000
        0x0
        -0x7fff8000
        0x8020
        -0x80000000
        -0x7fefffe0
        -0x7fef7fe0
        0x108000
    .end array-data

    :array_1f8
    .array-data 4
        0x208
        0x8020200
        0x0
        0x8020008
        0x8000200
        0x0
        0x20208
        0x8000200
        0x20008
        0x8000008
        0x8000008
        0x20000
        0x8020208
        0x20008
        0x8020000
        0x208
        0x8000000
        0x8
        0x8020200
        0x200
        0x20200
        0x8020000
        0x8020008
        0x20208
        0x8000208
        0x20200
        0x20000
        0x8000208
        0x8
        0x8020208
        0x200
        0x8000000
        0x8020200
        0x8000000
        0x20008
        0x208
        0x20000
        0x8020200
        0x8000200
        0x0
        0x200
        0x20008
        0x8020208
        0x8000200
        0x8000008
        0x200
        0x0
        0x8020008
        0x8000208
        0x20000
        0x8000000
        0x8020208
        0x8
        0x20208
        0x20200
        0x8000008
        0x8020000
        0x8000208
        0x208
        0x8020000
        0x20208
        0x8
        0x8020008
        0x20200
    .end array-data

    :array_27c
    .array-data 4
        0x802001
        0x2081
        0x2081
        0x80
        0x802080
        0x800081
        0x800001
        0x2001
        0x0
        0x802000
        0x802000
        0x802081
        0x81
        0x0
        0x800080
        0x800001
        0x1
        0x2000
        0x800000
        0x802001
        0x80
        0x800000
        0x2001
        0x2080
        0x800081
        0x1
        0x2080
        0x800080
        0x2000
        0x802080
        0x802081
        0x81
        0x800080
        0x800001
        0x802000
        0x802081
        0x81
        0x0
        0x0
        0x802000
        0x2080
        0x800080
        0x800081
        0x1
        0x802001
        0x2081
        0x2081
        0x80
        0x802081
        0x81
        0x1
        0x2000
        0x800001
        0x2001
        0x802080
        0x800081
        0x2001
        0x2080
        0x800000
        0x802001
        0x80
        0x800000
        0x2000
        0x802080
    .end array-data

    :array_300
    .array-data 4
        0x100
        0x2080100
        0x2080000
        0x42000100  # 32.000977f
        0x80000
        0x100
        0x40000000  # 2.0f
        0x2080000
        0x40080100
        0x80000
        0x2000100
        0x40080100
        0x42000100  # 32.000977f
        0x42080000  # 34.0f
        0x80100
        0x40000000  # 2.0f
        0x2000000
        0x40080000  # 2.125f
        0x40080000  # 2.125f
        0x0
        0x40000100  # 2.000061f
        0x42080100  # 34.000977f
        0x42080100  # 34.000977f
        0x2000100
        0x42080000  # 34.0f
        0x40000100  # 2.000061f
        0x0
        0x42000000  # 32.0f
        0x2080100
        0x2000000
        0x42000000  # 32.0f
        0x80100
        0x80000
        0x42000100  # 32.000977f
        0x100
        0x2000000
        0x40000000  # 2.0f
        0x2080000
        0x42000100  # 32.000977f
        0x40080100
        0x2000100
        0x40000000  # 2.0f
        0x42080000  # 34.0f
        0x2080100
        0x40080100
        0x100
        0x2000000
        0x42080000  # 34.0f
        0x42080100  # 34.000977f
        0x80100
        0x42000000  # 32.0f
        0x42080100  # 34.000977f
        0x2080000
        0x0
        0x40080000  # 2.125f
        0x42000000  # 32.0f
        0x80100
        0x2000100
        0x40000100  # 2.000061f
        0x80000
        0x0
        0x40080000  # 2.125f
        0x2080100
        0x40000100  # 2.000061f
    .end array-data

    :array_384
    .array-data 4
        0x20000010
        0x20400000
        0x4000
        0x20404010
        0x20400000
        0x10
        0x20404010
        0x400000
        0x20004000
        0x404010
        0x400000
        0x20000010
        0x400010
        0x20004000
        0x20000000
        0x4010
        0x0
        0x400010
        0x20004010
        0x4000
        0x404000
        0x20004010
        0x10
        0x20400010
        0x20400010
        0x0
        0x404010
        0x20404000
        0x4010
        0x404000
        0x20404000
        0x20000000
        0x20004000
        0x10
        0x20400010
        0x404000
        0x20404010
        0x400000
        0x4010
        0x20000010
        0x400000
        0x20004000
        0x20000000
        0x4010
        0x20000010
        0x20404010
        0x404000
        0x20400000
        0x404010
        0x20404000
        0x0
        0x20400010
        0x10
        0x4000
        0x20400000
        0x404010
        0x4000
        0x400010
        0x20004010
        0x0
        0x20404000
        0x20000000
        0x400010
        0x20004010
    .end array-data

    :array_408
    .array-data 4
        0x200000
        0x4200002
        0x4000802
        0x0
        0x800
        0x4000802
        0x200802
        0x4200800
        0x4200802
        0x200000
        0x0
        0x4000002
        0x2
        0x4000000
        0x4200002
        0x802
        0x4000800
        0x200802
        0x200002
        0x4000800
        0x4000002
        0x4200000
        0x4200800
        0x200002
        0x4200000
        0x800
        0x802
        0x4200802
        0x200800
        0x2
        0x4000000
        0x200800
        0x4000000
        0x200800
        0x200000
        0x4000802
        0x4000802
        0x4200002
        0x4200002
        0x2
        0x200002
        0x4000000
        0x4000800
        0x200000
        0x4200800
        0x802
        0x200802
        0x4200800
        0x802
        0x4000002
        0x4200802
        0x4200000
        0x200800
        0x0
        0x2
        0x4200802
        0x0
        0x200802
        0x4200000
        0x800
        0x4000002
        0x4000800
        0x800
        0x200002
    .end array-data

    :array_48c
    .array-data 4
        0x10001040
        0x1000
        0x40000
        0x10041040
        0x10000000
        0x10001040
        0x40
        0x10000000
        0x40040
        0x10040000
        0x10041040
        0x41000
        0x10041000
        0x41040
        0x1000
        0x40
        0x10040000
        0x10000040
        0x10001000
        0x1040
        0x41000
        0x40040
        0x10040040
        0x10041000
        0x1040
        0x0
        0x0
        0x10040040
        0x10000040
        0x10001000
        0x41040
        0x40000
        0x41040
        0x40000
        0x10041000
        0x1000
        0x40
        0x10040040
        0x1000
        0x41040
        0x10001000
        0x40
        0x10000040
        0x10040000
        0x10040040
        0x10000000
        0x40000
        0x10001040
        0x0
        0x10041040
        0x40040
        0x10000040
        0x10040000
        0x10001000
        0x10001040
        0x0
        0x10041040
        0x41000
        0x41000
        0x1040
        0x1040
        0x40040
        0x10000000
        0x10041000
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    return-void
.end method


# virtual methods
.method protected desFunc([I[BI[BI)V
    .registers 29

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static/range {p2 .. p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    add-int/lit8 v3, p3, 0x4

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    ushr-int/lit8 v5, v2, 0x4

    xor-int/2addr v5, v3

    const v6, 0xf0f0f0f

    and-int/2addr v5, v6

    xor-int/2addr v3, v5

    shl-int/lit8 v7, v5, 0x4

    xor-int/2addr v2, v7

    ushr-int/lit8 v7, v2, 0x10

    xor-int/2addr v7, v3

    const v8, 0xffff

    and-int v5, v7, v8

    xor-int/2addr v3, v5

    shl-int/lit8 v7, v5, 0x10

    xor-int/2addr v2, v7

    ushr-int/lit8 v7, v3, 0x2

    xor-int/2addr v7, v2

    const v9, 0x33333333

    and-int v5, v7, v9

    xor-int/2addr v2, v5

    shl-int/lit8 v7, v5, 0x2

    xor-int/2addr v3, v7

    ushr-int/lit8 v7, v3, 0x8

    xor-int/2addr v7, v2

    const v10, 0xff00ff

    and-int v5, v7, v10

    xor-int/2addr v2, v5

    shl-int/lit8 v7, v5, 0x8

    xor-int/2addr v3, v7

    shl-int/lit8 v7, v3, 0x1

    ushr-int/lit8 v11, v3, 0x1f

    or-int v3, v7, v11

    xor-int v7, v2, v3

    const v11, -0x55555556

    and-int v5, v7, v11

    xor-int/2addr v2, v5

    xor-int/2addr v3, v5

    shl-int/lit8 v7, v2, 0x1

    ushr-int/lit8 v12, v2, 0x1f

    or-int v2, v7, v12

    const/4 v7, 0x0

    :goto_55
    const/16 v12, 0x8

    if-ge v7, v12, :cond_106

    shl-int/lit8 v12, v3, 0x1c

    ushr-int/lit8 v13, v3, 0x4

    or-int v5, v12, v13

    mul-int/lit8 v12, v7, 0x4

    add-int/lit8 v12, v12, 0x0

    aget v12, p1, v12

    xor-int/2addr v5, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    and-int/lit8 v13, v5, 0x3f

    aget v13, v12, v13

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    ushr-int/lit8 v15, v5, 0x8

    and-int/lit8 v15, v15, 0x3f

    aget v15, v14, v15

    or-int/2addr v13, v15

    sget-object v15, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    ushr-int/lit8 v16, v5, 0x10

    and-int/lit8 v16, v16, 0x3f

    aget v16, v15, v16

    or-int v13, v13, v16

    sget-object v16, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    ushr-int/lit8 v17, v5, 0x18

    and-int/lit8 v17, v17, 0x3f

    aget v17, v16, v17

    or-int v13, v13, v17

    mul-int/lit8 v17, v7, 0x4

    add-int/lit8 v17, v17, 0x1

    aget v17, p1, v17

    xor-int v5, v3, v17

    sget-object v17, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    and-int/lit8 v18, v5, 0x3f

    aget v18, v17, v18

    or-int v13, v13, v18

    sget-object v18, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    ushr-int/lit8 v19, v5, 0x8

    and-int/lit8 v19, v19, 0x3f

    aget v19, v18, v19

    or-int v13, v13, v19

    sget-object v19, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    ushr-int/lit8 v20, v5, 0x10

    and-int/lit8 v20, v20, 0x3f

    aget v20, v19, v20

    or-int v13, v13, v20

    sget-object v20, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    ushr-int/lit8 v21, v5, 0x18

    and-int/lit8 v21, v21, 0x3f

    aget v21, v20, v21

    or-int v13, v13, v21

    xor-int/2addr v2, v13

    shl-int/lit8 v21, v2, 0x1c

    ushr-int/lit8 v22, v2, 0x4

    or-int v5, v21, v22

    mul-int/lit8 v21, v7, 0x4

    add-int/lit8 v21, v21, 0x2

    aget v21, p1, v21

    xor-int v5, v5, v21

    and-int/lit8 v21, v5, 0x3f

    aget v12, v12, v21

    ushr-int/lit8 v13, v5, 0x8

    and-int/lit8 v13, v13, 0x3f

    aget v13, v14, v13

    or-int/2addr v12, v13

    ushr-int/lit8 v13, v5, 0x10

    and-int/lit8 v13, v13, 0x3f

    aget v13, v15, v13

    or-int/2addr v12, v13

    ushr-int/lit8 v13, v5, 0x18

    and-int/lit8 v13, v13, 0x3f

    aget v13, v16, v13

    or-int/2addr v12, v13

    mul-int/lit8 v13, v7, 0x4

    add-int/lit8 v13, v13, 0x3

    aget v13, p1, v13

    xor-int v5, v2, v13

    and-int/lit8 v13, v5, 0x3f

    aget v13, v17, v13

    or-int/2addr v12, v13

    ushr-int/lit8 v13, v5, 0x8

    and-int/lit8 v13, v13, 0x3f

    aget v13, v18, v13

    or-int/2addr v12, v13

    ushr-int/lit8 v13, v5, 0x10

    and-int/lit8 v13, v13, 0x3f

    aget v13, v19, v13

    or-int/2addr v12, v13

    ushr-int/lit8 v13, v5, 0x18

    and-int/lit8 v13, v13, 0x3f

    aget v13, v20, v13

    or-int/2addr v12, v13

    xor-int/2addr v3, v12

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_55

    :cond_106
    shl-int/lit8 v7, v3, 0x1f

    ushr-int/lit8 v12, v3, 0x1

    or-int v3, v7, v12

    xor-int v7, v2, v3

    and-int v5, v7, v11

    xor-int/2addr v2, v5

    xor-int/2addr v3, v5

    shl-int/lit8 v7, v2, 0x1f

    ushr-int/lit8 v11, v2, 0x1

    or-int v2, v7, v11

    ushr-int/lit8 v7, v2, 0x8

    xor-int/2addr v7, v3

    and-int v5, v7, v10

    xor-int/2addr v3, v5

    shl-int/lit8 v7, v5, 0x8

    xor-int/2addr v2, v7

    ushr-int/lit8 v7, v2, 0x2

    xor-int/2addr v7, v3

    and-int v5, v7, v9

    xor-int/2addr v3, v5

    shl-int/lit8 v7, v5, 0x2

    xor-int/2addr v2, v7

    ushr-int/lit8 v7, v3, 0x10

    xor-int/2addr v7, v2

    and-int v5, v7, v8

    xor-int/2addr v2, v5

    shl-int/lit8 v7, v5, 0x10

    xor-int/2addr v3, v7

    ushr-int/lit8 v7, v3, 0x4

    xor-int/2addr v7, v2

    and-int v5, v7, v6

    xor-int/2addr v2, v5

    shl-int/lit8 v6, v5, 0x4

    xor-int/2addr v3, v6

    invoke-static {v3, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 v6, v1, 0x4

    invoke-static {v2, v0, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method

.method protected generateWorkingKey(Z[B)[I
    .registers 17

    const/16 v0, 0x20

    new-array v1, v0, [I

    const/16 v2, 0x38

    new-array v3, v2, [Z

    new-array v4, v2, [Z

    const/4 v5, 0x0

    :goto_b
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v5, v2, :cond_26

    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->pc1:[B

    aget-byte v8, v8, v5

    ushr-int/lit8 v9, v8, 0x3

    aget-byte v9, p2, v9

    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->bytebit:[S

    and-int/lit8 v11, v8, 0x7

    aget-short v10, v10, v11

    and-int/2addr v9, v10

    if-eqz v9, :cond_21

    move v6, v7

    :cond_21
    aput-boolean v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_26
    const/4 v5, 0x0

    :goto_27
    const/16 v8, 0x10

    if-ge v5, v8, :cond_99

    if-eqz p1, :cond_30

    shl-int/lit8 v8, v5, 0x1

    goto :goto_33

    :cond_30
    rsub-int/lit8 v8, v5, 0xf

    shl-int/2addr v8, v7

    :goto_33
    add-int/lit8 v9, v8, 0x1

    aput v6, v1, v9

    aput v6, v1, v8

    const/4 v10, 0x0

    :goto_3a
    const/16 v11, 0x1c

    if-ge v10, v11, :cond_53

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    aget-byte v12, v12, v5

    add-int/2addr v12, v10

    if-ge v12, v11, :cond_4a

    aget-boolean v11, v3, v12

    aput-boolean v11, v4, v10

    goto :goto_50

    :cond_4a
    add-int/lit8 v11, v12, -0x1c

    aget-boolean v11, v3, v11

    aput-boolean v11, v4, v10

    :goto_50
    add-int/lit8 v10, v10, 0x1

    goto :goto_3a

    :cond_53
    const/16 v10, 0x1c

    :goto_55
    if-ge v10, v2, :cond_6c

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    aget-byte v11, v11, v5

    add-int/2addr v11, v10

    if-ge v11, v2, :cond_63

    aget-boolean v12, v3, v11

    aput-boolean v12, v4, v10

    goto :goto_69

    :cond_63
    add-int/lit8 v12, v11, -0x1c

    aget-boolean v12, v3, v12

    aput-boolean v12, v4, v10

    :goto_69
    add-int/lit8 v10, v10, 0x1

    goto :goto_55

    :cond_6c
    const/4 v10, 0x0

    :goto_6d
    const/16 v11, 0x18

    if-ge v10, v11, :cond_96

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    aget-byte v12, v11, v10

    aget-boolean v12, v4, v12

    if-eqz v12, :cond_82

    aget v12, v1, v8

    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    aget v13, v13, v10

    or-int/2addr v12, v13

    aput v12, v1, v8

    :cond_82
    add-int/lit8 v12, v10, 0x18

    aget-byte v11, v11, v12

    aget-boolean v11, v4, v11

    if-eqz v11, :cond_93

    aget v11, v1, v9

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    aget v12, v12, v10

    or-int/2addr v11, v12

    aput v11, v1, v9

    :cond_93
    add-int/lit8 v10, v10, 0x1

    goto :goto_6d

    :cond_96
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_99
    const/4 v2, 0x0

    :goto_9a
    if-eq v2, v0, :cond_d1

    aget v5, v1, v2

    add-int/lit8 v6, v2, 0x1

    aget v6, v1, v6

    const/high16 v7, 0xfc0000

    and-int v9, v5, v7

    shl-int/lit8 v9, v9, 0x6

    and-int/lit16 v10, v5, 0xfc0

    shl-int/lit8 v10, v10, 0xa

    or-int/2addr v9, v10

    and-int/2addr v7, v6

    ushr-int/lit8 v7, v7, 0xa

    or-int/2addr v7, v9

    and-int/lit16 v9, v6, 0xfc0

    ushr-int/lit8 v9, v9, 0x6

    or-int/2addr v7, v9

    aput v7, v1, v2

    add-int/lit8 v7, v2, 0x1

    const v9, 0x3f000

    and-int v10, v5, v9

    shl-int/lit8 v10, v10, 0xc

    and-int/lit8 v11, v5, 0x3f

    shl-int/2addr v11, v8

    or-int/2addr v10, v11

    and-int/2addr v9, v6

    ushr-int/lit8 v9, v9, 0x4

    or-int/2addr v9, v10

    and-int/lit8 v10, v6, 0x3f

    or-int/2addr v9, v10

    aput v9, v1, v7

    add-int/lit8 v2, v2, 0x2

    goto :goto_9a

    :cond_d1
    return-object v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "DES"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_26

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1e

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    return-void

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DES key too long - should be 8 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to DES init - "

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
    .registers 11

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    if-eqz v1, :cond_2a

    add-int/lit8 v0, p2, 0x8

    array-length v2, p1

    if-gt v0, v2, :cond_22

    add-int/lit8 v0, p4, 0x8

    array-length v2, p3

    if-gt v0, v2, :cond_19

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->desFunc([I[BI[BI)V

    const/16 v0, 0x8

    return v0

    :cond_19
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DES engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 1

    return-void
.end method
