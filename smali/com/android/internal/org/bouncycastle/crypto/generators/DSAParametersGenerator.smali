# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private L:I

.field private N:I

.field private certainty:I

.field private digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field private iterations:I

.field private random:Ljava/security/SecureRandom;

.field private usageIndex:I

.field private use186_3:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    return-void
.end method

.method private static calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 9

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :goto_10
    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-static {v2, v1, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_22

    return-object v3

    :cond_22
    goto :goto_10
.end method

.method private static calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static calculateGenerator_FIPS186_3_Verifiable(Lcom/android/internal/org/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .registers 15

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "6767656E"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, p3

    array-length v3, v1

    add-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    array-length v4, p3

    const/4 v5, 0x0

    invoke-static {p3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p3

    array-length v6, v1

    invoke-static {v1, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v2

    add-int/lit8 v4, v4, -0x3

    int-to-byte v6, p4

    aput-byte v6, v2, v4

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    const/4 v6, 0x1

    :goto_30
    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_4f

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    invoke-static {p0, v2, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v7, v0, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v9, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-ltz v9, :cond_4c

    return-object v8

    :cond_4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :cond_4f
    const/4 v3, 0x0

    return-object v3
.end method

.method private generateParameters_FIPS186_2()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .registers 17

    move-object/from16 v0, p0

    const/16 v1, 0x14

    new-array v2, v1, [B

    new-array v3, v1, [B

    new-array v4, v1, [B

    new-array v1, v1, [B

    iget v5, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    add-int/lit8 v6, v5, -0x1

    div-int/lit16 v6, v6, 0xa0

    div-int/lit8 v5, v5, 0x8

    new-array v5, v5, [B

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SHA-1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d9

    :goto_24
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    invoke-static {v7, v2, v3, v8}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    array-length v7, v2

    invoke-static {v2, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-static {v7, v4, v4, v8}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    const/4 v7, 0x0

    :goto_3c
    array-length v9, v1

    if-eq v7, v9, :cond_4a

    aget-byte v9, v3, v7

    aget-byte v10, v4, v7

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    :cond_4a
    aget-byte v7, v1, v8

    or-int/lit8 v7, v7, -0x80

    int-to-byte v7, v7

    aput-byte v7, v1, v8

    const/16 v7, 0x13

    aget-byte v9, v1, v7

    const/4 v10, 0x1

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v7

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v10, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v9

    if-nez v9, :cond_66

    goto :goto_24

    :cond_66
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    const/4 v11, 0x0

    :goto_6e
    const/16 v12, 0x1000

    if-ge v11, v12, :cond_d7

    const/4 v12, 0x1

    :goto_73
    if-gt v12, v6, :cond_84

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v14, v5

    array-length v15, v3

    mul-int/2addr v15, v12

    sub-int/2addr v14, v15

    invoke-static {v13, v9, v5, v14}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_73

    :cond_84
    array-length v12, v5

    array-length v13, v3

    mul-int/2addr v13, v6

    sub-int/2addr v12, v13

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-static {v13, v9, v3, v8}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    array-length v13, v3

    sub-int/2addr v13, v12

    invoke-static {v3, v13, v5, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v13, v5, v8

    or-int/lit8 v13, v13, -0x80

    int-to-byte v13, v13

    aput-byte v13, v5, v8

    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v10, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v15, v8, :cond_bc

    goto :goto_d3

    :cond_bc
    invoke-direct {v0, v14}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v8

    if-eqz v8, :cond_d3

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v14, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v8

    new-instance v10, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v15, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v15, v2, v11}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v10, v14, v7, v8, v15}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v10

    :cond_d3
    :goto_d3
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x0

    goto :goto_6e

    :cond_d7
    goto/16 :goto_24

    :cond_d9
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private generateParameters_FIPS186_3()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .registers 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    iget v3, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    div-int/lit8 v4, v3, 0x8

    new-array v4, v4, [B

    iget v5, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    add-int/lit8 v6, v5, -0x1

    div-int/2addr v6, v2

    add-int/lit8 v7, v5, -0x1

    rem-int/2addr v7, v2

    div-int/lit8 v5, v5, 0x8

    new-array v5, v5, [B

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    new-array v8, v8, [B

    :goto_22
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v9, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v9, 0x0

    invoke-static {v1, v4, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    new-instance v10, Ljava/math/BigInteger;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    iget v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v13, v11

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v12

    iget v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v13, v11

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v13

    if-nez v13, :cond_50

    goto :goto_22

    :cond_50
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v13

    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    mul-int/lit8 v14, v14, 0x4

    const/4 v15, 0x0

    :goto_59
    if-ge v15, v14, :cond_102

    const/16 v16, 0x1

    move/from16 v11, v16

    :goto_5f
    if-gt v11, v6, :cond_73

    invoke-static {v13}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    array-length v9, v5

    move/from16 v17, v2

    array-length v2, v8

    mul-int/2addr v2, v11

    sub-int/2addr v9, v2

    invoke-static {v1, v13, v5, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v17

    const/4 v9, 0x0

    goto :goto_5f

    :cond_73
    move/from16 v17, v2

    array-length v2, v5

    array-length v9, v8

    mul-int/2addr v9, v6

    sub-int/2addr v2, v9

    invoke-static {v13}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    const/4 v9, 0x0

    invoke-static {v1, v13, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    array-length v11, v8

    sub-int/2addr v11, v2

    invoke-static {v8, v11, v5, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v11, v5, v9

    or-int/lit8 v11, v11, -0x80

    int-to-byte v11, v11

    aput-byte v11, v5, v9

    new-instance v2, Ljava/math/BigInteger;

    const/4 v11, 0x1

    invoke-direct {v2, v11, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v12, v11}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    move-object/from16 v18, v2

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    move/from16 v19, v3

    iget v3, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v2, v3, :cond_b5

    move-object/from16 v20, v1

    move-object/from16 v21, v5

    goto :goto_f4

    :cond_b5
    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_f0

    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    if-ltz v2, :cond_db

    invoke-static {v1, v11, v12, v4, v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Verifiable(Lcom/android/internal/org/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_d6

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-object/from16 v20, v1

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v21, v5

    iget v5, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-direct {v1, v4, v15, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    invoke-direct {v3, v11, v12, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v3

    :cond_d6
    move-object/from16 v20, v1

    move-object/from16 v21, v5

    goto :goto_df

    :cond_db
    move-object/from16 v20, v1

    move-object/from16 v21, v5

    :goto_df
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v11, v12, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v3, v4, v15}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v2, v11, v12, v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v2

    :cond_f0
    move-object/from16 v20, v1

    move-object/from16 v21, v5

    :goto_f4
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v1, v20

    move-object/from16 v5, v21

    const/4 v9, 0x0

    const/4 v11, 0x1

    goto/16 :goto_59

    :cond_102
    move-object/from16 v20, v1

    move/from16 v17, v2

    move/from16 v19, v3

    move-object/from16 v21, v5

    goto/16 :goto_22
.end method

.method private static getDefaultN(I)I
    .registers 2

    const/16 v0, 0x400

    if-le p0, v0, :cond_7

    const/16 v0, 0x100

    goto :goto_9

    :cond_7
    const/16 v0, 0xa0

    :goto_9
    return v0
.end method

.method private static getMinimumIterations(I)I
    .registers 3

    const/16 v0, 0x400

    if-gt p0, v0, :cond_7

    const/16 v0, 0x28

    goto :goto_e

    :cond_7
    add-int/lit8 v1, p0, -0x1

    div-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v1, 0x30

    :goto_e
    return v0
.end method

.method private static hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method private static inc([B)V
    .registers 3

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_14

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    if-eqz v1, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_14
    :goto_14
    return-void
.end method

.method private isProbablePrime(Ljava/math/BigInteger;)Z
    .registers 3

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public generateParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public init(IILjava/security/SecureRandom;)V
    .registers 6

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    return-void
.end method

.method public init(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V
    .registers 7

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getN()I

    move-result v1

    const/16 v2, 0x400

    if-lt v0, v2, :cond_80

    const/16 v3, 0xc00

    if-gt v0, v3, :cond_80

    rem-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_80

    if-ne v0, v2, :cond_23

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_1b

    goto :goto_23

    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be 160 for L = 1024"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_23
    :goto_23
    const/16 v2, 0x800

    const/16 v4, 0x100

    if-ne v0, v2, :cond_38

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_38

    if-ne v1, v4, :cond_30

    goto :goto_38

    :cond_30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be 224 or 256 for L = 2048"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_38
    :goto_38
    if-ne v0, v3, :cond_45

    if-ne v1, v4, :cond_3d

    goto :goto_45

    :cond_3d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be 256 for L = 3072"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_45
    :goto_45
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-lt v2, v1, :cond_78

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getCertainty()I

    move-result v2

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    iput-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getUsageIndex()I

    move-result v2

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    return-void

    :cond_78
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Digest output size too small for value of N"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
