# classes4.dex

.class Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoPreloadHolder"
.end annotation


# static fields
.field private static final blocklist:Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;


# direct methods
.method static bridge synthetic -$$Nest$sfgetblocklist()Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;
    .registers 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->blocklist:Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->blocklist:Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
