# classes3.dex

.class public interface abstract Landroid/security/identity/ICredentialStoreFactory;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/ICredentialStoreFactory$Stub;,
        Landroid/security/identity/ICredentialStoreFactory$Default;
    }
.end annotation


# static fields
.field public static final CREDENTIAL_STORE_TYPE_DEFAULT:I = 0x0

.field public static final CREDENTIAL_STORE_TYPE_DIRECT_ACCESS:I = 0x1

.field public static final DESCRIPTOR:Ljava/lang/String; = "android.security.identity.ICredentialStoreFactory"


# virtual methods
.method public abstract getCredentialStore(I)Landroid/security/identity/ICredentialStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
