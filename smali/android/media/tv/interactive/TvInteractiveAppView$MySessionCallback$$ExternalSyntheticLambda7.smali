# classes2.dex

.class public final synthetic Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda7;->f$0:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda7;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda7;->f$0:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda7;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onBiInteractiveAppCreated$2$android-media-tv-interactive-TvInteractiveAppView$MySessionCallback(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
