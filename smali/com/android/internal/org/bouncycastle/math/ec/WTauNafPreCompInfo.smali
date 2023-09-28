# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/math/ec/WTauNafPreCompInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-void
.end method


# virtual methods
.method public getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v0
.end method

.method public setPreComp([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-void
.end method
