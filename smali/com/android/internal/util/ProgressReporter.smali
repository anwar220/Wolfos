# classes4.dex

.class public Lcom/android/internal/util/ProgressReporter;
.super Ljava/lang/Object;


# static fields
.field private static final STATE_FINISHED:I = 0x2

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_STARTED:I = 0x1


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private final mId:I

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:I

.field private mSegmentRange:[I

.field private mState:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    iput p1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    return-void

    nop

    :array_22
    .array-data 4
        0x0
        0x64
    .end array-data
.end method

.method private notifyFinished(ILandroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    :try_start_a
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/IProgressListener;

    invoke-interface {v1, p1, p2}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private notifyProgress(IILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    :try_start_a
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/IProgressListener;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IProgressListener;->onProgress(IILandroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private notifyStarted(ILandroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    :try_start_a
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/IProgressListener;

    invoke-interface {v1, p1, p2}, Landroid/os/IProgressListener;->onStarted(ILandroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/IProgressListener;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_2c

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_30

    goto :goto_2a

    :pswitch_10  #0x2
    :try_start_10
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    invoke-interface {p1, v0, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16
    .catchall {:try_start_10 .. :try_end_15} :catchall_2c

    goto :goto_2a

    :catch_16
    move-exception v0

    goto :goto_2a

    :pswitch_18  #0x1
    :try_start_18
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    invoke-interface {p1, v0, v1}, Landroid/os/IProgressListener;->onStarted(ILandroid/os/Bundle;)V

    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2}, Landroid/os/IProgressListener;->onProgress(IILandroid/os/Bundle;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_26} :catch_27
    .catchall {:try_start_18 .. :try_end_26} :catchall_2c

    goto :goto_2a

    :catch_27
    move-exception v0

    goto :goto_2a

    :pswitch_29  #0x0
    nop

    :goto_2a
    :try_start_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_29  #00000000
        :pswitch_18  #00000001
        :pswitch_10  #00000002
    .end packed-switch
.end method

.method public endSegment([I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iput-object p1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public finish()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProgressReporter;->notifyFinished(ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_11

    throw v0
.end method

.method getProgress()I
    .registers 2

    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    return v0
.end method

.method getSegmentRange()[I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    return-object v0
.end method

.method public setProgress(I)V
    .registers 4

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    return-void
.end method

.method public setProgress(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    return-void
.end method

.method public setProgress(IILjava/lang/CharSequence;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    aget v0, v0, v1

    mul-int v1, p1, v0

    div-int/2addr v1, p2

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    if-eqz p3, :cond_20

    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_20
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/util/ProgressReporter;->notifyProgress(IILandroid/os/Bundle;)V

    monitor-exit p0

    return-void

    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be started to change progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public setProgress(ILjava/lang/CharSequence;)V
    .registers 4

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    return-void
.end method

.method public start()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProgressReporter;->notifyStarted(ILandroid/os/Bundle;)V

    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/util/ProgressReporter;->notifyProgress(IILandroid/os/Bundle;)V

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public startSegment(I)[I
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    aput v4, v2, v3

    const/4 v3, 0x1

    aget v0, v0, v3

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    aput v0, v2, v3

    iput-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    monitor-exit p0

    return-object v1

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method
