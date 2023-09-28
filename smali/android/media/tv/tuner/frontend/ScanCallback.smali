# classes2.dex

.class public interface abstract Landroid/media/tv/tuner/frontend/ScanCallback;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract onAnalogSifStandardReported(I)V
.end method

.method public abstract onAtsc3PlpInfosReported([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
.end method

.method public onDvbcAnnexReported(I)V
    .registers 2

    return-void
.end method

.method public abstract onDvbsStandardReported(I)V
.end method

.method public onDvbtCellIdsReported([I)V
    .registers 2

    return-void
.end method

.method public abstract onDvbtStandardReported(I)V
.end method

.method public onFrequenciesLongReported([J)V
    .registers 6

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_f

    aget-wide v2, p1, v1

    long-to-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    invoke-interface {p0, v0}, Landroid/media/tv/tuner/frontend/ScanCallback;->onFrequenciesReported([I)V

    return-void
.end method

.method public abstract onFrequenciesReported([I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onGroupIdsReported([I)V
.end method

.method public abstract onHierarchyReported(I)V
.end method

.method public abstract onInputStreamIdsReported([I)V
.end method

.method public abstract onLocked()V
.end method

.method public onModulationReported(I)V
    .registers 2

    return-void
.end method

.method public abstract onPlpIdsReported([I)V
.end method

.method public onPriorityReported(Z)V
    .registers 2

    return-void
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onScanStopped()V
.end method

.method public abstract onSignalTypeReported(I)V
.end method

.method public abstract onSymbolRatesReported([I)V
.end method

.method public onUnlocked()V
    .registers 1

    return-void
.end method
