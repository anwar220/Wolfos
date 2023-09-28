# classes2.dex

.class public final Landroid/view/contentcapture/MainContentCaptureSession;
.super Landroid/view/contentcapture/ContentCaptureSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_BINDER:Ljava/lang/String; = "binder"

.field public static final EXTRA_ENABLED_STATE:Ljava/lang/String; = "enabled"

.field private static final FORCE_FLUSH:Z = true

.field private static final MSG_FLUSH:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplicationToken:Landroid/os/IBinder;

.field private mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

.field private mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

.field private final mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlushHistory:Landroid/util/LocalLog;

.field private final mHandler:Landroid/os/Handler;

.field private final mManager:Landroid/view/contentcapture/ContentCaptureManager;

.field private mNextFlush:J

.field private mNextFlushForTextChanged:Z

.field private final mSessionStateReceiver:Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;

.field private mShareableActivityToken:Landroid/os/IBinder;

.field private mState:I

.field private final mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisabled(Landroid/view/contentcapture/MainContentCaptureSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/view/contentcapture/MainContentCaptureSession;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monSessionStarted(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession;->onSessionStarted(ILandroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetSession(Landroid/view/contentcapture/MainContentCaptureSession;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->resetSession(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/view/contentcapture/MainContentCaptureSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/contentcapture/ContentCaptureManager;Landroid/os/Handler;Landroid/view/contentcapture/IContentCaptureManager;)V
    .registers 7

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureSession;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    iput-boolean v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iput-object p3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

    iget-object v0, p2, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v0, v0, Landroid/content/ContentCaptureOptions;->logHistorySize:I

    if-lez v0, :cond_23

    new-instance v1, Landroid/util/LocalLog;

    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mFlushHistory:Landroid/util/LocalLog;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;

    invoke-direct {v1, p0}, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;)V

    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSessionStateReceiver:Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;

    return-void
.end method

.method private clearEvents()Landroid/content/pm/ParceledListSlice;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private destroySession()V
    .registers 6

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying session (ctx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v3, :cond_30

    move v3, v1

    goto :goto_34

    :cond_30
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event(s) for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :try_start_4d
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-interface {v0, v2}, Landroid/view/contentcapture/IContentCaptureManager;->finishSession(I)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_54} :catch_55

    goto :goto_88

    :catch_55
    move-exception v0

    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error destroying system-service session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_88
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    if-eqz v0, :cond_95

    invoke-interface {v0}, Landroid/view/contentcapture/IContentCaptureDirectManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_95
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    return-void
.end method

.method private flushIfNeeded(I)V
    .registers 4

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_f

    :cond_b
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->flush(I)V

    return-void

    :cond_f
    :goto_f
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_1a

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    const-string v1, "Nothing to flush"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method

.method private getActivityName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "act:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_37
    return-object v0
.end method

.method private getDebugState()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    invoke-static {v1}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDebugState(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getFlushReasonAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasStarted()Z
    .registers 2

    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private onSessionStarted(ILandroid/os/IBinder;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_37

    invoke-static {p2}, Landroid/view/contentcapture/IContentCaptureDirectManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureDirectManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda6;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;)V

    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    :try_start_10
    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_37

    :catch_14
    move-exception v1

    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to link to death on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    :goto_37
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3f

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->resetSession(I)V

    goto :goto_4a

    :cond_3f
    iput p1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->flushIfNeeded(I)V

    :goto_4a
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_af

    sget-object v1, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSessionStarted() result: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    invoke-static {v3}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", disabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", events="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v3, :cond_a0

    goto :goto_a4

    :cond_a0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    return-void
.end method

.method private resetSession(I)V
    .registers 7

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_3e

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResetSession("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    invoke-static {v2}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    iput p1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4a

    move v1, v2

    goto :goto_4b

    :cond_4a
    move v1, v3

    :goto_4b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mApplicationToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mShareableActivityToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    if-eqz v1, :cond_64

    invoke-interface {v1}, Landroid/view/contentcapture/IContentCaptureDirectManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_64
    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private scheduleFlush(IZ)V
    .registers 9

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    const-string v1, "handleScheduleFlush("

    if-eqz v0, :cond_2a

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", checkExisting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_3c

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_3b

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    const-string v1, "handleScheduleFlush(): session not started yet"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void

    :cond_3c
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_77

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): should not be called when disabled. events="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v2, :cond_63

    const/4 v2, 0x0

    goto :goto_6b

    :cond_63
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_77
    const/4 v0, 0x1

    if-eqz p2, :cond_87

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_87

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_87
    const/4 v2, 0x6

    if-ne p1, v2, :cond_91

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    goto :goto_be

    :cond_91
    const/4 v2, 0x5

    if-eq p1, v2, :cond_b8

    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v2, :cond_b8

    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): not a timeout reason because mDirectServiceInterface is not ready yet"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    :goto_be
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlush:J

    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v2, :cond_f2

    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleScheduleFlush(): scheduled to flush in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlush:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f2
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda11;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;I)V

    int-to-long v4, v1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    return-void
.end method

.method private sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method private sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v2

    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    const-string v4, "handleSendEvent("

    if-eqz v3, :cond_32

    sget-object v3, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    invoke-direct/range {p0 .. p0}, Landroid/view/contentcapture/MainContentCaptureSession;->hasStarted()Z

    move-result v3

    if-nez v3, :cond_71

    const/4 v3, -0x1

    if-eq v2, v3, :cond_71

    const/4 v3, 0x6

    if-eq v2, v3, :cond_71

    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v3, :cond_70

    sget-object v3, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): dropping because session not started yet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return-void

    :cond_71
    iget-object v3, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_85

    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v3, :cond_84

    sget-object v3, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    const-string v4, "handleSendEvent(): ignoring when disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    return-void

    :cond_85
    iget-object v3, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v3, v3, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v3, v3, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    iget-object v4, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v4, :cond_b8

    sget-boolean v4, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v4, :cond_b1

    sget-object v4, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSendEvent(): creating buffer for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " events"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    :cond_b8
    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x1

    if-ne v2, v5, :cond_149

    invoke-virtual/range {p1 .. p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/contentcapture/ContentCaptureEvent;->hasComposingSpan()Z

    move-result v9

    if-eqz v9, :cond_149

    const/4 v10, 0x0

    iget-object v11, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v7

    :goto_cf
    if-ltz v11, :cond_ec

    iget-object v12, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getId()Landroid/view/autofill/AutofillId;

    move-result-object v13

    invoke-virtual {v12}, Landroid/view/contentcapture/ContentCaptureEvent;->getId()Landroid/view/autofill/AutofillId;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e9

    move-object v10, v12

    goto :goto_ec

    :cond_e9
    add-int/lit8 v11, v11, -0x1

    goto :goto_cf

    :cond_ec
    :goto_ec
    if-eqz v10, :cond_149

    invoke-virtual {v10}, Landroid/view/contentcapture/ContentCaptureEvent;->hasComposingSpan()Z

    move-result v11

    if-eqz v11, :cond_149

    invoke-virtual {v10}, Landroid/view/contentcapture/ContentCaptureEvent;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_106

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_106

    move v12, v7

    goto :goto_107

    :cond_106
    const/4 v12, 0x0

    :goto_107
    nop

    invoke-static {v11, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_11c

    invoke-virtual {v10, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->hasSameComposingSpan(Landroid/view/contentcapture/ContentCaptureEvent;)Z

    move-result v13

    if-eqz v13, :cond_11c

    invoke-virtual {v10, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->hasSameSelectionSpan(Landroid/view/contentcapture/ContentCaptureEvent;)Z

    move-result v13

    if-eqz v13, :cond_11c

    move v13, v7

    goto :goto_11d

    :cond_11c
    const/4 v13, 0x0

    :goto_11d
    if-eqz v13, :cond_121

    const/4 v4, 0x0

    goto :goto_127

    :cond_121
    if-eqz v12, :cond_127

    invoke-virtual {v10, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->mergeEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    const/4 v4, 0x0

    :cond_127
    :goto_127
    if-nez v4, :cond_149

    sget-boolean v14, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v14, :cond_149

    sget-object v14, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Buffering VIEW_TEXT_CHANGED event, updated text="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Landroid/view/contentcapture/ContentCaptureHelper;->getSanitizedString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_149
    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v8, 0x2

    if-nez v6, :cond_195

    if-ne v2, v8, :cond_195

    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-virtual {v6}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v9

    if-ne v9, v8, :cond_195

    invoke-virtual/range {p1 .. p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v10

    if-ne v9, v10, :cond_195

    sget-boolean v9, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v9, :cond_191

    sget-object v9, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Buffering TYPE_VIEW_DISAPPEARED events for session "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_191
    invoke-virtual {v6, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->mergeEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    const/4 v4, 0x0

    :cond_195
    if-eqz v4, :cond_19c

    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19c
    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v3, :cond_1a7

    move/from16 v16, v7

    goto :goto_1a9

    :cond_1a7
    const/16 v16, 0x0

    :goto_1a9
    move/from16 v9, v16

    if-eqz v9, :cond_1ca

    if-nez p2, :cond_1ca

    if-ne v2, v5, :cond_1b5

    iput-boolean v7, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    const/4 v5, 0x6

    goto :goto_1c6

    :cond_1b5
    iget-boolean v5, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    if-eqz v5, :cond_1c5

    sget-boolean v5, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v5, :cond_1c4

    sget-object v5, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    const-string v7, "Not scheduling flush because next flush is for text changed"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c4
    return-void

    :cond_1c5
    const/4 v5, 0x5

    :goto_1c6
    invoke-direct {v0, v5, v7}, Landroid/view/contentcapture/MainContentCaptureSession;->scheduleFlush(IZ)V

    return-void

    :cond_1ca
    iget v5, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    if-eq v5, v8, :cond_206

    if-lt v6, v3, :cond_206

    sget-boolean v5, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v5, :cond_200

    sget-object v5, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Closing session for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delayed events"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_200
    const/16 v5, 0x84

    invoke-direct {v0, v5}, Landroid/view/contentcapture/MainContentCaptureSession;->resetSession(I)V

    return-void

    :cond_206
    packed-switch v2, :pswitch_data_214

    const/4 v5, 0x1

    goto :goto_20f

    :pswitch_20b  #0xffffffff
    const/4 v5, 0x3

    goto :goto_20f

    :pswitch_20d  #0xfffffffe
    const/4 v5, 0x4

    nop

    :goto_20f
    invoke-virtual {v0, v5}, Landroid/view/contentcapture/MainContentCaptureSession;->flush(I)V

    return-void

    nop

    :pswitch_data_214
    .packed-switch -0x2
        :pswitch_20d  #fffffffe
        :pswitch_20b  #ffffffff
    .end packed-switch
.end method

.method private stringOrSpannedStringWithoutNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_f

    new-instance v0, Landroid/text/SpannableString;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;Z)V

    return-object v0

    :cond_f
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContext: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "user: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    if-eqz v0, :cond_32

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDirectServiceInterface: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_32
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDisabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isEnabled(): "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    invoke-static {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mApplicationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_74

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app token: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mApplicationToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_74
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mShareableActivityToken:Landroid/os/IBinder;

    if-eqz v0, :cond_85

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "sharable activity token: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mShareableActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_85
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_9a

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "component name: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9a
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_14c

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14c

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "buffered events: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_fb

    if-lez v0, :cond_fb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_dd
    if-ge v2, v0, :cond_fb

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_dd

    :cond_fb
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNextFlushForTextChanged: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "flush frequency: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    if-eqz v1, :cond_11e

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_127

    :cond_11e
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    :goto_127
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "next flush: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlush:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v1, " ("

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlush:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14c
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mFlushHistory:Landroid/util/LocalLog;

    if-eqz v0, :cond_162

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "flush history:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mFlushHistory:Landroid/util/LocalLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_16a

    :cond_162
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "not logging flush history"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_16a
    invoke-super {p0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method flush(I)V
    .registers 8

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "handleForceFlush("

    if-eqz v0, :cond_30

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): should not be when disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_30
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_6c

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_60

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "): hold your horses, client not ready: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-direct {p0, p1, v3}, Landroid/view/contentcapture/MainContentCaptureSession;->scheduleFlush(IZ)V

    :cond_6b
    return-void

    :cond_6c
    iput-boolean v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getFlushReasonAsString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v3, :cond_a2

    sget-object v3, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Flushing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " event(s) for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mFlushHistory:Landroid/util/LocalLog;

    if-eqz v3, :cond_e8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v4, v4, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v4, v4, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v4, v4, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v4, v4, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mFlushHistory:Landroid/util/LocalLog;

    invoke-virtual {v4, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_e8
    :try_start_e8
    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->clearEvents()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v4, v4, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    invoke-interface {v3, v2, p1, v4}, Landroid/view/contentcapture/IContentCaptureDirectManager;->sendEvents(Landroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_e8 .. :try_end_fa} :catch_fb

    goto :goto_12c

    :catch_fb
    move-exception v2

    sget-object v3, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12c
    return-void
.end method

.method getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;
    .registers 1

    return-object p0
.end method

.method public internalNotifySessionPaused()V
    .registers 2

    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->notifySessionPaused(I)V

    return-void
.end method

.method public internalNotifySessionResumed()V
    .registers 2

    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->notifySessionResumed(I)V

    return-void
.end method

.method internalNotifyViewAppeared(Landroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
    .registers 3

    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    return-void
.end method

.method internalNotifyViewDisappeared(Landroid/view/autofill/AutofillId;)V
    .registers 3

    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V

    return-void
.end method

.method internalNotifyViewInsetsChanged(Landroid/graphics/Insets;)V
    .registers 3

    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewInsetsChanged(ILandroid/graphics/Insets;)V

    return-void
.end method

.method internalNotifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .registers 4

    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public internalNotifyViewTreeEvent(Z)V
    .registers 3

    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewTreeEvent(IZ)V

    return-void
.end method

.method isContentCaptureEnabled()Z
    .registers 2

    invoke-super {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method isDisabled()Z
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$notifyChildSessionFinished$4$android-view-contentcapture-MainContentCaptureSession(II)V
    .registers 5

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setParentSessionId(I)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method synthetic lambda$notifyChildSessionStarted$3$android-view-contentcapture-MainContentCaptureSession(IILandroid/view/contentcapture/ContentCaptureContext;)V
    .registers 6

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setParentSessionId(I)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/contentcapture/ContentCaptureEvent;->setClientContext(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method synthetic lambda$notifyContextUpdated$12$android-view-contentcapture-MainContentCaptureSession(ILandroid/view/contentcapture/ContentCaptureContext;)V
    .registers 5

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setClientContext(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method synthetic lambda$notifySessionPaused$11$android-view-contentcapture-MainContentCaptureSession(I)V
    .registers 4

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method synthetic lambda$notifySessionResumed$10$android-view-contentcapture-MainContentCaptureSession(I)V
    .registers 4

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method synthetic lambda$notifyViewAppeared$5$android-view-contentcapture-MainContentCaptureSession(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
    .registers 5

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    iget-object v1, p2, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->setViewNode(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method synthetic lambda$notifyViewDisappeared$6$android-view-contentcapture-MainContentCaptureSession(ILandroid/view/autofill/AutofillId;)V
    .registers 5

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method synthetic lambda$notifyViewInsetsChanged$8$android-view-contentcapture-MainContentCaptureSession(ILandroid/graphics/Insets;)V
    .registers 5

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setInsets(Landroid/graphics/Insets;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method synthetic lambda$notifyViewTextChanged$7$android-view-contentcapture-MainContentCaptureSession(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;IIII)V
    .registers 10

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/contentcapture/ContentCaptureEvent;->setText(Ljava/lang/CharSequence;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Landroid/view/contentcapture/ContentCaptureEvent;->setComposingIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Landroid/view/contentcapture/ContentCaptureEvent;->setSelectionIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method synthetic lambda$notifyViewTreeEvent$9$android-view-contentcapture-MainContentCaptureSession(II)V
    .registers 5

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-direct {v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method synthetic lambda$notifyWindowBoundsChanged$13$android-view-contentcapture-MainContentCaptureSession(ILandroid/graphics/Rect;)V
    .registers 5

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setBounds(Landroid/graphics/Rect;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method synthetic lambda$onDestroy$0$android-view-contentcapture-MainContentCaptureSession()V
    .registers 2

    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->flush(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->destroySession()V

    nop

    return-void

    :catchall_9
    move-exception v0

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->destroySession()V

    throw v0
.end method

.method synthetic lambda$onSessionStarted$1$android-view-contentcapture-MainContentCaptureSession()V
    .registers 4

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keeping session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when service died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x400

    iput v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method synthetic lambda$scheduleFlush$2$android-view-contentcapture-MainContentCaptureSession(I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->flushIfNeeded(I)V

    return-void
.end method

.method newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
    .registers 5

    new-instance v0, Landroid/view/contentcapture/ChildContentCaptureSession;

    invoke-direct {v0, p0, p1}, Landroid/view/contentcapture/ChildContentCaptureSession;-><init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/contentcapture/ContentCaptureContext;)V

    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    iget v2, v0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v1, v2, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V

    return-object v0
.end method

.method notifyChildSessionFinished(II)V
    .registers 5

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p2, p1}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda9;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method notifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V
    .registers 6

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p2, p1, p3}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda7;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;IILandroid/view/contentcapture/ContentCaptureContext;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method notifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V
    .registers 5

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda5;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/view/contentcapture/ContentCaptureContext;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method notifySessionPaused(I)V
    .registers 4

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda8;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method notifySessionResumed(I)V
    .registers 4

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda1;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method notifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
    .registers 5

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda4;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V
    .registers 5

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda10;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/view/autofill/AutofillId;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyViewInsetsChanged(ILandroid/graphics/Insets;)V
    .registers 5

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda13;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/graphics/Insets;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method notifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .registers 20

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    invoke-direct {v9, v10}, Landroid/view/contentcapture/MainContentCaptureSession;->stringOrSpannedStringWithoutNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    instance-of v0, v10, Landroid/text/Spannable;

    if-eqz v0, :cond_1d

    move-object v0, v10

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    move-object v1, v10

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    move v12, v0

    move v13, v1

    goto :goto_21

    :cond_1d
    const/4 v0, -0x1

    const/4 v1, -0x1

    move v12, v0

    move v13, v1

    :goto_21
    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v15

    iget-object v8, v9, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v11

    move v5, v12

    move v6, v13

    move-object v9, v7

    move v7, v14

    move-object v10, v8

    move v8, v15

    invoke-direct/range {v0 .. v8}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;IIII)V

    invoke-virtual {v10, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyViewTreeEvent(IZ)V
    .registers 6

    if-eqz p2, :cond_4

    const/4 v0, 0x4

    goto :goto_5

    :cond_4
    const/4 v0, 0x5

    :goto_5
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1, v0}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda12;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyWindowBoundsChanged(ILandroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda3;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method onDestroy()V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda2;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setDisabled(Z)Z
    .registers 4

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method start(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 14

    invoke-virtual {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_31

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start(): token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", comp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_72

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_71

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring handleStartSession("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while on state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    invoke-static {v2}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    return-void

    :cond_72
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mApplicationToken:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mShareableActivityToken:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_b1

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartSession(): token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", act="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b1
    :try_start_b1
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mApplicationToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mShareableActivityToken:Landroid/os/IBinder;

    iget v6, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    iget-object v8, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSessionStateReceiver:Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;

    move-object v5, p3

    move v7, p4

    invoke-interface/range {v2 .. v8}, Landroid/view/contentcapture/IContentCaptureManager;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;IILcom/android/internal/os/IResultReceiver;)V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_c0} :catch_c1

    goto :goto_e8

    :catch_c1
    move-exception v0

    sget-object v1, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error starting session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e8
    return-void
.end method

.method public updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
    .registers 3

    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V

    return-void
.end method
