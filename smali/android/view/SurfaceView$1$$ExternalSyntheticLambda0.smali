# classes3.dex

.class public final synthetic Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceView$1;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceView$1;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceView$1;

    iput-boolean p2, p0, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceView$1;

    iget-boolean v1, p0, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView$1;->lambda$setKeepScreenOn$0$android-view-SurfaceView$1(Z)V

    return-void
.end method
