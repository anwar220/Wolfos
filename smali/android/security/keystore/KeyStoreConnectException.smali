# classes3.dex

.class public Landroid/security/keystore/KeyStoreConnectException;
.super Ljava/security/ProviderException;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Failed to communicate with keystore service"

    invoke-direct {p0, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    return-void
.end method
