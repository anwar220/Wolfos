# classes4.dex

.class public interface abstract Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidator;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addExcludedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
.end method

.method public abstract checkExcluded(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation
.end method

.method public abstract checkPermitted(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation
.end method

.method public abstract intersectEmptyPermittedSubtree(I)V
.end method

.method public abstract intersectPermittedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
.end method

.method public abstract intersectPermittedSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
.end method
