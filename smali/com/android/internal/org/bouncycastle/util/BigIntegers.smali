# classes4.dex

.class public final Lcom/android/internal/org/bouncycastle/util/BigIntegers;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_ITERATIONS:I = 0x3e8

.field private static final MAX_SMALL:I

.field public static final ONE:Ljava/math/BigInteger;

.field private static final SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

.field private static final THREE:Ljava/math/BigInteger;

.field public static final TWO:Ljava/math/BigInteger;

.field public static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->THREE:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2e7

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    sput v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->MAX_SMALL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asUnsignedByteArray(Ljava/math/BigInteger;[BII)V
    .registers 10

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    if-ne v1, p3, :cond_c

    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_c
    aget-byte v1, v0, v2

    const/4 v3, 0x1

    if-nez v1, :cond_15

    array-length v1, v0

    if-eq v1, v3, :cond_15

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    move v1, v3

    array-length v3, v0

    sub-int/2addr v3, v1

    if-gt v3, p3, :cond_28

    sub-int v4, p3, v3

    add-int v5, p2, v4

    invoke-static {p1, p2, v5, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    add-int v2, p2, v4

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "standard length exceeded for value"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static asUnsignedByteArray(ILjava/math/BigInteger;)[B
    .registers 7

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    if-ne v1, p0, :cond_8

    return-object v0

    :cond_8
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_12

    array-length v2, v0

    if-eq v2, v3, :cond_12

    move v1, v3

    :cond_12
    array-length v2, v0

    sub-int/2addr v2, v1

    if-gt v2, p0, :cond_1e

    new-array v3, p0, [B

    array-length v4, v3

    sub-int/2addr v4, v2

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_1e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "standard length exceeded for value"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static asUnsignedByteArray(Ljava/math/BigInteger;)[B
    .registers 6

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    if-nez v2, :cond_16

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    array-length v2, v0

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v4, v2

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_16
    return-object v0
.end method

.method private static createRandom(ILjava/security/SecureRandom;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1b

    add-int/lit8 v0, p0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    mul-int/lit8 v2, v0, 0x8

    sub-int/2addr v2, p0

    const/4 v3, 0x0

    aget-byte v4, v1, v3

    const/16 v5, 0xff

    ushr-int/2addr v5, v2

    int-to-byte v5, v5

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    return-object v1

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 5

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandom(ILjava/security/SecureRandom;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 7

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_11

    if-gtz v0, :cond_9

    return-object p0

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'min\' may not be greater than \'max\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2c

    sget-object v1, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_49

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-static {v2, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_46

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_46

    return-object v2

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_49
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public static createRandomPrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 9

    const/4 v0, 0x2

    if-lt p0, v0, :cond_54

    if-ne p0, v0, :cond_11

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    if-gez v0, :cond_e

    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    goto :goto_10

    :cond_e
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->THREE:Ljava/math/BigInteger;

    :goto_10
    return-object v0

    :cond_11
    invoke-static {p0, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandom(ILjava/security/SecureRandom;)[B

    move-result-object v0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v1, p0

    rsub-int/lit8 v2, v1, 0x7

    const/4 v3, 0x1

    shl-int v2, v3, v2

    int-to-byte v2, v2

    const/4 v4, 0x0

    aget-byte v5, v0, v4

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    array-length v4, v0

    sub-int/2addr v4, v3

    aget-byte v5, v0, v4

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v3, v4

    sget v4, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->MAX_SMALL:I

    if-le p0, v4, :cond_4d

    :goto_38
    sget-object v4, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    sget-object v4, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_38

    :cond_4d
    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object v3

    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength < 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromUnsignedByteArray([B)Ljava/math/BigInteger;
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static fromUnsignedByteArray([BII)Ljava/math/BigInteger;
    .registers 6

    move-object v0, p0

    if-nez p1, :cond_6

    array-length v1, p0

    if-eq p2, v1, :cond_c

    :cond_6
    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static getUnsignedByteLength(Ljava/math/BigInteger;)I
    .registers 2

    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static intValueExact(Ljava/math/BigInteger;)I
    .registers 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_d

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    :cond_d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of int range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longValueExact(Ljava/math/BigInteger;)J
    .registers 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_d

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of long range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1e

    :cond_1a
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_1e
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v1

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v2

    array-length v3, v1

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->modOddInverse([I[I[I)I

    move-result v5

    if-eqz v5, :cond_3a

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->toBigInteger(I[I)Ljava/math/BigInteger;

    move-result-object v5

    return-object v5

    :cond_3a
    new-instance v5, Ljava/lang/ArithmeticException;

    const-string v6, "BigInteger not invertible."

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_42
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger: modulus not positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'M\' must be odd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static modOddInverseVar(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    return-object v0

    :cond_19
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_25

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_29

    :cond_25
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_29
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    return-object v0

    :cond_30
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v1

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v2

    array-length v3, v1

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->modOddInverseVar([I[I[I)Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->toBigInteger(I[I)Ljava/math/BigInteger;

    move-result-object v5

    return-object v5

    :cond_4c
    new-instance v5, Ljava/lang/ArithmeticException;

    const-string v6, "BigInteger not invertible."

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_54
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger: modulus not positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'M\' must be odd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
