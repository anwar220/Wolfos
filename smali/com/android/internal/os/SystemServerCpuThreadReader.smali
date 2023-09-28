# classes4.dex

.class public Lcom/android/internal/os/SystemServerCpuThreadReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
    }
.end annotation


# instance fields
.field private final mDeltaCpuThreadTimes:Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

.field private final mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

.field private mLastBinderThreadCpuTimesUs:[J

.field private mLastThreadCpuTimesUs:[J


# direct methods
.method public constructor <init>(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;-><init>(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/SystemServerCpuThreadReader;-><init>(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    invoke-direct {v0}, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    iput-object p1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    return-void
.end method

.method public static create()Lcom/android/internal/os/SystemServerCpuThreadReader;
    .registers 2

    new-instance v0, Lcom/android/internal/os/SystemServerCpuThreadReader;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->create(I)Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/SystemServerCpuThreadReader;-><init>(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;)V

    return-object v0
.end method


# virtual methods
.method public readAbsolute()Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
    .registers 10

    iget-object v0, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getCpuFrequencyCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getProcessCpuUsage()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    move-result-object v1

    if-nez v1, :cond_10

    const/4 v2, 0x0

    return-object v2

    :cond_10
    new-instance v2, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    invoke-direct {v2}, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;-><init>()V

    new-array v3, v0, [J

    iput-object v3, v2, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    new-array v3, v0, [J

    iput-object v3, v2, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v0, :cond_37

    iget-object v4, v2, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    iget-object v5, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    aget-wide v5, v5, v3

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    aput-wide v5, v4, v3

    iget-object v4, v2, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    iget-object v5, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->selectedThreadCpuTimesMillis:[J

    aget-wide v5, v5, v3

    mul-long/2addr v5, v7

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_37
    return-object v2
.end method

.method public readDelta()Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
    .registers 14

    iget-object v0, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getCpuFrequencyCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    if-nez v1, :cond_1e

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mLastBinderThreadCpuTimesUs:[J

    iget-object v1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    new-array v2, v0, [J

    iput-object v2, v1, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    iget-object v1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    new-array v2, v0, [J

    iput-object v2, v1, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    :cond_1e
    iget-object v1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getProcessCpuUsage()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    move-result-object v1

    if-nez v1, :cond_28

    const/4 v2, 0x0

    return-object v2

    :cond_28
    add-int/lit8 v2, v0, -0x1

    :goto_2a
    if-ltz v2, :cond_65

    iget-object v3, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    aget-wide v3, v3, v2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iget-object v7, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->selectedThreadCpuTimesMillis:[J

    aget-wide v7, v7, v2

    mul-long/2addr v7, v5

    iget-object v5, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    iget-object v5, v5, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    iget-object v6, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    aget-wide v9, v6, v2

    sub-long v9, v3, v9

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    aput-wide v9, v5, v2

    iget-object v5, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    iget-object v5, v5, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    iget-object v6, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mLastBinderThreadCpuTimesUs:[J

    aget-wide v9, v6, v2

    sub-long v9, v7, v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    aput-wide v9, v5, v2

    iget-object v5, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    aput-wide v3, v5, v2

    iget-object v5, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mLastBinderThreadCpuTimesUs:[J

    aput-wide v7, v5, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2a

    :cond_65
    iget-object v2, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    return-object v2
.end method

.method public setBinderThreadNativeTids([I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->setSelectedThreadIds([I)V

    return-void
.end method

.method public startTrackingThreadCpuTime()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->startTrackingThreadCpuTimes()V

    return-void
.end method
