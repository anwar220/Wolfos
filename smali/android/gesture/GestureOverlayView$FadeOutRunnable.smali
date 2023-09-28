# classes.dex

.class Landroid/gesture/GestureOverlayView$FadeOutRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/GestureOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutRunnable"
.end annotation


# instance fields
.field fireActionPerformed:Z

.field resetMultipleStrokes:Z

.field final synthetic this$0:Landroid/gesture/GestureOverlayView;


# direct methods
.method private constructor <init>(Landroid/gesture/GestureOverlayView;)V
    .registers 2

    iput-object p1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$FadeOutRunnable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmIsFadingOut(Landroid/gesture/GestureOverlayView;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_8b

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmFadingStart(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v7

    sub-long v7, v5, v7

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmFadeDuration(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-lez v0, :cond_4f

    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->-$$Nest$mfireOnGesturePerformed(Landroid/gesture/GestureOverlayView;)V

    :cond_2c
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmPreviousWasGesturing(Landroid/gesture/GestureOverlayView;Z)V

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmIsFadingOut(Landroid/gesture/GestureOverlayView;Z)V

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmFadingHasStarted(Landroid/gesture/GestureOverlayView;Z)V

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmPath(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v3}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmCurrentGesture(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v2}, Landroid/gesture/GestureOverlayView;->-$$Nest$msetPaintAlpha(Landroid/gesture/GestureOverlayView;I)V

    goto :goto_8a

    :cond_4f
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v1}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmFadingHasStarted(Landroid/gesture/GestureOverlayView;Z)V

    const/4 v0, 0x0

    long-to-float v1, v7

    iget-object v2, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v2}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmFadeDuration(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v1}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmInterpolator(Landroid/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmFadingAlpha(Landroid/gesture/GestureOverlayView;F)V

    iget-object v1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    const/high16 v2, 0x437f0000  # 255.0f

    invoke-static {v1}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmFadingAlpha(Landroid/gesture/GestureOverlayView;)F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-static {v1, v2}, Landroid/gesture/GestureOverlayView;->-$$Nest$msetPaintAlpha(Landroid/gesture/GestureOverlayView;I)V

    iget-object v1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, p0, v2, v3}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_8a
    goto :goto_b7

    :cond_8b
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    if-eqz v0, :cond_95

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v1}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmResetGesture(Landroid/gesture/GestureOverlayView;Z)V

    goto :goto_b7

    :cond_95
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->-$$Nest$mfireOnGesturePerformed(Landroid/gesture/GestureOverlayView;)V

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmFadingHasStarted(Landroid/gesture/GestureOverlayView;Z)V

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->-$$Nest$fgetmPath(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v3}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmCurrentGesture(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->-$$Nest$fputmPreviousWasGesturing(Landroid/gesture/GestureOverlayView;Z)V

    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v2}, Landroid/gesture/GestureOverlayView;->-$$Nest$msetPaintAlpha(Landroid/gesture/GestureOverlayView;I)V

    :goto_b7
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    return-void
.end method
