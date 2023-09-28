# classes3.dex

.class public Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;
.super Landroid/security/keystore2/AndroidKeyStorePublicKey;

# interfaces
.implements Ljava/security/interfaces/EdECPublicKey;


# static fields
.field private static final DER_KEY_PREFIX:[B

.field private static final ED25519_KEY_SIZE_BYTES:I = 0x20


# instance fields
.field private mEncodedKey:[B

.field private mPoint:Ljava/security/spec/EdECPoint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->DER_KEY_PREFIX:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x2at
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x70t
        0x3t
        0x21t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;[B)V
    .registers 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/security/keystore2/AndroidKeyStorePublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLjava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    iput-object p5, p0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->mEncodedKey:[B

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->DER_KEY_PREFIX:[B

    invoke-static {v0, p5}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->matchesPreamble([B[B)I

    move-result v0

    if-eqz v0, :cond_1f

    array-length v1, p5

    invoke-static {p5, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->pointFromKeyByteArray([B)Ljava/security/spec/EdECPoint;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->mPoint:Ljava/security/spec/EdECPoint;

    return-void

    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Key size is not correct size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static matchesPreamble([B[B)I
    .registers 5

    array-length v0, p1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    :cond_8
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Arrays;->compare([B[B)I

    move-result v0

    if-eqz v0, :cond_14

    return v2

    :cond_14
    array-length v0, p0

    return v0
.end method

.method private static pointFromKeyByteArray([B)Ljava/security/spec/EdECPoint;
    .registers 5

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    array-length v2, p0

    sub-int/2addr v2, v1

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    invoke-static {p0}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->reverse([B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v1, v2

    new-instance v2, Ljava/security/spec/EdECPoint;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/EdECPoint;-><init>(ZLjava/math/BigInteger;)V

    return-object v2
.end method

.method private static reverse([B)V
    .registers 5

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-ge v0, v1, :cond_14

    aget-byte v2, p0, v0

    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    nop

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_14
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .registers 2

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->mEncodedKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getParams()Ljava/security/spec/NamedParameterSpec;
    .registers 2

    sget-object v0, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    return-object v0
.end method

.method public getPoint()Ljava/security/spec/EdECPoint;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->mPoint:Ljava/security/spec/EdECPoint;

    return-object v0
.end method

.method getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;
    .registers 9

    new-instance v7, Landroid/security/keystore2/AndroidKeyStoreEdECPrivateKey;

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    iget-wide v2, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v4

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v6

    const-string v5, "EdDSA"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/security/keystore2/AndroidKeyStoreEdECPrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    return-object v7
.end method
