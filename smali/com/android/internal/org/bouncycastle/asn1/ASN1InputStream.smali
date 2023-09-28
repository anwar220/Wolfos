# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/BERTags;


# instance fields
.field private final lazyEvaluate:Z

.field private final limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 4

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 5

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method static createPrimitiveDERObject(ILcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_e2

    :pswitch_3  #0x7, 0x8, 0x9, 0xb, 0xd, 0xe, 0xf, 0x10, 0x11, 0x1d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_23  #0x1e
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBMPCharBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;-><init>([C)V

    return-object v0

    :pswitch_2d  #0x1c
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    return-object v0

    :pswitch_37  #0x1b
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    return-object v0

    :pswitch_41  #0x1a
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERVisibleString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    return-object v0

    :pswitch_4b  #0x19
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERGraphicString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERGraphicString;-><init>([B)V

    return-object v0

    :pswitch_55  #0x18
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    return-object v0

    :pswitch_5f  #0x17
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;-><init>([B)V

    return-object v0

    :pswitch_69  #0x16
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;-><init>([B)V

    return-object v0

    :pswitch_73  #0x15
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERVideotexString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERVideotexString;-><init>([B)V

    return-object v0

    :pswitch_7d  #0x14
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERT61String;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERT61String;-><init>([B)V

    return-object v0

    :pswitch_87  #0x13
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    return-object v0

    :pswitch_91  #0x12
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERNumericString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERNumericString;-><init>([B)V

    return-object v0

    :pswitch_9b  #0xc
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    return-object v0

    :pswitch_a5  #0xa
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    return-object v0

    :pswitch_ae  #0x6
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0

    :pswitch_b7  #0x5
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    return-object v0

    :pswitch_ba  #0x4
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0

    :pswitch_c4  #0x3
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->fromInputStream(ILjava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    return-object v0

    :pswitch_cd  #0x2
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    return-object v0

    :pswitch_d8  #0x1
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_d8  #00000001
        :pswitch_cd  #00000002
        :pswitch_c4  #00000003
        :pswitch_ba  #00000004
        :pswitch_b7  #00000005
        :pswitch_ae  #00000006
        :pswitch_3  #00000007
        :pswitch_3  #00000008
        :pswitch_3  #00000009
        :pswitch_a5  #0000000a
        :pswitch_3  #0000000b
        :pswitch_9b  #0000000c
        :pswitch_3  #0000000d
        :pswitch_3  #0000000e
        :pswitch_3  #0000000f
        :pswitch_3  #00000010
        :pswitch_3  #00000011
        :pswitch_91  #00000012
        :pswitch_87  #00000013
        :pswitch_7d  #00000014
        :pswitch_73  #00000015
        :pswitch_69  #00000016
        :pswitch_5f  #00000017
        :pswitch_55  #00000018
        :pswitch_4b  #00000019
        :pswitch_41  #0000001a
        :pswitch_37  #0000001b
        :pswitch_2d  #0000001c
        :pswitch_3  #0000001d
        :pswitch_23  #0000001e
    .end packed-switch
.end method

.method private static getBMPCharBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_98

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/16 v3, 0x8

    new-array v4, v3, [B

    :goto_11
    const-string v5, "EOF encountered in middle of BMPString"

    const/4 v6, 0x0

    if-lt v0, v3, :cond_60

    invoke-static {p0, v4, v6, v3}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v7

    if-ne v7, v3, :cond_5a

    aget-byte v5, v4, v6

    shl-int/2addr v5, v3

    const/4 v6, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x2

    aget-byte v6, v4, v6

    shl-int/2addr v6, v3

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    add-int/lit8 v5, v2, 0x2

    const/4 v6, 0x4

    aget-byte v6, v4, v6

    shl-int/2addr v6, v3

    const/4 v7, 0x5

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    add-int/lit8 v5, v2, 0x3

    const/4 v6, 0x6

    aget-byte v6, v4, v6

    shl-int/2addr v6, v3

    const/4 v7, 0x7

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v0, -0x8

    goto :goto_11

    :cond_5a
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_60
    if-lez v0, :cond_88

    invoke-static {p0, v4, v6, v0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v6

    if-ne v6, v0, :cond_82

    const/4 v5, 0x0

    :goto_69
    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v4, v5

    shl-int/2addr v5, v3

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v8, v2, 0x1

    or-int v9, v5, v6

    int-to-char v9, v9

    aput-char v9, v1, v2

    if-lt v7, v0, :cond_7f

    move v2, v8

    goto :goto_88

    :cond_7f
    move v5, v7

    move v2, v8

    goto :goto_69

    :cond_82
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_88
    :goto_88
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v3

    if-nez v3, :cond_92

    array-length v3, v1

    if-ne v3, v2, :cond_92

    return-object v1

    :cond_92
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_98
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "malformed BMPString encoding encountered"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    array-length v1, p1

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    :cond_c
    aget-object v1, p1, v0

    if-nez v1, :cond_15

    new-array v2, v0, [B

    aput-object v2, p1, v0

    move-object v1, v2

    :cond_15
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->readAllIntoByteArray([B)V

    return-object v1
.end method

.method static readLength(Ljava/io/InputStream;IZ)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_7a

    const/16 v1, 0x80

    if-ne v0, v1, :cond_c

    const/4 v1, -0x1

    return v1

    :cond_c
    const/16 v1, 0x7f

    if-le v0, v1, :cond_79

    and-int/lit8 v1, v0, 0x7f

    const/4 v2, 0x4

    if-gt v1, v2, :cond_60

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_2e

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_26

    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_26
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2e
    if-ltz v0, :cond_58

    if-lt v0, p1, :cond_79

    if-eqz p2, :cond_35

    goto :goto_79

    :cond_35
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "corrupted stream - out of bounds length found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_58
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - negative length found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_60
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DER length more than 4 bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_79
    :goto_79
    return v0

    :cond_7a
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "EOF found when length expected"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static readTagNumber(Ljava/io/InputStream;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x1f

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_35

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    if-eqz v2, :cond_2d

    :goto_f
    if-ltz v1, :cond_1f

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1f

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_f

    :cond_1f
    if-ltz v1, :cond_25

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_35

    :cond_25
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "EOF found inside tag value."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - invalid high tag number found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_35
    :goto_35
    return v0
.end method


# virtual methods
.method protected buildObject(III)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v1, p0, p3, v2}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_1c

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DLApplicationSpecific;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v0, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DLApplicationSpecific;-><init>(ZI[B)V

    return-object v2

    :cond_1c
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_2a

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2

    :cond_2a
    if-eqz v0, :cond_bb

    sparse-switch p2, :sswitch_data_c2

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " encountered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_4f
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    return-object v2

    :sswitch_58
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz v2, :cond_66

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;-><init>([B)V

    return-object v2

    :cond_66
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    return-object v2

    :sswitch_6f
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v2

    :sswitch_79
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v4, 0x0

    :goto_84
    array-length v5, v3

    if-eq v4, v5, :cond_b5

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    instance-of v6, v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v6, :cond_97

    move-object v6, v5

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_84

    :cond_97
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unknown object encountered in constructed OCTET STRING: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_b5
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v4

    :cond_bb
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-static {p2, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2

    :sswitch_data_c2
    .sparse-switch
        0x4 -> :sswitch_79
        0x8 -> :sswitch_6f
        0x10 -> :sswitch_58
        0x11 -> :sswitch_4f
    .end sparse-switch
.end method

.method getLimit()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    return v0
.end method

.method protected readFully([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_8

    return-void

    :cond_8
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of object"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v0

    return v0
.end method

.method public readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v0

    if-gtz v0, :cond_13

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    return-object v1

    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "unexpected end-of-contents marker"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v1

    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    move v2, v3

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v4

    if-gez v4, :cond_8d

    if-eqz v2, :cond_85

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v5, p0, v6}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    iget v7, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v6, v5, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_43

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v3, v1, v6}, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    :cond_43
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_51

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v7, v3, v1, v6}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    :cond_51
    sparse-switch v1, :sswitch_data_9c

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v7, "unknown BER object encountered"

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_5d
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/BERSetParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    :sswitch_67
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    :sswitch_71
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    :sswitch_7b
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    :cond_85
    new-instance v3, Ljava/io/IOException;

    const-string v5, "indefinite-length primitive encoding encountered"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8d
    :try_start_8d
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8d .. :try_end_91} :catch_92

    return-object v3

    :catch_92
    move-exception v3

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string v6, "corrupted stream detected"

    invoke-direct {v5, v6, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    nop

    :sswitch_data_9c
    .sparse-switch
        0x4 -> :sswitch_7b
        0x8 -> :sswitch_71
        0x10 -> :sswitch_67
        0x11 -> :sswitch_5d
    .end sparse-switch
.end method

.method readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_e

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object v0

    :cond_e
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_18
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_23

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_18

    :cond_23
    return-object v1
.end method
