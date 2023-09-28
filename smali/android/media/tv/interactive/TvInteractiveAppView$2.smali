# classes2.dex

.class Landroid/media/tv/interactive/TvInteractiveAppView$2;
.super Landroid/view/SurfaceView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppView;->resetSurfaceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/interactive/TvInteractiveAppView;


# direct methods
.method constructor <init>(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected updateSurface()V
    .registers 2

    invoke-super {p0}, Landroid/view/SurfaceView;->updateSurface()V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$mrelayoutSessionMediaView(Landroid/media/tv/interactive/TvInteractiveAppView;)V

    return-void
.end method
