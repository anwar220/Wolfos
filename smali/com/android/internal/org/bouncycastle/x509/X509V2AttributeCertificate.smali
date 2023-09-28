# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;


# instance fields
.field private cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

.field private notAfter:Ljava/util/Date;

.field private notBefore:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    :try_start_5
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotAfterTime()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->notAfter:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotBeforeTime()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->notBefore:Ljava/util/Date;
    :try_end_29
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_29} :catch_2b

    nop

    return-void

    :catch_2b
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid data structure in certificate!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getObject(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .registers 8

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    if-eqz v0, :cond_34

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    if-ne v5, p1, :cond_32

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_32
    goto :goto_15

    :cond_33
    return-object v1

    :cond_34
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getObject(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception decoding certificate structure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2c
    move-exception v0

    throw v0
.end method


# virtual methods
.method public checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    :try_start_d
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_1a

    return v1

    :catch_1a
    move-exception v2

    return v1
.end method

.method public getAttributes()[Lcom/android/internal/org/bouncycastle/x509/X509Attribute;
    .registers 6

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/x509/X509Attribute;

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_25

    new-instance v3, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_25
    return-object v1
.end method

.method public getAttributes(Ljava/lang/String;)[Lcom/android/internal/org/bouncycastle/x509/X509Attribute;
    .registers 7

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_2f

    new-instance v3, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;->getOID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_2f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_37

    const/4 v2, 0x0

    return-object v2

    :cond_37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/org/bouncycastle/x509/X509Attribute;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/org/bouncycastle/x509/X509Attribute;

    return-object v2
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 8

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    if-eqz v0, :cond_40

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    if-eqz v1, :cond_40

    :try_start_17
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_22

    return-object v2

    :catch_22
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_40
    const/4 v1, 0x0

    return-object v1
.end method

.method public getHolder()Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getHolder()Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public getIssuer()Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 8

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuerUniqueID()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [Z

    const/4 v3, 0x0

    :goto_1b
    array-length v4, v2

    if-eq v3, v4, :cond_32

    div-int/lit8 v4, v3, 0x8

    aget-byte v4, v1, v4

    const/16 v5, 0x80

    rem-int/lit8 v6, v3, 0x8

    ushr-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    :goto_2d
    aput-boolean v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_32
    return-object v2

    :cond_33
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->notAfter:Ljava/util/Date;

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->notBefore:Ljava/util/Date;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureValue()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public hashCode()I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    :try_start_2c
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_39} :catch_4d

    nop

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_45

    return-void

    :cond_45
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Public key presented not for certificate signature"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_4d
    move-exception v1

    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Exception encoding certificate info object"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_56
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Signature algorithm in certificate info not same as outer certificate"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
