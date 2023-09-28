# classes3.dex

.class public Landroid/security/identity/CredentialDataRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/CredentialDataRequest$Builder;
    }
.end annotation


# instance fields
.field mAllowUsingExhaustedKeys:Z

.field mAllowUsingExpiredKeys:Z

.field mDeviceSignedEntriesToRequest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mIncrementUseCount:Z

.field mIssuerSignedEntriesToRequest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mReaderSignature:[B

.field mRequestMessage:[B


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mDeviceSignedEntriesToRequest:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mIssuerSignedEntriesToRequest:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/identity/CredentialDataRequest;->mAllowUsingExhaustedKeys:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/security/identity/CredentialDataRequest;->mAllowUsingExpiredKeys:Z

    iput-boolean v0, p0, Landroid/security/identity/CredentialDataRequest;->mIncrementUseCount:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mRequestMessage:[B

    iput-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mReaderSignature:[B

    return-void
.end method


# virtual methods
.method public getDeviceSignedEntriesToRequest()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mDeviceSignedEntriesToRequest:Ljava/util/Map;

    return-object v0
.end method

.method public getIssuerSignedEntriesToRequest()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mIssuerSignedEntriesToRequest:Ljava/util/Map;

    return-object v0
.end method

.method public getReaderSignature()[B
    .registers 2

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mReaderSignature:[B

    return-object v0
.end method

.method public getRequestMessage()[B
    .registers 2

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest;->mRequestMessage:[B

    return-object v0
.end method

.method public isAllowUsingExhaustedKeys()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/identity/CredentialDataRequest;->mAllowUsingExhaustedKeys:Z

    return v0
.end method

.method public isAllowUsingExpiredKeys()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/identity/CredentialDataRequest;->mAllowUsingExpiredKeys:Z

    return v0
.end method

.method public isIncrementUseCount()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/identity/CredentialDataRequest;->mIncrementUseCount:Z

    return v0
.end method
