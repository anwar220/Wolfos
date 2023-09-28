# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private params:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V
    .registers 4

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->getStrength(Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    return-void
.end method

.method static getStrength(Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getL()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getL()I

    move-result v0

    goto :goto_13

    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    :goto_13
    return v0
.end method


# virtual methods
.method public getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    return-object v0
.end method
