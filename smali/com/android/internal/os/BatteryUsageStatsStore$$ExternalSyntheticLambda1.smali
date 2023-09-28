# classes4.dex

.class public final synthetic Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$BatteryResetListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/os/BatteryUsageStatsStore;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/BatteryUsageStatsStore;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/os/BatteryUsageStatsStore;

    return-void
.end method


# virtual methods
.method public final prepareForBatteryStatsReset(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/os/BatteryUsageStatsStore;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryUsageStatsStore;->$r8$lambda$68qPHZ-NgB1E5Jr-Tjx8cJIEwEM(Lcom/android/internal/os/BatteryUsageStatsStore;I)V

    return-void
.end method
