# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;
.super Ljava/lang/Object;


# instance fields
.field endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field version:Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->version:Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    return-void
.end method


# virtual methods
.method public generateTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_5d

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    return-object v1

    :cond_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not all mandatory fields set in V1 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;)V
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-void
.end method

.method public setEndDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-void
.end method

.method public setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setSerialNumber(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public setSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public setStartDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;)V
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-void
.end method

.method public setStartDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-void
.end method

.method public setSubject(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setSubject(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-void
.end method
