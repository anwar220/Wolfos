# classes4.dex

.class public Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewRootWrapper"
.end annotation


# instance fields
.field private final mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    return-void
.end method


# virtual methods
.method public addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    return-void
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    return-void
.end method
