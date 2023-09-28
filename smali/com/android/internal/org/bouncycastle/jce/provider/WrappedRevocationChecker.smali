# classes4.dex

.class Lcom/android/internal/org/bouncycastle/jce/provider/WrappedRevocationChecker;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;


# instance fields
.field private final checker:Ljava/security/cert/PKIXCertPathChecker;


# direct methods
.method public constructor <init>(Ljava/security/cert/PKIXCertPathChecker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/WrappedRevocationChecker;->checker:Ljava/security/cert/PKIXCertPathChecker;

    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/WrappedRevocationChecker;->checker:Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v0, p1}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;)V

    return-void
.end method

.method public initialize(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/WrappedRevocationChecker;->checker:Ljava/security/cert/PKIXCertPathChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method
