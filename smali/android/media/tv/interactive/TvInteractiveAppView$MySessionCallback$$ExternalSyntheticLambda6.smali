# classes2.dex

.class public final synthetic Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda6;->f$0:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda6;->f$0:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onRequestCurrentChannelLcn$5$android-media-tv-interactive-TvInteractiveAppView$MySessionCallback()V

    return-void
.end method
