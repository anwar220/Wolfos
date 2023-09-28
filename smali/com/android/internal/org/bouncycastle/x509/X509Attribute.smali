# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/x509/X509Attribute;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;


# instance fields
.field attr:Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;


# direct methods
.method constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    return-void
.end method


# virtual methods
.method public getOID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_1c

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1c
    return-object v1
.end method

.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
