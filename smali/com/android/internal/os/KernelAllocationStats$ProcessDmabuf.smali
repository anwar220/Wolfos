# classes4.dex

.class public final Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelAllocationStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessDmabuf"
.end annotation


# instance fields
.field public final oomScore:I

.field public final processName:Ljava/lang/String;

.field public final retainedBuffersCount:I

.field public final retainedSizeKb:I

.field public final surfaceFlingerCount:I

.field public final surfaceFlingerSizeKb:I

.field public final uid:I


# direct methods
.method constructor <init>(ILjava/lang/String;IIIII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->uid:I

    iput-object p2, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->oomScore:I

    iput p4, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    iput p5, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedBuffersCount:I

    iput p6, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerSizeKb:I

    iput p7, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerCount:I

    return-void
.end method
