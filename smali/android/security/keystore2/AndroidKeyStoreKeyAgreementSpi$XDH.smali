# classes3.dex

.class public Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi$XDH;
.super Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XDH"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;-><init>(I)V

    return-void
.end method
