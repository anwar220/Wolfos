# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private iv:[B

.field private parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V
    .registers 5

    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[BII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->iv:[B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getIV()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->iv:[B

    return-object v0
.end method

.method public getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method
