# classes3.dex

.class public interface abstract Landroid/perf/PerfMTKStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Landroid/perf/PerfMTKStub;
    .registers 1

    const-class v0, Landroid/perf/PerfMTKStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/perf/PerfMTKStub;

    return-object v0
.end method

.method public static newInstance()Landroid/perf/PerfMTKStub;
    .registers 1

    const-class v0, Landroid/perf/PerfMTKStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/perf/PerfMTKStub;

    return-object v0
.end method


# virtual methods
.method public varargs abstract perfLockAcquire(I[I)I
.end method

.method public abstract perfLockRelease()I
.end method

.method public abstract perfLockReleaseHandler(I)I
.end method
