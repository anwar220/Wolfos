# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithID;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private id:[B

.field private parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithID;->parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithID;->id:[B

    return-void
.end method


# virtual methods
.method public getID()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithID;->id:[B

    return-object v0
.end method

.method public getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithID;->parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method
