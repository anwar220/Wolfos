# classes4.dex

.class public interface abstract Lcom/android/internal/org/bouncycastle/crypto/SignerWithRecovery;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Signer;


# virtual methods
.method public abstract getRecoveredMessage()[B
.end method

.method public abstract hasFullMessage()Z
.end method

.method public abstract updateWithRecoveredMessage([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method
