# classes3.dex

.class public abstract Landroid/security/keystore/KeyProperties;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyProperties$Namespace;,
        Landroid/security/keystore/KeyProperties$SecurityLevel;,
        Landroid/security/keystore/KeyProperties$SecurityLevelEnum;,
        Landroid/security/keystore/KeyProperties$Origin;,
        Landroid/security/keystore/KeyProperties$OriginEnum;,
        Landroid/security/keystore/KeyProperties$Digest;,
        Landroid/security/keystore/KeyProperties$DigestEnum;,
        Landroid/security/keystore/KeyProperties$SignaturePadding;,
        Landroid/security/keystore/KeyProperties$SignaturePaddingEnum;,
        Landroid/security/keystore/KeyProperties$EncryptionPadding;,
        Landroid/security/keystore/KeyProperties$EncryptionPaddingEnum;,
        Landroid/security/keystore/KeyProperties$BlockMode;,
        Landroid/security/keystore/KeyProperties$BlockModeEnum;,
        Landroid/security/keystore/KeyProperties$KeyAlgorithm;,
        Landroid/security/keystore/KeyProperties$KeyAlgorithmEnum;,
        Landroid/security/keystore/KeyProperties$Purpose;,
        Landroid/security/keystore/KeyProperties$PurposeEnum;,
        Landroid/security/keystore/KeyProperties$AuthEnum;
    }
.end annotation


# static fields
.field public static final AUTH_BIOMETRIC_STRONG:I = 0x2

.field public static final AUTH_DEVICE_CREDENTIAL:I = 0x1

.field public static final BLOCK_MODE_CBC:Ljava/lang/String; = "CBC"

.field public static final BLOCK_MODE_CTR:Ljava/lang/String; = "CTR"

.field public static final BLOCK_MODE_ECB:Ljava/lang/String; = "ECB"

.field public static final BLOCK_MODE_GCM:Ljava/lang/String; = "GCM"

.field public static final DIGEST_MD5:Ljava/lang/String; = "MD5"

.field public static final DIGEST_NONE:Ljava/lang/String; = "NONE"

.field public static final DIGEST_SHA1:Ljava/lang/String; = "SHA-1"

.field public static final DIGEST_SHA224:Ljava/lang/String; = "SHA-224"

.field public static final DIGEST_SHA256:Ljava/lang/String; = "SHA-256"

.field public static final DIGEST_SHA384:Ljava/lang/String; = "SHA-384"

.field public static final DIGEST_SHA512:Ljava/lang/String; = "SHA-512"

.field public static final ENCRYPTION_PADDING_NONE:Ljava/lang/String; = "NoPadding"

.field public static final ENCRYPTION_PADDING_PKCS7:Ljava/lang/String; = "PKCS7Padding"

.field public static final ENCRYPTION_PADDING_RSA_OAEP:Ljava/lang/String; = "OAEPPadding"

.field public static final ENCRYPTION_PADDING_RSA_PKCS1:Ljava/lang/String; = "PKCS1Padding"

.field public static final KEY_ALGORITHM_3DES:Ljava/lang/String; = "DESede"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_ALGORITHM_AES:Ljava/lang/String; = "AES"

.field public static final KEY_ALGORITHM_EC:Ljava/lang/String; = "EC"

.field public static final KEY_ALGORITHM_HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field public static final KEY_ALGORITHM_HMAC_SHA224:Ljava/lang/String; = "HmacSHA224"

.field public static final KEY_ALGORITHM_HMAC_SHA256:Ljava/lang/String; = "HmacSHA256"

.field public static final KEY_ALGORITHM_HMAC_SHA384:Ljava/lang/String; = "HmacSHA384"

.field public static final KEY_ALGORITHM_HMAC_SHA512:Ljava/lang/String; = "HmacSHA512"

.field public static final KEY_ALGORITHM_RSA:Ljava/lang/String; = "RSA"

.field public static final NAMESPACE_APPLICATION:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAMESPACE_LOCKSETTINGS:I = 0x67

.field public static final NAMESPACE_WIFI:I = 0x66
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ORIGIN_GENERATED:I = 0x1

.field public static final ORIGIN_IMPORTED:I = 0x2

.field public static final ORIGIN_SECURELY_IMPORTED:I = 0x8

.field public static final ORIGIN_UNKNOWN:I = 0x4

.field public static final PURPOSE_AGREE_KEY:I = 0x40

.field public static final PURPOSE_ATTEST_KEY:I = 0x80

.field public static final PURPOSE_DECRYPT:I = 0x2

.field public static final PURPOSE_ENCRYPT:I = 0x1

.field public static final PURPOSE_SIGN:I = 0x4

.field public static final PURPOSE_VERIFY:I = 0x8

.field public static final PURPOSE_WRAP_KEY:I = 0x20

.field public static final SECURITY_LEVEL_SOFTWARE:I = 0x0

.field public static final SECURITY_LEVEL_STRONGBOX:I = 0x2

.field public static final SECURITY_LEVEL_TRUSTED_ENVIRONMENT:I = 0x1

.field public static final SECURITY_LEVEL_UNKNOWN:I = -0x2

.field public static final SECURITY_LEVEL_UNKNOWN_SECURE:I = -0x1

.field public static final SIGNATURE_PADDING_RSA_PKCS1:Ljava/lang/String; = "PKCS1"

.field public static final SIGNATURE_PADDING_RSA_PSS:Ljava/lang/String; = "PSS"

.field public static final UNRESTRICTED_USAGE_COUNT:I = -0x1


# direct methods
.method static bridge synthetic -$$Nest$smgetSetFlags(I)[I
    .registers 1

    invoke-static {p0}, Landroid/security/keystore/KeyProperties;->getSetFlags(I)[I

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSetBitCount(I)I
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz p0, :cond_10

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    :cond_d
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_10
    return v0
.end method

.method private static getSetFlags(I)[I
    .registers 5

    if-nez p0, :cond_5

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0

    :cond_5
    invoke-static {p0}, Landroid/security/keystore/KeyProperties;->getSetBitCount(I)I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_d
    if-eqz p0, :cond_1c

    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_17

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    :cond_17
    ushr-int/lit8 p0, p0, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1c
    return-object v0
.end method

.method public static legacyUidToNamespace(I)I
    .registers 4

    sparse-switch p0, :sswitch_data_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No namespace corresponding to uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1c
    const/16 v0, 0x66

    return v0

    :sswitch_1f
    const/4 v0, -0x1

    return v0

    nop

    :sswitch_data_22
    .sparse-switch
        -0x1 -> :sswitch_1f
        0x3f2 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static namespaceToLegacyUid(I)I
    .registers 4

    sparse-switch p0, :sswitch_data_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No UID corresponding to namespace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1c
    const/16 v0, 0x3f2

    return v0

    :sswitch_1f
    const/4 v0, -0x1

    return v0

    nop

    :sswitch_data_22
    .sparse-switch
        -0x1 -> :sswitch_1f
        0x66 -> :sswitch_1c
    .end sparse-switch
.end method
