# classes4.dex

.class public final synthetic Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

.field public final synthetic f$1:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    iput-object p2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;->f$1:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    iput-boolean p3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onFrameDraw(J)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;->f$1:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    iget-boolean v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;->f$2:Z

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->lambda$registerPreDrawListener$0$com-android-internal-graphics-drawable-BackgroundBlurDrawable$Aggregator([Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;ZJ)V

    return-void
.end method
