# classes4.dex

.class public final synthetic Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/view/ScrollCaptureViewSupport;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/os/CancellationSignal;

.field public final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/view/ScrollCaptureViewSupport;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/view/ScrollCaptureViewSupport;

    iput-object p2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$2:Landroid/os/CancellationSignal;

    iput-object p4, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/view/ScrollCaptureViewSupport;

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$2:Landroid/os/CancellationSignal;

    iget-object v3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$3:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/view/ScrollCaptureViewSupport;->lambda$onScrollCaptureImageRequest$0$com-android-internal-view-ScrollCaptureViewSupport(Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;)V

    return-void
.end method
