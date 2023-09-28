# classes3.dex

.class public Landroid/security/keystore2/AndroidKeyStoreEdECPrivateKey;
.super Landroid/security/keystore2/AndroidKeyStorePrivateKey;

# interfaces
.implements Ljava/security/interfaces/EdECKey;


# direct methods
.method public constructor <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/NamedParameterSpec;
    .registers 2

    sget-object v0, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    return-object v0
.end method
