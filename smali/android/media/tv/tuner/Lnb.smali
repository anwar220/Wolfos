# classes2.dex

.class public Landroid/media/tv/tuner/Lnb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/Lnb$EventType;,
        Landroid/media/tv/tuner/Lnb$Position;,
        Landroid/media/tv/tuner/Lnb$Tone;,
        Landroid/media/tv/tuner/Lnb$Voltage;
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_DISEQC_RX_OVERFLOW:I = 0x0

.field public static final EVENT_TYPE_DISEQC_RX_PARITY_ERROR:I = 0x2

.field public static final EVENT_TYPE_DISEQC_RX_TIMEOUT:I = 0x1

.field public static final EVENT_TYPE_LNB_OVERLOAD:I = 0x3

.field public static final POSITION_A:I = 0x1

.field public static final POSITION_B:I = 0x2

.field public static final POSITION_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Lnb"

.field public static final TONE_CONTINUOUS:I = 0x1

.field public static final TONE_NONE:I = 0x0

.field public static final VOLTAGE_11V:I = 0x2

.field public static final VOLTAGE_12V:I = 0x3

.field public static final VOLTAGE_13V:I = 0x4

.field public static final VOLTAGE_14V:I = 0x5

.field public static final VOLTAGE_15V:I = 0x6

.field public static final VOLTAGE_18V:I = 0x7

.field public static final VOLTAGE_19V:I = 0x8

.field public static final VOLTAGE_5V:I = 0x1

.field public static final VOLTAGE_NONE:I


# instance fields
.field private final mCallbackLock:Ljava/lang/Object;

.field mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/tv/tuner/LnbCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private mIsClosed:Ljava/lang/Boolean;

.field private final mLock:Ljava/lang/Object;

.field private mNativeContext:J

.field mOwner:Landroid/media/tv/tuner/Tuner;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private native nativeClose()I
.end method

.method private native nativeSendDiseqcMessage([B)I
.end method

.method private native nativeSetSatellitePosition(I)I
.end method

.method private native nativeSetTone(I)I
.end method

.method private native nativeSetVoltage(I)I
.end method

.method private onDiseqcMessage([B)V
    .registers 7

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tuner/LnbCallback;

    iget-object v3, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_2d

    if-eqz v3, :cond_2d

    new-instance v4, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, p1}, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/Lnb;Landroid/media/tv/tuner/LnbCallback;[B)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2d
    goto :goto_d

    :cond_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private onEvent(I)V
    .registers 7

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tuner/LnbCallback;

    iget-object v3, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_2d

    if-eqz v3, :cond_2d

    new-instance v4, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, p1}, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/Lnb;Landroid/media/tv/tuner/LnbCallback;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2d
    goto :goto_d

    :cond_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method


# virtual methods
.method public addCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V
    .registers 5

    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v1
.end method

.method public close()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    invoke-direct {p0}, Landroid/media/tv/tuner/Lnb;->nativeClose()I

    move-result v1

    if-eqz v1, :cond_19

    const-string v2, "Failed to close LNB"

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    goto :goto_2f

    :cond_19
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/media/tv/tuner/Tuner;->releaseLnb()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    :cond_2a
    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :goto_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method isClosed()Z
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method synthetic lambda$onDiseqcMessage$1$android-media-tv-tuner-Lnb(Landroid/media/tv/tuner/LnbCallback;[B)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_8

    :try_start_5
    invoke-interface {p1, p2}, Landroid/media/tv/tuner/LnbCallback;->onDiseqcMessage([B)V

    :cond_8
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$onEvent$0$android-media-tv-tuner-Lnb(Landroid/media/tv/tuner/LnbCallback;I)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_8

    :try_start_5
    invoke-interface {p1, p2}, Landroid/media/tv/tuner/LnbCallback;->onEvent(I)V

    :cond_8
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeCallback(Landroid/media/tv/tuner/LnbCallback;)Z
    .registers 4

    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return v1

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public sendDiseqcMessage([B)I
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSendDiseqcMessage([B)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_a

    if-eqz p2, :cond_a

    :try_start_7
    invoke-virtual {p0, p2, p3}, Landroid/media/tv/tuner/Lnb;->addCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    invoke-virtual {p0, p1}, Landroid/media/tv/tuner/Lnb;->setOwner(Landroid/media/tv/tuner/Tuner;)V

    return-void

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method setOwner(Landroid/media/tv/tuner/Tuner;)V
    .registers 4

    const-string v0, "newOwner must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iput-object p1, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setSatellitePosition(I)I
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSetSatellitePosition(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public setTone(I)I
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSetTone(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public setVoltage(I)I
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSetVoltage(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method
