# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;
.super Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;


# static fields
.field private static algorithms:Ljava/util/Hashtable;

.field private static keyAlgorithms:Ljava/util/Hashtable;

.field private static noParams:Ljava/util/Set;

.field private static oids:Ljava/util/Hashtable;

.field private static params:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.2.840.113549.1.1.4"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v3, "MD5WITHRSAENCRYPTION"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v3, "MD5WITHRSA"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v4, "RSAWITHMD5"

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "1.2.840.113549.1.1.5"

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v5, "SHA1WITHRSAENCRYPTION"

    invoke-virtual {v0, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v5, "SHA1WITHRSA"

    invoke-virtual {v0, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "SHA224WITHRSAENCRYPTION"

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "SHA224WITHRSA"

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA256WITHRSAENCRYPTION"

    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA256WITHRSA"

    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "SHA384WITHRSAENCRYPTION"

    invoke-virtual {v0, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "SHA384WITHRSA"

    invoke-virtual {v0, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "SHA512WITHRSAENCRYPTION"

    invoke-virtual {v0, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "SHA512WITHRSA"

    invoke-virtual {v0, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SHA1WITHRSAANDMGF1"

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "SHA224WITHRSAANDMGF1"

    invoke-virtual {v0, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v12, "SHA256WITHRSAANDMGF1"

    invoke-virtual {v0, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "SHA384WITHRSAANDMGF1"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "SHA512WITHRSAANDMGF1"

    invoke-virtual {v0, v14, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v15, "RSAWITHSHA1"

    invoke-virtual {v0, v15, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "1.2.840.10040.4.3"

    invoke-direct {v1, v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v14

    const-string v14, "SHA1WITHDSA"

    invoke-virtual {v0, v14, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v13

    const-string v13, "DSAWITHSHA1"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "SHA224WITHDSA"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v12

    const-string v12, "SHA256WITHDSA"

    invoke-virtual {v0, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v19, v11

    const-string v11, "SHA384WITHDSA"

    invoke-virtual {v0, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "SHA512WITHDSA"

    invoke-virtual {v0, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "SHA1WITHECDSA"

    invoke-virtual {v0, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v20, v10

    const-string v10, "SHA224WITHECDSA"

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v21, v12

    const-string v12, "SHA256WITHECDSA"

    invoke-virtual {v0, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v22, v13

    const-string v13, "SHA384WITHECDSA"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v23, v13

    const-string v13, "SHA512WITHECDSA"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v24, v13

    const-string v13, "ECDSAWITHSHA1"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    const/16 v2, 0x14

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->creatPSSParams(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    const/16 v3, 0x1c

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->creatPSSParams(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v3

    move-object/from16 v4, v19

    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    const/16 v4, 0x20

    invoke-static {v2, v4}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->creatPSSParams(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v4

    move-object/from16 v5, v18

    invoke-virtual {v3, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    const/16 v5, 0x30

    invoke-static {v3, v5}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->creatPSSParams(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v5

    move-object/from16 v6, v17

    invoke-virtual {v4, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sget-object v5, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    const/16 v6, 0x40

    invoke-static {v4, v6}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->creatPSSParams(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v6

    move-object/from16 v7, v16

    invoke-virtual {v5, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const-string v6, "BC"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;-><init>()V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v1, :cond_21

    :try_start_11
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-object v1, v2

    goto :goto_21

    :catch_18
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown signature type requested"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_21
    :goto_21
    if-eqz p2, :cond_be

    if-eqz p3, :cond_b5

    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_56

    :cond_35
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v2, v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_56

    :cond_4d
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v2, v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :goto_56
    :try_start_56
    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    invoke-direct {v3, p2, v4, p4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->reqInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_6b} :catch_ac

    nop

    if-nez p6, :cond_73

    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    goto :goto_77

    :cond_73
    invoke-static {p1, p6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    :goto_77
    invoke-virtual {v2, p5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    :try_start_7a
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->reqInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/Signature;->update([B)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_85} :catch_92

    nop

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->sigBits:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-void

    :catch_92
    move-exception v3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception encoding TBS cert request - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_ac
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "can\'t encode public key"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "public key must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_be
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "subject must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->convertName(Ljavax/security/auth/x500/X500Principal;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v2

    const-string v6, "BC"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->convertName(Ljavax/security/auth/x500/X500Principal;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->toDERSequence([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method private static convertName(Ljavax/security/auth/x500/X500Principal;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;-><init>([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "can\'t convert name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static creatPSSParams(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    .registers 8

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v4, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    return-object v0
.end method

.method private static getDigestAlgName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "MD5"

    return-object v0

    :cond_b
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "SHA1"

    return-object v0

    :cond_16
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "SHA224"

    return-object v0

    :cond_21
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "SHA256"

    return-object v0

    :cond_2c
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "SHA384"

    return-object v0

    :cond_37
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "SHA512"

    return-object v0

    :cond_42
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_3f

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->getDigestAlgName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "withRSAandMGF1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3f
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setSignatureParameters(Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p2, :cond_76

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-virtual {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Z

    move-result v0

    if-nez v0, :cond_76

    invoke-virtual {p1}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    :try_start_16
    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_23} :catch_58

    nop

    invoke-virtual {p1}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MGF1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    :try_start_30
    const-class v1, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_39
    .catch Ljava/security/GeneralSecurityException; {:try_start_30 .. :try_end_39} :catch_3a

    goto :goto_76

    :catch_3a
    move-exception v1

    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception extracting parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_58
    move-exception v1

    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException decoding parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_76
    :goto_76
    return-void
.end method

.method private static toDERSequence([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "badly encoded request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getEncoded()[B
    .registers 4

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-string v0, "BC"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-string v0, "error decoding public key"

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->reqInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    :try_start_8
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3
    :try_end_1a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_8 .. :try_end_1a} :catch_74
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1a} :catch_6d

    if-nez p1, :cond_2d

    :try_start_1c
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    :cond_2d
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_3d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1c .. :try_end_3d} :catch_3e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1c .. :try_end_3d} :catch_74
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3d} :catch_6d

    return-object v0

    :catch_3e
    move-exception v4

    :try_start_3f
    sget-object v5, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6b

    sget-object v5, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez p1, :cond_62

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    :cond_62
    invoke-static {v5, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    :cond_6b
    nop

    throw v4
    :try_end_6d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3f .. :try_end_6d} :catch_74
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_6d} :catch_6d

    :catch_6d
    move-exception v2

    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_74
    move-exception v2

    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public verify()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const-string v0, "BC"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->verify(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public verify(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->verify(Ljava/security/PublicKey;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    if-nez p2, :cond_d

    :try_start_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_17

    :cond_d
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_17} :catch_18

    :goto_17
    goto :goto_41

    :catch_18
    move-exception v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7e

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez p2, :cond_3c

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    goto :goto_40

    :cond_3c
    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    :goto_40
    move-object v0, v2

    :goto_41
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->setSignatureParameters(Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    :try_start_4d
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->reqInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_58} :catch_64

    nop

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/PKCS10CertificationRequest;->sigBits:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1

    :catch_64
    move-exception v1

    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception encoding TBS cert request - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7e
    throw v0
.end method
