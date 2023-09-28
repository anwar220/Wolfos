# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
.super Ljava/lang/Object;


# instance fields
.field private privateParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field private publicParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-void
.end method


# virtual methods
.method public getPrivate()Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-object v0
.end method

.method public getPublic()Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-object v0
.end method
