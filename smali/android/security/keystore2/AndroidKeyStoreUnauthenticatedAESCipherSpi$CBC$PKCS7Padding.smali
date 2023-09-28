# classes3.dex

.class public Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC$PKCS7Padding;
.super Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS7Padding"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC;-><init>(I)V

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

    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC;->finalize()V

    return-void
.end method

.method protected final getTransform()Ljava/lang/String;
    .registers 2

    const-string v0, "AES/CBC/PKCS7Padding"

    return-object v0
.end method
