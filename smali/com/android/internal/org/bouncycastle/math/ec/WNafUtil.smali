# classes4.dex

.class public abstract Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_WINDOW_SIZE_CUTOFFS:[I

.field private static final EMPTY_BYTES:[B

.field private static final EMPTY_INTS:[I

.field private static final EMPTY_POINTS:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field private static final MAX_WIDTH:I = 0x10

.field public static final PRECOMP_NAME:Ljava/lang/String; = "bc_wnaf"


# direct methods
.method static bridge synthetic -$$Nest$sfgetEMPTY_POINTS()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smresizeTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->resizeTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    new-array v1, v0, [I

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-void

    :array_16
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_14
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    :goto_18
    const/16 v3, 0x10

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$1;

    invoke-direct {v4, v3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$1;-><init>(I)V

    const-string v5, "bc_wnaf"

    invoke-virtual {v0, p0, v5, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    return-void
.end method

.method public static generateCompactNaf(Ljava/math/BigInteger;)[I
    .registers 13

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_5c

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    return-object v0

    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    shr-int/lit8 v3, v2, 0x1

    new-array v3, v3, [I

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_2b
    if-ge v8, v5, :cond_4d

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-nez v9, :cond_36

    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    :cond_36
    invoke-virtual {p0, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-eqz v9, :cond_3e

    const/4 v9, -0x1

    goto :goto_3f

    :cond_3e
    move v9, v0

    :goto_3f
    add-int/lit8 v10, v6, 0x1

    shl-int/lit8 v11, v9, 0x10

    or-int/2addr v11, v7

    aput v11, v3, v6

    const/4 v6, 0x1

    add-int/lit8 v8, v8, 0x1

    move v7, v6

    move v6, v10

    :goto_4b
    add-int/2addr v8, v0

    goto :goto_2b

    :cond_4d
    add-int/lit8 v0, v6, 0x1

    const/high16 v8, 0x10000

    or-int/2addr v8, v7

    aput v8, v3, v6

    array-length v6, v3

    if-le v6, v0, :cond_5b

    invoke-static {v3, v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v3

    :cond_5b
    return-object v3

    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'k\' must have bitlength < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateCompactWindowNaf(ILjava/math/BigInteger;)[I
    .registers 14

    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v0

    return-object v0

    :cond_8
    if-lt p0, v0, :cond_78

    const/16 v0, 0x10

    if-gt p0, v0, :cond_78

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    ushr-int/lit8 v0, v1, 0x10

    if-nez v0, :cond_70

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    return-object v0

    :cond_1f
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/2addr v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    shl-int v2, v1, p0

    add-int/lit8 v3, v2, -0x1

    ushr-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_31
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-gt v7, v8, :cond_68

    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-ne v8, v5, :cond_40

    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    :cond_40
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    and-int/2addr v8, v3

    if-eqz v5, :cond_4d

    add-int/lit8 v8, v8, 0x1

    :cond_4d
    and-int v9, v8, v4

    if-eqz v9, :cond_53

    move v9, v1

    goto :goto_54

    :cond_53
    const/4 v9, 0x0

    :goto_54
    move v5, v9

    if-eqz v5, :cond_58

    sub-int/2addr v8, v2

    :cond_58
    if-lez v6, :cond_5d

    add-int/lit8 v9, v7, -0x1

    goto :goto_5e

    :cond_5d
    move v9, v7

    :goto_5e
    add-int/lit8 v10, v6, 0x1

    shl-int/lit8 v11, v8, 0x10

    or-int/2addr v11, v9

    aput v11, v0, v6

    move v7, p0

    move v6, v10

    goto :goto_31

    :cond_68
    array-length v1, v0

    if-le v1, v6, :cond_6f

    invoke-static {v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v0

    :cond_6f
    return-object v0

    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'k\' must have bitlength < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'width\' must be in the range [2, 16]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 17

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    move-object v2, p0

    move-object/from16 v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_17
    or-int v8, v5, v6

    if-nez v8, :cond_30

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-gt v8, v7, :cond_30

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-le v8, v7, :cond_28

    goto :goto_30

    :cond_28
    array-length v8, v1

    if-le v8, v4, :cond_2f

    invoke-static {v1, v4}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v1

    :cond_2f
    return-object v1

    :cond_30
    :goto_30
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    ushr-int/2addr v8, v7

    add-int/2addr v8, v5

    and-int/lit8 v8, v8, 0x7

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    ushr-int/2addr v9, v7

    add-int/2addr v9, v6

    and-int/lit8 v9, v9, 0x7

    and-int/lit8 v10, v8, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eqz v10, :cond_52

    and-int/lit8 v13, v8, 0x2

    sub-int/2addr v10, v13

    add-int v13, v8, v10

    if-ne v13, v11, :cond_52

    and-int/lit8 v13, v9, 0x3

    if-ne v13, v12, :cond_52

    neg-int v10, v10

    :cond_52
    and-int/lit8 v13, v9, 0x1

    if-eqz v13, :cond_62

    and-int/lit8 v14, v9, 0x2

    sub-int/2addr v13, v14

    add-int v14, v9, v13

    if-ne v14, v11, :cond_62

    and-int/lit8 v11, v8, 0x3

    if-ne v11, v12, :cond_62

    neg-int v13, v13

    :cond_62
    shl-int/lit8 v11, v5, 0x1

    add-int/lit8 v12, v10, 0x1

    if-ne v11, v12, :cond_6a

    xor-int/lit8 v5, v5, 0x1

    :cond_6a
    shl-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v13, 0x1

    if-ne v11, v12, :cond_72

    xor-int/lit8 v6, v6, 0x1

    :cond_72
    add-int/lit8 v7, v7, 0x1

    const/16 v11, 0x1e

    if-ne v7, v11, :cond_81

    const/4 v7, 0x0

    invoke-virtual {v2, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    :cond_81
    add-int/lit8 v11, v4, 0x1

    shl-int/lit8 v12, v10, 0x4

    and-int/lit8 v14, v13, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v1, v4

    move v4, v11

    goto :goto_17
.end method

.method public static generateNaf(Ljava/math/BigInteger;)[B
    .registers 9

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    return-object v0

    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sub-int/2addr v2, v0

    new-array v3, v2, [B

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x1

    :goto_1e
    if-ge v5, v2, :cond_38

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_36

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_30

    const/4 v7, -0x1

    goto :goto_31

    :cond_30
    move v7, v0

    :goto_31
    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    :cond_36
    add-int/2addr v5, v0

    goto :goto_1e

    :cond_38
    add-int/lit8 v5, v2, -0x1

    aput-byte v0, v3, v5

    return-object v3
.end method

.method public static generateWindowNaf(ILjava/math/BigInteger;)[B
    .registers 13

    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->generateNaf(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0

    :cond_8
    if-lt p0, v0, :cond_66

    const/16 v0, 0x8

    if-gt p0, v0, :cond_66

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    return-object v0

    :cond_17
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    shl-int v2, v1, p0

    add-int/lit8 v3, v2, -0x1

    ushr-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_28
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-gt v7, v8, :cond_5e

    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-ne v8, v5, :cond_37

    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_37
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    and-int/2addr v8, v3

    if-eqz v5, :cond_44

    add-int/lit8 v8, v8, 0x1

    :cond_44
    and-int v9, v8, v4

    if-eqz v9, :cond_4a

    move v9, v1

    goto :goto_4b

    :cond_4a
    const/4 v9, 0x0

    :goto_4b
    move v5, v9

    if-eqz v5, :cond_4f

    sub-int/2addr v8, v2

    :cond_4f
    if-lez v6, :cond_54

    add-int/lit8 v9, v7, -0x1

    goto :goto_55

    :cond_54
    move v9, v7

    :goto_55
    add-int/2addr v6, v9

    add-int/lit8 v9, v6, 0x1

    int-to-byte v10, v8

    aput-byte v10, v0, v6

    move v7, p0

    move v6, v9

    goto :goto_28

    :cond_5e
    array-length v1, v0

    if-le v1, v6, :cond_65

    invoke-static {v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v0

    :cond_65
    return-object v0

    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'width\' must be in the range [2, 8]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNafWeight(Ljava/math/BigInteger;)I
    .registers 4

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitCount()I

    move-result v2

    return v2
.end method

.method public static getWNafPreCompInfo(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    const-string v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getWNafPreCompInfo(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static getWindowSize(I)I
    .registers 3

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[II)I

    move-result v0

    return v0
.end method

.method public static getWindowSize(II)I
    .registers 3

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[II)I

    move-result v0

    return v0
.end method

.method public static getWindowSize(I[I)I
    .registers 3

    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[II)I

    move-result v0

    return v0
.end method

.method public static getWindowSize(I[II)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_c

    aget v1, p1, v0

    if-ge p0, v1, :cond_9

    goto :goto_c

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    :goto_c
    add-int/lit8 v1, v0, 0x2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;

    invoke-direct {v1, p1, p2, p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;-><init>(IZLcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)V

    const-string v2, "bc_wnaf"

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    return-object v1
.end method

.method public static precomputeWithPointMap(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;Z)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 7

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;ZLcom/android/internal/org/bouncycastle/math/ec/ECPointMap;)V

    const-string v2, "bc_wnaf"

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    return-object v1
.end method

.method private static resizeTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    new-array v0, p1, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static trim([BI)[B
    .registers 5

    new-array v0, p1, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static trim([II)[I
    .registers 5

    new-array v0, p1, [I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
