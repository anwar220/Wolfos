# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;
.super Ljava/lang/Object;


# static fields
.field static final P:[I

.field private static final P5:I = -0x1

.field private static final PExt:[I

.field private static final PExt11:I = -0x1

.field private static final PExtInv:[I

.field private static final PInv33:I = 0x11c9


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExt:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    return-void

    nop

    :array_1c
    .array-data 4
        -0x11c9
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2c
    .array-data 4
        0x13c4fd1
        0x2392
        0x1
        0x0
        0x0
        0x0
        -0x2392
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_48
    .array-data 4
        -0x13c4fd1
        -0x2393
        -0x2
        -0x1
        -0x1
        -0x1
        0x2391
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result v0

    if-nez v0, :cond_14

    const/4 v1, 0x5

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_14
    const/4 v1, 0x6

    const/16 v2, 0x11c9

    invoke-static {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    :cond_1a
    return-void
.end method

.method public static addExt([I[I[I)V
    .registers 7

    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    if-nez v1, :cond_17

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_24

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_17
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v3

    if-eqz v3, :cond_24

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_24
    return-void
.end method

.method public static addOne([I[I)V
    .registers 6

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    if-nez v1, :cond_15

    const/4 v2, 0x5

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_15
    const/16 v2, 0x11c9

    invoke-static {v0, v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    :cond_1a
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    const/4 v1, 0x5

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->subFrom([I[I)I

    :cond_15
    return-object v0
.end method

.method public static half([I[I)V
    .registers 5

    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    if-nez v1, :cond_c

    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_15

    :cond_c
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result v0

    invoke-static {v2, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    :goto_15
    return-void
.end method

.method public static inv([I[I)V
    .registers 3

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    return-void
.end method

.method public static isZero([I)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x6

    if-ge v1, v2, :cond_b

    aget v2, p0, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static multiply([I[I[I)V
    .registers 4

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .registers 7

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mulAddTo([I[I[I)I

    move-result v0

    const/16 v1, 0xc

    if-nez v0, :cond_17

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_24

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_17
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v3

    if-eqz v3, :cond_24

    array-length v2, v2

    invoke-static {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_24
    return-void
.end method

.method public static negate([I[I)V
    .registers 3

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    goto :goto_11

    :cond_c
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    :goto_11
    return-void
.end method

.method public static random(Ljava/security/SecureRandom;[I)V
    .registers 5

    const/16 v0, 0x18

    new-array v0, v0, [B

    :goto_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_15

    return-void

    :cond_15
    goto :goto_4
.end method

.method public static randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3

    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->random(Ljava/security/SecureRandom;[I)V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    goto :goto_0
.end method

.method public static reduce([I[I)V
    .registers 9

    const/16 v0, 0x11c9

    const/4 v2, 0x6

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul33Add(I[II[II[II)J

    move-result-wide v0

    const/16 v2, 0x11c9

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, p1, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul33DWordAdd(IJ[II)I

    move-result v3

    if-nez v3, :cond_23

    const/4 v4, 0x5

    aget v4, p1, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_27

    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p1, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_23
    const/4 v4, 0x6

    invoke-static {v4, v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    :cond_27
    return-void
.end method

.method public static reduce32(I[I)V
    .registers 5

    const/16 v0, 0x11c9

    if-eqz p0, :cond_b

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul33WordAdd(II[II)I

    move-result v1

    if-nez v1, :cond_19

    :cond_b
    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_19
    const/4 v1, 0x6

    invoke-static {v1, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    :cond_1d
    return-void
.end method

.method public static square([I[I)V
    .registers 3

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    return-void
.end method

.method public static squareN([II[I)V
    .registers 4

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    goto :goto_a

    :cond_15
    return-void
.end method

.method public static subtract([I[I[I)V
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x6

    const/16 v2, 0x11c9

    invoke-static {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub33From(II[I)I

    :cond_c
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .registers 7

    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    if-eqz v1, :cond_15

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v3

    if-eqz v3, :cond_15

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    :cond_15
    return-void
.end method

.method public static twice([I[I)V
    .registers 6

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v1

    if-nez v1, :cond_16

    const/4 v2, 0x5

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_16
    const/16 v2, 0x11c9

    invoke-static {v0, v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    :cond_1b
    return-void
.end method