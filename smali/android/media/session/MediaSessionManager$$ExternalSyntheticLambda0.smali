# classes2.dex

.class public final synthetic Landroid/media/session/MediaSessionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/session/MediaSessionManager;

.field public final synthetic f$1:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$$ExternalSyntheticLambda0;->f$0:Landroid/media/session/MediaSessionManager;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$$ExternalSyntheticLambda0;->f$1:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$$ExternalSyntheticLambda0;->f$0:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$$ExternalSyntheticLambda0;->f$1:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->lambda$addOnMediaKeyEventSessionChangedListener$0$android-media-session-MediaSessionManager(Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V

    return-void
.end method
