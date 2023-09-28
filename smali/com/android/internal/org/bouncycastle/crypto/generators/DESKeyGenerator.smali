# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [B

    :goto_4
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-nez v1, :cond_14

    return-object v0

    :cond_14
    goto :goto_4
.end method

.method public init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    const/16 v1, 0x8

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_f

    goto :goto_1c

    :cond_f
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    if-ne v0, v1, :cond_14

    goto :goto_1e

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DES key must be 64 bits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_1c
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    :goto_1e
    return-void
.end method
