# classes3.dex

.class public final synthetic Landroid/view/SurfaceView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceView;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;->f$0:Landroid/view/SurfaceView;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;->f$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method
