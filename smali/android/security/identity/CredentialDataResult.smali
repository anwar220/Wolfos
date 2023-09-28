# classes3.dex

.class public abstract Landroid/security/identity/CredentialDataResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/CredentialDataResult$Entries;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDeviceMac()[B
.end method

.method public abstract getDeviceNameSpaces()[B
.end method

.method public abstract getDeviceSignedEntries()Landroid/security/identity/CredentialDataResult$Entries;
.end method

.method public abstract getIssuerSignedEntries()Landroid/security/identity/CredentialDataResult$Entries;
.end method

.method public abstract getStaticAuthenticationData()[B
.end method
