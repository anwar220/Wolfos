# classes4.dex

.class public final synthetic Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/os/BatteryStatsImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;JJZLcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$1:J

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$2:J

    iput-boolean p6, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p7, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$4:Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .registers 12

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$1:J

    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$2:J

    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$3:Z

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$4:Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;

    move-object v8, p2

    check-cast v8, [J

    move v7, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->lambda$readKernelUidCpuClusterTimesLocked$3$com-android-internal-os-BatteryStatsImpl(JJZLcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;I[J)V

    return-void
.end method
