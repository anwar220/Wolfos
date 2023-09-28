# classes4.dex

.class Lcom/android/internal/org/bouncycastle/asn1/DERFactory;
.super Ljava/lang/Object;


# static fields
.field static final EMPTY_SEQUENCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field static final EMPTY_SET:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERFactory;->EMPTY_SEQUENCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERFactory;->EMPTY_SET:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERFactory;->EMPTY_SEQUENCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0

    :cond_a
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method static createSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERFactory;->EMPTY_SET:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0

    :cond_a
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
