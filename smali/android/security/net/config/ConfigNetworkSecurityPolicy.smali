# classes3.dex

.class public Landroid/security/net/config/ConfigNetworkSecurityPolicy;
.super Llibcore/net/NetworkSecurityPolicy;


# instance fields
.field private final mConfig:Landroid/security/net/config/ApplicationConfig;


# direct methods
.method public constructor <init>(Landroid/security/net/config/ApplicationConfig;)V
    .registers 2

    invoke-direct {p0}, Llibcore/net/NetworkSecurityPolicy;-><init>()V

    iput-object p1, p0, Landroid/security/net/config/ConfigNetworkSecurityPolicy;->mConfig:Landroid/security/net/config/ApplicationConfig;

    return-void
.end method


# virtual methods
.method public isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isCleartextTrafficPermitted()Z
    .registers 2

    iget-object v0, p0, Landroid/security/net/config/ConfigNetworkSecurityPolicy;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Landroid/security/net/config/ConfigNetworkSecurityPolicy;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0, p1}, Landroid/security/net/config/ApplicationConfig;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
