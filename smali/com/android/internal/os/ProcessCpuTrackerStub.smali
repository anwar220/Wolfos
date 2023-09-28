# classes4.dex

.class public Lcom/android/internal/os/ProcessCpuTrackerStub;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/os/ProcessCpuTrackerStub;
    .registers 1

    const-class v0, Lcom/android/internal/os/ProcessCpuTrackerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTrackerStub;

    return-object v0
.end method


# virtual methods
.method public isDisableThread(Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method
