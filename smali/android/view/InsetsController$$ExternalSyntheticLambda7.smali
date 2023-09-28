# classes3.dex

.class public final synthetic Landroid/view/InsetsController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Landroid/view/InsetsController;

.field public final synthetic f$1:Landroid/view/InsetsAnimationControlRunner;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda7;->f$0:Landroid/view/InsetsController;

    iput-object p2, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda7;->f$1:Landroid/view/InsetsAnimationControlRunner;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda7;->f$0:Landroid/view/InsetsController;

    iget-object v1, p0, Landroid/view/InsetsController$$ExternalSyntheticLambda7;->f$1:Landroid/view/InsetsAnimationControlRunner;

    invoke-virtual {v0, v1}, Landroid/view/InsetsController;->lambda$controlAnimationUnchecked$6$android-view-InsetsController(Landroid/view/InsetsAnimationControlRunner;)V

    return-void
.end method
