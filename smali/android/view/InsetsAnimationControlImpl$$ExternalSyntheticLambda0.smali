# classes3.dex

.class public final synthetic Landroid/view/InsetsAnimationControlImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/InsetsAnimationControlCallbacks;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsAnimationControlCallbacks;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InsetsAnimationControlImpl$$ExternalSyntheticLambda0;->f$0:Landroid/view/InsetsAnimationControlCallbacks;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl$$ExternalSyntheticLambda0;->f$0:Landroid/view/InsetsAnimationControlCallbacks;

    check-cast p1, Landroid/view/SurfaceControl;

    invoke-interface {v0, p1}, Landroid/view/InsetsAnimationControlCallbacks;->releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V

    return-void
.end method
