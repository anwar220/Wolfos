# classes.dex

.class public final Landroid/companion/virtual/audio/AudioCapture;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioCapture"


# instance fields
.field private final mAudioFormat:Landroid/media/AudioFormat;

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private final mLock:Ljava/lang/Object;

.field private mRecordingState:I


# direct methods
.method constructor <init>(Landroid/media/AudioFormat;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    iput-object p1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioFormat:Landroid/media/AudioFormat;

    return-void
.end method


# virtual methods
.method close()V
    .registers 3

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .registers 2

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public getRecordingState()I
    .registers 3

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/companion/virtual/audio/AudioCapture;->read(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;II)I
    .registers 6

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_c

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;II)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    monitor-exit v0

    return v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public read([BII)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/companion/virtual/audio/AudioCapture;->read([BIII)I

    move-result v0

    return v0
.end method

.method public read([BIII)I
    .registers 7

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_c

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    monitor-exit v0

    return v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public read([FIII)I
    .registers 7

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_c

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioRecord;->read([FIII)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    monitor-exit v0

    return v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public read([SII)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/companion/virtual/audio/AudioCapture;->read([SIII)I

    move-result v0

    return v0
.end method

.method public read([SIII)I
    .registers 7

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_c

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioRecord;->read([SIII)I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    monitor-exit v0

    return v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method setAudioRecord(Landroid/media/AudioRecord;)V
    .registers 6

    const-string v0, "AudioCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set AudioRecord with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_4a

    :try_start_1e
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_41

    iget v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_33

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    if-eq v1, v3, :cond_33

    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    :cond_33
    iget v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    if-ne v1, v2, :cond_4a

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    if-eq v1, v2, :cond_4a

    invoke-virtual {p1}, Landroid/media/AudioRecord;->stop()V

    goto :goto_4a

    :cond_41
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "set an uninitialized AudioRecord."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4a
    :goto_4a
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    :cond_51
    iput-object p1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    monitor-exit v0

    return-void

    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_1e .. :try_end_57} :catchall_55

    throw v1
.end method

.method public startRecording()V
    .registers 4

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_4
    iput v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    iget-object v2, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-eq v2, v1, :cond_15

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public stop()V
    .registers 4

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    iget-object v2, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-eq v2, v1, :cond_15

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v1
.end method
