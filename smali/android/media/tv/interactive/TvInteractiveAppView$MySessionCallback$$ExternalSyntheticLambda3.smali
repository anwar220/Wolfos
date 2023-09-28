# classes2.dex

.class public final synthetic Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda3;->f$0:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda3;->f$0:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onSetVideoBounds$3$android-media-tv-interactive-TvInteractiveAppView$MySessionCallback(Landroid/graphics/Rect;)V

    return-void
.end method
