# classes3.dex

.class Landroid/security/identity/CredstoreIdentityCredentialStore;
.super Landroid/security/identity/IdentityCredentialStore;


# static fields
.field private static final TAG:Ljava/lang/String; = "CredstoreIdentityCredentialStore"

.field private static sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

.field private static sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStore:Landroid/security/identity/ICredentialStore;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    sput-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/security/identity/ICredentialStore;)V
    .registers 4

    invoke-direct {p0}, Landroid/security/identity/IdentityCredentialStore;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    iput-object p1, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    return-void
.end method

.method public static getDirectAccessInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;
    .registers 2

    sget-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/security/identity/CredstoreIdentityCredentialStore;->getInstanceForType(Landroid/content/Context;I)Landroid/security/identity/CredstoreIdentityCredentialStore;

    move-result-object v0

    sput-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    :cond_b
    sget-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;
    .registers 2

    sget-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/security/identity/CredstoreIdentityCredentialStore;->getInstanceForType(Landroid/content/Context;I)Landroid/security/identity/CredstoreIdentityCredentialStore;

    move-result-object v0

    sput-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    :cond_b
    sget-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    return-object v0
.end method

.method static getInstanceForType(Landroid/content/Context;I)Landroid/security/identity/CredstoreIdentityCredentialStore;
    .registers 8

    nop

    const-string v0, "android.security.identity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/security/identity/ICredentialStoreFactory$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/identity/ICredentialStoreFactory;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    const/4 v2, 0x0

    :try_start_10
    invoke-interface {v0, p1}, Landroid/security/identity/ICredentialStoreFactory;->getCredentialStore(I)Landroid/security/identity/ICredentialStore;

    move-result-object v3
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_41
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_14} :catch_1f

    move-object v2, v3

    nop

    if-nez v2, :cond_19

    return-object v1

    :cond_19
    new-instance v1, Landroid/security/identity/CredstoreIdentityCredentialStore;

    invoke-direct {v1, p0, v2}, Landroid/security/identity/CredstoreIdentityCredentialStore;-><init>(Landroid/content/Context;Landroid/security/identity/ICredentialStore;)V

    return-object v1

    :catch_1f
    move-exception v3

    iget v4, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    return-object v1

    :cond_26
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_41
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected RemoteException "

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public createCredential(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/WritableIdentityCredential;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/AlreadyPersonalizedException;,
            Landroid/security/identity/DocTypeNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_1
    iget-object v1, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v1, p1, p2}, Landroid/security/identity/ICredentialStore;->createCredential(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/IWritableCredential;

    move-result-object v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_59
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_7} :catch_1f

    :try_start_7
    new-instance v2, Landroid/security/GenerateRkpKey;

    iget-object v3, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/security/GenerateRkpKey;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/security/GenerateRkpKey;->notifyKeyGenerated(I)V

    invoke-virtual {v2, v0}, Landroid/security/GenerateRkpKey;->notifyKeyGenerated(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_15} :catch_1f

    goto :goto_17

    :catch_16
    move-exception v2

    :goto_17
    :try_start_17
    new-instance v2, Landroid/security/identity/CredstoreWritableIdentityCredential;

    iget-object v3, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, p2, v1}, Landroid/security/identity/CredstoreWritableIdentityCredential;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/security/identity/IWritableCredential;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1e} :catch_59
    .catch Landroid/os/ServiceSpecificException; {:try_start_17 .. :try_end_1e} :catch_1f

    return-object v2

    :catch_1f
    move-exception v1

    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v2, v0, :cond_4f

    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_34

    new-instance v0, Landroid/security/identity/DocTypeNotSupportedException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/security/identity/DocTypeNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_34
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4f
    new-instance v0, Landroid/security/identity/AlreadyPersonalizedException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/security/identity/AlreadyPersonalizedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_59
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createPresentationSession(I)Landroid/security/identity/PresentationSession;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v0, p1}, Landroid/security/identity/ICredentialStore;->createPresentationSession(I)Landroid/security/identity/ISession;

    move-result-object v0

    new-instance v1, Landroid/security/identity/CredstorePresentationSession;

    iget-object v2, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p0, v0}, Landroid/security/identity/CredstorePresentationSession;-><init>(Landroid/content/Context;ILandroid/security/identity/CredstoreIdentityCredentialStore;Landroid/security/identity/ISession;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_39
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    :catch_e
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1e

    new-instance v1, Landroid/security/identity/CipherSuiteNotSupportedException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/security/identity/CipherSuiteNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1e
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_39
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteCredentialByName(Ljava/lang/String;)[B
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/security/identity/ICredentialStore;->getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/ICredential;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_8} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    move-object v0, v1

    goto :goto_14

    :catch_a
    move-exception v1

    goto :goto_35

    :catch_c
    move-exception v1

    :try_start_d
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    const/4 v2, 0x0

    return-object v2

    :cond_14
    :goto_14
    invoke-interface {v0}, Landroid/security/identity/ICredential;->deleteCredential()[B

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_d .. :try_end_18} :catch_19

    return-object v1

    :catch_19
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_35
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected RemoteException "

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/IdentityCredential;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v0, p1, p2}, Landroid/security/identity/ICredentialStore;->getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/ICredential;

    move-result-object v5

    new-instance v0, Landroid/security/identity/CredstoreIdentityCredential;

    iget-object v2, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Landroid/security/identity/CredstoreIdentityCredential;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/security/identity/ICredential;Landroid/security/identity/CredstorePresentationSession;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_44
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x0

    return-object v1

    :cond_1a
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_29

    new-instance v1, Landroid/security/identity/CipherSuiteNotSupportedException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/security/identity/CipherSuiteNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_29
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_44
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSupportedDocTypes()[Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v0}, Landroid/security/identity/ICredentialStore;->getSecurityHardwareInfo()Landroid/security/identity/SecurityHardwareInfoParcel;

    move-result-object v0

    iget-object v1, v0, Landroid/security/identity/SecurityHardwareInfoParcel;->supportedDocTypes:[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_25
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v1

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_25
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
