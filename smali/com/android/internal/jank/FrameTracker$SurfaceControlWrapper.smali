# classes4.dex

.class public Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceControlWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)V
    .registers 3

    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->addJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public removeJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;)V
    .registers 2

    invoke-static {p1}, Landroid/view/SurfaceControl;->removeJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;)V

    return-void
.end method
