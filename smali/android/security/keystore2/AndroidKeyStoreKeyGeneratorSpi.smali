# classes3.dex

.class public abstract Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
.super Ljavax/crypto/KeyGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA512;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA384;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA256;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA224;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA1;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacBase;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$DESede;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$AES;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidKeyStoreKeyGeneratorSpi"


# instance fields
.field private final mDefaultKeySizeBits:I

.field protected mKeySizeBits:I

.field private final mKeyStore:Landroid/security/KeyStore2;

.field private final mKeymasterAlgorithm:I

.field private mKeymasterBlockModes:[I

.field private final mKeymasterDigest:I

.field private mKeymasterDigests:[I

.field private mKeymasterPaddings:[I

.field private mKeymasterPurposes:[I

.field private mRng:Ljava/security/SecureRandom;

.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method protected constructor <init>(II)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;-><init>(III)V

    return-void
.end method

.method protected constructor <init>(III)V
    .registers 6

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    iput p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    iput p3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    if-lez p3, :cond_22

    const/16 v0, 0x80

    if-ne p1, v0, :cond_21

    const/4 v0, -0x1

    if-eq p2, v0, :cond_19

    goto :goto_21

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Digest algorithm must be specified for HMAC key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_21
    return-void

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default key size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$engineGenerateKey$0(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x20000001

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$engineGenerateKey$2(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x20000006

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$engineGenerateKey$3(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x20000005

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private resetAll()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    const/4 v1, -0x1

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .registers 15

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v0, :cond_190

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x30000003

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x10000002

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    new-instance v3, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v2, v3}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    new-instance v3, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;-><init>(Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;Ljava/util/List;)V

    invoke-static {v2, v3}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    new-instance v3, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-static {v2, v3}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    new-instance v3, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-static {v2, v3}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    const/16 v3, 0x80

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_8a

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    array-length v3, v2

    if-eqz v3, :cond_8a

    aget v2, v2, v5

    invoke-static {v2}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v2

    if-eq v2, v4, :cond_69

    const v3, 0x30000008

    invoke-static {v3, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    :cond_69
    new-instance v3, Ljava/security/ProviderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    aget v5, v6, v5

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8a
    :goto_8a
    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_a1

    const v2, 0x60000190

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a1
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_b5

    const v2, 0x60000191

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b5
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_c9

    const v2, 0x60000192

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c9
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e1

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v2

    if-nez v2, :cond_e1

    const v2, 0x70000007

    invoke-static {v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e1
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v2

    if-eq v2, v4, :cond_f5

    const v2, 0x30000195

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v3

    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f5
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v8

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v3

    if-eqz v3, :cond_10b

    const/4 v2, 0x2

    move v9, v2

    goto :goto_10c

    :cond_10b
    move v9, v2

    :goto_10c
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isCriticalToDeviceEncryption()Z

    move-result v3

    if-eqz v3, :cond_117

    or-int/lit8 v2, v2, 0x1

    move v10, v2

    goto :goto_118

    :cond_117
    move v10, v2

    :goto_118
    new-instance v2, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v2}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    move-object v11, v2

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getNamespace()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v11, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iget-wide v2, v11, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_134

    goto :goto_135

    :cond_134
    const/4 v5, 0x2

    :goto_135
    iput v5, v11, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const/4 v2, 0x0

    iput-object v2, v11, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    const/4 v12, 0x0

    const/4 v2, 0x0

    :try_start_13c
    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v3, v9}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v3
    :try_end_142
    .catch Landroid/security/KeyStoreException; {:try_start_13c .. :try_end_142} :catch_176

    move-object v13, v3

    const/4 v4, 0x0

    move-object v2, v13

    move-object v3, v11

    move-object v5, v1

    move v6, v10

    move-object v7, v8

    :try_start_149
    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStoreSecurityLevel;->generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v2
    :try_end_14d
    .catch Landroid/security/KeyStoreException; {:try_start_149 .. :try_end_14d} :catch_174

    nop

    :try_start_14e
    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    invoke-static {v3, v4}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;

    move-result-object v3
    :try_end_156
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14e .. :try_end_156} :catch_15d

    nop

    new-instance v4, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-direct {v4, v11, v2, v3, v13}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    return-object v4

    :catch_15d
    move-exception v3

    :try_start_15e
    iget-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v4, v11}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_163
    .catch Landroid/security/KeyStoreException; {:try_start_15e .. :try_end_163} :catch_164

    goto :goto_16c

    :catch_164
    move-exception v4

    const-string v5, "AndroidKeyStoreKeyGeneratorSpi"

    const-string v6, "Failed to delete key after generating successfully but failed to get the algorithm string."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16c
    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Failed to obtain JCA secret key algorithm name"

    invoke-direct {v4, v5, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_174
    move-exception v2

    goto :goto_179

    :catch_176
    move-exception v3

    move-object v13, v2

    move-object v2, v3

    :goto_179
    invoke-virtual {v2}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    packed-switch v3, :pswitch_data_198

    new-instance v3, Ljava/security/ProviderException;

    const-string v4, "Keystore key generation failed"

    invoke-direct {v3, v4, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_188  #0xffffffbc
    new-instance v3, Landroid/security/keystore/StrongBoxUnavailableException;

    const-string v4, "Failed to generate key"

    invoke-direct {v3, v4}, Landroid/security/keystore/StrongBoxUnavailableException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_190
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_198
    .packed-switch -0x44
        :pswitch_188  #ffffffbc
    .end packed-switch
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot initialize without a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot initialize without a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    const/4 v0, 0x0

    if-eqz p1, :cond_19b

    :try_start_6
    instance-of v1, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v1, :cond_19b

    move-object v1, p1

    check-cast v1, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_193

    iput-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_23

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v2

    goto :goto_25

    :cond_23
    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    :goto_25
    iput v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    if-lez v2, :cond_178

    rem-int/lit8 v2, v2, 0x8
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_1c0

    if-nez v2, :cond_15d

    :try_start_2d
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    nop

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_14e

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_a6

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v2

    if-eqz v2, :cond_a6

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    array-length v5, v2

    move v6, v4

    :goto_66
    if-ge v6, v5, :cond_a6

    aget v7, v2, v6

    invoke-static {v7}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v8

    if-eqz v8, :cond_73

    add-int/lit8 v6, v6, 0x1

    goto :goto_66

    :cond_73
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". See "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " documentation."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a6
    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    const/16 v5, 0x21

    if-ne v2, v5, :cond_bb

    iget v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_b3

    goto :goto_bb

    :cond_b3
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "3DES key size must be 168 bits."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_bb
    :goto_bb
    const/16 v5, 0x80

    if-ne v2, v5, :cond_129

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    const/16 v5, 0x40

    if-lt v2, v5, :cond_121

    const/16 v5, 0x200

    if-gt v2, v5, :cond_121

    new-array v2, v3, [I

    iget v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    aput v5, v2, v4

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v2

    if-eqz v2, :cond_13e

    nop

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    array-length v5, v2

    if-ne v5, v3, :cond_ea

    aget v3, v2, v4

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    if-ne v3, v4, :cond_ea

    goto :goto_13e

    :cond_ea
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported digests specification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " supported for this HMAC key algorithm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_121
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "HMAC key sizes must be within 64-512 bits, inclusive."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_129
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v2

    if-eqz v2, :cond_13a

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    goto :goto_13e

    :cond_13a
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    :cond_13e
    :goto_13e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V
    :try_end_146
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_146} :catch_156
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_146} :catch_156
    .catchall {:try_start_2d .. :try_end_146} :catchall_1c0

    nop

    const/4 v0, 0x1

    if-nez v0, :cond_14d

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    :cond_14d
    return-void

    :cond_14e
    :try_start_14e
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Signature paddings not supported for symmetric key algorithms"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_156
    .catch Ljava/lang/IllegalStateException; {:try_start_14e .. :try_end_156} :catch_156
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14e .. :try_end_156} :catch_156
    .catchall {:try_start_14e .. :try_end_156} :catchall_1c0

    :catch_156
    move-exception v2

    :try_start_157
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v3, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_15d
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key size must be a multiple of 8: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_178
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key size must be positive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_193
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "KeyStore entry alias not provided"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19b
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot initialize without a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1c0
    .catchall {:try_start_157 .. :try_end_1c0} :catchall_1c0

    :catchall_1c0
    move-exception v1

    if-nez v0, :cond_1c6

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    :cond_1c6
    throw v1
.end method

.method synthetic lambda$engineGenerateKey$1$android-security-keystore2-AndroidKeyStoreKeyGeneratorSpi(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_18

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    if-ne v0, v1, :cond_18

    const v0, 0x30000008

    const/16 v1, 0x60

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    const v0, 0x20000004

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
