# classes4.dex

.class Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;
.super Ljava/security/cert/CertificateEncodingException;


# instance fields
.field cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method