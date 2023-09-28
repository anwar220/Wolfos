# classes3.dex

.class public Landroid/os/perfdebug/MessageMonitor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;
    }
.end annotation


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MessageMonitor"

    iput-object v0, p0, Landroid/os/perfdebug/MessageMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static newMessageMonitor()Landroid/os/perfdebug/MessageMonitor;
    .registers 1

    const-class v0, Landroid/os/perfdebug/MessageMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/MessageMonitor;

    return-object v0
.end method

.method public static newMessageMonitorInfo()Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;
    .registers 1

    const-class v0, Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    return-object v0
.end method


# virtual methods
.method public checkInputEvent(Landroid/view/InputEvent;)V
    .registers 2

    return-void
.end method

.method public dumpAll(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public dumpAllLoopers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public enableMonitorEvent(Z)V
    .registers 2

    return-void
.end method

.method public enableMonitorMessage(Z)V
    .registers 2

    return-void
.end method

.method public getHistoryMsgInfoStringInPeriod(JI)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunningEvent()Landroid/view/InputEvent;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunningEventDuration(Landroid/view/InputEvent;)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRunningMessage()Landroid/os/Message;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunningMessageDuration()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRunningMessageInfo()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getThreadTid()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .registers 3

    iget-object v0, p0, Landroid/os/perfdebug/MessageMonitor;->TAG:Ljava/lang/String;

    const-string v1, "Init MessageMonitor"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isMonitorLooper()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public markDispatch(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;)V
    .registers 3

    return-void
.end method

.method public markFinish(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;)V
    .registers 3

    return-void
.end method

.method public markInputEventDispatch(Landroid/view/InputEvent;)V
    .registers 2

    return-void
.end method

.method public markInputEventDispatchFinish(Landroid/view/InputEvent;)V
    .registers 2

    return-void
.end method

.method public setThreadNameAndTid(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method
