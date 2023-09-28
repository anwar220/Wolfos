# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x3e8


# instance fields
.field private final chunkSize:I

.field private final octs:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method static bridge synthetic -$$Nest$fgetchunkSize(Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->chunkSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetocts(Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public constructor <init>([B)V
    .registers 3

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V

    return-void
.end method

.method private constructor <init>([B[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    iput p3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->chunkSize:I

    return-void
.end method

.method public constructor <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V

    return-void
.end method

.method public constructor <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V
    .registers 4

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->toBytes([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)[B

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V

    return-void
.end method

.method static fromSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_16

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v2
.end method

.method private static toBytes([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)[B
    .registers 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-eq v1, v2, :cond_34

    :try_start_9
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_16

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :catch_16
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception converting octets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodedIndef(ZILjava/util/Enumeration;)V

    return-void
.end method

.method encodedLength()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_5

    :cond_1b
    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public getObjects()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-nez v0, :cond_a

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;-><init>(Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;)V

    return-object v0

    :cond_a
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$2;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$2;-><init>(Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;)V

    return-object v0
.end method

.method isConstructed()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
