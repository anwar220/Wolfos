# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;


# static fields
.field public static aes128Ccm:Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;


# instance fields
.field private symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->aes128Ccm:Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;

    return-object v0

    :cond_c
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V

    return-object v0
.end method

.method public getSymmAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-object v0
.end method

.method public setSymmAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method