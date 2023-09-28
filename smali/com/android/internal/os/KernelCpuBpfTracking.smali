# classes4.dex

.class public final Lcom/android/internal/os/KernelCpuBpfTracking;
.super Ljava/lang/Object;


# static fields
.field private static sFreqs:[J

.field private static sFreqsClusters:[I

.field private static sTracking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sTracking:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqs:[J

    sput-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqsClusters:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClusters()I
    .registers 2

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_f

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static getFreqs()[J
    .registers 2

    sget-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqs:[J

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsInternal()[J

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v1, 0x0

    new-array v1, v1, [J

    return-object v1

    :cond_e
    sput-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqs:[J

    :cond_10
    sget-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqs:[J

    return-object v0
.end method

.method public static getFreqsClusters()[I
    .registers 2

    sget-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqsClusters:[I

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClustersInternal()[I

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1

    :cond_e
    sput-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqsClusters:[I

    :cond_10
    sget-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqsClusters:[I

    return-object v0
.end method

.method private static native getFreqsClustersInternal()[I
.end method

.method static native getFreqsInternal()[J
.end method

.method public static native isSupported()Z
.end method

.method public static startTracking()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sTracking:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->startTrackingInternal()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sTracking:Z

    :cond_a
    sget-boolean v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sTracking:Z

    return v0
.end method

.method private static native startTrackingInternal()Z
.end method
