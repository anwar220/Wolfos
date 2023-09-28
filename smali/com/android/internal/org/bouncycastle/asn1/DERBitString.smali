# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;


# direct methods
.method protected constructor <init>(BI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>(BI)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    return-void
.end method

.method static fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .registers 6

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_19

    const/4 v0, 0x0

    aget-byte v2, p0, v0

    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v3, v3, [B

    array-length v4, v3

    if-eqz v4, :cond_13

    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez p1, :cond_18

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_b

    goto :goto_18

    :cond_b
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    return-object v1

    :cond_18
    :goto_18
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .registers 5

    if-eqz p0, :cond_68

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    if-eqz v0, :cond_7

    goto :goto_68

    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->data:[B

    move-object v2, p0

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    iget v2, v2, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->padBits:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0

    :cond_1b
    instance-of v0, p0, [B

    if-eqz v0, :cond_47

    :try_start_1f
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_29

    return-object v0

    :catch_29
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    :goto_68
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method


# virtual methods
.method encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->data:[B

    array-length v0, v0

    if-eqz v0, :cond_3c

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->padBits:I

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->data:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->data:[B

    add-int/lit8 v3, v0, -0x1

    aget-byte v2, v2, v3

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->padBits:I

    const/16 v4, 0xff

    shl-int v3, v4, v3

    and-int/2addr v2, v3

    int-to-byte v2, v2

    if-ne v1, v2, :cond_20

    goto :goto_3c

    :cond_20
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->data:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->padBits:I

    shl-int v2, v4, v2

    and-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v4, 0x3

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->padBits:I

    int-to-byte v5, v2

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->data:[B

    const/4 v7, 0x0

    add-int/lit8 v8, v0, -0x1

    move-object v2, p1

    move v3, p2

    move v9, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZIB[BIIB)V

    goto :goto_45

    :cond_3c
    :goto_3c
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->padBits:I

    int-to-byte v2, v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->data:[B

    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZIB[B)V

    :goto_45
    return-void
.end method

.method encodedLength()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isConstructed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    return-object p0
.end method

.method toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    return-object p0
.end method
