# classes4.dex

.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;


# instance fields
.field private final encoding:[B


# direct methods
.method constructor <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ[B)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ)V

    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->encoding:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->encoding:[B

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/security/cert/CRLException;

    invoke-direct {v0}, Ljava/security/cert/CRLException;-><init>()V

    throw v0
.end method
