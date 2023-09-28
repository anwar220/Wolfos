# classes3.dex

.class public Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final mNamespace:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;->mNamespace:I

    return-void
.end method


# virtual methods
.method getNamespace()I
    .registers 2

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;->mNamespace:I

    return v0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
