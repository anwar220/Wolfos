# classes3.dex

.class public Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;
.super Ljavax/crypto/KeyAgreementSpi;

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi$XDH;,
        Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi$ECDH;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidKeyStoreKeyAgreementSpi"


# instance fields
.field private mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

.field private final mKeymintAlgorithm:I

.field private mOperation:Landroid/security/KeyStoreOperation;

.field private mOperationHandle:J

.field private mOtherPartyKey:Ljava/security/PublicKey;


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKeymintAlgorithm:I

    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x20000001

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_19
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    invoke-virtual {v2}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/security/KeyStoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;
    :try_end_2b
    .catch Landroid/security/KeyStoreException; {:try_start_19 .. :try_end_2b} :catch_2c

    goto :goto_35

    :catch_2c
    move-exception v1

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getInvalidKeyException(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v2

    if-nez v2, :cond_40

    :goto_35
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperationHandle:J

    return-void

    :cond_40
    throw v2

    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resetAll()V
    .registers 2

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetWhilePreservingInitState()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    return-void
.end method

.method private resetWhilePreservingInitState()V
    .registers 3

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-static {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->abortOperation(Landroid/security/KeyStoreOperation;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperationHandle:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    return-void
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->ensureKeystoreOperationInitialized()V

    if-eqz p1, :cond_3f

    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_26

    if-eqz p2, :cond_1e

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    if-nez v0, :cond_16

    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    const/4 v0, 0x0

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one other party supported. doPhase() must only be called exactly once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one other party supported. lastPhase must be set to true."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only public keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGenerateSecret([BI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    array-length v1, v0

    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt v1, v2, :cond_10

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    return v1

    :cond_10
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Needed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method protected engineGenerateSecret()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->ensureKeystoreOperationInitialized()V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_2e

    nop

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    :try_start_c
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/security/KeyStoreOperation;->finish([B[B)[B

    move-result-object v1
    :try_end_13
    .catch Landroid/security/KeyStoreException; {:try_start_c .. :try_end_13} :catch_19
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetWhilePreservingInitState()V

    return-object v1

    :catchall_17
    move-exception v1

    goto :goto_22

    :catch_19
    move-exception v1

    :try_start_1a
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Keystore operation failed"

    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17

    :goto_22
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetWhilePreservingInitState()V

    throw v1

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Other party key not provided. Call doPhase() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2e
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not initialized"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    if-eqz p1, :cond_39

    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_20

    move-object v0, p1

    check-cast v0, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    const/4 v0, 0x0

    :try_start_f
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->ensureKeystoreOperationInitialized()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_19

    const/4 v0, 0x1

    if-nez v0, :cond_18

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    :cond_18
    return-void

    :catchall_19
    move-exception v1

    if-nez v0, :cond_1f

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    :cond_1f
    throw v1

    :cond_20
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Android KeyStore private keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p0, p1, p3}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    return-void

    :cond_6
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
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V
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

    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperationHandle:J

    return-wide v0
.end method
