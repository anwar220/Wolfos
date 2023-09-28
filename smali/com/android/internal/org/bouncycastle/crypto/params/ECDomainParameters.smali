# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;


# instance fields
.field private final G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field private final curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field private final h:Ljava/math/BigInteger;

.field private hInv:Ljava/math/BigInteger;

.field private final n:Ljava/math/BigInteger;

.field private final seed:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .registers 10

    sget-object v4, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->ONE:Ljava/math/BigInteger;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->hInv:Ljava/math/BigInteger;

    if-eqz p1, :cond_26

    if-eqz p3, :cond_1d

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->validatePublicPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    invoke-static {p5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    return-void

    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "n"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "curve"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static validatePublicPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    if-eqz p1, :cond_27

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-eqz v0, :cond_17

    return-object p1

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Point not on curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Point at infinity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Point cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    return v0
.end method

.method public getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public declared-synchronized getHInv()Ljava/math/BigInteger;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->hInv:Ljava/math/BigInteger;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->modOddInverseVar(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->hInv:Ljava/math/BigInteger;

    :cond_f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->hInv:Ljava/math/BigInteger;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getN()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSeed()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    const/4 v0, 0x4

    mul-int/lit16 v0, v0, 0x101

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x101

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x101

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public validatePrivateScalar(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4

    if-eqz p1, :cond_1d

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_15

    return-object p1

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scalar is not in the interval [1, n - 1]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Scalar cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validatePublicPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->validatePublicPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
