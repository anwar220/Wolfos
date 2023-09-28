# classes4.dex

.class Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;
.super Ljava/io/InputStream;


# instance fields
.field private _currentStream:Ljava/io/InputStream;

.field private _first:Z

.field private final _parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method

.method private getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return-object v1

    :cond_a
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;

    if-eqz v1, :cond_12

    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;

    return-object v1

    :cond_12
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown object encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    if-nez v0, :cond_11

    return v1

    :cond_11
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_23

    return v0

    :cond_23
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v2

    if-nez v2, :cond_2d

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    return v1

    :cond_2d
    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_1a
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    if-nez v0, :cond_11

    return v1

    :cond_11
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    add-int v3, p2, v0

    sub-int v4, p3, v0

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_2b

    add-int/2addr v0, v2

    if-ne v0, p3, :cond_40

    return v0

    :cond_2b
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v3

    if-nez v3, :cond_3a

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    const/4 v4, 0x1

    if-ge v0, v4, :cond_38

    goto :goto_39

    :cond_38
    move v1, v0

    :goto_39
    return v1

    :cond_3a
    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    :cond_40
    goto :goto_1b
.end method
