# classes2.dex

.class public abstract Landroid/media/tv/TvInputService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputService$ServiceHandler;,
        Landroid/media/tv/TvInputService$HardwareSession;,
        Landroid/media/tv/TvInputService$RecordingSession;,
        Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;,
        Landroid/media/tv/TvInputService$Session;,
        Landroid/media/tv/TvInputService$PriorityHintUseCaseType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DETACH_OVERLAY_VIEW_TIMEOUT_MS:I = 0x1388

.field public static final PRIORITY_HINT_USE_CASE_TYPE_BACKGROUND:I = 0x64

.field public static final PRIORITY_HINT_USE_CASE_TYPE_LIVE:I = 0x190

.field public static final PRIORITY_HINT_USE_CASE_TYPE_PLAYBACK:I = 0x12c

.field public static final PRIORITY_HINT_USE_CASE_TYPE_RECORD:I = 0x1f4

.field public static final PRIORITY_HINT_USE_CASE_TYPE_SCAN:I = 0xc8

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.tv.TvInputService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.media.tv.input"

.field private static final TAG:Ljava/lang/String; = "TvInputService"


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/tv/ITvInputServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceHandler:Landroid/os/Handler;

.field private mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputService;->mServiceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misPassthroughInput(Landroid/media/tv/TvInputService;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService;->isPassthroughInput(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/media/tv/TvInputService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/TvInputService$ServiceHandler;-><init>(Landroid/media/tv/TvInputService;Landroid/media/tv/TvInputService$ServiceHandler-IA;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService;->mServiceHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method public static isNavigationKey(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x15 -> :sswitch_5
        0x16 -> :sswitch_5
        0x17 -> :sswitch_5
        0x3d -> :sswitch_5
        0x3e -> :sswitch_5
        0x42 -> :sswitch_5
        0x5c -> :sswitch_5
        0x5d -> :sswitch_5
        0x7a -> :sswitch_5
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method private isPassthroughInput(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Landroid/media/tv/TvInputService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_e

    const-string v0, "tv_input"

    invoke-virtual {p0, v0}, Landroid/media/tv/TvInputService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Landroid/media/tv/TvInputService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    :cond_e
    iget-object v0, p0, Landroid/media/tv/TvInputService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->isPassthroughInput()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method


# virtual methods
.method public createExtension()Landroid/os/IBinder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAvailableExtensionInterfaceNames()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getExtensionInterface(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtensionInterfacePermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    new-instance v0, Landroid/media/tv/TvInputService$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$1;-><init>(Landroid/media/tv/TvInputService;)V

    invoke-virtual {p0}, Landroid/media/tv/TvInputService;->createExtension()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Landroid/media/tv/ITvInputService$Stub;->setExtension(Landroid/os/IBinder;)V

    :cond_e
    return-object v0
.end method

.method public onCreateRecordingSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$RecordingSession;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateRecordingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/media/tv/TvInputService$RecordingSession;
    .registers 4

    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService;->onCreateRecordingSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$RecordingSession;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCreateSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;
.end method

.method public onCreateSession(Ljava/lang/String;Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;
    .registers 4

    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService;->onCreateSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;

    move-result-object v0

    return-object v0
.end method

.method public onHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onHdmiDeviceUpdated(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method
