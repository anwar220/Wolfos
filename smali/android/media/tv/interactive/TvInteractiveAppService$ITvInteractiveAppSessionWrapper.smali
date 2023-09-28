# classes2.dex

.class public Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;
.super Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ITvInteractiveAppSessionWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;
    }
.end annotation


# instance fields
.field private mChannel:Landroid/view/InputChannel;

.field private mReceiver:Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

.field private final mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSessionImpl(Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;)Landroid/media/tv/interactive/TvInteractiveAppService$Session;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/view/InputChannel;)V
    .registers 6

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;-><init>()V

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iput-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz p3, :cond_14

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p3, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mReceiver:Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

    :cond_14
    return-void
.end method


# virtual methods
.method public createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    return-void
.end method

.method public destroyBiInteractiveApp(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->destroyBiInteractiveApp(Ljava/lang/String;)V

    return-void
.end method

.method public dispatchSurfaceChanged(III)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->dispatchSurfaceChanged(III)V

    return-void
.end method

.method public notifyAdResponse(Landroid/media/tv/AdResponse;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyAdResponse(Landroid/media/tv/AdResponse;)V

    return-void
.end method

.method public notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    return-void
.end method

.method public notifyContentAllowed()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyContentAllowed()V

    return-void
.end method

.method public notifyContentBlocked(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyContentBlocked(Landroid/media/tv/TvContentRating;)V

    return-void
.end method

.method public notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public notifySignalStrength(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifySignalStrength(I)V

    return-void
.end method

.method public notifyTrackSelected(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTrackSelected(ILjava/lang/String;)V

    return-void
.end method

.method public notifyTracksChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTracksChanged(Ljava/util/List;)V

    return-void
.end method

.method public notifyTuned(Landroid/net/Uri;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTuned(Landroid/net/Uri;)V

    return-void
.end method

.method public notifyVideoAvailable()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyVideoAvailable()V

    return-void
.end method

.method public notifyVideoUnavailable(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyVideoUnavailable(I)V

    return-void
.end method

.method public relayoutMediaView(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->relayoutMediaView(Landroid/graphics/Rect;)V

    return-void
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->scheduleMediaViewCleanup()V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->release()V

    return-void
.end method

.method public removeMediaView()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->removeMediaView(Z)V

    return-void
.end method

.method public resetInteractiveApp()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->resetInteractiveApp()V

    return-void
.end method

.method public sendCurrentChannelLcn(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCurrentChannelLcn(I)V

    return-void
.end method

.method public sendCurrentChannelUri(Landroid/net/Uri;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCurrentChannelUri(Landroid/net/Uri;)V

    return-void
.end method

.method public sendCurrentTvInputId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCurrentTvInputId(Ljava/lang/String;)V

    return-void
.end method

.method public sendSigningResult(Ljava/lang/String;[B)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendSigningResult(Ljava/lang/String;[B)V

    return-void
.end method

.method public sendStreamVolume(F)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendStreamVolume(F)V

    return-void
.end method

.method public sendTrackInfoList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendTrackInfoList(Ljava/util/List;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setTeletextAppEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->setTeletextAppEnabled(Z)V

    return-void
.end method

.method public startInteractiveApp()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->startInteractiveApp()V

    return-void
.end method

.method public stopInteractiveApp()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->stopInteractiveApp()V

    return-void
.end method
