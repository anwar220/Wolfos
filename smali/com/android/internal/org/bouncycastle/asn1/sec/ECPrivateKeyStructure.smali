# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;


# instance fields
.field private seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v3, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 9

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v3, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v2, 0x1

    if-eqz p3, :cond_2b

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, p3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2b
    if-eqz p2, :cond_35

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_35
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method private getObjectInTag(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_28

    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-ne v3, p1, :cond_28

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    :cond_28
    goto :goto_6

    :cond_29
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getKey()Ljava/math/BigInteger;
    .registers 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v2
.end method

.method public getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getObjectInTag(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getObjectInTag(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
