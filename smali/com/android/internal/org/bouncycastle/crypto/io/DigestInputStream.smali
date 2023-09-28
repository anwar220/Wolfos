# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/io/DigestInputStream;
.super Ljava/io/FilterInputStream;


# instance fields
.field protected digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestInputStream;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public getDigest()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestInputStream;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_e

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestInputStream;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    int-to-byte v2, v0

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    :cond_e
    return v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_d

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestInputStream;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    :cond_d
    return v0
.end method
