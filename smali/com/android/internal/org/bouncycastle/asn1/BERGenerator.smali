# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Generator;


# instance fields
.field private _isExplicit:Z

.field private _tagNo:I

.field private _tagged:Z


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;IZ)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_tagNo:I

    return-void
.end method

.method private writeHdr(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public getRawOutputStream()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected writeBEREnd()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :cond_1d
    return-void
.end method

.method protected writeBERHeader(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_tagNo:I

    or-int/lit16 v0, v0, 0x80

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    if-eqz v1, :cond_15

    or-int/lit8 v1, v0, 0x20

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_22

    :cond_15
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1f

    or-int/lit8 v1, v0, 0x20

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_22

    :cond_1f
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    :goto_22
    goto :goto_26

    :cond_23
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    :goto_26
    return-void
.end method
