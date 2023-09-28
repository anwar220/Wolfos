# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;
.super Ljava/lang/Object;


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P7:I = -0x1

.field private static final PExt:[I

.field private static final PExt15s1:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    return-void

    nop

    :array_14
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x1
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x1
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        -0x2
        0x1
        -0x2
        0x1
        -0x2
        0x1
        0x1
        -0x2
        0x2
        -0x2
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    if-nez v0, :cond_14

    const/4 v1, 0x7

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_14
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    :cond_17
    return-void
.end method

.method public static addExt([I[I[I)V
    .registers 7

    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    if-nez v1, :cond_1b

    const/16 v2, 0xf

    aget v2, p2, v2

    ushr-int/lit8 v2, v2, 0x1

    const v3, 0x7fffffff

    if-lt v2, v3, :cond_20

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1b
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    :cond_20
    return-void
.end method

.method public static addOne([I[I)V
    .registers 5

    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    if-nez v0, :cond_16

    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_16
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    :cond_19
    return-void
.end method

.method private static addPInvTo([I)V
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    long-to-int v7, v1

    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_2d
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_50

    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    long-to-int v8, v1

    aput v8, p0, v7

    shr-long/2addr v1, v0

    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    long-to-int v8, v1

    aput v8, p0, v7

    shr-long/2addr v1, v0

    :cond_50
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v8, v5

    add-long/2addr v1, v8

    long-to-int v8, v1

    aput v8, p0, v7

    shr-long v0, v1, v0

    const/4 v2, 0x7

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p0, v2

    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    :cond_15
    return-object v0
.end method

.method public static half([I[I)V
    .registers 5

    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-nez v1, :cond_d

    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_16

    :cond_d
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    invoke-static {v2, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    :goto_16
    return-void
.end method

.method public static inv([I[I)V
    .registers 3

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    return-void
.end method

.method public static isZero([I)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x8

    if-ge v1, v2, :cond_c

    aget v2, p0, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static multiply([I[I[I)V
    .registers 4

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .registers 7

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result v0

    const/16 v1, 0x10

    if-nez v0, :cond_1b

    const/16 v2, 0xf

    aget v2, p2, v2

    ushr-int/lit8 v2, v2, 0x1

    const v3, 0x7fffffff

    if-lt v2, v3, :cond_20

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1b
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    :cond_20
    return-void
.end method

.method public static negate([I[I)V
    .registers 3

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_11

    :cond_c
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    :goto_11
    return-void
.end method

.method public static random(Ljava/security/SecureRandom;[I)V
    .registers 5

    const/16 v0, 0x20

    new-array v0, v0, [B

    :goto_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_16

    return-void

    :cond_16
    goto :goto_4
.end method

.method public static randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3

    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->random(Ljava/security/SecureRandom;[I)V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    goto :goto_0
.end method

.method public static reduce([I[I)V
    .registers 52

    move-object/from16 v0, p1

    const/16 v1, 0x8

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v5, 0x9

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0xa

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/16 v9, 0xb

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/16 v11, 0xc

    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/16 v13, 0xd

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/16 v15, 0xe

    aget v15, p0, v15

    move-wide/from16 v16, v13

    int-to-long v13, v15

    and-long/2addr v13, v3

    const/16 v15, 0xf

    aget v15, p0, v15

    move-wide/from16 v18, v13

    int-to-long v13, v15

    and-long/2addr v13, v3

    const-wide/16 v20, 0x6

    const-wide/16 v22, 0x6

    sub-long v1, v1, v22

    add-long v24, v1, v5

    add-long v26, v5, v7

    add-long v28, v7, v9

    sub-long v28, v28, v13

    add-long v30, v9, v11

    add-long v32, v11, v16

    add-long v34, v16, v18

    add-long v36, v18, v13

    sub-long v38, v34, v24

    const-wide/16 v40, 0x0

    const/4 v15, 0x0

    move-wide/from16 v42, v5

    aget v5, p0, v15

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long v5, v5, v30

    sub-long v5, v5, v38

    add-long v5, v40, v5

    long-to-int v3, v5

    aput v3, v0, v15

    const/16 v3, 0x20

    shr-long v4, v5, v3

    const/4 v6, 0x1

    aget v15, p0, v6

    move-wide/from16 v44, v7

    int-to-long v6, v15

    const-wide v40, 0xffffffffL

    and-long v6, v6, v40

    add-long v6, v6, v26

    sub-long v6, v6, v32

    sub-long v6, v6, v36

    add-long/2addr v4, v6

    long-to-int v6, v4

    const/4 v7, 0x1

    aput v6, v0, v7

    shr-long/2addr v4, v3

    const/4 v6, 0x2

    aget v7, p0, v6

    move-wide/from16 v46, v9

    int-to-long v8, v7

    const-wide v40, 0xffffffffL

    and-long v7, v8, v40

    add-long v7, v7, v28

    sub-long v7, v7, v34

    add-long/2addr v4, v7

    long-to-int v7, v4

    aput v7, v0, v6

    shr-long/2addr v4, v3

    const/4 v6, 0x3

    aget v7, p0, v6

    int-to-long v7, v7

    const-wide v40, 0xffffffffL

    and-long v48, v7, v40

    const/4 v7, 0x1

    shl-long v9, v30, v7

    add-long v48, v48, v9

    add-long v48, v48, v38

    sub-long v48, v48, v36

    add-long v4, v4, v48

    long-to-int v7, v4

    aput v7, v0, v6

    shr-long/2addr v4, v3

    const/4 v6, 0x4

    aget v7, p0, v6

    int-to-long v9, v7

    const-wide v40, 0xffffffffL

    and-long v9, v9, v40

    const/4 v7, 0x1

    shl-long v48, v32, v7

    add-long v9, v9, v48

    add-long v9, v9, v18

    sub-long v9, v9, v26

    add-long/2addr v4, v9

    long-to-int v7, v4

    aput v7, v0, v6

    shr-long/2addr v4, v3

    const/4 v6, 0x5

    aget v7, p0, v6

    int-to-long v9, v7

    const-wide v40, 0xffffffffL

    and-long v9, v9, v40

    const/4 v7, 0x1

    shl-long v48, v34, v7

    add-long v9, v9, v48

    sub-long v9, v9, v28

    add-long/2addr v4, v9

    long-to-int v7, v4

    aput v7, v0, v6

    shr-long/2addr v4, v3

    const/4 v6, 0x6

    aget v7, p0, v6

    int-to-long v9, v7

    const-wide v40, 0xffffffffL

    and-long v9, v9, v40

    const/4 v7, 0x1

    shl-long v48, v36, v7

    add-long v9, v9, v48

    add-long v9, v9, v38

    add-long/2addr v4, v9

    long-to-int v7, v4

    aput v7, v0, v6

    shr-long/2addr v4, v3

    const/4 v6, 0x7

    aget v7, p0, v6

    int-to-long v9, v7

    const-wide v40, 0xffffffffL

    and-long v9, v9, v40

    const/4 v7, 0x1

    shl-long v7, v13, v7

    add-long/2addr v9, v7

    add-long/2addr v9, v1

    sub-long v9, v9, v28

    sub-long v9, v9, v32

    add-long/2addr v4, v9

    long-to-int v7, v4

    aput v7, v0, v6

    shr-long v3, v4, v3

    add-long v3, v3, v22

    long-to-int v5, v3

    invoke-static {v5, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    return-void
.end method

.method public static reduce32(I[I)V
    .registers 15

    const-wide/16 v0, 0x0

    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    if-eqz p0, :cond_6b

    int-to-long v5, p0

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    const/4 v9, 0x0

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v7

    add-long/2addr v10, v5

    add-long/2addr v0, v10

    long-to-int v10, v0

    aput v10, p1, v9

    const/16 v9, 0x20

    shr-long/2addr v0, v9

    cmp-long v10, v0, v3

    if-eqz v10, :cond_33

    const/4 v10, 0x1

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    long-to-int v11, v0

    aput v11, p1, v10

    shr-long/2addr v0, v9

    const/4 v10, 0x2

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    long-to-int v11, v0

    aput v11, p1, v10

    shr-long/2addr v0, v9

    :cond_33
    const/4 v10, 0x3

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    sub-long/2addr v11, v5

    add-long/2addr v0, v11

    long-to-int v11, v0

    aput v11, p1, v10

    shr-long/2addr v0, v9

    cmp-long v10, v0, v3

    if-eqz v10, :cond_56

    const/4 v10, 0x4

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    long-to-int v11, v0

    aput v11, p1, v10

    shr-long/2addr v0, v9

    const/4 v10, 0x5

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    long-to-int v11, v0

    aput v11, p1, v10

    shr-long/2addr v0, v9

    :cond_56
    const/4 v10, 0x6

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    sub-long/2addr v11, v5

    add-long/2addr v0, v11

    long-to-int v11, v0

    aput v11, p1, v10

    shr-long/2addr v0, v9

    aget v10, p1, v2

    int-to-long v10, v10

    and-long/2addr v7, v10

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    long-to-int v7, v0

    aput v7, p1, v2

    shr-long/2addr v0, v9

    :cond_6b
    cmp-long v3, v0, v3

    if-nez v3, :cond_7c

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7f

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_7f

    :cond_7c
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    :cond_7f
    return-void
.end method

.method public static square([I[I)V
    .registers 3

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    return-void
.end method

.method public static squareN([II[I)V
    .registers 4

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    goto :goto_a

    :cond_15
    return-void
.end method

.method private static subPInvFrom([I)V
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    long-to-int v7, v1

    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_2d
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_50

    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    long-to-int v8, v1

    aput v8, p0, v7

    shr-long/2addr v1, v0

    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    long-to-int v8, v1

    aput v8, p0, v7

    shr-long/2addr v1, v0

    :cond_50
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v8, v5

    add-long/2addr v1, v8

    long-to-int v8, v1

    aput v8, p0, v7

    shr-long v0, v1, v0

    const/4 v2, 0x7

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p0, v2

    return-void
.end method

.method public static subtract([I[I[I)V
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subPInvFrom([I)V

    :cond_9
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .registers 6

    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    if-eqz v1, :cond_d

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    :cond_d
    return-void
.end method

.method public static twice([I[I)V
    .registers 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    if-nez v0, :cond_17

    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_17
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    :cond_1a
    return-void
.end method
