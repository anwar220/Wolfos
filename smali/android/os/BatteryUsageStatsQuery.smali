# classes3.dex

.class public final Landroid/os/BatteryUsageStatsQuery;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryUsageStatsQuery$Builder;,
        Landroid/os/BatteryUsageStatsQuery$BatteryUsageStatsFlags;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Landroid/os/BatteryUsageStatsQuery;

.field private static final DEFAULT_MAX_STATS_AGE_MS:J = 0x493e0L

.field public static final FLAG_BATTERY_USAGE_STATS_INCLUDE_HISTORY:I = 0x2

.field public static final FLAG_BATTERY_USAGE_STATS_INCLUDE_POWER_MODELS:I = 0x4

.field public static final FLAG_BATTERY_USAGE_STATS_INCLUDE_PROCESS_STATE_DATA:I = 0x8

.field public static final FLAG_BATTERY_USAGE_STATS_INCLUDE_VIRTUAL_UIDS:I = 0x10

.field public static final FLAG_BATTERY_USAGE_STATS_POWER_PROFILE_MODEL:I = 0x1


# instance fields
.field private final mFlags:I

.field private final mFromTimestamp:J

.field private final mMaxStatsAgeMs:J

.field private final mPowerComponents:[I

.field private final mToTimestamp:J

.field private final mUserIds:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryUsageStatsQuery;->DEFAULT:Landroid/os/BatteryUsageStatsQuery;

    new-instance v0, Landroid/os/BatteryUsageStatsQuery$1;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$1;-><init>()V

    sput-object v0, Landroid/os/BatteryUsageStatsQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/BatteryUsageStatsQuery$Builder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmFlags(Landroid/os/BatteryUsageStatsQuery$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmUserIds(Landroid/os/BatteryUsageStatsQuery$Builder;)Landroid/util/IntArray;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmUserIds(Landroid/os/BatteryUsageStatsQuery$Builder;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    goto :goto_1f

    :cond_18
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    :goto_1f
    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmMaxStatsAgeMs(Landroid/os/BatteryUsageStatsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMaxStatsAgeMs:J

    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmFromTimestamp(Landroid/os/BatteryUsageStatsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFromTimestamp:J

    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmToTimestamp(Landroid/os/BatteryUsageStatsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mToTimestamp:J

    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmPowerComponents(Landroid/os/BatteryUsageStatsQuery$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPowerComponents:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/os/BatteryUsageStatsQuery-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BatteryUsageStatsQuery;-><init>(Landroid/os/BatteryUsageStatsQuery$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMaxStatsAgeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFromTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mToTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPowerComponents:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/BatteryUsageStatsQuery-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BatteryUsageStatsQuery;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    return v0
.end method

.method public getFromTimestamp()J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFromTimestamp:J

    return-wide v0
.end method

.method public getMaxStatsAge()J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMaxStatsAgeMs:J

    return-wide v0
.end method

.method public getPowerComponents()[I
    .registers 2

    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPowerComponents:[I

    return-object v0
.end method

.method public getToTimestamp()J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mToTimestamp:J

    return-wide v0
.end method

.method public getUserIds()[I
    .registers 2

    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    return-object v0
.end method

.method public isProcessStateDataNeeded()Z
    .registers 2

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public shouldForceUsePowerProfileModel()Z
    .registers 3

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMaxStatsAgeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFromTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mToTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPowerComponents:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
