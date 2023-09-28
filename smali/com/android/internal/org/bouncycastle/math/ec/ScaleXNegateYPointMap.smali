# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/math/ec/ScaleXNegateYPointMap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;


# instance fields
.field protected final scale:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ScaleXNegateYPointMap;->scale:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method


# virtual methods
.method public map(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ScaleXNegateYPointMap;->scale:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->scaleXNegateY(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
