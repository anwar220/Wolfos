# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasePBKDF2"
.end annotation


# instance fields
.field private defaultDigest:I

.field private ivSizeInBits:I

.field private keySizeInBits:I

.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .registers 7

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->keySizeInBits:I

    iput p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->ivSizeInBits:I

    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->defaultDigest:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIILcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private getDigestCode(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;->-$$Nest$sfgetprfCodes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_11
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid KeySpec: unknown PRF algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v2, :cond_f6

    move-object v2, v1

    check-cast v2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v3

    if-nez v3, :cond_3d

    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_3d

    iget v3, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->keySizeInBits:I

    if-eqz v3, :cond_3d

    new-instance v12, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->algName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->algOid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v6, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    iget v7, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->defaultDigest:I

    iget v8, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->keySizeInBits:I

    iget v9, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->ivSizeInBits:I

    const/4 v11, 0x0

    move-object v3, v12

    move-object v10, v2

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    return-object v12

    :cond_3d
    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v3

    if-eqz v3, :cond_ed

    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v3

    if-lez v3, :cond_cf

    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v3

    if-lez v3, :cond_b1

    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_a8

    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    if-eqz v3, :cond_88

    move-object v12, v2

    check-cast v12, Lcom/android/internal/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;->getPrf()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->getDigestCode(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v13

    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v14

    const/4 v15, -0x1

    iget v3, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    invoke-static {v2, v3, v13, v14}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v16

    new-instance v17, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->algName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->algOid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v6, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    move-object/from16 v3, v17

    move v7, v13

    move v8, v14

    move v9, v15

    move-object v10, v2

    move-object/from16 v11, v16

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    return-object v17

    :cond_88
    iget v12, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->defaultDigest:I

    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v13

    const/4 v14, -0x1

    iget v3, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    invoke-static {v2, v3, v12, v13}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v15

    new-instance v16, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->algName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->algOid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v6, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    move-object/from16 v3, v16

    move v7, v12

    move v8, v13

    move v9, v14

    move-object v10, v2

    move-object v11, v15

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    return-object v16

    :cond_a8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "password empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b1
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "positive key length required: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_cf
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "positive iteration count required: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_ed
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v4, "missing required salt"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f6
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Invalid KeySpec"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
