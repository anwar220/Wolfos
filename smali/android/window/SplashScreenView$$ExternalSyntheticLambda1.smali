# classes4.dex

.class public final synthetic Landroid/window/SplashScreenView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceControl$OnReparentListener;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    invoke-static {p1, p2}, Landroid/window/SplashScreenView;->lambda$syncTransferSurfaceOnDraw$0(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method
