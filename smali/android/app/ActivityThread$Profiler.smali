# classes.dex

.class final Landroid/app/ActivityThread$Profiler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Profiler"
.end annotation


# instance fields
.field autoStopProfiler:Z

.field handlingProfiling:Z

.field profileFd:Landroid/os/ParcelFileDescriptor;

.field profileFile:Ljava/lang/String;

.field profiling:Z

.field samplingInterval:I

.field streamingOutput:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProfiler(Landroid/app/ProfilerInfo;)V
    .registers 4

    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iget-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v1, :cond_e

    if-eqz v0, :cond_d

    :try_start_8
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move-exception v1

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_17

    :try_start_12
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :cond_17
    :goto_17
    iget-object v1, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    iget v1, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v1, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    iget-boolean v1, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    iget-boolean v1, p1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    return-void
.end method

.method public startProfiling()V
    .registers 10

    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_59

    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_9

    goto :goto_59

    :cond_9
    :try_start_9
    const-string v0, "debug.traceview-buffer-size-mb"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    mul-int/lit16 v3, v0, 0x400

    mul-int/lit16 v3, v3, 0x400

    const/4 v4, 0x0

    iget v6, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    const/4 v8, 0x1

    if-eqz v6, :cond_25

    move v5, v8

    goto :goto_26

    :cond_25
    const/4 v5, 0x0

    :goto_26
    iget-boolean v7, p0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    invoke-static/range {v1 .. v7}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZIZ)V

    iput-boolean v8, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_2d} :catch_2e

    goto :goto_58

    :catch_2e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profiling failed on path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_49
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_51} :catch_52

    goto :goto_58

    :catch_52
    move-exception v1

    const-string v3, "Failure closing profile fd"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_58
    return-void

    :cond_59
    :goto_59
    return-void
.end method

.method public stopProfiling()V
    .registers 2

    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_13

    :try_start_e
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception v0

    :cond_13
    :goto_13
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    :cond_18
    return-void
.end method
