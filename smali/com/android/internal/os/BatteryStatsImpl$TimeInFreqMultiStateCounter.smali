# classes4.dex

.class Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeInFreqMultiStateCounter"
.end annotation


# instance fields
.field private final mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

.field private final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;


# direct methods
.method static bridge synthetic -$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->setState(IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)V
    .registers 7

    new-instance v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(II)V

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongArrayMultiStateCounter;J)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJLcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)V

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongArrayMultiStateCounter;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p2, v0, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method private static readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .registers 8

    sget-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getStateCount()I

    move-result v1

    if-ne v1, p2, :cond_1b

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v1

    if-eq v1, p3, :cond_15

    goto :goto_1b

    :cond_15
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-direct {v1, p1, v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongArrayMultiStateCounter;J)V

    return-object v1

    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method private setState(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    return-void
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public detach()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getCounter()Lcom/android/internal/os/LongArrayMultiStateCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    return-object v0
.end method

.method public getCountsLocked([JI)Z
    .registers 10

    array-length v0, p1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    return v2

    :cond_b
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)V

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_21

    aget-wide v3, p1, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1e

    return v1

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_21
    return v2
.end method

.method public getStateCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getStateCount()I

    move-result v0

    return v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStarted(JJJ)V
    .registers 11

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 11

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    return-void
.end method

.method public reset(ZJ)Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->reset()V

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->detach()V

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public setTrackingEnabled(ZJ)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    if-eqz p1, :cond_e

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    return-void
.end method
