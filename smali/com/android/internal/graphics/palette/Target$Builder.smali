# classes4.dex

.class public Lcom/android/internal/graphics/palette/Target$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mTarget:Lcom/android/internal/graphics/palette/Target;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/graphics/palette/Target;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Target;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/graphics/palette/Target;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/graphics/palette/Target;

    invoke-direct {v0, p1}, Lcom/android/internal/graphics/palette/Target;-><init>(Lcom/android/internal/graphics/palette/Target;)V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/graphics/palette/Target;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    return-object v0
.end method

.method public setChromaWeight(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmChromaWeight(Lcom/android/internal/graphics/palette/Target;F)V

    return-object p0
.end method

.method public setContrastRatio(FF)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 7

    move v0, p2

    invoke-static {v0}, Lcom/android/internal/graphics/palette/Contrast;->yToLstar(F)F

    move-result v1

    const/high16 v2, 0x42480000  # 50.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_10

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Contrast;->lighterY(FF)F

    move-result v2

    goto :goto_14

    :cond_10
    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Contrast;->darkerY(FF)F

    move-result v2

    :goto_14
    iget-object v3, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v3, v2}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmTargetRelativeLuminance(Lcom/android/internal/graphics/palette/Target;F)V

    return-object p0
.end method

.method public setLightnessWeight(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmRelativeLuminanceWeight(Lcom/android/internal/graphics/palette/Target;F)V

    return-object p0
.end method

.method public setMaximumChroma(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmChromaMax(Lcom/android/internal/graphics/palette/Target;F)V

    return-object p0
.end method

.method public setMinimumChroma(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmChromaMin(Lcom/android/internal/graphics/palette/Target;F)V

    return-object p0
.end method

.method public setPopulationWeight(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmPopulationWeight(Lcom/android/internal/graphics/palette/Target;F)V

    return-object p0
.end method

.method public setTargetChroma(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmChromaTarget(Lcom/android/internal/graphics/palette/Target;F)V

    return-object p0
.end method

.method public setTargetHue(I)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmTargetHue(Lcom/android/internal/graphics/palette/Target;F)V

    return-object p0
.end method

.method public setTargetPerceptualLuminance(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {p1}, Lcom/android/internal/graphics/palette/Contrast;->lstarToY(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmTargetRelativeLuminance(Lcom/android/internal/graphics/palette/Target;F)V

    return-object p0
.end method

.method public setTargetRelativeLuminance(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmTargetRelativeLuminance(Lcom/android/internal/graphics/palette/Target;F)V

    return-object p0
.end method
