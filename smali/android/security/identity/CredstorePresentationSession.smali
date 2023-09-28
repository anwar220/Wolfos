# classes3.dex

.class Landroid/security/identity/CredstorePresentationSession;
.super Landroid/security/identity/PresentationSession;


# static fields
.field private static final TAG:Ljava/lang/String; = "CredstorePresentationSession"


# instance fields
.field private mBinder:Landroid/security/identity/ISession;

.field private mCipherSuite:I

.field private mContext:Landroid/content/Context;

.field private mCredentialCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/identity/CredstoreIdentityCredential;",
            ">;"
        }
    .end annotation
.end field

.field private mEphemeralKeyPair:Ljava/security/KeyPair;

.field private mOperationHandle:J

.field private mOperationHandleSet:Z

.field private mSessionTranscript:[B

.field private mStore:Landroid/security/identity/CredstoreIdentityCredentialStore;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/security/identity/CredstoreIdentityCredentialStore;Landroid/security/identity/ISession;)V
    .registers 7

    invoke-direct {p0}, Landroid/security/identity/PresentationSession;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mCredentialCache:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;

    iput-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandleSet:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandle:J

    iput-object p1, p0, Landroid/security/identity/CredstorePresentationSession;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/security/identity/CredstorePresentationSession;->mCipherSuite:I

    iput-object p3, p0, Landroid/security/identity/CredstorePresentationSession;->mStore:Landroid/security/identity/CredstoreIdentityCredentialStore;

    iput-object p4, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    return-void
.end method

.method private ensureEphemeralKeyPair()V
    .registers 10

    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v0}, Landroid/security/identity/ISession;->getEphemeralKeyPair()[B

    move-result-object v0

    const-string v1, "ephemeralKey"

    const/4 v2, 0x0

    new-array v2, v2, [C

    const-string v3, "PKCS12"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v4, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v3, v1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v5

    check-cast v5, Ljava/security/PrivateKey;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    new-instance v8, Ljava/security/KeyPair;

    invoke-direct {v8, v7, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v8, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;
    :try_end_33
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_33} :catch_3e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_33} :catch_35
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_33} :catch_35
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_33} :catch_35
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_33} :catch_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_33} :catch_35
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_33} :catch_35

    nop

    return-void

    :catch_35
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3e
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
.end method


# virtual methods
.method public getCredentialData(Ljava/lang/String;Landroid/security/identity/CredentialDataRequest;)Landroid/security/identity/CredentialDataResult;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/NoAuthenticationKeyAvailableException;,
            Landroid/security/identity/InvalidReaderSignatureException;,
            Landroid/security/identity/InvalidRequestMessageException;,
            Landroid/security/identity/EphemeralPublicKeyNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mCredentialCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/identity/CredstoreIdentityCredential;

    if-nez v0, :cond_37

    iget-object v1, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v1, p1}, Landroid/security/identity/ISession;->getCredentialForPresentation(Ljava/lang/String;)Landroid/security/identity/ICredential;

    move-result-object v6

    new-instance v1, Landroid/security/identity/CredstoreIdentityCredential;

    iget-object v3, p0, Landroid/security/identity/CredstorePresentationSession;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/security/identity/CredstorePresentationSession;->mCipherSuite:I

    move-object v2, v1

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Landroid/security/identity/CredstoreIdentityCredential;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/security/identity/ICredential;Landroid/security/identity/CredstorePresentationSession;)V

    move-object v0, v1

    iget-object v1, p0, Landroid/security/identity/CredstorePresentationSession;->mCredentialCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->isAllowUsingExhaustedKeys()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/identity/CredstoreIdentityCredential;->setAllowUsingExhaustedKeys(Z)V

    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->isAllowUsingExpiredKeys()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/identity/CredstoreIdentityCredential;->setAllowUsingExpiredKeys(Z)V

    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->isIncrementUseCount()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/identity/CredstoreIdentityCredential;->setIncrementKeyUsageCount(Z)V

    :cond_37
    nop

    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getRequestMessage()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getDeviceSignedEntriesToRequest()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B

    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getReaderSignature()[B

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/identity/CredstoreIdentityCredential;->getEntries([BLjava/util/Map;[B[B)Landroid/security/identity/ResultData;

    move-result-object v1

    nop

    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getRequestMessage()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getIssuerSignedEntriesToRequest()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B

    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getReaderSignature()[B

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/security/identity/CredstoreIdentityCredential;->getEntries([BLjava/util/Map;[B[B)Landroid/security/identity/ResultData;

    move-result-object v2

    new-instance v3, Landroid/security/identity/CredstoreCredentialDataResult;

    invoke-direct {v3, v1, v2}, Landroid/security/identity/CredstoreCredentialDataResult;-><init>(Landroid/security/identity/ResultData;Landroid/security/identity/ResultData;)V
    :try_end_62
    .catch Landroid/security/identity/SessionTranscriptMismatchException; {:try_start_0 .. :try_end_62} :catch_8f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_62} :catch_86
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_62} :catch_63

    return-object v3

    :catch_63
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6b

    const/4 v1, 0x0

    return-object v1

    :cond_6b
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

    :catch_86
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_8f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCredstoreOperationHandle()J
    .registers 5

    iget-boolean v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandleSet:Z

    if-nez v0, :cond_37

    :try_start_4
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v0}, Landroid/security/identity/ISession;->getAuthChallenge()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandle:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandleSet:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_2e
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_37

    :catch_10
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

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

    :catch_2e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_37
    :goto_37
    iget-wide v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandle:J

    return-wide v0
.end method

.method public getEphemeralKeyPair()Ljava/security/KeyPair;
    .registers 2

    invoke-direct {p0}, Landroid/security/identity/CredstorePresentationSession;->ensureEphemeralKeyPair()V

    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;

    return-object v0
.end method

.method public setReaderEphemeralPublicKey(Ljava/security/PublicKey;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    nop

    :try_start_1
    invoke-static {p1}, Landroid/security/identity/Util;->publicKeyEncodeUncompressedForm(Ljava/security/PublicKey;)[B

    move-result-object v0

    iget-object v1, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v1, v0}, Landroid/security/identity/ISession;->setReaderEphemeralPublicKey([B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_28
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_a} :catch_c

    nop

    return-void

    :catch_c
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

    :catch_28
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSessionTranscript([B)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v0, p1}, Landroid/security/identity/ISession;->setSessionTranscript([B)V

    iput-object p1, p0, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_25
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

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
