# classes4.dex

.class public interface abstract Lcom/android/internal/org/bouncycastle/crypto/Signer;
.super Ljava/lang/Object;


# virtual methods
.method public abstract generateSignature()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/CryptoException;,
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation
.end method

.method public abstract init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
.end method

.method public abstract reset()V
.end method

.method public abstract update(B)V
.end method

.method public abstract update([BII)V
.end method

.method public abstract verifySignature([B)Z
.end method
