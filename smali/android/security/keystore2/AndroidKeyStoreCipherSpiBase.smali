# classes3.dex

.class abstract Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
.super Ljavax/crypto/CipherSpi;

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidKeyStoreCipherSpiBase"


# instance fields
.field private mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

.field private mAdditionalAuthenticationDataStreamerClosed:Z

.field private mCachedException:Ljava/lang/Exception;

.field private mCipher:Ljavax/crypto/Cipher;

.field private mEncrypting:Z

.field private mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

.field private mKeymasterPurposeOverride:I

.field private mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

.field private mOperation:Landroid/security/KeyStoreOperation;

.field private mOperationChallenge:J

.field private mRng:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    iput-boolean v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method private abortOperation()V
    .registers 2

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-static {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->abortOperation(Landroid/security/KeyStoreOperation;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_8a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1f

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    goto :goto_26

    :cond_1f
    iget-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    if-eqz v1, :cond_25

    move v1, v3

    goto :goto_26

    :cond_25
    const/4 v1, 0x1

    :goto_26
    const v2, 0x20000001

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_30
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-virtual {v2}, Landroid/security/keystore2/AndroidKeyStoreKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v2

    iget-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-virtual {v4}, Landroid/security/keystore2/AndroidKeyStoreKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Landroid/security/KeyStoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;
    :try_end_42
    .catch Landroid/security/KeyStoreException; {:try_start_30 .. :try_end_42} :catch_43

    goto :goto_64

    :catch_43
    move-exception v2

    iget-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-static {v4, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getExceptionForCipherInit(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/GeneralSecurityException;

    move-result-object v4

    if-eqz v4, :cond_64

    instance-of v3, v4, Ljava/security/InvalidKeyException;

    if-nez v3, :cond_60

    instance-of v3, v4, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v3, :cond_58

    move-object v3, v4

    check-cast v3, Ljava/security/InvalidAlgorithmParameterException;

    throw v3

    :cond_58
    new-instance v3, Ljava/security/ProviderException;

    const-string v5, "Unexpected exception type"

    invoke-direct {v3, v5, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_60
    move-object v3, v4

    check-cast v3, Ljava/security/InvalidKeyException;

    throw v3

    :cond_64
    :goto_64
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    iget-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-static {v2, v4}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {v2}, Landroid/security/KeyStoreOperation;->getParameters()[Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    iput-boolean v3, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    return-void

    :cond_8a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private flushAAD()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_3e

    iget-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    if-nez v1, :cond_3e

    const/4 v1, 0x1

    :try_start_9
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v4, v3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->doFinal([BII[B)[B

    move-result-object v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_3a

    iput-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    nop

    if-eqz v0, :cond_3e

    array-length v1, v0

    if-gtz v1, :cond_1a

    goto :goto_3e

    :cond_1a
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AAD update unexpectedly returned data: "

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

    :catchall_3a
    move-exception v0

    iput-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    throw v0

    :cond_3e
    :goto_3e
    return-void
.end method

.method private init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_38

    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported opmode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x2, 0x4
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    goto :goto_24

    :pswitch_20  #0x1, 0x3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    nop

    :goto_24
    invoke-virtual {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initKey(ILjava/security/Key;)V

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_2e

    iput-object p3, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    return-void

    :cond_2e
    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "initKey did not initialize the key"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_20  #00000001
        :pswitch_1c  #00000002
        :pswitch_20  #00000003
        :pswitch_1c  #00000004
    .end packed-switch
.end method

.method static opmodeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x4
    const-string v0, "UNWRAP_MODE"

    return-object v0

    :pswitch_b  #0x3
    const-string v0, "WRAP_MODE"

    return-object v0

    :pswitch_e  #0x2
    const-string v0, "DECRYPT_MODE"

    return-object v0

    :pswitch_11  #0x1
    const-string v0, "ENCRYPT_MODE"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11  #00000001
        :pswitch_e  #00000002
        :pswitch_b  #00000003
        :pswitch_8  #00000004
    .end packed-switch
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

.method protected createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
    .registers 5

    new-instance v0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStoreOperation;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V

    return-object v0
.end method

.method protected final engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    :cond_9
    if-eqz p1, :cond_78

    if-eqz p2, :cond_6f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    nop

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v1, v3, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3d

    :cond_33
    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v3

    move-object v1, v3

    :goto_3d
    if-eqz v1, :cond_40

    array-length v2, v1

    :cond_40
    if-lez v2, :cond_6e

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    :try_start_46
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_49
    .catch Ljava/nio/BufferOverflowException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_6e

    :catch_4a
    move-exception v4

    new-instance v5, Ljavax/crypto/ShortBufferException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Output buffer too small. Produced: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6e
    :goto_6e
    return v2

    :cond_6f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineDoFinal([BII[BI)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result v0

    return v0

    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    :cond_11
    array-length v2, p4

    sub-int/2addr v2, p5

    array-length v3, v0

    if-gt v3, v2, :cond_1c

    array-length v3, v0

    invoke-static {v0, v1, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    return v1

    :cond_1c
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output buffer too short. Produced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final engineDoFinal([BII)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_12

    if-nez p1, :cond_d

    if-nez p3, :cond_d

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    return-object v0

    :cond_d
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    return-object v0

    :cond_12
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_62

    :try_start_16
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_19
    .catch Ljava/security/InvalidKeyException; {:try_start_16 .. :try_end_19} :catch_55
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_16 .. :try_end_19} :catch_55

    nop

    :try_start_1a
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->doFinal([BII[B)[B

    move-result-object v0
    :try_end_24
    .catch Landroid/security/KeyStoreException; {:try_start_1a .. :try_end_24} :catch_29

    nop

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    return-object v0

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_70

    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/IllegalBlockSizeException;

    throw v1

    :sswitch_3d
    new-instance v1, Ljavax/crypto/AEADBadTagException;

    invoke-direct {v1}, Ljavax/crypto/AEADBadTagException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/AEADBadTagException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/AEADBadTagException;

    throw v1

    :sswitch_49
    new-instance v1, Ljavax/crypto/BadPaddingException;

    invoke-direct {v1}, Ljavax/crypto/BadPaddingException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/BadPaddingException;

    throw v1

    :catch_55
    move-exception v0

    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/IllegalBlockSizeException;

    throw v1

    :cond_62
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    throw v0

    :sswitch_data_70
    .sparse-switch
        -0x26 -> :sswitch_49
        -0x1e -> :sswitch_3d
    .end sparse-switch
.end method

.method protected final engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_24

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-nez v0, :cond_f

    instance-of v0, p2, Ljava/security/PublicKey;

    if-eqz v0, :cond_24

    :cond_f
    :try_start_f
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_1c} :catch_1d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_f .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_24
    const/4 v0, 0x0

    :try_start_25
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    invoke-virtual {p0, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_35

    const/4 v0, 0x1

    if-nez v0, :cond_34

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_34
    return-void

    :catchall_35
    move-exception v1

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_3b
    throw v1
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_9e

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-nez v0, :cond_f

    instance-of v0, p2, Ljava/security/PublicKey;

    if-eqz v0, :cond_9e

    :cond_f
    :try_start_f
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_23} :catch_97
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_f .. :try_end_23} :catch_97
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_f .. :try_end_23} :catch_97

    const-string v2, "SHA1"

    const-string v3, "MGF1"

    if-eqz v1, :cond_3d

    :try_start_29
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v4, "SHA-224"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v5, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v3, v5, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, p2, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_96

    :cond_3d
    const-string v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v4, "SHA-256"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v5, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v3, v5, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, p2, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_96

    :cond_59
    const-string v1, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v4, "SHA-384"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v5, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v3, v5, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, p2, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_96

    :cond_75
    const-string v1, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v4, "SHA-512"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v5, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v3, v5, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, p2, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_96

    :cond_91
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_96
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_29 .. :try_end_96} :catch_97
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_29 .. :try_end_96} :catch_97
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_29 .. :try_end_96} :catch_97

    :goto_96
    return-void

    :catch_97
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_9e
    const/4 v0, 0x0

    :try_start_9f
    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters()V
    :try_end_a5
    .catchall {:try_start_9f .. :try_end_a5} :catchall_b7

    :try_start_a5
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_a8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a5 .. :try_end_a8} :catch_b0
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_b7

    nop

    const/4 v0, 0x1

    if-nez v0, :cond_af

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_af
    return-void

    :catch_b0
    move-exception v1

    :try_start_b1
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_b7
    .catchall {:try_start_b1 .. :try_end_b7} :catchall_b7

    :catchall_b7
    move-exception v1

    if-nez v0, :cond_bd

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_bd
    throw v1
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_24

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-nez v0, :cond_f

    instance-of v0, p2, Ljava/security/PublicKey;

    if-eqz v0, :cond_24

    :cond_f
    :try_start_f
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_1c} :catch_1d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_f .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_24
    const/4 v0, 0x0

    :try_start_25
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    invoke-virtual {p0, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_35

    const/4 v0, 0x1

    if-nez v0, :cond_34

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_34
    return-void

    :catchall_35
    move-exception v1

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_3b
    throw v1
.end method

.method protected final engineSetMode(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final engineSetPadding(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_86

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    move-result v0

    if-nez v0, :cond_7e

    if-eqz p1, :cond_75

    const/4 v0, 0x0

    :try_start_16
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v0
    :try_end_1b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_16 .. :try_end_1b} :catch_6c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_16 .. :try_end_1b} :catch_6c

    nop

    packed-switch p3, :pswitch_data_8e

    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported wrappedKeyType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_38  #0x3
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    :pswitch_3e  #0x2
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    :try_start_42
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2
    :try_end_4b
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_42 .. :try_end_4b} :catch_4c

    return-object v2

    :catch_4c
    move-exception v2

    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Failed to create private key from its PKCS#8 encoded form"

    invoke-direct {v3, v4, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_55  #0x1
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    :try_start_59
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_62
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_59 .. :try_end_62} :catch_63

    return-object v2

    :catch_63
    move-exception v2

    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Failed to create public key from its X.509 encoded form"

    invoke-direct {v3, v4, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_6c
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Failed to unwrap key"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "wrappedKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initilized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_55  #00000001
        :pswitch_3e  #00000002
        :pswitch_38  #00000003
    .end packed-switch
.end method

.method protected final engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    :cond_9
    if-eqz p1, :cond_78

    if-eqz p2, :cond_6f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    nop

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v1, v3, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3d

    :cond_33
    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v3

    move-object v1, v3

    :goto_3d
    if-eqz v1, :cond_40

    array-length v2, v1

    :cond_40
    if-lez v2, :cond_6e

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    :try_start_46
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_49
    .catch Ljava/nio/BufferOverflowException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_6e

    :catch_4a
    move-exception v4

    new-instance v5, Ljavax/crypto/ShortBufferException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Output buffer too small. Produced: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6e
    :goto_6e
    return v2

    :cond_6f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineUpdate([BII[BI)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result v0

    return v0

    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    :cond_11
    array-length v2, p4

    sub-int/2addr v2, p5

    array-length v3, v0

    if-gt v3, v2, :cond_1c

    array-length v3, v0

    invoke-static {v0, v1, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    return v1

    :cond_1c
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output buffer too short. Produced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final engineUpdate([BII)[B
    .registers 7

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    return-object v1

    :cond_f
    :try_start_f
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_12
    .catch Ljava/security/InvalidKeyException; {:try_start_f .. :try_end_12} :catch_29
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_f .. :try_end_12} :catch_29

    nop

    if-nez p3, :cond_16

    return-object v1

    :cond_16
    :try_start_16
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object v0
    :try_end_1f
    .catch Landroid/security/KeyStoreException; {:try_start_16 .. :try_end_1f} :catch_25

    nop

    array-length v2, v0

    if-nez v2, :cond_24

    return-object v1

    :cond_24
    return-object v0

    :catch_25
    move-exception v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    return-object v1

    :catch_29
    move-exception v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    return-object v1
.end method

.method protected final engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .registers 6

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->updateAAD(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_8
    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3b

    :cond_30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_3b
    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdateAAD([BII)V

    return-void

    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineUpdateAAD([BII)V
    .registers 8

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    return-void

    :cond_8
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_d

    return-void

    :cond_d
    :try_start_d
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_10
    .catch Ljava/security/InvalidKeyException; {:try_start_d .. :try_end_10} :catch_59
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_d .. :try_end_10} :catch_59

    nop

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    if-nez v0, :cond_51

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_49

    :try_start_19
    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object v0
    :try_end_1d
    .catch Landroid/security/KeyStoreException; {:try_start_19 .. :try_end_1d} :catch_45

    nop

    if-eqz v0, :cond_44

    array-length v1, v0

    if-gtz v1, :cond_24

    goto :goto_44

    :cond_24
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AAD update unexpectedly produced output: "

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

    :cond_44
    :goto_44
    return-void

    :catch_45
    move-exception v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void

    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This cipher does not support AAD"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AAD can only be provided before Cipher.update is invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_59
    move-exception v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void
.end method

.method protected final engineWrap(Ljava/security/Key;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_102

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_fa

    if-eqz p1, :cond_f1

    const/4 v0, 0x0

    instance-of v1, p1, Ljavax/crypto/SecretKey;

    const-string v2, "Failed to wrap key because it does not export its key material"

    if-eqz v1, :cond_4e

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RAW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    :cond_2c
    if-nez v0, :cond_b4

    :try_start_2e
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Ljavax/crypto/SecretKey;

    const-class v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v3, v4}, Ljavax/crypto/SecretKeyFactory;->getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    check-cast v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v4
    :try_end_45
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2e .. :try_end_45} :catch_47
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2e .. :try_end_45} :catch_47

    move-object v0, v4

    goto :goto_b4

    :catch_47
    move-exception v1

    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_4e
    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_81

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PKCS8"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    :cond_62
    if-nez v0, :cond_b4

    :try_start_64
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    const-class v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v1, p1, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    check-cast v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v3}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v4
    :try_end_78
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_64 .. :try_end_78} :catch_7a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_64 .. :try_end_78} :catch_7a

    move-object v0, v4

    goto :goto_b4

    :catch_7a
    move-exception v1

    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_81
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_d0

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v3, "X.509"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    :cond_95
    if-nez v0, :cond_b4

    :try_start_97
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    const-class v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v1, p1, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    check-cast v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v3}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v4
    :try_end_ab
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_97 .. :try_end_ab} :catch_ad
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_97 .. :try_end_ab} :catch_ad

    move-object v0, v4

    goto :goto_b4

    :catch_ad
    move-exception v1

    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_b4
    :goto_b4
    if-eqz v0, :cond_ca

    const/4 v1, 0x0

    :try_start_b7
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v1
    :try_end_bc
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b7 .. :try_end_bc} :catch_bd

    return-object v1

    :catch_bd
    move-exception v1

    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v2, v1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/crypto/IllegalBlockSizeException;

    throw v2

    :cond_ca
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d0
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fa
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initilized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->abortOperation()V
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

.method protected abstract getAdditionalEntropyAmountForBegin()I
.end method

.method protected abstract getAdditionalEntropyAmountForFinish()I
.end method

.method protected final getConsumedInputSizeBytes()J
    .registers 3

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->getConsumedInputSizeBytes()J

    move-result-wide v0

    return-wide v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final getKeymasterPurposeOverride()I
    .registers 2

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    return v0
.end method

.method public final getOperationHandle()J
    .registers 3

    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    return-wide v0
.end method

.method protected final getProducedOutputSizeBytes()J
    .registers 3

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->getProducedOutputSizeBytes()J

    move-result-wide v0

    return-wide v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getTransform()Ljava/lang/String;
.end method

.method protected abstract initAlgorithmSpecificParameters()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract initKey(ILjava/security/Key;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected final isEncrypting()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    return v0
.end method

.method protected abstract loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V
.end method

.method protected resetAll()V
    .registers 5

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->abortOperation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method protected resetWhilePreservingInitState()V
    .registers 3

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->abortOperation()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void
.end method

.method protected final setKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V
    .registers 2

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    return-void
.end method

.method protected final setKeymasterPurposeOverride(I)V
    .registers 2

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    return-void
.end method
