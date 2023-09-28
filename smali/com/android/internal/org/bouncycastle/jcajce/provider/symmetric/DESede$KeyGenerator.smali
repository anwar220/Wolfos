# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator"
.end annotation


# instance fields
.field private keySizeSet:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    const-string v1, "DESede"

    const/16 v2, 0xc0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->keySizeSet:Z

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .registers 6

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->uninitialised:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->engine:Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->defaultKeySize:I

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->uninitialised:Z

    :cond_17
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->keySizeSet:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->engine:Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v0

    const/16 v2, 0x10

    const/16 v3, 0x8

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_30
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->engine:Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engineInit(ILjava/security/SecureRandom;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->keySizeSet:Z

    return-void
.end method
