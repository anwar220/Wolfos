# classes4.dex

.class public final Lcom/android/internal/os/KernelCpuTotalBpfMapReader;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read()[J
    .registers 1

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->startTracking()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-static {}, Lcom/android/internal/os/KernelCpuTotalBpfMapReader;->readInternal()[J

    move-result-object v0

    return-object v0
.end method

.method private static native readInternal()[J
.end method
