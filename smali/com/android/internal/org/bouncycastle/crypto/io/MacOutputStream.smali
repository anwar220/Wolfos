# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/io/MacOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field protected mac:Lcom/android/internal/org/bouncycastle/crypto/Mac;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/Mac;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    return-void
.end method


# virtual methods
.method public getMac()[B
    .registers 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    return-object v0
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    return-void
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    return-void
.end method
