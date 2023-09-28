# classes3.dex

.class public final Landroid/os/BatteryUsageStatsQuery$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStatsQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mFromTimestamp:J

.field private mMaxStatsAgeMs:J

.field private mPowerComponents:[I

.field private mToTimestamp:J

.field private mUserIds:Landroid/util/IntArray;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFlags(Landroid/os/BatteryUsageStatsQuery$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFromTimestamp(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFromTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxStatsAgeMs(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMaxStatsAgeMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerComponents(Landroid/os/BatteryUsageStatsQuery$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mPowerComponents:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmToTimestamp(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mToTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmUserIds(Landroid/os/BatteryUsageStatsQuery$Builder;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMaxStatsAgeMs:J

    return-void
.end method


# virtual methods
.method public addUser(Landroid/os/UserHandle;)Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 4

    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    if-nez v0, :cond_c

    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    :cond_c
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    return-object p0
.end method

.method public aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 5

    iput-wide p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFromTimestamp:J

    iput-wide p3, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mToTimestamp:J

    return-object p0
.end method

.method public build()Landroid/os/BatteryUsageStatsQuery;
    .registers 3

    new-instance v0, Landroid/os/BatteryUsageStatsQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/BatteryUsageStatsQuery;-><init>(Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/os/BatteryUsageStatsQuery-IA;)V

    return-object v0
.end method

.method public includeBatteryHistory()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return-object p0
.end method

.method public includePowerComponents([I)Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    iput-object p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mPowerComponents:[I

    return-object p0
.end method

.method public includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return-object p0
.end method

.method public includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return-object p0
.end method

.method public includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return-object p0
.end method

.method public powerProfileModeledOnly()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return-object p0
.end method

.method public setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMaxStatsAgeMs:J

    return-object p0
.end method
