# classes3.dex

.class public Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi$ECB$PKCS7Padding;
.super Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi$ECB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi$ECB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS7Padding"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi$ECB;-><init>(I)V

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

    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi$ECB;->finalize()V

    return-void
.end method

.method protected final getTransform()Ljava/lang/String;
    .registers 2

    const-string v0, "DESede/ECB/PKCS7Padding"

    return-object v0
.end method
