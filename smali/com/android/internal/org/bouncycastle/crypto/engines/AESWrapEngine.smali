# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/engines/AESWrapEngine;
.super Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Z)V

    return-void
.end method
