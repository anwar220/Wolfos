# classes4.dex

.class Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferedBEROctetStream"
.end annotation


# instance fields
.field private _buf:[B

.field private _derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

.field private _off:I

.field final synthetic this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;


# direct methods
.method constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;[B)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    :cond_d
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;->flushInternal()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;->writeBEREnd()V

    return-void
.end method

.method public write(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    array-length v1, v0

    if-ne v2, v1, :cond_18

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v0, v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    iput v4, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    :cond_18
    return-void
.end method

.method public write([BII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_2b

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    goto :goto_2b

    :cond_1e
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    const/4 v3, 0x1

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v5, v4}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    iput v5, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2b
    :goto_2b
    return-void
.end method
