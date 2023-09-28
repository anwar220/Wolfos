# classes2.dex

.class public Landroid/media/tv/TvRecordingClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvRecordingClient$MySessionCallback;,
        Landroid/media/tv/TvRecordingClient$RecordingCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TvRecordingClient"


# instance fields
.field private final mCallback:Landroid/media/tv/TvRecordingClient$RecordingCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPaused:Z

.field private mIsRecordingStarted:Z

.field private mIsRecordingStopping:Z

.field private mIsTuned:Z

.field private final mPendingAppPrivateCommands:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSession:Landroid/media/tv/TvInputManager$Session;

.field private mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

.field private final mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvRecordingClient;->mCallback:Landroid/media/tv/TvRecordingClient$RecordingCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRecordingStarted(Landroid/media/tv/TvRecordingClient;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTuned(Landroid/media/tv/TvRecordingClient;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingAppPrivateCommands(Landroid/media/tv/TvRecordingClient;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSession(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvInputManager$Session;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPaused(Landroid/media/tv/TvRecordingClient;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRecordingStarted(Landroid/media/tv/TvRecordingClient;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRecordingStopping(Landroid/media/tv/TvRecordingClient;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsTuned(Landroid/media/tv/TvRecordingClient;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSession(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvInputManager$Session;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSessionCallback(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvRecordingClient$MySessionCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/tv/TvRecordingClient$RecordingCallback;Landroid/os/Handler;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    iput-object p3, p0, Landroid/media/tv/TvRecordingClient;->mCallback:Landroid/media/tv/TvRecordingClient$RecordingCallback;

    if-nez p4, :cond_18

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_19

    :cond_18
    move-object v0, p4

    :goto_19
    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mHandler:Landroid/os/Handler;

    const-string v0, "tv_input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    return-void
.end method

.method private resetInternal()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$Session;->release()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    iput-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    iput-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    iput-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    :cond_1a
    return-void
.end method


# virtual methods
.method public pauseRecording()V
    .registers 2

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/media/tv/TvRecordingClient;->pauseRecording(Landroid/os/Bundle;)V

    return-void
.end method

.method public pauseRecording(Landroid/os/Bundle;)V
    .registers 5

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    if-nez v0, :cond_38

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iget-object v1, v1, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->canPauseRecording()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    if-eqz v1, :cond_25

    const-string v1, "TvRecordingClient"

    const-string v2, "pauseRecording failed - recording already paused"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v1, :cond_2f

    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$Session;->pauseRecording(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    :cond_2f
    return-void

    :cond_30
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "pauseRecording failed - operation not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pauseRecording failed - recording not yet started or stopping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/TvRecordingClient;->resetInternal()V

    return-void
.end method

.method public resumeRecording()V
    .registers 2

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/media/tv/TvRecordingClient;->resumeRecording(Landroid/os/Bundle;)V

    return-void
.end method

.method public resumeRecording(Landroid/os/Bundle;)V
    .registers 4

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    if-nez v0, :cond_17

    const-string v0, "TvRecordingClient"

    const-string v1, "resumeRecording failed - recording not yet paused"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_21

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->resumeRecording(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    :cond_21
    return-void

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "resumeRecording failed - recording not yet started or stopping or not yet tuned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_35

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAppPrivateCommand - session not yet created (action \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" pending)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvRecordingClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_35
    return-void

    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startRecording(Landroid/net/Uri;)V
    .registers 3

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/TvRecordingClient;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_17

    const-string v0, "TvRecordingClient"

    const-string v1, "startRecording failed - recording already started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_21

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    :cond_21
    return-void

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "startRecording failed -recording not yet stopped or not yet tuned or paused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopRecording()V
    .registers 3

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-nez v0, :cond_b

    const-string v0, "TvRecordingClient"

    const-string v1, "stopRecording failed - recording not yet started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->stopRecording()V

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    :cond_19
    return-void
.end method

.method public tune(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/tv/TvRecordingClient;->tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    if-eqz v0, :cond_f

    goto :goto_17

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tune failed - recording already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    if-eqz v0, :cond_3d

    iget-object v0, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iput-object p2, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p2, p3}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_39

    :cond_31
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iput-object p2, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iput-object p3, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mConnectionParams:Landroid/os/Bundle;

    :goto_39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    goto :goto_54

    :cond_3d
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    if-nez v0, :cond_55

    invoke-direct {p0}, Landroid/media/tv/TvRecordingClient;->resetInternal()V

    new-instance v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/tv/TvRecordingClient$MySessionCallback;-><init>(Landroid/media/tv/TvRecordingClient;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-eqz v1, :cond_54

    iget-object v2, p0, Landroid/media/tv/TvRecordingClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, v2}, Landroid/media/tv/TvInputManager;->createRecordingSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    :cond_54
    :goto_54
    return-void

    :cond_55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tune failed - inputId is changed during pause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputId cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
