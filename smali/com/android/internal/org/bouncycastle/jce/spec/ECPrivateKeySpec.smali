# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;
.super Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;


# instance fields
.field private d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;-><init>(Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->d:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getD()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->d:Ljava/math/BigInteger;

    return-object v0
.end method
