# classes3.dex

.class Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/security/identity/CredentialDataResult$Entries;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/CredstoreCredentialDataResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CredstoreEntries"
.end annotation


# instance fields
.field mResultData:Landroid/security/identity/ResultData;


# direct methods
.method constructor <init>(Landroid/security/identity/ResultData;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;->mResultData:Landroid/security/identity/ResultData;

    return-void
.end method


# virtual methods
.method public getEntry(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4

    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;->mResultData:Landroid/security/identity/ResultData;

    invoke-virtual {v0, p1, p2}, Landroid/security/identity/ResultData;->getEntry(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;->mResultData:Landroid/security/identity/ResultData;

    invoke-virtual {v0, p1}, Landroid/security/identity/ResultData;->getEntryNames(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v1

    :cond_e
    return-object v0
.end method

.method public getNamespaces()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;->mResultData:Landroid/security/identity/ResultData;

    invoke-virtual {v0}, Landroid/security/identity/ResultData;->getNamespaces()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRetrievedEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;->mResultData:Landroid/security/identity/ResultData;

    invoke-virtual {v0, p1}, Landroid/security/identity/ResultData;->getRetrievedEntryNames(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v1

    :cond_e
    return-object v0
.end method

.method public getStatus(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;->mResultData:Landroid/security/identity/ResultData;

    invoke-virtual {v0, p1, p2}, Landroid/security/identity/ResultData;->getStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
