# classes3.dex

.class public abstract Landroid/security/identity/IdentityCredentialStore;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/IdentityCredentialStore$Ciphersuite;
    }
.end annotation


# static fields
.field public static final CIPHERSUITE_ECDHE_HKDF_ECDSA_WITH_AES_256_GCM_SHA256:I = 0x1


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDirectAccessInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;
    .registers 2

    invoke-static {p0}, Landroid/security/identity/CredstoreIdentityCredentialStore;->getDirectAccessInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;
    .registers 2

    invoke-static {p0}, Landroid/security/identity/CredstoreIdentityCredentialStore;->getInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract createCredential(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/WritableIdentityCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/AlreadyPersonalizedException;,
            Landroid/security/identity/DocTypeNotSupportedException;
        }
    .end annotation
.end method

.method public createPresentationSession(I)Landroid/security/identity/PresentationSession;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract deleteCredentialByName(Ljava/lang/String;)[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/IdentityCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation
.end method

.method public abstract getSupportedDocTypes()[Ljava/lang/String;
.end method
