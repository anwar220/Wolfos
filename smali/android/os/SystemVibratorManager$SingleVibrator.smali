# classes3.dex

.class final Landroid/os/SystemVibratorManager$SingleVibrator;
.super Landroid/os/Vibrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SingleVibrator"
.end annotation


# instance fields
.field private final mVibratorInfo:Landroid/os/VibratorInfo;

.field final synthetic this$0:Landroid/os/SystemVibratorManager;


# direct methods
.method constructor <init>(Landroid/os/SystemVibratorManager;Landroid/os/VibratorInfo;)V
    .registers 3

    iput-object p1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    iput-object p2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    return-void
.end method


# virtual methods
.method public addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmContext(Landroid/os/SystemVibratorManager;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "VibratorManager"

    const-string v1, "Failed to add vibrate state listener; no vibrator context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmContext(Landroid/os/SystemVibratorManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/SystemVibratorManager$SingleVibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    return-void
.end method

.method public addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 8

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    if-nez v0, :cond_33

    const-string v0, "VibratorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add vibrate state listener to vibrator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; no vibrator service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmLock(Landroid/os/SystemVibratorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3a
    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v1}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v1, "VibratorManager"

    const-string v2, "Listener already registered."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3a .. :try_end_4e} :catchall_96

    return-void

    :cond_4f
    :try_start_4f
    new-instance v1, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;

    invoke-direct {v1, p2, p1}, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;-><init>(Landroid/os/Vibrator$OnVibratorStateChangedListener;Ljava/util/concurrent/Executor;)V

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v2}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v2

    iget-object v3, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/os/IVibratorManagerService;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    if-nez v2, :cond_86

    const-string v2, "VibratorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add vibrate state listener to vibrator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v4}, Landroid/os/VibratorInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_84} :catch_90
    .catchall {:try_start_4f .. :try_end_84} :catchall_96

    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_96

    return-void

    :cond_86
    :try_start_86
    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v2}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8f} :catch_90
    .catchall {:try_start_86 .. :try_end_8f} :catchall_96

    goto :goto_94

    :catch_90
    move-exception v1

    :try_start_91
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_94
    monitor-exit v0

    return-void

    :catchall_96
    move-exception v1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_96

    throw v1
.end method

.method public cancel()V
    .registers 2

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-virtual {v0}, Landroid/os/SystemVibratorManager;->cancel()V

    return-void
.end method

.method public cancel(I)V
    .registers 3

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-virtual {v0, p1}, Landroid/os/SystemVibratorManager;->cancel(I)V

    return-void
.end method

.method protected getInfo()Landroid/os/VibratorInfo;
    .registers 2

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    return-object v0
.end method

.method public hasAmplitudeControl()Z
    .registers 2

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->hasAmplitudeControl()Z

    move-result v0

    return v0
.end method

.method public hasVibrator()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isVibrating()Z
    .registers 4

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to check status of vibrator "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; no vibrator service."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VibratorManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2e
    :try_start_2e
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/os/IVibratorManagerService;->isVibrating(I)Z

    move-result v0
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3e} :catch_3f

    return v0

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v1
.end method

.method public removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    if-nez v0, :cond_30

    const-string v0, "VibratorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove vibrate state listener from vibrator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; no vibrator service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_30
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmLock(Landroid/os/SystemVibratorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_37
    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v1}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v1}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_91

    :try_start_4f
    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v2}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v2

    iget-object v3, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/os/IVibratorManagerService;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    if-nez v2, :cond_81

    const-string v2, "VibratorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove vibrate state listener from vibrator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v4}, Landroid/os/VibratorInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_7f} :catch_8b
    .catchall {:try_start_4f .. :try_end_7f} :catchall_91

    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_91

    return-void

    :cond_81
    :try_start_81
    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v2}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_8a} :catch_8b
    .catchall {:try_start_81 .. :try_end_8a} :catchall_91

    goto :goto_8f

    :catch_8b
    move-exception v2

    :try_start_8c
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_8f
    :goto_8f
    monitor-exit v0

    return-void

    :catchall_91
    move-exception v1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_91

    throw v1
.end method

.method public setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .registers 13

    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p4}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/os/SystemVibratorManager;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result v1

    return v1
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .registers 13

    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    move v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/os/SystemVibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    return-void
.end method
