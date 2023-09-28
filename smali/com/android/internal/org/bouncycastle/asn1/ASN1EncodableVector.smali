# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_CAPACITY:I = 0xa

.field static final EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field private copyOnWrite:Z

.field private elementCount:I

.field private elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_14

    if-nez p1, :cond_a

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_c

    :cond_a
    new-array v0, p1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    :goto_c
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'initialCapacity\' must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static cloneElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_d

    :cond_7
    invoke-virtual {p0}, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    :goto_d
    return-object v0
.end method

.method private reallocate(I)V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v2, v1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iput-boolean v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6

    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-le v1, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    or-int/2addr v2, v3

    if-eqz v2, :cond_15

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->reallocate(I)V

    :cond_15
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    aput-object p1, v2, v3

    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    return-void

    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'element\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 9

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    return-void

    :cond_a
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v2, v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    add-int/2addr v3, v0

    if-le v3, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    or-int/2addr v1, v4

    if-eqz v1, :cond_1c

    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->reallocate(I)V

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    if-eqz v4, :cond_31

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    add-int/2addr v6, v1

    aput-object v4, v5, v6

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_1d

    iput v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    return-void

    :cond_31
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "\'other\' elements cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'other\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method copyElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0

    :cond_7
    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-ge p1, v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v0, v0, p1

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    return v0
.end method

.method takeElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0

    :cond_7
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v2, v1

    if-ne v2, v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    return-object v1

    :cond_10
    new-array v2, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
