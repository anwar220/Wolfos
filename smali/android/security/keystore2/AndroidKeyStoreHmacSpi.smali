# classes3.dex

.class public abstract Landroid/security/keystore2/AndroidKeyStoreHmacSpi;
.super Ljavax/crypto/MacSpi;

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreHmacSpi$HmacSHA512;,
        Landroid/security/keystore2/AndroidKeyStoreHmacSpi$HmacSHA384;,
        Landroid/security/keystore2/AndroidKeyStoreHmacSpi$HmacSHA256;,
        Landroid/security/keystore2/AndroidKeyStoreHmacSpi$HmacSHA224;,
        Landroid/security/keystore2/AndroidKeyStoreHmacSpi$HmacSHA1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidKeyStoreHmacSpi"


# instance fields
.field private mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

.field private mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

.field private final mKeymasterDigest:I

.field private final mMacSizeBits:I

.field private mOperation:Landroid/security/KeyStoreOperation;

.field private mOperationChallenge:J


# direct methods
.method protected constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKeymasterDigest:I

    invoke-static {p1}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperation:Landroid/security/KeyStoreOperation;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperationChallenge:J

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    return-void
.end method

.method private abortOperation()V
    .registers 2

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-static {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->abortOperation(Landroid/security/KeyStoreOperation;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperation:Landroid/security/KeyStoreOperation;

    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_73

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x20000001

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x10000002

    const/16 v2, 0x80

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x20000005

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKeymasterDigest:I

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x300003eb

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_3d
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-virtual {v2}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/security/KeyStoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperation:Landroid/security/KeyStoreOperation;
    :try_end_4f
    .catch Landroid/security/KeyStoreException; {:try_start_3d .. :try_end_4f} :catch_50

    goto :goto_59

    :catch_50
    move-exception v1

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getInvalidKeyException(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v2

    if-nez v2, :cond_72

    :goto_59
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperation:Landroid/security/KeyStoreOperation;

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperationChallenge:J

    new-instance v1, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v2, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-direct {v2, v3}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStoreOperation;)V

    invoke-direct {v1, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    return-void

    :cond_72
    throw v2

    :cond_73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p1, :cond_40

    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_27

    move-object v0, p1

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-nez p2, :cond_e

    return-void

    :cond_e
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Android KeyStore secret keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resetAll()V
    .registers 3

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->abortOperation()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperationChallenge:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    return-void
.end method

.method private resetWhilePreservingInitState()V
    .registers 3

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->abortOperation()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperationChallenge:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_1a

    nop

    :try_start_4
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->doFinal([BII[B)[B

    move-result-object v0
    :try_end_c
    .catch Landroid/security/KeyStoreException; {:try_start_4 .. :try_end_c} :catch_11

    nop

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->resetWhilePreservingInitState()V

    return-object v0

    :catch_11
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Keystore operation failed"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1a
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to reinitialize MAC"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineGetMacLength()I
    .registers 2

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->resetAll()V

    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    if-nez v0, :cond_10

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->resetAll()V

    :cond_10
    return-void

    :catchall_11
    move-exception v1

    if-nez v0, :cond_17

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->resetAll()V

    :cond_17
    throw v1
.end method

.method protected engineReset()V
    .registers 1

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->resetWhilePreservingInitState()V

    return-void
.end method

.method protected engineUpdate(B)V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->engineUpdate([BII)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 7

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_23

    nop

    :try_start_4
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B

    move-result-object v0
    :try_end_a
    .catch Landroid/security/KeyStoreException; {:try_start_4 .. :try_end_a} :catch_1a

    nop

    if-eqz v0, :cond_19

    array-length v1, v0

    if-nez v1, :cond_11

    goto :goto_19

    :cond_11
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Update operation unexpectedly produced output"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Keystore operation failed"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_23
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to reinitialize MAC"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->abortOperation()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getOperationHandle()J
    .registers 3

    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperationChallenge:J

    return-wide v0
.end method
