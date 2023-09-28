# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;


# direct methods
.method public constructor <init>(ZLcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    return-object v0
.end method
