# classes4.dex

.class public final synthetic Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    check-cast p1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-static {p1}, Lcom/android/internal/os/BinderCallsStats;->lambda$dumpLocked$0(Lcom/android/internal/os/BinderCallsStats$UidEntry;)D

    move-result-wide v0

    return-wide v0
.end method
