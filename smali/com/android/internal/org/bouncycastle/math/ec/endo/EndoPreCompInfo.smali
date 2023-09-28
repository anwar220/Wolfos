# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected mappedPoint:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndomorphism()Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    return-object v0
.end method

.method public getMappedPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->mappedPoint:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public setEndomorphism(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    return-void
.end method

.method public setMappedPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->mappedPoint:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method
