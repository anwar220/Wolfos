# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    return-void
.end method

.method private getDERTime()[B
    .registers 7

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_9b

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->hasMinutes()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v1, "0000Z"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x5

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_35
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->hasSeconds()Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v1, "00Z"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x3

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_5c
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->hasFractionalSeconds()Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    :goto_67
    if-lez v0, :cond_74

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x30

    if-ne v3, v4, :cond_74

    add-int/lit8 v0, v0, -0x1

    goto :goto_67

    :cond_74
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_88

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v1, v3, v0

    return-object v3

    :cond_88
    add-int/lit8 v3, v0, 0x2

    new-array v3, v3, [B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    add-int/lit8 v5, v0, 0x1

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, v3, v2

    return-object v3

    :cond_98
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    return-object v0

    :cond_9b
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->time:[B

    return-object v0
.end method


# virtual methods
.method encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->getDERTime()[B

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZI[B)V

    return-void
.end method

.method encodedLength()I
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->getDERTime()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    return-object p0
.end method

.method toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    return-object p0
.end method