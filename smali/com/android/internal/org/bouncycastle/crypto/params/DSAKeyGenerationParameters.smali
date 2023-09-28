# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V
    .registers 4

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    return-object v0
.end method
