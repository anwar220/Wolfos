# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;


# instance fields
.field private psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;

    return-object v0

    :cond_c
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_43

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v4, 0x2

    if-gt v2, v4, :cond_43

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ne v2, v3, :cond_32

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v2, v1, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    :cond_32
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ne v2, v4, :cond_42

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    :cond_42
    return-object v1

    :cond_43
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "expected sequences with one or optionally two items"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getPsid()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSspRange()Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    return-object v0
.end method

.method public setPsid(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public setSspRange(Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    return-void
.end method

.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_11
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
