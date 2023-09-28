# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private params:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;


# direct methods
.method protected constructor <init>(ZLcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    if-nez v2, :cond_15

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    if-nez v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1

    :cond_15
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->isPrivate()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_f
    return v0
.end method
