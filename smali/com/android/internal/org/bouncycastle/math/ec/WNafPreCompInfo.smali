# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected confWidth:I

.field protected preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field protected preCompNeg:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field volatile promotionCountdown:I

.field protected twice:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field protected width:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->confWidth:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->width:I

    return-void
.end method


# virtual methods
.method decrementPromotionCountdown()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    if-lez v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    :cond_8
    return v0
.end method

.method public getConfWidth()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->confWidth:I

    return v0
.end method

.method public getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method getPromotionCountdown()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    return v0
.end method

.method public getTwice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->width:I

    return v0
.end method

.method public isPromoted()Z
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setConfWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->confWidth:I

    return-void
.end method

.method public setPreComp([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method public setPreCompNeg([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method setPromotionCountdown(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    return-void
.end method

.method public setTwice(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->width:I

    return-void
.end method
