# classes4.dex

.class public interface abstract Lcom/android/internal/os/BinderInternal$CallStatsObserver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallStatsObserver"
.end annotation


# virtual methods
.method public abstract noteBinderThreadNativeIds([I)V
.end method

.method public abstract noteCallStats(IJLjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Collection<",
            "Lcom/android/internal/os/BinderCallsStats$CallStat;",
            ">;)V"
        }
    .end annotation
.end method
