# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;


# instance fields
.field private info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private isBer:Z


# direct methods
.method private constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    array-length v2, v1

    if-eq v0, v2, :cond_21

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_21
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    return-void
.end method

.method public constructor <init>([Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->copy([Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;)[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    return-void
.end method

.method private copy([Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;)[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .registers 5

    array-length v0, p1

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .registers 3

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    return-object v0

    :cond_8
    if-eqz p0, :cond_14

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getContentInfo()[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->copy([Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;)[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_c
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
