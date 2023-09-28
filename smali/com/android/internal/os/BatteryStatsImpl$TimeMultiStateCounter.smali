# classes4.dex

.class Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
.super Landroid/os/BatteryStats$LongCounter;

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeMultiStateCounter"
.end annotation


# instance fields
.field private final mCounter:Lcom/android/internal/os/LongMultiStateCounter;

.field private final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;


# direct methods
.method static bridge synthetic -$$Nest$mincrement(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->increment(JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->setState(IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;JJ)J
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->update(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)V
    .registers 6

    new-instance v0, Lcom/android/internal/os/LongMultiStateCounter;

    invoke-direct {v0, p2}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongMultiStateCounter;J)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJLcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)V

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongMultiStateCounter;J)V
    .registers 6

    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p2, v0, p3, p4}, Lcom/android/internal/os/LongMultiStateCounter;->setEnabled(ZJ)V

    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method private increment(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/LongMultiStateCounter;->incrementValue(JJ)V

    return-void
.end method

.method private static readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 7

    sget-object v0, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongMultiStateCounter;->getStateCount()I

    move-result v1

    if-eq v1, p2, :cond_10

    const/4 v1, 0x0

    return-object v1

    :cond_10
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongMultiStateCounter;J)V

    return-object v1
.end method

.method private setState(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    return-void
.end method

.method private update(JJ)J
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public detach()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getCountForProcessState(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCountLocked(I)J
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->getTotalCountLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStateCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongMultiStateCounter;->getStateCount()I

    move-result v0

    return v0
.end method

.method public getTotalCountLocked()J
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongMultiStateCounter;->getTotalCount()J

    move-result-wide v0

    return-wide v0
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

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStarted(JJJ)V
    .registers 11

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/os/LongMultiStateCounter;->setEnabled(ZJ)V

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 11

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/os/LongMultiStateCounter;->setEnabled(ZJ)V

    return-void
.end method

.method public reset(ZJ)Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongMultiStateCounter;->reset()V

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->detach()V

    :cond_a
    const/4 v0, 0x1

    return v0
.end method
