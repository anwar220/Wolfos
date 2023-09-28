# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;


# static fields
.field private static converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field protected f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    return-void
.end method

.method public constructor <init>(IIIILcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 13

    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v5, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 7

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)I

    move-result v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v2
.end method
