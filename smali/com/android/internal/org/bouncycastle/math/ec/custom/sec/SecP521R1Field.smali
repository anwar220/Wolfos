# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;
.super Ljava/lang/Object;


# static fields
.field static final P:[I

.field private static final P16:I = 0x1ff


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    return-void

    :array_a
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1ff
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .registers 7

    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    aget v2, p0, v0

    add-int/2addr v1, v2

    aget v2, p1, v0

    add-int/2addr v1, v2

    const/16 v2, 0x1ff

    if-gt v1, v2, :cond_1a

    if-ne v1, v2, :cond_20

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p2, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_1a
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v3

    add-int/2addr v1, v3

    and-int/2addr v1, v2

    :cond_20
    aput v1, p2, v0

    return-void
.end method

.method public static addOne([I[I)V
    .registers 6

    const/16 v0, 0x10

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    aget v2, p0, v0

    add-int/2addr v1, v2

    const/16 v2, 0x1ff

    if-gt v1, v2, :cond_17

    if-ne v1, v2, :cond_1d

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p1, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_17
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v3

    add-int/2addr v1, v3

    and-int/2addr v1, v2

    :cond_1d
    aput v1, p1, v0

    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4

    const/16 v0, 0x209

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    const/16 v2, 0x11

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->zero(I[I)V

    :cond_13
    return-object v0
.end method

.method public static half([I[I)V
    .registers 7

    const/16 v0, 0x10

    aget v1, p0, v0

    invoke-static {v0, p0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    move-result v2

    ushr-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v2, 0x17

    or-int/2addr v3, v4

    aput v3, p1, v0

    return-void
.end method

.method protected static implMultiply([I[I[I)V
    .registers 12

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat512;->mul([I[I[I)V

    const/16 v0, 0x10

    aget v8, p0, v0

    aget v0, p1, v0

    const/16 v1, 0x10

    const/16 v7, 0x10

    move v2, v8

    move-object v3, p1

    move v4, v0

    move-object v5, p0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mul31BothAdd(II[II[I[II)I

    move-result v1

    mul-int v2, v8, v0

    add-int/2addr v1, v2

    const/16 v2, 0x20

    aput v1, p2, v2

    return-void
.end method

.method protected static implSquare([I[I)V
    .registers 9

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat512;->square([I[I)V

    const/16 v0, 0x10

    aget v0, p0, v0

    shl-int/lit8 v2, v0, 0x1

    const/16 v1, 0x10

    const/4 v4, 0x0

    const/16 v6, 0x10

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v1

    mul-int v2, v0, v0

    add-int/2addr v1, v2

    const/16 v2, 0x20

    aput v1, p1, v2

    return-void
.end method

.method public static inv([I[I)V
    .registers 3

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    return-void
.end method

.method public static isZero([I)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x11

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

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implMultiply([I[I[I)V

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    return-void
.end method

.method public static negate([I[I)V
    .registers 4

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->isZero([I)I

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v1, v0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    goto :goto_13

    :cond_e
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v1, v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    :goto_13
    return-void
.end method

.method public static random(Ljava/security/SecureRandom;[I)V
    .registers 6

    const/16 v0, 0x44

    new-array v0, v0, [B

    :goto_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    const/16 v1, 0x10

    aget v3, p1, v1

    and-int/lit16 v3, v3, 0x1ff

    aput v3, p1, v1

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_1e

    return-void

    :cond_1e
    goto :goto_4
.end method

.method public static randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3

    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->random(Ljava/security/SecureRandom;[I)V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    goto :goto_0
.end method

.method public static reduce([I[I)V
    .registers 10

    const/16 v0, 0x20

    aget v0, p0, v0

    const/16 v1, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x9

    const/4 v7, 0x0

    move-object v2, p0

    move v5, v0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBits(I[IIII[II)I

    move-result v1

    ushr-int/lit8 v1, v1, 0x17

    ushr-int/lit8 v2, v0, 0x9

    add-int/2addr v1, v2

    const/16 v2, 0x10

    invoke-static {v2, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0x1ff

    if-gt v1, v3, :cond_2c

    if-ne v1, v3, :cond_32

    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v2, p1, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_32

    :cond_2c
    invoke-static {v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v4

    add-int/2addr v1, v4

    and-int/2addr v1, v3

    :cond_32
    aput v1, p1, v2

    return-void
.end method

.method public static reduce23([I)V
    .registers 6

    const/16 v0, 0x10

    aget v1, p0, v0

    ushr-int/lit8 v2, v1, 0x9

    invoke-static {v0, v2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result v2

    and-int/lit16 v3, v1, 0x1ff

    add-int/2addr v2, v3

    const/16 v3, 0x1ff

    if-gt v2, v3, :cond_1b

    if-ne v2, v3, :cond_21

    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p0, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_1b
    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v4

    add-int/2addr v2, v4

    and-int/2addr v2, v3

    :cond_21
    aput v2, p0, v0

    return-void
.end method

.method public static square([I[I)V
    .registers 3

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    return-void
.end method

.method public static squareN([II[I)V
    .registers 4

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    :goto_c
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_17

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    goto :goto_c

    :cond_17
    return-void
.end method

.method public static subtract([I[I[I)V
    .registers 6

    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    aget v2, p0, v0

    add-int/2addr v1, v2

    aget v2, p1, v0

    sub-int/2addr v1, v2

    if-gez v1, :cond_15

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->dec(I[I)I

    move-result v2

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0x1ff

    :cond_15
    aput v1, p2, v0

    return-void
.end method

.method public static twice([I[I)V
    .registers 6

    const/16 v0, 0x10

    aget v1, p0, v0

    shl-int/lit8 v2, v1, 0x17

    invoke-static {v0, p0, v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v2

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v2, v3

    and-int/lit16 v3, v2, 0x1ff

    aput v3, p1, v0

    return-void
.end method
