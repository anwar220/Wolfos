# classes4.dex

.class public final Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelAllocationStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessGpuMem"
.end annotation


# instance fields
.field public final gpuMemoryKb:I

.field public final pid:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->pid:I

    iput p2, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->gpuMemoryKb:I

    return-void
.end method
