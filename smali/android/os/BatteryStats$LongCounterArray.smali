# classes3.dex

.class public abstract Landroid/os/BatteryStats$LongCounterArray;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LongCounterArray"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCountsLocked(I)[J
.end method

.method public abstract logState(Landroid/util/Printer;Ljava/lang/String;)V
.end method