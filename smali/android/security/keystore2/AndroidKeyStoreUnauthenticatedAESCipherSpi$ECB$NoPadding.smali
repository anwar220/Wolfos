# classes3.dex

.class public Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB$NoPadding;
.super Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB;->finalize()V

    return-void
.end method

.method protected final getTransform()Ljava/lang/String;
    .registers 2

    const-string v0, "AES/ECB/NoPadding"

    return-object v0
.end method