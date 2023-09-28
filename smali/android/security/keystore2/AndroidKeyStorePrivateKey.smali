# classes3.dex

.class public Landroid/security/keystore2/AndroidKeyStorePrivateKey;
.super Landroid/security/keystore2/AndroidKeyStoreKey;

# interfaces
.implements Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/security/keystore2/AndroidKeyStoreKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    return-void
.end method
