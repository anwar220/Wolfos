# classes3.dex

.class public final synthetic Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/InsetsAnimationThreadControlRunner;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/WindowInsetsAnimationControlListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsAnimationThreadControlRunner;ILandroid/view/WindowInsetsAnimationControlListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda2;->f$0:Landroid/view/InsetsAnimationThreadControlRunner;

    iput p2, p0, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda2;->f$2:Landroid/view/WindowInsetsAnimationControlListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda2;->f$0:Landroid/view/InsetsAnimationThreadControlRunner;

    iget v1, p0, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda2;->f$2:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsAnimationThreadControlRunner;->lambda$new$0$android-view-InsetsAnimationThreadControlRunner(ILandroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method
