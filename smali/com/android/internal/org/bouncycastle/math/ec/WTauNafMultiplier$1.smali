# classes4.dex

.class Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:B

.field final synthetic val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;


# direct methods
.method constructor <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier$1;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    iput-byte p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier$1;->val$a:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public precompute(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;
    .registers 5

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    if-eqz v0, :cond_5

    return-object p1

    :cond_5
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafPreCompInfo;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier$1;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    iget-byte v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier$1;->val$a:B

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getPreComp(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafPreCompInfo;->setPreComp([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;)V

    return-object v0
.end method
