# classes4.dex

.class Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;


# instance fields
.field protected final minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

.field protected final subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;


# direct methods
.method constructor <init>(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;Lcom/android/internal/org/bouncycastle/math/field/Polynomial;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public getCharacteristic()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDegree()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result v0

    return v0
.end method

.method public getDimension()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getMinimalPolynomial()Lcom/android/internal/org/bouncycastle/math/field/Polynomial;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    return-object v0
.end method

.method public getSubfield()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
