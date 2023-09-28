# classes4.dex

.class Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;


# static fields
.field static final PRECOMP_NAME:Ljava/lang/String; = "bc_validity"


# instance fields
.field private curveEquationPassed:Z

.field private failed:Z

.field private orderPassed:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->failed:Z

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->curveEquationPassed:Z

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->orderPassed:Z

    return-void
.end method


# virtual methods
.method hasCurveEquationPassed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->curveEquationPassed:Z

    return v0
.end method

.method hasFailed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->failed:Z

    return v0
.end method

.method hasOrderPassed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->orderPassed:Z

    return v0
.end method

.method reportCurveEquationPassed()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->curveEquationPassed:Z

    return-void
.end method

.method reportFailed()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->failed:Z

    return-void
.end method

.method reportOrderPassed()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->orderPassed:Z

    return-void
.end method