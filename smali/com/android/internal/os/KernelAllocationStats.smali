# classes4.dex

.class public final Lcom/android/internal/os/KernelAllocationStats;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;,
        Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getDmabufAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;
.end method

.method public static native getGpuAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;
.end method
