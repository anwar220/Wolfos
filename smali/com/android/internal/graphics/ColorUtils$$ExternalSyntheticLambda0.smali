# classes4.dex

.class public final synthetic Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final calculateContrast(III)D
    .registers 5

    iget v0, p0, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/graphics/ColorUtils;->lambda$calculateMinimumBackgroundAlpha$0(IIII)D

    move-result-wide p1

    return-wide p1
.end method
