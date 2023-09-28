# classes4.dex

.class public final synthetic Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->getMethodName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
