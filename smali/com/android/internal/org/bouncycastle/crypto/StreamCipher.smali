# classes4.dex

.class public interface abstract Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract processBytes([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract returnByte(B)B
.end method
