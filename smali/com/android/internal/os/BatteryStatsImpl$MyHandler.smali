# classes4.dex

.class final Lcom/android/internal/os/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$fgetmCallback(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_84

    goto/16 :goto_82

    :sswitch_e
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsManagerStub;->getInstance(Lcom/android/internal/os/BatteryStatsImpl;I)Lcom/android/internal/os/BatteryStatsManagerStub;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsManagerStub;->noteStopGpsLocked(I)V

    goto/16 :goto_82

    :sswitch_1b
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsManagerStub;->getInstance(Lcom/android/internal/os/BatteryStatsImpl;I)Lcom/android/internal/os/BatteryStatsManagerStub;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsManagerStub;->noteStartGpsLocked(I)V

    goto :goto_82

    :sswitch_27
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsManagerStub;->getInstance(Lcom/android/internal/os/BatteryStatsImpl;I)Lcom/android/internal/os/BatteryStatsManagerStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsManagerStub;->noteResetAudioLocked()V

    goto :goto_82

    :sswitch_31
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsManagerStub;->getInstance(Lcom/android/internal/os/BatteryStatsImpl;I)Lcom/android/internal/os/BatteryStatsManagerStub;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsManagerStub;->noteAudioOffLocked(I)V

    goto :goto_82

    :sswitch_3d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsManagerStub;->getInstance(Lcom/android/internal/os/BatteryStatsImpl;I)Lcom/android/internal/os/BatteryStatsManagerStub;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsManagerStub;->noteAudioOnLocked(I)V

    goto :goto_82

    :sswitch_49
    if-eqz v0, :cond_82

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryStatsReset()V

    goto :goto_82

    :sswitch_4f
    if-eqz v0, :cond_82

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    :try_start_54
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eqz v2, :cond_5d

    const-string v2, "android.os.action.CHARGING"

    goto :goto_5f

    :cond_5d
    const-string v2, "android.os.action.DISCHARGING"

    :goto_5f
    nop

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_6f

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    goto :goto_82

    :catchall_6f
    move-exception v2

    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v2

    :sswitch_72
    if-eqz v0, :cond_82

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_79

    const/4 v2, 0x1

    :cond_79
    invoke-interface {v0, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryPowerChanged(Z)V

    goto :goto_82

    :sswitch_7d
    if-eqz v0, :cond_82

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryNeedsCpuUpdate()V

    :cond_82
    :goto_82
    return-void

    nop

    :sswitch_data_84
    .sparse-switch
        0x1 -> :sswitch_7d
        0x2 -> :sswitch_72
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_49
        0x3e8 -> :sswitch_3d
        0x3e9 -> :sswitch_31
        0x3ea -> :sswitch_27
        0x3eb -> :sswitch_1b
        0x3ec -> :sswitch_e
    .end sparse-switch
.end method
