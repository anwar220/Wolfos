# classes.dex

.class Landroid/app/EnterTransitionCoordinator$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic val$sharedElementState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V
    .registers 3

    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$3;->val$sharedElementState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSharedElementsReady$0$android-app-EnterTransitionCoordinator$3(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v0, p1}, Landroid/app/EnterTransitionCoordinator;->-$$Nest$mstartSharedElementTransition(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$onSharedElementsReady$1$android-app-EnterTransitionCoordinator$3(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    new-instance v1, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda1;-><init>(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSharedElementsReady()V
    .registers 5

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator$3;->val$sharedElementState:Landroid/os/Bundle;

    new-instance v3, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda0;-><init>(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V

    invoke-static {v0, v1, v3}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;ZLjava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_16
    return-void
.end method
