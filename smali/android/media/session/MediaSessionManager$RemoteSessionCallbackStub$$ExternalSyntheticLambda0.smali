# classes2.dex

.class public final synthetic Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Map$Entry;

.field public final synthetic f$1:Landroid/media/session/MediaSession$Token;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;Landroid/media/session/MediaSession$Token;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map$Entry;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/session/MediaSession$Token;

    iput p3, p0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map$Entry;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/session/MediaSession$Token;

    iget v2, p0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;->lambda$onVolumeChanged$0(Ljava/util/Map$Entry;Landroid/media/session/MediaSession$Token;I)V

    return-void
.end method
