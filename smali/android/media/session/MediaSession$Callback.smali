# classes2.dex

.class public abstract Landroid/media/session/MediaSession$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private mMediaPlayPauseKeyPending:Z

.field private mSession:Landroid/media/session/MediaSession;


# direct methods
.method static bridge synthetic -$$Nest$fputmHandler(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession$CallbackMessageHandler;)V
    .registers 2

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSession(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)V
    .registers 2

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMediaPlayPauseKeySingleTapIfPending(Landroid/media/session/MediaSession$Callback;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleMediaPlayPauseKeySingleTapIfPending()V
    .registers 12

    iget-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v1}, Landroid/media/session/MediaSession;->-$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1b

    move-wide v4, v2

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    :goto_1f
    const/4 v6, 0x1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2b

    move v7, v6

    goto :goto_2c

    :cond_2b
    move v7, v0

    :goto_2c
    const-wide/16 v8, 0x204

    and-long/2addr v8, v4

    cmp-long v8, v8, v2

    if-eqz v8, :cond_35

    move v8, v6

    goto :goto_36

    :cond_35
    move v8, v0

    :goto_36
    const-wide/16 v9, 0x202

    and-long/2addr v9, v4

    cmp-long v2, v9, v2

    if-eqz v2, :cond_3e

    move v0, v6

    :cond_3e
    if-eqz v7, :cond_46

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    goto :goto_4d

    :cond_46
    if-nez v7, :cond_4d

    if-eqz v8, :cond_4d

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    :cond_4d
    :goto_4d
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 4

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onFastForward()V
    .registers 1

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .registers 14

    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_c9

    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_c9

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_c9

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_c9

    iget-object v2, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->-$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_31

    move-wide v5, v3

    goto :goto_35

    :cond_31
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v5

    :goto_35
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const-wide/16 v8, 0x20

    const/4 v10, 0x1

    sparse-switch v7, :sswitch_data_ca

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_d4

    goto/16 :goto_c9

    :sswitch_4b
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-lez v7, :cond_55

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    goto :goto_7c

    :cond_55
    iget-boolean v7, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-eqz v7, :cond_6c

    iget-object v7, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v11, 0x18

    invoke-virtual {v7, v11}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    iput-boolean v1, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    and-long v7, v5, v8

    cmp-long v1, v7, v3

    if-eqz v1, :cond_7c

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    goto :goto_7c

    :cond_6c
    iput-boolean v10, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Landroid/media/session/MediaSession;->getCurrentControllerInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v7, v4

    invoke-virtual {v1, v3, p1, v7, v8}, Landroid/media/session/MediaSession;->dispatchMediaButtonDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;J)V

    :cond_7c
    :goto_7c
    return v10

    :sswitch_7d
    const-wide/16 v7, 0x2

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_c9

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    return v10

    :sswitch_88
    const-wide/16 v7, 0x4

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_c9

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    return v10

    :sswitch_93
    const-wide/16 v7, 0x40

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_c9

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    return v10

    :sswitch_9e
    const-wide/16 v7, 0x8

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_c9

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    return v10

    :sswitch_a9
    const-wide/16 v7, 0x10

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_c9

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    return v10

    :sswitch_b4
    and-long v7, v5, v8

    cmp-long v3, v7, v3

    if-eqz v3, :cond_c9

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    return v10

    :sswitch_be
    const-wide/16 v7, 0x1

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_c9

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onStop()V

    return v10

    :cond_c9
    :goto_c9
    return v1

    :sswitch_data_ca
    .sparse-switch
        0x4f -> :sswitch_4b
        0x55 -> :sswitch_4b
    .end sparse-switch

    :sswitch_data_d4
    .sparse-switch
        0x56 -> :sswitch_be
        0x57 -> :sswitch_b4
        0x58 -> :sswitch_a9
        0x59 -> :sswitch_9e
        0x5a -> :sswitch_93
        0x7e -> :sswitch_88
        0x7f -> :sswitch_7d
    .end sparse-switch
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onPlay()V
    .registers 1

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onPrepare()V
    .registers 1

    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onRewind()V
    .registers 1

    return-void
.end method

.method public onSeekTo(J)V
    .registers 3

    return-void
.end method

.method public onSetPlaybackSpeed(F)V
    .registers 2

    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .registers 2

    return-void
.end method

.method public onSkipToNext()V
    .registers 1

    return-void
.end method

.method public onSkipToPrevious()V
    .registers 1

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .registers 3

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method
