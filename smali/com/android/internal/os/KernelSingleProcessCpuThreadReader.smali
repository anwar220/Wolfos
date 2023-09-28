# classes4.dex

.class public Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;,
        Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KernelSingleProcCpuThreadRdr"


# instance fields
.field private final mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

.field private mFrequencyCount:I

.field private mIsTracking:Z

.field private final mPid:I

.field private mSelectedThreadNativeTids:[I


# direct methods
.method public constructor <init>(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mSelectedThreadNativeTids:[I

    iput p1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mPid:I

    iput-object p2, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    return-void
.end method

.method public static create(I)Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;-><init>(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_7

    return-object v1

    :catch_7
    move-exception v1

    const-string v2, "KernelSingleProcCpuThreadRdr"

    const-string v3, "Failed to initialize KernelSingleProcessCpuThreadReader"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private native getCpuFrequencyCount(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)I
.end method

.method private native readProcessCpuUsage(I[J[JLcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z
.end method

.method private native startAggregatingThreadCpuTimes([ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z
.end method

.method private native startTrackingProcessCpuTimes(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z
.end method


# virtual methods
.method public getCpuFrequencyCount()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mFrequencyCount:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getCpuFrequencyCount(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mFrequencyCount:I

    :cond_c
    iget v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mFrequencyCount:I

    return v0
.end method

.method public getProcessCpuUsage()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;
    .registers 6

    new-instance v0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    invoke-virtual {p0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getCpuFrequencyCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;-><init>(I)V

    iget v1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mPid:I

    iget-object v2, v0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    iget-object v3, v0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->selectedThreadCpuTimesMillis:[J

    iget-object v4, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->readProcessCpuUsage(I[J[JLcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v2, 0x0

    return-object v2

    :cond_19
    return-object v0
.end method

.method public setSelectedThreadIds([I)V
    .registers 4

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mSelectedThreadNativeTids:[I

    iget-boolean v1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mIsTracking:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->startAggregatingThreadCpuTimes([ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z

    :cond_11
    return-void
.end method

.method public startTrackingThreadCpuTimes()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mIsTracking:Z

    if-nez v0, :cond_54

    iget v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mPid:I

    iget-object v1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->startTrackingProcessCpuTimes(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z

    move-result v0

    const-string v1, "KernelSingleProcCpuThreadRdr"

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start tracking process CPU times for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mSelectedThreadNativeTids:[I

    array-length v2, v0

    if-lez v2, :cond_51

    iget-object v2, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->startAggregatingThreadCpuTimes([ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z

    move-result v0

    if-nez v0, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start tracking aggregated thread CPU times for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mSelectedThreadNativeTids:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mIsTracking:Z

    :cond_54
    return-void
.end method
