# classes3.dex

.class public Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$RSA;
.super Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;-><init>(I)V

    return-void
.end method