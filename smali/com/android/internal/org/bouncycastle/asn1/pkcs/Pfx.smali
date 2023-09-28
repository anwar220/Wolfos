# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private contentInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private macData:Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;


# direct methods
.method private constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_33

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v1, v2, :cond_32

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    :cond_32
    return-void

    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "wrong version for PFX PDU"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;
    .registers 3

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;

    return-object v0

    :cond_8
    if-eqz p0, :cond_14

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAuthSafe()Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    return-object v0
.end method

.method public getMacData()Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1c
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
