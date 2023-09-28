# classes4.dex

.class Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;
.super Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;


# instance fields
.field private _b1:I

.field private _b2:I

.field private _eofOn00:Z

.field private _eofReached:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-ltz v0, :cond_1b

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    return-void

    :cond_1b
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private checkForEof()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setParentEofDetect(Z)V

    :cond_16
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    return v0
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_19

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    return v1

    :cond_19
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-nez v0, :cond_47

    const/4 v0, 0x3

    if-ge p3, v0, :cond_8

    goto :goto_47

    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-eqz v0, :cond_e

    const/4 v0, -0x1

    return v0

    :cond_e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_41

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-ltz v1, :cond_3b

    add-int/lit8 v1, v0, 0x2

    return v1

    :cond_3b
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_41
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_47
    :goto_47
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method setEofOn00(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    return-void
.end method
