# classes4.dex

.class Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field final synthetic val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor <init>(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)Z
    .registers 4

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->getEndomorphism()Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v0

    if-ne v0, p2, :cond_10

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->getMappedPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public precompute(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;
    .registers 6

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;-><init>()V

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->setEndomorphism(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)V

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->setMappedPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    return-object v2
.end method
