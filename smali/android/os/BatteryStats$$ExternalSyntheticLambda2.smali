# classes3.dex

.class public final synthetic Landroid/os/BatteryStats$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/os/BatteryStats$UidMobileRadioStats;

    check-cast p2, Landroid/os/BatteryStats$UidMobileRadioStats;

    invoke-static {p1, p2}, Landroid/os/BatteryStats;->lambda$getUidMobileRadioStats$0(Landroid/os/BatteryStats$UidMobileRadioStats;Landroid/os/BatteryStats$UidMobileRadioStats;)I

    move-result p1

    return p1
.end method
