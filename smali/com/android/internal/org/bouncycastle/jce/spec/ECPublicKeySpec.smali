# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;
.super Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;


# instance fields
.field private q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;-><init>(Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    goto :goto_12

    :cond_10
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    :goto_12
    return-void
.end method


# virtual methods
.method public getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method
