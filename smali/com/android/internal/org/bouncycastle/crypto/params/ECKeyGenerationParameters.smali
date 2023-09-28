# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private domainParams:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    return-void
.end method


# virtual methods
.method public getDomainParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method
