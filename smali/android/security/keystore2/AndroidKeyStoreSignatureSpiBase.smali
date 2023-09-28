# classes3.dex

.class abstract Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;
.super Ljava/security/SignatureSpi;

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidKeyStoreSignatureSpiBase"


# instance fields
.field private mCachedException:Ljava/lang/Exception;

.field private mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

.field private mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

.field private mOperation:Landroid/security/KeyStoreOperation;

.field private mOperationChallenge:J

.field private mSignature:Ljava/security/Signature;

.field private mSigning:Z


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperationChallenge:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;

    return-void
.end method

.method private abortOperation()V
    .registers 2

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-static {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->abortOperation(Landroid/security/KeyStoreOperation;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_53

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V

    iget-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x3

    :goto_1d
    const v2, 0x20000001

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_27
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-virtual {v2}, Landroid/security/keystore2/AndroidKeyStoreKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v2

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-virtual {v3}, Landroid/security/keystore2/AndroidKeyStoreKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/security/KeyStoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;
    :try_end_39
    .catch Landroid/security/KeyStoreException; {:try_start_27 .. :try_end_39} :catch_4b

    nop

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperationChallenge:J

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    return-void

    :catch_4b
    move-exception v2

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-static {v3, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getInvalidKeyException(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v3

    throw v3

    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation
.end method

.method protected createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
    .registers 4

    new-instance v0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStoreOperation;)V

    invoke-direct {v0, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    return-object v0
.end method

.method protected final engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method protected final engineInitSign(Ljava/security/PrivateKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    :try_start_6
    instance-of v1, p1, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v1, :cond_1f

    move-object v1, p1

    check-cast v1, Landroid/security/keystore2/AndroidKeyStoreKey;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    invoke-virtual {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V

    iput-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_38

    const/4 v0, 0x1

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    :cond_1e
    return-void

    :cond_1f
    :try_start_1f
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported private key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_38
    move-exception v1

    goto :goto_42

    :cond_3a
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Unsupported key: null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_42
    .catchall {:try_start_1f .. :try_end_42} :catchall_38

    :goto_42
    if-nez v0, :cond_47

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    :cond_47
    throw v1
.end method

.method protected final engineInitVerify(Ljava/security/PublicKey;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    :try_start_3
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_d} :catch_12

    nop

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    return-void

    :catch_12
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method protected final engineSign([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineSign([BII)I

    move-result v0

    return v0
.end method

.method protected final engineSign()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_28

    :try_start_4
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->getAdditionalEntropyAmountForSign()I

    move-result v1

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v4, v3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->doFinal([BII[B)[B

    move-result-object v1
    :try_end_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_1b} :catch_21
    .catch Landroid/security/KeyStoreException; {:try_start_4 .. :try_end_1b} :catch_21

    move-object v0, v1

    nop

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    return-object v0

    :catch_21
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_28
    new-instance v0, Ljava/security/SignatureException;

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected final engineUpdate(B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->engineUpdate([BII)V

    return-void
.end method

.method protected final engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_25

    :cond_1f
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_25
    :try_start_25
    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->engineUpdate([BII)V
    :try_end_28
    .catch Ljava/security/SignatureException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2c

    :catch_29
    move-exception v3

    iput-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    :goto_2c
    return-void
.end method

.method protected final engineUpdate([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V

    return-void

    :cond_8
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_4c

    :try_start_c
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_f
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_f} :catch_45

    nop

    if-nez p3, :cond_13

    return-void

    :cond_13
    :try_start_13
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object v0
    :try_end_19
    .catch Landroid/security/KeyStoreException; {:try_start_13 .. :try_end_19} :catch_3e

    nop

    array-length v1, v0

    if-nez v1, :cond_1e

    return-void

    :cond_1e
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update operation unexpectedly produced output: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3e
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_45
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4c
    new-instance v0, Ljava/security/SignatureException;

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected final engineVerify([B)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineVerify([BII)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->engineVerify([B)Z

    move-result v0

    return v0
.end method

.method protected abstract getAdditionalEntropyAmountForSign()I
.end method

.method protected abstract getAlgorithm()Ljava/lang/String;
.end method

.method public final getOperationHandle()J
    .registers 3

    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperationChallenge:J

    return-wide v0
.end method

.method protected initKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    return-void
.end method

.method protected final isSigning()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    return v0
.end method

.method protected resetAll()V
    .registers 3

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->abortOperation()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperationChallenge:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void
.end method

.method protected resetWhilePreservingInitState()V
    .registers 3

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->abortOperation()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperationChallenge:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void
.end method
