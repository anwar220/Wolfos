# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;
.super Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;)V

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;->writeBERHeader(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;->writeBERHeader(I)V

    return-void
.end method


# virtual methods
.method public getOctetOutputStream()Ljava/io/OutputStream;
    .registers 2

    const/16 v0, 0x3e8

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;->getOctetOutputStream([B)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOctetOutputStream([B)Ljava/io/OutputStream;
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;-><init>(Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;[B)V

    return-object v0
.end method
