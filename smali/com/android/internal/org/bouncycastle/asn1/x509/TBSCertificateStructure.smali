# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

.field issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field issuerUniqueId:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field subjectUniqueId:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_27

    :cond_1d
    const/4 v0, -0x1

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    :goto_27
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    add-int/lit8 v4, v0, 0x5

    invoke-virtual {p1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    add-int/lit8 v4, v0, 0x6

    invoke-virtual {p1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    add-int/lit8 v5, v0, 0x6

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    :goto_87
    if-lez v4, :cond_b4

    add-int/lit8 v3, v0, 0x6

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    packed-switch v5, :pswitch_data_b6

    goto :goto_b1

    :pswitch_9c  #0x3
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    goto :goto_b1

    :pswitch_a3  #0x2
    invoke-static {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectUniqueId:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    goto :goto_b1

    :pswitch_aa  #0x1
    invoke-static {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuerUniqueId:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    nop

    :goto_b1
    add-int/lit8 v4, v4, -0x1

    goto :goto_87

    :cond_b4
    return-void

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_aa  #00000001
        :pswitch_a3  #00000002
        :pswitch_9c  #00000003
    .end packed-switch
.end method

.method public static getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .registers 3

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    return-object v0

    :cond_8
    if-eqz p0, :cond_14

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getIssuerUniqueId()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuerUniqueId:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getSubjectUniqueId()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectUniqueId:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getVersionNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
