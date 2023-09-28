# classes3.dex

.class public final Landroid/security/identity/CredentialDataRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/CredentialDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mData:Landroid/security/identity/CredentialDataRequest;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/identity/CredentialDataRequest;

    invoke-direct {v0}, Landroid/security/identity/CredentialDataRequest;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    return-void
.end method


# virtual methods
.method public build()Landroid/security/identity/CredentialDataRequest;
    .registers 2

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    return-object v0
.end method

.method public setAllowUsingExhaustedKeys(Z)Landroid/security/identity/CredentialDataRequest$Builder;
    .registers 3

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-boolean p1, v0, Landroid/security/identity/CredentialDataRequest;->mAllowUsingExhaustedKeys:Z

    return-object p0
.end method

.method public setAllowUsingExpiredKeys(Z)Landroid/security/identity/CredentialDataRequest$Builder;
    .registers 3

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-boolean p1, v0, Landroid/security/identity/CredentialDataRequest;->mAllowUsingExpiredKeys:Z

    return-object p0
.end method

.method public setDeviceSignedEntriesToRequest(Ljava/util/Map;)Landroid/security/identity/CredentialDataRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/security/identity/CredentialDataRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-object p1, v0, Landroid/security/identity/CredentialDataRequest;->mDeviceSignedEntriesToRequest:Ljava/util/Map;

    return-object p0
.end method

.method public setIncrementUseCount(Z)Landroid/security/identity/CredentialDataRequest$Builder;
    .registers 3

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-boolean p1, v0, Landroid/security/identity/CredentialDataRequest;->mIncrementUseCount:Z

    return-object p0
.end method

.method public setIssuerSignedEntriesToRequest(Ljava/util/Map;)Landroid/security/identity/CredentialDataRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/security/identity/CredentialDataRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-object p1, v0, Landroid/security/identity/CredentialDataRequest;->mIssuerSignedEntriesToRequest:Ljava/util/Map;

    return-object p0
.end method

.method public setReaderSignature([B)Landroid/security/identity/CredentialDataRequest$Builder;
    .registers 3

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-object p1, v0, Landroid/security/identity/CredentialDataRequest;->mReaderSignature:[B

    return-object p0
.end method

.method public setRequestMessage([B)Landroid/security/identity/CredentialDataRequest$Builder;
    .registers 3

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-object p1, v0, Landroid/security/identity/CredentialDataRequest;->mRequestMessage:[B

    return-object p0
.end method
