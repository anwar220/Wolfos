# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
.super Ljava/lang/Object;


# instance fields
.field validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    return-void
.end method


# virtual methods
.method public addExcludedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addExcludedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V

    return-void
.end method

.method public checkExcluded(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkExcludedDN(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    :try_end_9
    .catch Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkPermitted(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkPermittedDN(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    :try_end_9
    .catch Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCode()I

    move-result v0

    return v0
.end method

.method public intersectEmptyPermittedSubtree(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectEmptyPermittedSubtree(I)V

    return-void
.end method

.method public intersectPermittedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectPermittedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V

    return-void
.end method

.method public intersectPermittedSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
