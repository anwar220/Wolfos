# classes4.dex

.class public final synthetic Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/view/ScrollCaptureViewSupport;

.field public final synthetic f$1:Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Landroid/graphics/Rect;

.field public final synthetic f$4:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/view/ScrollCaptureViewSupport;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/view/ScrollCaptureViewSupport;

    iput-object p2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    iput-object p3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$3:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$4:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/view/ScrollCaptureViewSupport;

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    iget-object v2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$3:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$4:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/view/ScrollCaptureViewSupport;->lambda$onScrollResult$1$com-android-internal-view-ScrollCaptureViewSupport(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method
