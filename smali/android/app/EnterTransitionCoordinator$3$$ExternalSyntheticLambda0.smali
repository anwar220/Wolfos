# classes.dex

.class public final synthetic Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/EnterTransitionCoordinator$3;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/app/EnterTransitionCoordinator$3;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda0;->f$0:Landroid/app/EnterTransitionCoordinator$3;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda0;->f$0:Landroid/app/EnterTransitionCoordinator$3;

    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$3$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator$3;->lambda$onSharedElementsReady$1$android-app-EnterTransitionCoordinator$3(Landroid/os/Bundle;)V

    return-void
.end method
