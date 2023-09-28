# classes2.dex

.class Landroid/media/midi/MidiManager$DeviceListener;
.super Landroid/media/midi/IMidiDeviceListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceListener"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mTransport:I

.field final synthetic this$0:Landroid/media/midi/MidiManager;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$DeviceCallback;Ljava/util/concurrent/Executor;I)V
    .registers 5

    iput-object p1, p0, Landroid/media/midi/MidiManager$DeviceListener;->this$0:Landroid/media/midi/MidiManager;

    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceListener$Stub;-><init>()V

    iput-object p2, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    iput-object p3, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    iput p4, p0, Landroid/media/midi/MidiManager$DeviceListener;->mTransport:I

    return-void
.end method

.method private shouldInvokeCallback(Landroid/media/midi/MidiDeviceInfo;)Z
    .registers 7

    iget v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mTransport:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_10

    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getDefaultProtocol()I

    move-result v0

    if-eq v0, v1, :cond_f

    move v2, v3

    :cond_f
    return v2

    :cond_10
    if-ne v0, v3, :cond_1a

    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getDefaultProtocol()I

    move-result v0

    if-ne v0, v1, :cond_19

    move v2, v3

    :cond_19
    return v2

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid transport type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/midi/MidiManager$DeviceListener;->mTransport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MidiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method synthetic lambda$onDeviceAdded$0$android-media-midi-MidiManager$DeviceListener(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method synthetic lambda$onDeviceRemoved$1$android-media-midi-MidiManager$DeviceListener(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method synthetic lambda$onDeviceStatusChanged$2$android-media-midi-MidiManager$DeviceListener(Landroid/media/midi/MidiDeviceStatus;)V
    .registers 3

    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V

    return-void
.end method

.method public onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/media/midi/MidiManager$DeviceListener;->shouldInvokeCallback(Landroid/media/midi/MidiDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_13

    new-instance v1, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda0;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_18

    :cond_13
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/media/midi/MidiManager$DeviceListener;->shouldInvokeCallback(Landroid/media/midi/MidiDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_13

    new-instance v1, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda1;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_18

    :cond_13
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    .registers 4

    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_d

    new-instance v1, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceStatus;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_d
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V

    :goto_12
    return-void
.end method
