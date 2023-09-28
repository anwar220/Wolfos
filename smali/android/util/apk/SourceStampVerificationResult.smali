# classes3.dex

.class public final Landroid/util/apk/SourceStampVerificationResult;
.super Ljava/lang/Object;


# instance fields
.field private final mCertificate:Ljava/security/cert/Certificate;

.field private final mCertificateLineage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPresent:Z

.field private final mVerified:Z


# direct methods
.method private constructor <init>(ZZLjava/security/cert/Certificate;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/util/apk/SourceStampVerificationResult;->mPresent:Z

    iput-boolean p2, p0, Landroid/util/apk/SourceStampVerificationResult;->mVerified:Z

    iput-object p3, p0, Landroid/util/apk/SourceStampVerificationResult;->mCertificate:Ljava/security/cert/Certificate;

    iput-object p4, p0, Landroid/util/apk/SourceStampVerificationResult;->mCertificateLineage:Ljava/util/List;

    return-void
.end method

.method public static notPresent()Landroid/util/apk/SourceStampVerificationResult;
    .registers 4

    new-instance v0, Landroid/util/apk/SourceStampVerificationResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/util/apk/SourceStampVerificationResult;-><init>(ZZLjava/security/cert/Certificate;Ljava/util/List;)V

    return-object v0
.end method

.method public static notVerified()Landroid/util/apk/SourceStampVerificationResult;
    .registers 5

    new-instance v0, Landroid/util/apk/SourceStampVerificationResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/util/apk/SourceStampVerificationResult;-><init>(ZZLjava/security/cert/Certificate;Ljava/util/List;)V

    return-object v0
.end method

.method public static verified(Ljava/security/cert/Certificate;Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Landroid/util/apk/SourceStampVerificationResult;"
        }
    .end annotation

    new-instance v0, Landroid/util/apk/SourceStampVerificationResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/util/apk/SourceStampVerificationResult;-><init>(ZZLjava/security/cert/Certificate;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/Certificate;
    .registers 2

    iget-object v0, p0, Landroid/util/apk/SourceStampVerificationResult;->mCertificate:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getCertificateLineage()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/apk/SourceStampVerificationResult;->mCertificateLineage:Ljava/util/List;

    return-object v0
.end method

.method public isPresent()Z
    .registers 2

    iget-boolean v0, p0, Landroid/util/apk/SourceStampVerificationResult;->mPresent:Z

    return v0
.end method

.method public isVerified()Z
    .registers 2

    iget-boolean v0, p0, Landroid/util/apk/SourceStampVerificationResult;->mVerified:Z

    return v0
.end method
