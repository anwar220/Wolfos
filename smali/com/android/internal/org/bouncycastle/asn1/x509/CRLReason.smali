# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;


# static fields
.field public static final AA_COMPROMISE:I = 0xa

.field public static final AFFILIATION_CHANGED:I = 0x3

.field public static final CA_COMPROMISE:I = 0x2

.field public static final CERTIFICATE_HOLD:I = 0x6

.field public static final CESSATION_OF_OPERATION:I = 0x5

.field public static final KEY_COMPROMISE:I = 0x1

.field public static final PRIVILEGE_WITHDRAWN:I = 0x9

.field public static final REMOVE_FROM_CRL:I = 0x8

.field public static final SUPERSEDED:I = 0x4

.field public static final UNSPECIFIED:I = 0x0

.field public static final aACompromise:I = 0xa

.field public static final affiliationChanged:I = 0x3

.field public static final cACompromise:I = 0x2

.field public static final certificateHold:I = 0x6

.field public static final cessationOfOperation:I = 0x5

.field public static final keyCompromise:I = 0x1

.field public static final privilegeWithdrawn:I = 0x9

.field private static final reasonString:[Ljava/lang/String;

.field public static final removeFromCRL:I = 0x8

.field public static final superseded:I = 0x4

.field private static final table:Ljava/util/Hashtable;

.field public static final unspecified:I


# instance fields
.field private value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const-string/jumbo v0, "unspecified"

    const-string/jumbo v1, "keyCompromise"

    const-string v2, "cACompromise"

    const-string v3, "affiliationChanged"

    const-string/jumbo v4, "superseded"

    const-string v5, "cessationOfOperation"

    const-string v6, "certificateHold"

    const-string/jumbo v7, "unknown"

    const-string/jumbo v8, "removeFromCRL"

    const-string/jumbo v9, "privilegeWithdrawn"

    const-string v10, "aACompromise"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->reasonString:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;
    .registers 2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    return-object v0

    :cond_8
    if-eqz p0, :cond_17

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->lookup(I)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    move-result-object v0

    return-object v0

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public static lookup(I)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;
    .registers 4

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    invoke-direct {v2, p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    return-object v1
.end method


# virtual methods
.method public getValue()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ltz v0, :cond_14

    const/16 v1, 0xa

    if-le v0, v1, :cond_f

    goto :goto_14

    :cond_f
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->reasonString:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_16

    :cond_14
    :goto_14
    const-string v1, "invalid"

    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CRLReason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
