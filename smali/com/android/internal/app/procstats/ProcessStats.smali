# classes4.dex

.class public final Lcom/android/internal/app/procstats/ProcessStats;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/procstats/ProcessStats$PackageState;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;,
        Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;
    }
.end annotation


# static fields
.field public static final ADD_PSS_EXTERNAL:I = 0x3

.field public static final ADD_PSS_EXTERNAL_SLOW:I = 0x4

.field public static final ADD_PSS_INTERNAL_ALL_MEM:I = 0x1

.field public static final ADD_PSS_INTERNAL_ALL_POLL:I = 0x2

.field public static final ADD_PSS_INTERNAL_SINGLE:I = 0x0

.field public static final ADJ_COUNT:I = 0x8

.field public static final ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final ADJ_NOTHING:I = -0x1

.field public static final ADJ_SCREEN_MOD:I = 0x4

.field public static final ADJ_SCREEN_OFF:I = 0x0

.field public static final ADJ_SCREEN_ON:I = 0x4

.field public static final ALL_MEM_ADJ:[I

.field public static final ALL_PROC_STATES:[I

.field public static final ALL_SCREEN_ADJ:[I

.field static final ASSOCIATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final BACKGROUND_PROC_STATES:[I

.field static final BAD_TABLE:[I

.field public static COMMIT_PERIOD:J = 0x0L

.field public static COMMIT_UPTIME_PERIOD:J = 0x0L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final DEBUG_PARCEL:Z = false

.field public static final FLAG_COMPLETE:I = 0x1

.field public static final FLAG_SHUTDOWN:I = 0x2

.field public static final FLAG_SYSPROPS:I = 0x4

.field private static final INVERSE_PROC_STATE_WARNING_MIN_INTERVAL_MS:J = 0x2710L

.field private static final MAGIC:I = 0x50535454

.field public static final NON_CACHED_PROC_STATES:[I

.field public static final OPTIONS:[I

.field public static final OPTIONS_STR:[Ljava/lang/String;

.field private static final PARCEL_VERSION:I = 0x29

.field public static final PSS_AVERAGE:I = 0x2

.field public static final PSS_COUNT:I = 0xa

.field public static final PSS_MAXIMUM:I = 0x3

.field public static final PSS_MINIMUM:I = 0x1

.field public static final PSS_RSS_AVERAGE:I = 0x8

.field public static final PSS_RSS_MAXIMUM:I = 0x9

.field public static final PSS_RSS_MINIMUM:I = 0x7

.field public static final PSS_SAMPLE_COUNT:I = 0x0

.field public static final PSS_USS_AVERAGE:I = 0x5

.field public static final PSS_USS_MAXIMUM:I = 0x6

.field public static final PSS_USS_MINIMUM:I = 0x4

.field public static final REPORT_ALL:I = 0x1f

.field public static final REPORT_PKG_ASC_STATS:I = 0x8

.field public static final REPORT_PKG_PROC_STATS:I = 0x2

.field public static final REPORT_PKG_STATS:I = 0xe

.field public static final REPORT_PKG_SVC_STATS:I = 0x4

.field public static final REPORT_PROC_STATS:I = 0x1

.field public static final REPORT_UID_STATS:I = 0x10

.field public static final SERVICE_NAME:Ljava/lang/String; = "procstats"

.field public static final STATE_BACKUP:I = 0x6

.field public static final STATE_BOUND_TOP_OR_FGS:I = 0x2

.field public static final STATE_CACHED_ACTIVITY:I = 0xd

.field public static final STATE_CACHED_ACTIVITY_CLIENT:I = 0xe

.field public static final STATE_CACHED_EMPTY:I = 0xf

.field public static final STATE_COUNT:I = 0x10

.field public static final STATE_FGS:I = 0x3

.field public static final STATE_HEAVY_WEIGHT:I = 0xa

.field public static final STATE_HOME:I = 0xb

.field public static final STATE_IMPORTANT_BACKGROUND:I = 0x5

.field public static final STATE_IMPORTANT_FOREGROUND:I = 0x4

.field public static final STATE_LAST_ACTIVITY:I = 0xc

.field public static final STATE_NOTHING:I = -0x1

.field public static final STATE_PERSISTENT:I = 0x0

.field public static final STATE_RECEIVER:I = 0x9

.field public static final STATE_SERVICE:I = 0x7

.field public static final STATE_SERVICE_RESTARTING:I = 0x8

.field public static final STATE_TOP:I = 0x1

.field public static final SYS_MEM_USAGE_CACHED_AVERAGE:I = 0x2

.field public static final SYS_MEM_USAGE_CACHED_MAXIMUM:I = 0x3

.field public static final SYS_MEM_USAGE_CACHED_MINIMUM:I = 0x1

.field public static final SYS_MEM_USAGE_COUNT:I = 0x10

.field public static final SYS_MEM_USAGE_FREE_AVERAGE:I = 0x5

.field public static final SYS_MEM_USAGE_FREE_MAXIMUM:I = 0x6

.field public static final SYS_MEM_USAGE_FREE_MINIMUM:I = 0x4

.field public static final SYS_MEM_USAGE_KERNEL_AVERAGE:I = 0xb

.field public static final SYS_MEM_USAGE_KERNEL_MAXIMUM:I = 0xc

.field public static final SYS_MEM_USAGE_KERNEL_MINIMUM:I = 0xa

.field public static final SYS_MEM_USAGE_NATIVE_AVERAGE:I = 0xe

.field public static final SYS_MEM_USAGE_NATIVE_MAXIMUM:I = 0xf

.field public static final SYS_MEM_USAGE_NATIVE_MINIMUM:I = 0xd

.field public static final SYS_MEM_USAGE_SAMPLE_COUNT:I = 0x0

.field public static final SYS_MEM_USAGE_ZRAM_AVERAGE:I = 0x8

.field public static final SYS_MEM_USAGE_ZRAM_MAXIMUM:I = 0x9

.field public static final SYS_MEM_USAGE_ZRAM_MINIMUM:I = 0x7

.field public static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final sPageTypeRegex:Ljava/util/regex/Pattern;


# instance fields
.field mCommonStringToIndex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mExternalPssCount:J

.field public mExternalPssTime:J

.field public mExternalSlowPssCount:J

.field public mExternalSlowPssTime:J

.field public mFlags:I

.field mHasSwappedOutPss:Z

.field mIndexToCommonString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mInternalAllMemPssCount:J

.field public mInternalAllMemPssTime:J

.field public mInternalAllPollPssCount:J

.field public mInternalAllPollPssTime:J

.field public mInternalSinglePssCount:J

.field public mInternalSinglePssTime:J

.field public mMemFactor:I

.field public final mMemFactorDurations:[J

.field private mNextInverseProcStateWarningUptime:J

.field public mNumAggregated:I

.field public final mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/app/procstats/ProcessStats$PackageState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPageTypeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageTypeNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageTypeSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private final mPageTypeZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public mReadError:Ljava/lang/String;

.field mRunning:Z

.field mRuntime:Ljava/lang/String;

.field private mSkippedInverseProcStateWarningCount:I

.field public mStartTime:J

.field public final mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

.field public final mSysMemUsageArgs:[J

.field public final mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

.field public mTimePeriodEndRealtime:J

.field public mTimePeriodEndUptime:J

.field public mTimePeriodStartClock:J

.field public mTimePeriodStartClockStr:Ljava/lang/String;

.field public mTimePeriodStartRealtime:J

.field public mTimePeriodStartUptime:J

.field public final mTrackingAssociations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceState;",
            ">;"
        }
    .end annotation
.end field

.field public final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/app/procstats/UidState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_7e

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_86

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_a0

    sput-object v1, Lcom/android/internal/app/procstats/ProcessStats;->BACKGROUND_PROC_STATES:[I

    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_b2

    sput-object v1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_d6

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS:[I

    const-string/jumbo v1, "proc"

    const-string/jumbo v2, "pkg-proc"

    const-string/jumbo v3, "pkg-svc"

    const-string/jumbo v4, "pkg-asc"

    const-string/jumbo v5, "pkg-all"

    const-string/jumbo v6, "uid"

    const-string v7, "all"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS_STR:[Ljava/lang/String;

    const-string v0, "^Node\\s+(\\d+),.* zone\\s+(\\w+),.* type\\s+(\\w+)\\s+([\\s\\d]+?)\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BAD_TABLE:[I

    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ASSOCIATION_COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_72
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_7e
    .array-data 4
        0x0
        0x4
    .end array-data

    :array_86
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data

    :array_a0
    .array-data 4
        0x4
        0x5
        0x6
        0xa
        0x7
        0x8
        0x9
    .end array-data

    :array_b2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_d6
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0xe
        0x10
        0x1f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    new-instance v0, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    const/16 v1, 0x10

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    new-instance v1, Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-direct {v1, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    new-instance v0, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    const/16 v1, 0x10

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    new-instance v1, Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-direct {v1, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    if-eqz p1, :cond_74

    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, v0}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    :cond_74
    return-void
.end method

.method private buildTimePeriodStartClockStr()V
    .registers 4

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    return-void
.end method

.method private collectProcessPackageMaps(Ljava/lang/String;ZLcom/android/internal/app/ProcessMap;Landroid/util/SparseArray;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/app/procstats/ProcessStats$PackageState;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_14
    if-ltz v5, :cond_da

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    sub-int/2addr v9, v6

    :goto_27
    if-ltz v9, :cond_cf

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    sub-int/2addr v11, v6

    :goto_34
    if-ltz v11, :cond_c4

    invoke-virtual {v10, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-eqz v0, :cond_47

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_45

    goto :goto_47

    :cond_45
    const/4 v13, 0x0

    goto :goto_48

    :cond_47
    :goto_47
    move v13, v6

    :goto_48
    iget-object v14, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    sub-int/2addr v14, v6

    :goto_4f
    if-ltz v14, :cond_b9

    iget-object v15, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v13, :cond_66

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66

    goto :goto_af

    :cond_66
    if-eqz p2, :cond_6f

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v6

    if-nez v6, :cond_6f

    goto :goto_af

    :cond_6f
    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/ArraySet;

    if-nez v16, :cond_8c

    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v16, v17

    move-object/from16 v3, v16

    invoke-virtual {v1, v6, v0, v3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8e

    :cond_8c
    move-object/from16 v3, v16

    :goto_8e
    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/ArraySet;

    if-nez v16, :cond_a6

    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v16, v17

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a8

    :cond_a6
    move-object/from16 v1, v16

    :goto_a8
    move/from16 v16, v0

    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_af
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v6, 0x1

    goto :goto_4f

    :cond_b9
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v6, 0x1

    goto/16 :goto_34

    :cond_c4
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v6, 0x1

    goto/16 :goto_27

    :cond_cf
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v6, 0x1

    goto/16 :goto_14

    :cond_da
    return-void
.end method

.method private dumpFragmentationLocked(Ljava/io/PrintWriter;)V
    .registers 11

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Available pages by page size:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_5c

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v3

    const-string v3, "Node %3d Zone %7s  %14s "

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-nez v2, :cond_40

    move v3, v4

    goto :goto_41

    :cond_40
    array-length v3, v2

    :goto_41
    const/4 v6, 0x0

    :goto_42
    if-ge v6, v3, :cond_56

    new-array v7, v5, [Ljava/lang/Object;

    aget v8, v2, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "%6d"

    invoke-virtual {p1, v8, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    :cond_56
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_5c
    return-void
.end method

.method private dumpProtoPreamble(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_16

    :cond_14
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    :goto_16
    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000003L

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000004L

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10900000005L

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10800000006L

    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const-wide v3, 0x20e00000007L

    if-eqz v1, :cond_57

    const/4 v1, 0x3

    invoke-virtual {p1, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v0, 0x0

    :cond_57
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v5, 0x4

    and-int/2addr v1, v5

    if-eqz v1, :cond_61

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v0, 0x0

    :cond_61
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v5, 0x1

    and-int/2addr v1, v5

    if-eqz v1, :cond_6b

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v0, 0x0

    :cond_6b
    if-eqz v0, :cond_70

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_70
    return-void
.end method

.method static synthetic lambda$static$0(Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;)I
    .registers 10

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    :cond_13
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mActiveTime:J

    iget-wide v3, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mActiveTime:J

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mActiveTime:J

    iget-wide v6, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mActiveTime:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    return v2

    :cond_28
    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mTotalTime:J

    iget-wide v6, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mTotalTime:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3b

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mTotalTime:J

    iget-wide v6, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mTotalTime:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_39

    goto :goto_3a

    :cond_39
    move v2, v3

    :goto_3a
    return v2

    :cond_3b
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/AssociationState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4e

    return v0

    :cond_4e
    const/4 v1, 0x0

    return v1
.end method

.method private readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move v1, v0

    if-eq v0, p2, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    const/4 v0, 0x0

    return v0

    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method private readCompactedLongArray(Landroid/os/Parcel;I[JI)V
    .registers 13

    const/16 v0, 0xa

    if-gt p2, v0, :cond_8

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    return-void

    :cond_8
    array-length v0, p3

    if-gt p4, v0, :cond_32

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p4, :cond_28

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ltz v2, :cond_18

    int-to-long v3, v2

    aput-wide v3, p3, v1

    goto :goto_25

    :cond_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    not-int v4, v2

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v3

    or-long/2addr v4, v6

    aput-wide v4, p3, v1

    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_28
    :goto_28
    if-ge v1, v0, :cond_31

    const-wide/16 v2, 0x0

    aput-wide v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_31
    return-void

    :cond_32
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad array lengths: got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " array is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_a

    add-int/lit8 v2, v1, 0x1

    goto :goto_c

    :cond_a
    const/16 v2, 0x4000

    :goto_c
    new-array v2, v2, [B

    :goto_e
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_1a

    aput v0, p1, v4

    return-object v2

    :cond_1a
    add-int/2addr v0, v3

    array-length v5, v2

    if-lt v0, v5, :cond_26

    add-int/lit16 v5, v0, 0x4000

    new-array v5, v5, [B

    invoke-static {v2, v4, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v5

    :cond_26
    goto :goto_e
.end method

.method private resetCommon()V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->reset()V

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->resetTable()V

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;->evaluateSystemProperties(Z)Z

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->updateFragmentation()V

    return-void
.end method

.method private static splitAndParseNumbers(Ljava/lang/String;)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_7
    const/16 v4, 0x39

    const/16 v5, 0x30

    if-ge v3, v2, :cond_1f

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_1b

    if-gt v6, v4, :cond_1b

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :cond_1c
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1f
    new-array v3, v1, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_24
    if-ge v8, v2, :cond_45

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_3a

    if-gt v9, v4, :cond_3a

    if-nez v0, :cond_34

    const/4 v0, 0x1

    add-int/lit8 v7, v9, -0x30

    goto :goto_42

    :cond_34
    mul-int/lit8 v7, v7, 0xa

    add-int/lit8 v10, v9, -0x30

    add-int/2addr v7, v10

    goto :goto_42

    :cond_3a
    if-eqz v0, :cond_42

    const/4 v0, 0x0

    add-int/lit8 v10, v6, 0x1

    aput v7, v3, v6

    move v6, v10

    :cond_42
    :goto_42
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    :cond_45
    if-lez v1, :cond_4b

    add-int/lit8 v4, v1, -0x1

    aput v7, v3, v4

    :cond_4b
    return-object v3
.end method

.method private writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .registers 11

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_48

    aget-wide v1, p2, v0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time val negative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ProcessStats"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    :cond_25
    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_31

    long-to-int v3, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45

    :cond_31
    const/16 v5, 0x20

    shr-long v5, v1, v5

    and-long/2addr v3, v5

    long-to-int v3, v3

    not-int v3, v3

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v1

    long-to-int v4, v4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_48
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ProcessStats;)V
    .registers 27

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    const/4 v0, 0x0

    move v10, v0

    :goto_c
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v10, v0, :cond_160

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v13, v0

    :goto_22
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v13, v0, :cond_156

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    move v6, v0

    :goto_35
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_148

    invoke-virtual {v15, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v15, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v0, v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    iget-object v0, v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iget-object v0, v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/16 v16, 0x0

    move/from16 v17, v6

    move/from16 v6, v16

    :goto_5e
    if-ge v6, v2, :cond_da

    move/from16 v16, v0

    iget-object v0, v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    move/from16 v18, v1

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    if-eq v1, v0, :cond_bc

    nop

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v19

    move/from16 v1, v16

    move-object/from16 v16, v9

    move-object v9, v0

    move-object/from16 v0, p0

    move-object/from16 v20, v12

    move/from16 v12, v18

    move-object/from16 v18, v15

    move v15, v1

    move-object v1, v11

    move/from16 v21, v2

    move v2, v14

    move-wide/from16 v22, v3

    move-object v8, v5

    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    if-ne v1, v0, :cond_b6

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-wide/from16 v3, v22

    invoke-virtual {v7, v11, v14, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    move-wide/from16 v22, v1

    iget-object v1, v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b8

    :cond_b6
    move-wide/from16 v3, v22

    :goto_b8
    invoke-virtual {v0, v9}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    goto :goto_ca

    :cond_bc
    move/from16 v21, v2

    move-object v8, v5

    move-object/from16 v20, v12

    move/from16 v12, v18

    move-object/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v9

    move-object v9, v0

    :goto_ca
    add-int/lit8 v6, v6, 0x1

    move-object v5, v8

    move v1, v12

    move v0, v15

    move-object/from16 v9, v16

    move-object/from16 v15, v18

    move-object/from16 v12, v20

    move/from16 v2, v21

    move-object/from16 v8, p1

    goto :goto_5e

    :cond_da
    move/from16 v21, v2

    move-object v8, v5

    move-object/from16 v16, v9

    move-object/from16 v20, v12

    move-object/from16 v18, v15

    move v15, v0

    move v12, v1

    const/4 v0, 0x0

    move v9, v0

    :goto_e7
    if-ge v9, v12, :cond_112

    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/internal/app/procstats/ServiceState;

    nop

    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ServiceState;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v14

    move-wide/from16 v22, v3

    move/from16 v24, v12

    move-object v12, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/internal/app/procstats/ServiceState;->add(Lcom/android/internal/app/procstats/ServiceState;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v12, v24

    goto :goto_e7

    :cond_112
    move-wide/from16 v22, v3

    move/from16 v24, v12

    const/4 v0, 0x0

    move v9, v0

    :goto_118
    if-ge v9, v15, :cond_13c

    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/app/procstats/AssociationState;

    nop

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/AssociationState;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v14

    move-wide/from16 v3, v22

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->getAssociationStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/internal/app/procstats/AssociationState;->add(Lcom/android/internal/app/procstats/AssociationState;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_118

    :cond_13c
    add-int/lit8 v6, v17, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, v16

    move-object/from16 v15, v18

    move-object/from16 v12, v20

    goto/16 :goto_35

    :cond_148
    move/from16 v17, v6

    move-object/from16 v16, v9

    move-object/from16 v20, v12

    move-object/from16 v18, v15

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, p1

    goto/16 :goto_22

    :cond_156
    move-object/from16 v16, v9

    move-object/from16 v20, v12

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, p1

    goto/16 :goto_c

    :cond_160
    move-object/from16 v16, v9

    move-object/from16 v8, p1

    iget-object v9, v8, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_16b
    if-ge v0, v1, :cond_197

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/UidState;

    if-nez v3, :cond_18b

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/UidState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/UidState;->clone()Lcom/android/internal/app/procstats/UidState;

    move-result-object v3

    iget-object v4, v7, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_194

    :cond_18b
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/UidState;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/procstats/UidState;->add(Lcom/android/internal/app/procstats/UidState;)V

    :goto_194
    add-int/lit8 v0, v0, 0x1

    goto :goto_16b

    :cond_197
    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    const/4 v0, 0x0

    move v11, v0

    :goto_19f
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v11, v0, :cond_233

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v13, v0

    :goto_1ae
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v13, v0, :cond_22d

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v2

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v17, :cond_206

    new-instance v18, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-wide/from16 v19, v2

    move-object v2, v4

    move v3, v14

    move-object/from16 v21, v9

    move-object v9, v4

    move-wide/from16 v4, v19

    move-object/from16 v22, v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v2, v22

    invoke-virtual {v1, v2, v14, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v3, v19

    invoke-virtual {v7, v9, v14, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v1

    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20d

    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20d

    :cond_206
    move-object/from16 v21, v9

    move-object v9, v4

    move-wide v3, v2

    move-object v2, v6

    move-object/from16 v0, v17

    :cond_20d
    :goto_20d
    invoke-virtual {v0, v15}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/UidState;

    if-nez v1, :cond_225

    new-instance v5, Lcom/android/internal/app/procstats/UidState;

    invoke-direct {v5, v7, v14}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    move-object v1, v5

    iget-object v5, v7, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_225
    invoke-virtual {v1, v0}, Lcom/android/internal/app/procstats/UidState;->addProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v21

    goto :goto_1ae

    :cond_22d
    move-object/from16 v21, v9

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_19f

    :cond_233
    move-object/from16 v21, v9

    const/4 v0, 0x0

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_23c
    if-ge v0, v1, :cond_24e

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/UidState;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23c

    :cond_24e
    const/4 v0, 0x0

    :goto_24f
    const/16 v1, 0x8

    if-ge v0, v1, :cond_261

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v2, v1, v0

    iget-object v4, v8, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_24f

    :cond_261
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v1, v8, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V

    iget v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    iget v1, v8, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    add-int/2addr v0, v1

    iput v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    iget-wide v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_27d

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    :cond_27d
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v4, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-wide v4, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    iget-boolean v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    iget-boolean v1, v8, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    or-int/2addr v0, v1

    iput-boolean v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    return-void
.end method

.method public addSysMemUsage(JJJJJ)V
    .registers 16

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_32

    mul-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const/4 v1, 0x0

    :goto_f
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2b

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v1, 0x1

    aput-wide p1, v2, v3

    add-int/lit8 v3, v1, 0x4

    aput-wide p3, v2, v3

    add-int/lit8 v3, v1, 0x7

    aput-wide p5, v2, v3

    add-int/lit8 v3, v1, 0xa

    aput-wide p7, v2, v3

    add-int/lit8 v3, v1, 0xd

    aput-wide p9, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2b
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    invoke-virtual {v1, v0, v2, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    :cond_32
    return-void
.end method

.method public collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[I[IJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p7

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_8a

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    const/4 v7, 0x0

    :goto_23
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_85

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseArray;

    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_34
    if-ge v10, v9, :cond_80

    invoke-virtual {v8, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v12, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-eqz v0, :cond_4d

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4b

    goto :goto_4d

    :cond_4b
    const/4 v13, 0x0

    goto :goto_4e

    :cond_4d
    :goto_4d
    const/4 v13, 0x1

    :goto_4e
    const/4 v14, 0x0

    :goto_4f
    if-ge v14, v12, :cond_7b

    iget-object v15, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v13, :cond_66

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    goto :goto_76

    :cond_66
    if-eqz p8, :cond_6f

    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v2

    if-nez v2, :cond_6f

    goto :goto_76

    :cond_6f
    invoke-virtual {v15}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_76
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p0

    goto :goto_4f

    :cond_7b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p0

    goto :goto_34

    :cond_80
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p0

    goto :goto_23

    :cond_85
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p0

    goto :goto_10

    :cond_8a
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_94
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_d0

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessState;

    move-object v6, v5

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_c9

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    if-eq v12, v13, :cond_cd

    move-object v6, v5

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    goto :goto_cd

    :cond_c9
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    :cond_cd
    :goto_cd
    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    :cond_d0
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    sget-object v4, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method public computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    const/4 v6, 0x0

    :goto_b
    const/16 v7, 0x10

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    if-ge v6, v7, :cond_25

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aput-wide v9, v7, v6

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    aput-wide v4, v7, v6

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    aput-wide v4, v7, v6

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_25
    const/4 v6, 0x0

    :goto_26
    if-ge v6, v7, :cond_2f

    iget-object v11, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    aput-wide v4, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_2f
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    iput v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getTotalMemUsage()[J

    move-result-object v4

    const/4 v5, 0x0

    :goto_42
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    array-length v6, v6

    if-ge v5, v6, :cond_fa

    const/4 v6, 0x0

    :goto_48
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    array-length v7, v7

    if-ge v6, v7, :cond_ef

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    aget v7, v7, v5

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    aget v9, v9, v6

    add-int/2addr v7, v9

    mul-int/lit8 v9, v7, 0x10

    iget-object v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v10, v10, v7

    iget v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    if-ne v12, v7, :cond_65

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v12, v2, v12

    add-long/2addr v10, v12

    :cond_65
    iget-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    add-long/2addr v12, v10

    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget-object v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    int-to-byte v13, v9

    invoke-virtual {v12, v13}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKey(B)I

    move-result v12

    move-object v13, v4

    const/4 v14, 0x0

    const/4 v15, -0x1

    if-eq v12, v15, :cond_98

    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v15, v12}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v15

    invoke-static {v12}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v16

    add-int/lit8 v17, v16, 0x0

    aget-wide v17, v15, v17

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-ltz v17, :cond_95

    move-object/from16 v17, v4

    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    invoke-static {v4, v8, v13, v14}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    move-object v13, v15

    move/from16 v14, v16

    goto :goto_9a

    :cond_95
    move-object/from16 v17, v4

    goto :goto_9a

    :cond_98
    move-object/from16 v17, v4

    :goto_9a
    move v15, v9

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    add-int/lit8 v16, v14, 0x2

    move/from16 v18, v5

    aget-wide v4, v13, v16

    long-to-double v4, v4

    long-to-double v2, v10

    mul-double/2addr v4, v2

    add-double/2addr v8, v4

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    add-int/lit8 v4, v14, 0x5

    aget-wide v4, v13, v4

    long-to-double v4, v4

    long-to-double v8, v10

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    add-int/lit8 v4, v14, 0x8

    aget-wide v4, v13, v4

    long-to-double v4, v4

    long-to-double v8, v10

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    add-int/lit8 v4, v14, 0xb

    aget-wide v4, v13, v4

    long-to-double v4, v4

    long-to-double v8, v10

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    add-int/lit8 v4, v14, 0xe

    aget-wide v4, v13, v4

    long-to-double v4, v4

    long-to-double v8, v10

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    int-to-long v2, v2

    add-int/lit8 v4, v14, 0x0

    aget-wide v4, v13, v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v2, p2

    move-object/from16 v4, v17

    move/from16 v5, v18

    const/4 v8, 0x0

    goto/16 :goto_48

    :cond_ef
    move-object/from16 v17, v4

    move/from16 v18, v5

    add-int/lit8 v5, v18, 0x1

    move-wide/from16 v2, p2

    const/4 v8, 0x0

    goto/16 :goto_42

    :cond_fa
    move-object/from16 v17, v4

    move/from16 v18, v5

    iget-boolean v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    iput-boolean v2, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    const/4 v3, 0x0

    :goto_109
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_12f

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/4 v5, 0x0

    :goto_116
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_12a

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/ProcessState;

    move-wide/from16 v7, p2

    invoke-virtual {v6, v1, v7, v8}, Lcom/android/internal/app/procstats/ProcessState;->aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_116

    :cond_12a
    move-wide/from16 v7, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_109

    :cond_12f
    move-wide/from16 v7, p2

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-direct {v0, v3}, Lcom/android/internal/app/procstats/ProcessStats;->dumpProtoPreamble(Landroid/util/proto/ProtoOutputStream;)V

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v4}, Lcom/android/internal/app/ProcessMap;-><init>()V

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v15, v5

    const/4 v5, 0x0

    const/4 v14, 0x0

    invoke-direct {v0, v5, v14, v4, v15}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessPackageMaps(Ljava/lang/String;ZLcom/android/internal/app/ProcessMap;Landroid/util/SparseArray;)V

    const/4 v5, 0x0

    move v13, v5

    :goto_22
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v13, v5, :cond_b5

    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Ljava/lang/String;

    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, p2

    if-lez v5, :cond_65

    add-int/lit8 v2, v2, 0x1

    array-length v5, v1

    if-lt v2, v5, :cond_60

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v14

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "Dropping process indices from %d to %d from statsd proto (too large)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ProcessStats"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    :cond_60
    aget-object v5, v1, v2

    invoke-direct {v0, v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpProtoPreamble(Landroid/util/proto/ProtoOutputStream;)V

    :cond_65
    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/util/SparseArray;

    const/4 v5, 0x0

    move v12, v5

    :goto_6e
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v12, v5, :cond_a9

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Lcom/android/internal/app/procstats/ProcessState;

    aget-object v6, v1, v2

    const-wide v7, 0x20b00000008L

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    move-object/from16 v5, v18

    move-wide/from16 v19, v9

    move-object/from16 v9, v16

    move/from16 v10, v17

    move-object/from16 v21, v11

    move/from16 v22, v12

    move-wide/from16 v11, v19

    move/from16 v19, v13

    move-object v13, v4

    move/from16 v20, v14

    move-object v14, v15

    invoke-virtual/range {v5 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpAggregatedProtoForStatsd(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJLcom/android/internal/app/ProcessMap;Landroid/util/SparseArray;)V

    add-int/lit8 v12, v22, 0x1

    move/from16 v13, v19

    move/from16 v14, v20

    move-object/from16 v11, v21

    goto :goto_6e

    :cond_a9
    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v19, v13

    move/from16 v20, v14

    add-int/lit8 v13, v19, 0x1

    goto/16 :goto_22

    :cond_b5
    move/from16 v19, v13

    :goto_b7
    const/4 v5, 0x0

    :goto_b8
    if-gt v5, v2, :cond_c2

    aget-object v6, v1, v5

    invoke-virtual {v6}, Landroid/util/proto/ProtoOutputStream;->flush()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b8

    :cond_c2
    return-void
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v14

    const-string/jumbo v1, "vers,5"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "period,"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, ","

    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual {v10, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v1, :cond_37

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    goto :goto_39

    :cond_37
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    :goto_39
    invoke-virtual {v10, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/4 v1, 0x1

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_49

    const-string v2, ",shutdown"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_49
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_55

    const-string v2, ",sysprops"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_55
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v8, 0x1

    and-int/2addr v2, v8

    if-eqz v2, :cond_64

    const-string v2, ",complete"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    move/from16 v16, v1

    goto :goto_66

    :cond_64
    move/from16 v16, v1

    :goto_66
    if-eqz v16, :cond_6d

    const-string v1, ",partial"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6d
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    if-eqz v1, :cond_76

    const-string v1, ",swapped-out-pss"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_76
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "config,"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0xe

    if-eqz v1, :cond_217

    const/4 v1, 0x0

    move v9, v1

    :goto_89
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v9, v1, :cond_210

    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    if-eqz v11, :cond_a6

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    move/from16 v20, v9

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    goto/16 :goto_201

    :cond_a6
    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/util/SparseArray;

    const/4 v1, 0x0

    move v6, v1

    :goto_af
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_1f6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    move v3, v1

    :goto_c2
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v3, v1, :cond_1dc

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v18

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v1, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iget-object v8, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move/from16 v21, v3

    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    and-int/lit8 v22, p3, 0x2

    if-eqz v22, :cond_152

    const/16 v22, 0x0

    move/from16 v11, v22

    :goto_ef
    if-ge v11, v1, :cond_13f

    move/from16 v22, v1

    iget-object v1, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Ljava/lang/String;

    move-object/from16 v1, v23

    move-object/from16 v25, v14

    move-object v14, v2

    move-object/from16 v2, p1

    move-object/from16 v26, v15

    move v15, v3

    move-object v3, v7

    move-object/from16 v27, v4

    move/from16 v4, v17

    move-object/from16 v28, v5

    move/from16 v29, v6

    move-wide/from16 v5, v18

    move-object v10, v7

    move-object/from16 v7, v24

    move v0, v8

    move/from16 v20, v9

    move-wide v8, v12

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V

    add-int/lit8 v11, v11, 0x1

    move v8, v0

    move-object v7, v10

    move-object v2, v14

    move v3, v15

    move/from16 v9, v20

    move/from16 v1, v22

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    move/from16 v6, v29

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    goto :goto_ef

    :cond_13f
    move/from16 v22, v1

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move/from16 v29, v6

    move-object v10, v7

    move v0, v8

    move/from16 v20, v9

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move-object v14, v2

    move v15, v3

    goto :goto_164

    :cond_152
    move/from16 v22, v1

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move/from16 v29, v6

    move-object v10, v7

    move v0, v8

    move/from16 v20, v9

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move-object v14, v2

    move v15, v3

    :goto_164
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_194

    const/4 v1, 0x0

    move v11, v1

    :goto_16a
    if-ge v11, v0, :cond_194

    iget-object v1, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    iget-object v1, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/internal/app/procstats/ServiceState;

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    move-object v3, v10

    move/from16 v4, v17

    move-wide/from16 v5, v18

    move-object/from16 v7, v23

    move-wide v8, v12

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_16a

    :cond_194
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1c4

    const/4 v1, 0x0

    move v11, v1

    :goto_19a
    if-ge v11, v15, :cond_1c4

    iget-object v1, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    iget-object v1, v14, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/internal/app/procstats/AssociationState;

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    move-object v3, v10

    move/from16 v4, v17

    move-wide/from16 v5, v18

    move-object/from16 v7, v23

    move-wide v8, v12

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/AssociationState;->dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_19a

    :cond_1c4
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move-object v7, v10

    move/from16 v9, v20

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    move/from16 v6, v29

    const/4 v8, 0x1

    move-object/from16 v10, p1

    goto/16 :goto_c2

    :cond_1dc
    move/from16 v21, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move/from16 v29, v6

    move-object v10, v7

    move/from16 v20, v9

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    add-int/lit8 v6, v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    const/4 v8, 0x1

    move-object/from16 v10, p1

    goto/16 :goto_af

    :cond_1f6
    move-object/from16 v28, v5

    move/from16 v29, v6

    move-object v10, v7

    move/from16 v20, v9

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    :goto_201
    add-int/lit8 v9, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    const/4 v8, 0x1

    goto/16 :goto_89

    :cond_210
    move/from16 v20, v9

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    goto :goto_21b

    :cond_217
    move-object/from16 v25, v14

    move-object/from16 v26, v15

    :goto_21b
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_25f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    const/4 v1, 0x0

    move v8, v1

    :goto_229
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v8, v1, :cond_261

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/util/SparseArray;

    const/4 v1, 0x0

    move v11, v1

    :goto_23f
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_25c

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/internal/app/procstats/ProcessState;

    move-object v1, v15

    move-object/from16 v2, p1

    move-object v3, v9

    move v4, v14

    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_23f

    :cond_25c
    add-int/lit8 v8, v8, 0x1

    goto :goto_229

    :cond_25f
    move-object/from16 v0, p0

    :cond_261
    const-string/jumbo v1, "total"

    move-object/from16 v9, p1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const-string v2, ","

    move-object/from16 v1, p1

    move-wide v7, v12

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    const/16 v2, 0x10

    const-string v3, ":"

    if-lez v1, :cond_2bf

    const-string/jumbo v4, "sysmemusage"

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_28d
    if-ge v4, v1, :cond_2bc

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v5, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v6

    move-object/from16 v7, v26

    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v9, v6}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    const/4 v8, 0x0

    :goto_2a2
    if-ge v8, v2, :cond_2b6

    const/4 v10, 0x1

    if-le v8, v10, :cond_2aa

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2aa
    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v11, v5, v8}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValue(II)J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2a2

    :cond_2b6
    const/4 v10, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v26, v7

    goto :goto_28d

    :cond_2bc
    move-object/from16 v7, v26

    goto :goto_2c1

    :cond_2bf
    move-object/from16 v7, v26

    :goto_2c1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    invoke-direct {v4, v5, v6}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    invoke-virtual {v0, v4, v12, v13}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    const-string/jumbo v5, "weights,"

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    invoke-virtual {v9, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    invoke-virtual {v9, v5, v6}, Ljava/io/PrintWriter;->print(D)V

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    invoke-virtual {v9, v5, v6}, Ljava/io/PrintWriter;->print(D)V

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    invoke-virtual {v9, v5, v6}, Ljava/io/PrintWriter;->print(D)V

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    invoke-virtual {v9, v5, v6}, Ljava/io/PrintWriter;->print(D)V

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    invoke-virtual {v9, v5, v6}, Ljava/io/PrintWriter;->print(D)V

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(I)V

    const/4 v5, 0x0

    :goto_32c
    if-ge v5, v2, :cond_345

    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v10, v6, v5

    invoke-virtual {v9, v10, v11}, Ljava/io/PrintWriter;->print(D)V

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v6, v6, v5

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_32c

    :cond_345
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_34f
    if-ge v3, v2, :cond_395

    const-string v5, "availablepages,"

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    if-nez v5, :cond_37e

    const/4 v6, 0x0

    goto :goto_37f

    :cond_37e
    array-length v6, v5

    :goto_37f
    const/4 v8, 0x0

    :goto_380
    if-ge v8, v6, :cond_38f

    if-eqz v8, :cond_387

    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_387
    aget v10, v5, v8

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_380

    :cond_38f
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_34f

    :cond_395
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpProtoPreamble(Landroid/util/proto/ProtoOutputStream;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v10, :cond_70

    const-wide v2, 0x20b0000000aL

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10500000001L

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v9, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10900000002L

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10900000003L

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-nez v4, :cond_59

    const/4 v5, 0x0

    goto :goto_5a

    :cond_59
    array-length v5, v4

    :goto_5a
    const/4 v6, 0x0

    :goto_5b
    if-ge v6, v5, :cond_6a

    const-wide v7, 0x20500000004L

    aget v11, v4, v6

    invoke-virtual {v9, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5b

    :cond_6a
    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_70
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_bb

    const/4 v1, 0x0

    move v12, v1

    :goto_7c
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v12, v1, :cond_bb

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/util/SparseArray;

    const/4 v1, 0x0

    move v15, v1

    :goto_92
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v15, v1, :cond_b8

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/internal/app/procstats/ProcessState;

    const-wide v3, 0x20b00000008L

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object v5, v13

    move/from16 v6, v16

    move-wide/from16 v7, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJ)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_92

    :cond_b8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7c

    :cond_bb
    and-int/lit8 v1, p4, 0xe

    if-eqz v1, :cond_110

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    const/4 v1, 0x0

    move v12, v1

    :goto_c7
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v12, v1, :cond_110

    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/util/SparseArray;

    const/4 v1, 0x0

    move v14, v1

    :goto_d6
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v14, v1, :cond_10d

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    move v7, v1

    :goto_e5
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v7, v1, :cond_108

    invoke-virtual {v15, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    const-wide v3, 0x20b00000009L

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-wide/from16 v5, p2

    move/from16 v17, v7

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJI)V

    add-int/lit8 v7, v17, 0x1

    goto :goto_e5

    :cond_108
    move/from16 v17, v7

    add-int/lit8 v14, v14, 0x1

    goto :goto_d6

    :cond_10d
    add-int/lit8 v12, v12, 0x1

    goto :goto_c7

    :cond_110
    return-void
.end method

.method public dumpFilteredAssociationStatesProtoForProc(Landroid/util/proto/ProtoOutputStream;JJLcom/android/internal/app/procstats/ProcessState;Landroid/util/SparseArray;)V
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "JJ",
            "Lcom/android/internal/app/procstats/ProcessState;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    if-eq v0, v8, :cond_13

    return-void

    :cond_13
    iget-object v10, v8, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v10, :cond_cf

    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cf

    nop

    const-string/jumbo v0, "procstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v11

    if-eqz v11, :cond_cf

    :try_start_2b
    invoke-interface {v11}, Lcom/android/internal/app/procstats/IProcessStats;->getMinAssociationDumpDuration()J

    move-result-wide v0

    move-wide v12, v0

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v14, 0x1

    sub-int/2addr v0, v14

    :goto_36
    if-ltz v0, :cond_cd

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-object v15, v1

    iget-wide v1, v15, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    iget v3, v15, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-lez v3, :cond_4d

    iget-wide v3, v15, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    sub-long v3, p4, v3

    add-long/2addr v1, v3

    move-wide/from16 v16, v1

    goto :goto_4f

    :cond_4d
    move-wide/from16 v16, v1

    :goto_4f
    cmp-long v1, v16, v12

    if-gez v1, :cond_57

    move/from16 v23, v14

    goto/16 :goto_c5

    :cond_57
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    move-object v6, v1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    move-wide v4, v1

    iget v1, v6, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    move v2, v1

    const-wide v18, 0x10900000001L

    iget-object v3, v6, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    iget-object v1, v6, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    if-ltz v2, :cond_86

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/ArraySet;

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->size()I

    move-result v14

    move/from16 v20, v2

    const/4 v2, 0x1

    if-le v14, v2, :cond_89

    move v14, v2

    goto :goto_8a

    :cond_86
    move/from16 v20, v2

    move v2, v14

    :cond_89
    const/4 v14, 0x0

    :goto_8a
    move-object/from16 v21, v1

    move-object/from16 v1, p1

    move/from16 v23, v2

    move-object/from16 v22, v3

    move-wide/from16 v2, v18

    move-wide/from16 v24, v4

    move-object/from16 v4, v22

    move-object/from16 v5, v21

    move-object v8, v6

    move v6, v14

    invoke-static/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->writeCompressedProcessName(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/lang/String;Z)V

    const-wide v1, 0x10500000005L

    iget v3, v8, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-virtual {v7, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000003L

    iget v3, v15, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    invoke-virtual {v7, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000004L

    const-wide/16 v3, 0x3e8

    div-long v3, v16, v3

    long-to-int v3, v3

    invoke-virtual {v7, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-wide/from16 v1, v24

    invoke-virtual {v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_c5} :catch_ce

    :goto_c5
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v8, p6

    move/from16 v14, v23

    goto/16 :goto_36

    :cond_cd
    goto :goto_cf

    :catch_ce
    move-exception v0

    :cond_cf
    :goto_cf
    return-void
.end method

.method dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .registers 27

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-wide/from16 v5, p9

    move-object/from16 v7, p13

    move/from16 v8, p14

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_33

    if-eqz p2, :cond_21

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_21
    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p4

    move-object v4, v0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    invoke-static/range {v1 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    :cond_33
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V
    .registers 62

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move-object/from16 v3, p2

    move-wide/from16 v1, p3

    iget-object v9, v6, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v10, v6, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v11, v6, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide/from16 v13, p3

    invoke-static/range {v7 .. v14}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v14

    const-string v0, "          Start time: "

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "        Total uptime: "

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v0, :cond_38

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    goto :goto_3a

    :cond_38
    iget-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    :goto_3a
    iget-wide v9, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  Total elapsed time: "

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v0, :cond_51

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    goto :goto_53

    :cond_51
    iget-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    :goto_53
    iget-wide v9, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const/4 v0, 0x1

    iget v4, v6, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_66

    const-string v4, " (shutdown)"

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_66
    iget v4, v6, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_72

    const-string v4, " (sysprops)"

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_72
    iget v4, v6, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/16 v20, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_83

    const-string v4, " (complete)"

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move/from16 v21, v0

    goto :goto_85

    :cond_83
    move/from16 v21, v0

    :goto_85
    if-eqz v21, :cond_8c

    const-string v0, " (partial)"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8c
    iget-boolean v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    if-eqz v0, :cond_95

    const-string v0, " (swapped-out-pss)"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_95
    const/16 v0, 0x20

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "     Aggregated over: "

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_c7

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "System memory usage:"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    const-string v8, "  "

    invoke-virtual {v0, v5, v8, v4, v7}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V

    :cond_c7
    const/4 v0, 0x0

    and-int/lit8 v4, p9, 0xe

    const-string v13, " / "

    const-string v12, "      (Not active: "

    const-string v11, " entries)"

    const-string v10, "  * "

    const-string v9, ")"

    const-string v8, ":"

    if-eqz v4, :cond_5ae

    iget-object v4, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    const/4 v7, 0x0

    :goto_df
    move/from16 v16, v0

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v7, v0, :cond_59b

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v22, v4

    move-object/from16 v4, v17

    check-cast v4, Landroid/util/SparseArray;

    const/16 v17, 0x0

    move/from16 v1, v17

    :goto_fb
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_57d

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v1

    move-object/from16 v1, v17

    check-cast v1, Landroid/util/LongSparseArray;

    const/16 v17, 0x0

    move-object/from16 v23, v4

    move/from16 v4, v17

    :goto_115
    move/from16 v17, v7

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_55a

    move-wide/from16 v24, v14

    invoke-virtual {v1, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v14

    invoke-virtual {v1, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object/from16 v26, v1

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move-object/from16 v19, v9

    iget-object v9, v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    move-object/from16 v27, v11

    iget-object v11, v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-eqz v3, :cond_14d

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_14a

    goto :goto_14d

    :cond_14a
    const/16 v28, 0x0

    goto :goto_14f

    :cond_14d
    :goto_14d
    move/from16 v28, v20

    :goto_14f
    const/16 v29, 0x0

    const/16 v30, 0x0

    if-nez v28, :cond_1b2

    const/16 v31, 0x0

    move-object/from16 v32, v12

    move/from16 v12, v31

    :goto_15b
    if-ge v12, v1, :cond_17b

    move/from16 v31, v4

    iget-object v4, v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_174

    const/16 v30, 0x1

    goto :goto_17d

    :cond_174
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p0

    move/from16 v4, v31

    goto :goto_15b

    :cond_17b
    move/from16 v31, v4

    :goto_17d
    if-nez v30, :cond_1b6

    const/4 v4, 0x0

    :goto_180
    if-ge v4, v11, :cond_197

    iget-object v6, v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v6, v3}, Lcom/android/internal/app/procstats/AssociationState;->hasProcessOrPackage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_194

    const/4 v12, 0x1

    move/from16 v29, v12

    goto :goto_197

    :cond_194
    add-int/lit8 v4, v4, 0x1

    goto :goto_180

    :cond_197
    :goto_197
    if-nez v29, :cond_1b6

    move-object/from16 v6, p0

    move-object/from16 v33, v0

    move/from16 v34, v2

    move-object v0, v8

    move-object/from16 v41, v10

    move-object/from16 v42, v13

    move/from16 v36, v17

    move-object/from16 v1, v19

    move-wide/from16 v43, v24

    move-object/from16 v39, v27

    move-object/from16 v35, v32

    move/from16 v27, v18

    goto/16 :goto_540

    :cond_1b2
    move/from16 v31, v4

    move-object/from16 v32, v12

    :cond_1b6
    if-gtz v1, :cond_1c0

    if-gtz v9, :cond_1c0

    if-lez v11, :cond_1bd

    goto :goto_1c0

    :cond_1bd
    move/from16 v4, v16

    goto :goto_1e5

    :cond_1c0
    :goto_1c0
    if-nez v16, :cond_1cc

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v4, "Per-Package Stats:"

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    :cond_1cc
    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v4, " / v"

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v4, v16

    :goto_1e5
    and-int/lit8 v6, p9, 0x2

    if-eqz v6, :cond_362

    if-nez v29, :cond_362

    if-eqz p5, :cond_287

    if-eqz p7, :cond_20e

    move-object/from16 v33, v0

    move/from16 v34, v2

    move/from16 v37, v4

    move-object v4, v7

    move-object/from16 v38, v8

    move/from16 v39, v9

    move-object/from16 v41, v10

    move-object/from16 v42, v13

    move/from16 v36, v17

    move-object/from16 v40, v19

    move-wide/from16 v43, v24

    move-object/from16 v6, v27

    move-object/from16 v0, v32

    move/from16 v27, v11

    move-wide/from16 v24, v14

    goto/16 :goto_2a4

    :cond_20e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_214
    if-ge v12, v1, :cond_244

    move-object/from16 v33, v0

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v28, :cond_22f

    move/from16 v34, v2

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_231

    goto :goto_23d

    :cond_22f
    move/from16 v34, v2

    :cond_231
    if-eqz p8, :cond_23a

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v2

    if-nez v2, :cond_23a

    goto :goto_23d

    :cond_23a
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_23d
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v33

    move/from16 v2, v34

    goto :goto_214

    :cond_244
    move-object/from16 v33, v0

    move/from16 v34, v2

    sget-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v12, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v2, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    const-string v16, "      "

    const-string v35, "Prc "

    move/from16 v37, v4

    move-object v4, v7

    move/from16 v36, v17

    move-object/from16 v7, p1

    move-object/from16 v38, v8

    move-object/from16 v8, v16

    move/from16 v39, v9

    move-object/from16 v40, v19

    move-object/from16 v9, v35

    move-object/from16 v41, v10

    move-object v10, v6

    move-object/from16 v19, v6

    move-object/from16 v6, v27

    move/from16 v27, v11

    move-object v11, v0

    move-object/from16 v0, v32

    move-object/from16 v42, v13

    move-object v13, v2

    move-wide/from16 v43, v24

    move-wide/from16 v24, v14

    move-wide/from16 v14, p3

    move-wide/from16 v16, v43

    invoke-static/range {v7 .. v17}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    move-object/from16 v35, v0

    move/from16 v32, v1

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    goto/16 :goto_380

    :cond_287
    move-object/from16 v33, v0

    move/from16 v34, v2

    move/from16 v37, v4

    move-object v4, v7

    move-object/from16 v38, v8

    move/from16 v39, v9

    move-object/from16 v41, v10

    move-object/from16 v42, v13

    move/from16 v36, v17

    move-object/from16 v40, v19

    move-wide/from16 v43, v24

    move-object/from16 v6, v27

    move-object/from16 v0, v32

    move/from16 v27, v11

    move-wide/from16 v24, v14

    :goto_2a4
    const/4 v2, 0x0

    :goto_2a5
    if-ge v2, v1, :cond_359

    iget-object v7, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v28, :cond_2c7

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c7

    move-object/from16 v35, v0

    move/from16 v32, v1

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    goto/16 :goto_34d

    :cond_2c7
    if-eqz p8, :cond_2ea

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v7

    if-nez v7, :cond_2ea

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v15, v40

    invoke-virtual {v5, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v35, v0

    move/from16 v32, v1

    move-object v1, v15

    move-object/from16 v0, v38

    goto :goto_34d

    :cond_2ea
    move-object/from16 v15, v40

    const-string v7, "      Process "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v7

    if-eqz v7, :cond_30c

    const-string v7, " (multi, "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_311

    :cond_30c
    const-string v7, " (unique, "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_311
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v13, v38

    invoke-virtual {v5, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v17, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v19, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v32, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    const-string v9, "        "

    move-object/from16 v7, v16

    move-object/from16 v8, p1

    move-object/from16 v10, v17

    move-object/from16 v11, v19

    move-object/from16 v12, v32

    move-object/from16 v35, v0

    move-object v0, v13

    move-wide/from16 v13, p3

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    const-string v9, "        "

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    const-string v9, "        "

    move-object/from16 v10, p2

    move-wide/from16 v11, v43

    move/from16 v32, v1

    move-object v1, v15

    move/from16 v15, p7

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJZ)V

    :goto_34d
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v38, v0

    move-object/from16 v40, v1

    move/from16 v1, v32

    move-object/from16 v0, v35

    goto/16 :goto_2a5

    :cond_359
    move-object/from16 v35, v0

    move/from16 v32, v1

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    goto :goto_380

    :cond_362
    move-object/from16 v33, v0

    move/from16 v34, v2

    move/from16 v37, v4

    move-object v4, v7

    move-object v0, v8

    move/from16 v39, v9

    move-object/from16 v41, v10

    move-object/from16 v42, v13

    move/from16 v36, v17

    move-wide/from16 v43, v24

    move-object/from16 v6, v27

    move-object/from16 v35, v32

    move/from16 v32, v1

    move/from16 v27, v11

    move-wide/from16 v24, v14

    move-object/from16 v1, v19

    :goto_380
    and-int/lit8 v2, p9, 0x4

    const-string v14, "        Process: "

    if-eqz v2, :cond_418

    if-nez v29, :cond_418

    const/4 v2, 0x0

    :goto_389
    move/from16 v15, v39

    if-ge v2, v15, :cond_412

    iget-object v7, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v19, v7

    check-cast v19, Lcom/android/internal/app/procstats/ServiceState;

    if-nez v28, :cond_3a9

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a9

    move-object/from16 v39, v6

    move-object v6, v14

    move/from16 v38, v15

    goto :goto_409

    :cond_3a9
    if-eqz p8, :cond_3ca

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v7

    if-nez v7, :cond_3ca

    const-string v7, "      (Not active service: "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v39, v6

    move-object v6, v14

    move/from16 v38, v15

    goto :goto_409

    :cond_3ca
    if-eqz p7, :cond_3d2

    const-string v7, "      Service "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3d7

    :cond_3d2
    const-string v7, "      * Svc "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3d7
    iget-object v7, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "        "

    const-string v10, "          "

    const-string v11, "    "

    move-object/from16 v7, v19

    move-object/from16 v8, p1

    move-wide/from16 v12, p3

    move-object/from16 v39, v6

    move-object v6, v14

    move/from16 v38, v15

    move-wide/from16 v14, v43

    move/from16 v16, p5

    move/from16 v17, p7

    invoke-virtual/range {v7 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)V

    :goto_409
    add-int/lit8 v2, v2, 0x1

    move-object v14, v6

    move-object/from16 v6, v39

    move/from16 v39, v38

    goto/16 :goto_389

    :cond_412
    move-object/from16 v39, v6

    move-object v6, v14

    move/from16 v38, v15

    goto :goto_41d

    :cond_418
    move/from16 v38, v39

    move-object/from16 v39, v6

    move-object v6, v14

    :goto_41d
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_538

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v15, v27

    invoke-direct {v2, v15}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_429
    if-ge v7, v15, :cond_47b

    iget-object v8, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/AssociationState;

    if-nez v28, :cond_451

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_451

    if-eqz v29, :cond_44c

    invoke-virtual {v8, v3}, Lcom/android/internal/app/procstats/AssociationState;->hasProcessOrPackage(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_451

    move-wide/from16 v11, p3

    move/from16 v27, v18

    goto :goto_476

    :cond_44c
    move-wide/from16 v11, p3

    move/from16 v27, v18

    goto :goto_476

    :cond_451
    new-instance v9, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;

    move-object/from16 v13, p0

    invoke-direct {v9, v13, v8}, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;)V

    iget-object v10, v8, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    move-wide/from16 v11, p3

    move/from16 v27, v18

    move-wide/from16 v13, v43

    invoke-static {v11, v12, v13, v14, v10}, Lcom/android/internal/app/procstats/AssociationState;->createSortedAssociations(JJLandroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mSources:Ljava/util/ArrayList;

    nop

    invoke-virtual {v8, v11, v12}, Lcom/android/internal/app/procstats/AssociationState;->getTotalDuration(J)J

    move-result-wide v13

    iput-wide v13, v9, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mTotalTime:J

    invoke-virtual {v8, v11, v12}, Lcom/android/internal/app/procstats/AssociationState;->getActiveDuration(J)J

    move-result-wide v13

    iput-wide v13, v9, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mActiveTime:J

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_476
    add-int/lit8 v7, v7, 0x1

    move/from16 v18, v27

    goto :goto_429

    :cond_47b
    move-wide/from16 v11, p3

    move/from16 v27, v18

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ASSOCIATION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v7, 0x0

    move v14, v7

    :goto_48a
    if-ge v14, v13, :cond_52f

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;

    iget-object v9, v10, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz p8, :cond_4bc

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/AssociationState;->isInUse()Z

    move-result v7

    if-nez v7, :cond_4bc

    const-string v7, "      (Not active association: "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v40, v6

    move/from16 v47, v13

    move/from16 v48, v14

    move/from16 v49, v15

    move-object/from16 v6, p0

    goto/16 :goto_523

    :cond_4bc
    if-eqz p7, :cond_4c4

    const-string v7, "      Association "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4c9

    :cond_4c4
    const-string v7, "      * Asc "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_4c9
    iget-object v7, v10, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v7}, Lcom/android/internal/app/procstats/AssociationState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, v10, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mSources:Ljava/util/ArrayList;

    if-eqz v29, :cond_4f4

    if-nez v28, :cond_4f4

    if-nez v30, :cond_4f4

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4f4

    move-object/from16 v17, v3

    goto :goto_4f7

    :cond_4f4
    const/4 v7, 0x0

    move-object/from16 v17, v7

    :goto_4f7
    const-string v16, "        "

    const-string v18, "          "

    const-string v19, "    "

    move-object v7, v9

    move-object/from16 v40, v8

    move-object/from16 v8, p1

    move-object/from16 v45, v9

    move-object/from16 v9, v16

    move-object/from16 v46, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v40

    move-object/from16 v40, v6

    move/from16 v47, v13

    move/from16 v48, v14

    move-object/from16 v6, p0

    move-wide/from16 v13, p3

    move/from16 v49, v15

    move-wide/from16 v15, v43

    move/from16 v18, p6

    move/from16 v19, p7

    invoke-virtual/range {v7 .. v19}, Lcom/android/internal/app/procstats/AssociationState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJLjava/lang/String;ZZ)V

    :goto_523
    add-int/lit8 v14, v48, 0x1

    move-wide/from16 v11, p3

    move-object/from16 v6, v40

    move/from16 v13, v47

    move/from16 v15, v49

    goto/16 :goto_48a

    :cond_52f
    move-object/from16 v6, p0

    move/from16 v47, v13

    move/from16 v48, v14

    move/from16 v49, v15

    goto :goto_53e

    :cond_538
    move-object/from16 v6, p0

    move/from16 v49, v27

    move/from16 v27, v18

    :goto_53e
    move/from16 v16, v37

    :goto_540
    add-int/lit8 v4, v31, 0x1

    move-object v8, v0

    move-object v9, v1

    move-object/from16 v1, v26

    move/from16 v18, v27

    move-object/from16 v0, v33

    move/from16 v2, v34

    move-object/from16 v12, v35

    move/from16 v7, v36

    move-object/from16 v11, v39

    move-object/from16 v10, v41

    move-object/from16 v13, v42

    move-wide/from16 v14, v43

    goto/16 :goto_115

    :cond_55a
    move-object/from16 v33, v0

    move-object/from16 v26, v1

    move/from16 v34, v2

    move/from16 v31, v4

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v41, v10

    move-object/from16 v39, v11

    move-object/from16 v35, v12

    move-object/from16 v42, v13

    move-wide/from16 v43, v14

    move/from16 v36, v17

    move/from16 v27, v18

    add-int/lit8 v2, v27, 0x1

    move v1, v2

    move-object/from16 v4, v23

    move-object/from16 v0, v33

    move/from16 v7, v36

    goto/16 :goto_fb

    :cond_57d
    move-object/from16 v33, v0

    move/from16 v27, v1

    move-object/from16 v23, v4

    move/from16 v36, v7

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v41, v10

    move-object/from16 v39, v11

    move-object/from16 v35, v12

    move-object/from16 v42, v13

    move-wide/from16 v43, v14

    add-int/lit8 v7, v36, 0x1

    move/from16 v0, v16

    move-object/from16 v4, v22

    move-wide/from16 v1, p3

    goto/16 :goto_df

    :cond_59b
    move-object/from16 v22, v4

    move/from16 v36, v7

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v41, v10

    move-object/from16 v39, v11

    move-object/from16 v35, v12

    move-object/from16 v42, v13

    move-wide/from16 v43, v14

    move-object/from16 v4, v35

    goto :goto_5bc

    :cond_5ae
    move v2, v0

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v41, v10

    move-object/from16 v39, v11

    move-object v4, v12

    move-object/from16 v42, v13

    move-wide/from16 v43, v14

    move/from16 v16, v2

    :goto_5bc
    and-int/lit8 v2, p9, 0x1

    const-string v15, " ("

    const-string v13, " total"

    const-string v14, " shown of "

    if-eqz v2, :cond_713

    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v16, v7

    move v12, v10

    :goto_5d3
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v12, v7, :cond_6f7

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Landroid/util/SparseArray;

    const/4 v7, 0x0

    move/from16 v51, v9

    move v9, v7

    move/from16 v7, v51

    :goto_5ed
    move-object/from16 v17, v2

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_6de

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    add-int/lit8 v18, v7, 0x1

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v19, v7

    check-cast v19, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->hasAnyData()Z

    move-result v7

    if-nez v7, :cond_60a

    goto :goto_624

    :cond_60a
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v7

    if-nez v7, :cond_611

    goto :goto_624

    :cond_611
    if-eqz v3, :cond_636

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_636

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_636

    nop

    :goto_624
    move-object/from16 v38, v0

    move/from16 v28, v9

    move-object/from16 v26, v10

    move-object/from16 v29, v11

    move/from16 v30, v12

    move-object v2, v13

    move-object v0, v14

    move-object/from16 v50, v15

    move-object/from16 v27, v42

    goto/16 :goto_6c8

    :cond_636
    add-int/lit8 v20, v8, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    if-nez v16, :cond_644

    const-string v7, "Multi-Package Common Processes:"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    :cond_644
    if-eqz p8, :cond_666

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v7

    if-nez v7, :cond_666

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v38, v0

    move/from16 v28, v9

    move-object/from16 v26, v10

    move-object/from16 v29, v11

    move/from16 v30, v12

    move-object v2, v13

    move-object v0, v14

    move-object/from16 v50, v15

    move-object/from16 v27, v42

    goto :goto_6c6

    :cond_666
    move-object/from16 v8, v41

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v7, v42

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    invoke-virtual {v5, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v22, v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(I)V

    move-object/from16 v2, v39

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v23, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v24, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v25, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    const-string v26, "        "

    move-object/from16 v27, v7

    move-object/from16 v7, v19

    move-object/from16 v38, v0

    move-object v0, v8

    move-object/from16 v8, p1

    move/from16 v28, v9

    move-object/from16 v9, v26

    move-object/from16 v26, v10

    move-object/from16 v10, v23

    move-object/from16 v29, v11

    move-object/from16 v11, v24

    move/from16 v30, v12

    move-object/from16 v12, v25

    move-object/from16 v41, v0

    move-object v2, v13

    move-object v0, v14

    move-wide/from16 v13, p3

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    const-string v9, "        "

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    const-string v9, "        "

    move-object/from16 v10, p2

    move-wide/from16 v11, v43

    move-object/from16 v50, v15

    move/from16 v15, p7

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJZ)V

    :goto_6c6
    move/from16 v8, v20

    :goto_6c8
    add-int/lit8 v9, v28, 0x1

    move-object v14, v0

    move-object v13, v2

    move-object/from16 v2, v17

    move/from16 v7, v18

    move-object/from16 v10, v26

    move-object/from16 v42, v27

    move-object/from16 v11, v29

    move/from16 v12, v30

    move-object/from16 v0, v38

    move-object/from16 v15, v50

    goto/16 :goto_5ed

    :cond_6de
    move-object/from16 v38, v0

    move/from16 v28, v9

    move-object/from16 v26, v10

    move-object/from16 v29, v11

    move/from16 v30, v12

    move-object v2, v13

    move-object v0, v14

    move-object/from16 v50, v15

    move-object/from16 v27, v42

    add-int/lit8 v12, v30, 0x1

    move v9, v7

    move-object/from16 v2, v17

    move-object/from16 v0, v38

    goto/16 :goto_5d3

    :cond_6f7
    move-object/from16 v38, v0

    move-object/from16 v17, v2

    move/from16 v30, v12

    move-object v2, v13

    move-object v0, v14

    move-object/from16 v50, v15

    const-string v7, "  Total procs: "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_719

    :cond_713
    move-object/from16 v38, v0

    move-object v2, v13

    move-object v0, v14

    move-object/from16 v50, v15

    :goto_719
    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_7f6

    iget-object v15, v6, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v13

    move/from16 v16, v9

    move v14, v10

    :goto_72a
    if-ge v14, v13, :cond_7de

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/android/internal/app/procstats/UidState;

    add-int/lit8 v17, v8, 0x1

    if-eqz v3, :cond_751

    invoke-virtual {v11, v3}, Lcom/android/internal/app/procstats/UidState;->hasPackage(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_751

    move-object/from16 v40, v1

    move/from16 v22, v13

    move/from16 v26, v14

    move-object/from16 v1, v38

    move-object/from16 v24, v39

    move-object/from16 v23, v41

    move-object/from16 v25, v50

    goto/16 :goto_7cc

    :cond_751
    add-int/lit8 v18, v7, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    if-nez v16, :cond_75f

    const-string v7, "Per-UID Stats:"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    :cond_75f
    if-eqz p8, :cond_783

    invoke-virtual {v11}, Lcom/android/internal/app/procstats/UidState;->isInUse()Z

    move-result v7

    if-nez v7, :cond_783

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v12}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v40, v1

    move/from16 v22, v13

    move/from16 v26, v14

    move-object/from16 v1, v38

    move-object/from16 v24, v39

    move-object/from16 v23, v41

    move-object/from16 v25, v50

    goto :goto_7ca

    :cond_783
    move-object/from16 v10, v41

    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5, v12}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    move-object/from16 v9, v50

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/internal/app/procstats/UidState;->getDurationsBucketCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(I)V

    move-object/from16 v8, v39

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v7, v38

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v19, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v20, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v22, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    const-string v23, "        "

    move-object/from16 v40, v1

    move-object v1, v7

    move-object v7, v11

    move-object/from16 v24, v8

    move-object/from16 v8, p1

    move-object/from16 v25, v9

    move-object/from16 v9, v23

    move-object/from16 v23, v10

    move-object/from16 v10, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v20

    move/from16 v20, v12

    move-object/from16 v12, v22

    move/from16 v22, v13

    move/from16 v26, v14

    move-wide/from16 v13, p3

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/app/procstats/UidState;->dumpState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    :goto_7ca
    move/from16 v7, v18

    :goto_7cc
    add-int/lit8 v14, v26, 0x1

    move-object/from16 v38, v1

    move/from16 v8, v17

    move/from16 v13, v22

    move-object/from16 v41, v23

    move-object/from16 v39, v24

    move-object/from16 v50, v25

    move-object/from16 v1, v40

    goto/16 :goto_72a

    :cond_7de
    move/from16 v22, v13

    move/from16 v26, v14

    move-object/from16 v1, v38

    const-string v4, "  Total UIDs: "

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7f8

    :cond_7f6
    move-object/from16 v1, v38

    :goto_7f8
    if-eqz p7, :cond_8f9

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8f9

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Tracking associations:"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_80e
    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8f9

    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getAssociationState()Lcom/android/internal/app/procstats/AssociationState;

    move-result-object v4

    if-nez v4, :cond_842

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " shouldn\'t be in the tracking list."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ProcessStats"

    invoke-static {v8, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8f5

    :cond_842
    const-string v7, "  #"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/AssociationState;->getUid()I

    move-result v9

    invoke-static {v5, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v9, " <- "

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getProcessName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getUid()I

    move-result v8

    invoke-static {v5, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "    Tracking for: "

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mTrackingUptime:J

    sub-long v8, p3, v8

    invoke-static {v8, v9, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v8, "    Component: "

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/AssociationState;->getPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/AssociationState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v8, "    Proc state: "

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8ba

    sget-object v8, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    iget v9, v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8bf

    :cond_8ba
    const-string v8, "--"

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_8bf
    const-string v8, " #"

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(I)V

    const-string v8, "    Process: "

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/AssociationState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget v8, v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    if-lez v8, :cond_8f5

    const-string v8, "    Active count "

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v7, p1

    move-object v8, v2

    move-wide/from16 v9, v43

    move-wide/from16 v11, p3

    move/from16 v13, p7

    invoke-static/range {v7 .. v13}, Lcom/android/internal/app/procstats/AssociationState;->dumpActiveDurationSummary(Ljava/io/PrintWriter;Lcom/android/internal/app/procstats/AssociationState$SourceState;JJZ)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_8f5
    :goto_8f5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_80e

    :cond_8f9
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p5, :cond_914

    const-string v0, "Process summary:"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v7, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object v9, v5

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_91a

    :cond_914
    move-wide/from16 v7, p3

    move-object v9, v5

    invoke-virtual {v6, v9, v7, v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    :goto_91a
    if-eqz p7, :cond_92e

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Internal state:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mRunning="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_92e
    if-nez p2, :cond_933

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFragmentationLocked(Ljava/io/PrintWriter;)V

    :cond_933
    return-void
.end method

.method public dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .registers 24

    move-object/from16 v15, p0

    iget-object v2, v15, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v3, v15, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v4, v15, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-wide/from16 v6, p3

    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v16

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    const/4 v2, 0x0

    const-string v3, "  "

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, v16

    move-object/from16 v13, p2

    move/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    return-void
.end method

.method dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .registers 24

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const-string v0, "Run time Stats:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v3, v11, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const-string v1, "  "

    move-object/from16 v0, p1

    move-wide/from16 v6, p2

    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Memory usage:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v2, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    move-object v13, v0

    move-wide/from16 v14, p2

    invoke-virtual {v11, v13, v14, v15}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    const-wide/16 v16, 0x0

    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v2, "  "

    const-string v3, "Kernel "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v16

    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v2, "  "

    const-string v3, "Native "

    move-wide/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v0

    const/4 v2, 0x0

    move-wide/from16 v16, v0

    move v10, v2

    :goto_59
    const/16 v0, 0x10

    const/16 v8, 0x8

    if-ge v10, v0, :cond_87

    if-eq v10, v8, :cond_82

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget-object v3, v0, v10

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v0, v10

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v18, v0, v10

    const-string v2, "  "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v8, v16

    move/from16 v19, v10

    move/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v0

    move-wide/from16 v16, v0

    goto :goto_84

    :cond_82
    move/from16 v19, v10

    :goto_84
    add-int/lit8 v10, v19, 0x1

    goto :goto_59

    :cond_87
    move/from16 v19, v10

    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v2, "  "

    const-string v3, "Cached "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v18, v8

    move-wide/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v16

    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v2, "  "

    const-string v3, "Free   "

    move-wide/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v16

    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v2, "  "

    const-string v3, "Z-Ram  "

    move-wide/from16 v8, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v8

    const-string v0, "  TOTAL  : "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v12, v8, v9}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget-object v3, v0, v18

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v0, v18

    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v10, v0, v18

    const-string v2, "  "

    move-object/from16 v0, p0

    move-wide/from16 v16, v8

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "PSS collection stats:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Internal Single: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "x over "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    invoke-static {v1, v2, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  Internal All Procs (Memory Change): "

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    invoke-virtual {v12, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    invoke-static {v1, v2, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  Internal All Procs (Polling): "

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    invoke-virtual {v12, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    invoke-static {v1, v2, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  External: "

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    invoke-virtual {v12, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    invoke-static {v1, v2, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  External Slow: "

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    invoke-virtual {v12, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public evaluateSystemProperties(Z)Z
    .registers 5

    const/4 v0, 0x0

    nop

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.dalvik.vm.lib.2"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v0, 0x1

    if-eqz p1, :cond_1e

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    :cond_1e
    return v0
.end method

.method public getAssociationStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;
    .registers 16

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v6

    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v7, :cond_10

    return-object v7

    :cond_10
    if-eqz p5, :cond_17

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    move-object v5, v0

    new-instance v8, Lcom/android/internal/app/procstats/AssociationState;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p6

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/AssociationState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .registers 14

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-nez v0, :cond_15

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-eqz v1, :cond_1e

    return-object v1

    :cond_1e
    new-instance v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJ)V

    move-object v1, v8

    invoke-virtual {v0, p3, p4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v1
.end method

.method public getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .registers 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v15, p2

    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v18, :cond_13

    return-object v18

    :cond_13
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    iget v1, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v9, :cond_58

    new-instance v10, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    iget v3, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    iget-wide v4, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V

    move-object v9, v10

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    iget v1, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v0, v15, v1, v9}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    iget v1, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/UidState;

    if-nez v0, :cond_53

    new-instance v1, Lcom/android/internal/app/procstats/UidState;

    iget v2, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-direct {v1, v7, v2}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    move-object v0, v1

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    iget v2, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_53
    invoke-virtual {v0, v9}, Lcom/android/internal/app/procstats/UidState;->addProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    move-object v0, v9

    goto :goto_59

    :cond_58
    move-object v0, v9

    :goto_59
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v1

    if-nez v1, :cond_122

    iget-object v1, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-wide v1, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_79

    move-object v1, v0

    move-object v5, v15

    goto/16 :goto_136

    :cond_79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v9

    invoke-virtual {v7, v4, v5, v9, v10}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v4

    if-eqz v4, :cond_d9

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_a5
    if-ltz v6, :cond_bb

    iget-object v9, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ServiceState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v10

    if-ne v10, v0, :cond_b8

    invoke-virtual {v9, v5}, Lcom/android/internal/app/procstats/ServiceState;->setProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    :cond_b8
    add-int/lit8 v6, v6, -0x1

    goto :goto_a5

    :cond_bb
    iget-object v6, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_c2
    if-ltz v6, :cond_d8

    iget-object v1, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v9

    if-ne v9, v0, :cond_d5

    invoke-virtual {v1, v5}, Lcom/android/internal/app/procstats/AssociationState;->setProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    :cond_d5
    add-int/lit8 v6, v6, -0x1

    goto :goto_c2

    :cond_d8
    goto :goto_10f

    :cond_d9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cloning proc state: no package state "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " for proc "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ProcessStats"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10f
    new-instance v1, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v11, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    iget v12, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    iget-wide v13, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    move-object v9, v1

    move-object v10, v0

    move-object v5, v15

    move-object/from16 v15, p2

    move-wide/from16 v16, v2

    invoke-direct/range {v9 .. v17}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    goto :goto_136

    :cond_122
    move-object v5, v15

    new-instance v1, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v11, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    iget v12, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    iget-wide v13, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object v9, v1

    move-object v10, v0

    move-object/from16 v15, p2

    invoke-direct/range {v9 .. v17}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    :goto_136
    iget-object v2, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .registers 7

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .registers 16

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v1, :cond_f

    return-object v1

    :cond_f
    if-eqz p5, :cond_16

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    move-object v8, v2

    new-instance v2, Lcom/android/internal/app/procstats/ServiceState;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p6

    move-object v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    move-object v1, v2

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, p6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J
    .registers 15

    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-eqz v0, :cond_2d

    const-wide/high16 v0, 0x4090000000000000L  # 1024.0

    mul-double/2addr v0, p4

    long-to-double v2, p6

    div-double/2addr v0, v2

    double-to-long v0, v0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " ("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p10}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " samples)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-long v2, p8, v0

    return-wide v2

    :cond_2d
    return-wide p8
.end method

.method public read(Ljava/io/InputStream;)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [I

    invoke-static {p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_1b

    goto :goto_31

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    :goto_31
    return-void
.end method

.method readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x9

    if-gt p2, v0, :cond_9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_18
    not-int v0, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_1d
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_2c

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2c
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 36

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-gtz v0, :cond_29

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_29

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_27

    goto :goto_29

    :cond_27
    move v0, v9

    goto :goto_2a

    :cond_29
    :goto_29
    move v0, v10

    :goto_2a
    move v11, v0

    if-eqz v11, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    :cond_30
    const v0, 0x50535454

    const-string/jumbo v1, "magic number"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    return-void

    :cond_3d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    const/16 v0, 0x29

    if-eq v12, v0, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_5b
    const/16 v0, 0x10

    const-string/jumbo v1, "state count"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_67

    return-void

    :cond_67
    const/16 v1, 0x8

    const-string v2, "adj count"

    invoke-direct {v7, v8, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_72

    return-void

    :cond_72
    const/16 v1, 0xa

    const-string/jumbo v2, "pss count"

    invoke-direct {v7, v8, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7e

    return-void

    :cond_7e
    const-string/jumbo v1, "sys mem usage count"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_88

    return-void

    :cond_88
    const/16 v0, 0x1000

    const-string/jumbo v1, "longs size"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_94

    return-void

    :cond_94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10c

    move v0, v10

    goto :goto_10d

    :cond_10c
    move v0, v9

    :goto_10d
    iput-boolean v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/SparseMappingTable;->readFromParcel(Landroid/os/Parcel;)V

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    array-length v1, v0

    invoke-direct {v7, v8, v12, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/SysMemUsageTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_129

    return-void

    :cond_129
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    const/4 v0, 0x0

    :goto_12e
    if-ge v0, v13, :cond_148

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Lcom/android/internal/app/procstats/UidState;

    invoke-direct {v2, v7, v1}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    invoke-virtual {v2, v8}, Lcom/android/internal/app/procstats/UidState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_140

    return-void

    :cond_140
    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12e

    :cond_148
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_164

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad process count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_164
    move v6, v0

    :goto_165
    const-string v14, "bad uid: "

    const-string v15, "bad uid count: "

    const/4 v4, 0x0

    if-lez v6, :cond_221

    add-int/lit8 v16, v6, -0x1

    invoke-virtual {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_179

    const-string v0, "bad process name"

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_179
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_193

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_193
    :goto_193
    if-lez v0, :cond_21b

    add-int/lit8 v15, v0, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_1b1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_1b1
    invoke-virtual {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_1bc

    const-string v0, "bad process package name"

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_1bc
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    if-eqz v11, :cond_1cb

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v6, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_1cc

    :cond_1cb
    move-object v0, v4

    :goto_1cc
    move-object v3, v0

    if-eqz v3, :cond_1da

    invoke-virtual {v3, v8, v12, v9}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;IZ)Z

    move-result v0

    if-nez v0, :cond_1d6

    return-void

    :cond_1d6
    move v9, v5

    move-object/from16 v23, v6

    goto :goto_1f6

    :cond_1da
    new-instance v20, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v21, v3

    move v3, v5

    move v9, v5

    move-wide/from16 v4, v18

    move-object/from16 v23, v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V

    move-object/from16 v3, v20

    invoke-virtual {v3, v8, v12, v10}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;IZ)Z

    move-result v0

    if-nez v0, :cond_1f6

    return-void

    :cond_1f6
    :goto_1f6
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9, v3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/UidState;

    if-nez v0, :cond_212

    new-instance v2, Lcom/android/internal/app/procstats/UidState;

    invoke-direct {v2, v7, v9}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    move-object v0, v2

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_212
    invoke-virtual {v0, v3}, Lcom/android/internal/app/procstats/UidState;->addProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    move-object v6, v1

    move v0, v15

    const/4 v4, 0x0

    const/4 v9, 0x0

    goto/16 :goto_193

    :cond_21b
    move-object v1, v6

    move/from16 v6, v16

    const/4 v9, 0x0

    goto/16 :goto_165

    :cond_221
    const/4 v0, 0x0

    :goto_222
    if-ge v0, v13, :cond_234

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/UidState;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_222

    :cond_234
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_250

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad package count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_250
    :goto_250
    if-lez v0, :cond_4b2

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_25f

    const-string v0, "bad package name"

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_25f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_279

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_279
    :goto_279
    if-lez v0, :cond_4a8

    add-int/lit8 v16, v0, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_297

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_297
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_2b3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad versions count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_2b3
    :goto_2b3
    if-lez v0, :cond_49c

    add-int/lit8 v17, v0, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    new-instance v18, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-wide/from16 v19, v2

    move-object v2, v4

    move v3, v5

    move-object v10, v4

    move/from16 v32, v6

    move v6, v5

    move-wide/from16 v4, v19

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJ)V

    move-object/from16 v5, v18

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v10, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-nez v0, :cond_2e7

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    move-object v0, v1

    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v10, v6, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    goto :goto_2e8

    :cond_2e7
    move-object v3, v0

    :goto_2e8
    move-wide/from16 v1, v19

    invoke-virtual {v3, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_309

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad package process count: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_309
    move/from16 v18, v0

    :goto_30b
    if-lez v18, :cond_396

    add-int/lit8 v18, v18, -0x1

    invoke-virtual {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31a

    const-string v4, "bad package process name"

    iput-object v4, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_31a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v19, v3

    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, v0, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v3, :cond_341

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "no common proc: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_341
    if-eqz v4, :cond_387

    if-eqz v11, :cond_350

    move/from16 v20, v4

    iget-object v4, v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_353

    :cond_350
    move/from16 v20, v4

    const/4 v4, 0x0

    :goto_353
    if-eqz v4, :cond_361

    move/from16 v33, v9

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v12, v9}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;IZ)Z

    move-result v22

    if-nez v22, :cond_35f

    return-void

    :cond_35f
    const/4 v9, 0x1

    goto :goto_381

    :cond_361
    move/from16 v33, v9

    const/4 v9, 0x0

    new-instance v22, Lcom/android/internal/app/procstats/ProcessState;

    const-wide/16 v30, 0x0

    move-object/from16 v23, v22

    move-object/from16 v24, v3

    move-object/from16 v25, v10

    move/from16 v26, v6

    move-wide/from16 v27, v1

    move-object/from16 v29, v0

    invoke-direct/range {v23 .. v31}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    move-object/from16 v4, v22

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v12, v9}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;IZ)Z

    move-result v21

    if-nez v21, :cond_381

    return-void

    :cond_381
    :goto_381
    iget-object v9, v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_390

    :cond_387
    move/from16 v20, v4

    move/from16 v33, v9

    iget-object v4, v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_390
    move-object/from16 v3, v19

    move/from16 v9, v33

    goto/16 :goto_30b

    :cond_396
    move-object/from16 v19, v3

    move/from16 v33, v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_3b6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad package service count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_3b6
    move v9, v0

    :goto_3b7
    if-lez v9, :cond_418

    add-int/lit8 v9, v9, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3c6

    const-string v0, "bad package service name"

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_3c6
    const/16 v0, 0x9

    if-le v12, v0, :cond_3d0

    invoke-virtual {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_3d1

    :cond_3d0
    const/4 v4, 0x0

    :goto_3d1
    if-eqz v11, :cond_3dc

    iget-object v0, v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ServiceState;

    goto :goto_3dd

    :cond_3dc
    const/4 v0, 0x0

    :goto_3dd
    move-object/from16 v20, v0

    if-nez v20, :cond_3fb

    new-instance v23, Lcom/android/internal/app/procstats/ServiceState;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-wide/from16 v25, v1

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v27, v3

    move/from16 v28, v6

    move-object v6, v5

    move-object/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    move-object/from16 v20, v23

    move-object/from16 v0, v20

    goto :goto_404

    :cond_3fb
    move-wide/from16 v25, v1

    move-object/from16 v27, v3

    move/from16 v28, v6

    move-object v6, v5

    move-object/from16 v0, v20

    :goto_404
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v1

    if-nez v1, :cond_40b

    return-void

    :cond_40b
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v2, v27

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v6

    move-wide/from16 v1, v25

    move/from16 v6, v28

    goto :goto_3b7

    :cond_418
    move-wide/from16 v25, v1

    move/from16 v28, v6

    move-object v6, v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_439

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad package association count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_439
    :goto_439
    if-lez v0, :cond_48e

    add-int/lit8 v20, v0, -0x1

    invoke-virtual {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_448

    const-string v0, "bad package association name"

    iput-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_448
    invoke-virtual {v7, v8, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v23

    if-eqz v11, :cond_458

    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/app/procstats/AssociationState;

    goto :goto_459

    :cond_458
    const/4 v4, 0x0

    :goto_459
    move-object/from16 v24, v4

    if-nez v24, :cond_476

    new-instance v27, Lcom/android/internal/app/procstats/AssociationState;

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v5

    move-object/from16 v4, v23

    move/from16 v30, v9

    move-object v9, v5

    move-object/from16 v5, v29

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/AssociationState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    move-object/from16 v24, v27

    move-object/from16 v0, v24

    goto :goto_47b

    :cond_476
    move/from16 v30, v9

    move-object v9, v5

    move-object/from16 v0, v24

    :goto_47b
    invoke-virtual {v0, v7, v8, v12}, Lcom/android/internal/app/procstats/AssociationState;->readFromParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_484

    iput-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_484
    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v0, v20

    move/from16 v9, v30

    goto :goto_439

    :cond_48e
    move/from16 v30, v9

    move-object v4, v10

    move/from16 v0, v17

    move/from16 v5, v28

    move/from16 v6, v32

    move/from16 v9, v33

    const/4 v10, 0x1

    goto/16 :goto_2b3

    :cond_49c
    move-object v10, v4

    move/from16 v28, v5

    move/from16 v32, v6

    move/from16 v33, v9

    move/from16 v0, v16

    const/4 v10, 0x1

    goto/16 :goto_279

    :cond_4a8
    move-object v10, v4

    move/from16 v32, v6

    move/from16 v33, v9

    move/from16 v0, v33

    const/4 v10, 0x1

    goto/16 :goto_250

    :cond_4b2
    move/from16 v32, v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v2, 0x0

    :goto_4e1
    if-ge v2, v1, :cond_50e

    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e1

    :cond_50e
    const/4 v2, 0x0

    iput-object v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    return-void
.end method

.method public reset()V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    return-void
.end method

.method public resetSafely()V
    .registers 16

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_13
    if-ltz v3, :cond_31

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_20
    if-ltz v6, :cond_2e

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ProcessState;

    const/4 v8, 0x0

    iput v8, v7, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    add-int/lit8 v6, v6, -0x1

    goto :goto_20

    :cond_2e
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    :cond_31
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_3c
    if-ltz v5, :cond_11a

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_49
    if-ltz v7, :cond_10d

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseArray;

    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    sub-int/2addr v9, v4

    :goto_56
    if-ltz v9, :cond_100

    invoke-virtual {v8, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    :goto_65
    if-ltz v11, :cond_9b

    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_88

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v13

    iget v14, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    add-int/2addr v14, v4

    iput v14, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v13

    iput-object v12, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_98

    :cond_88
    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :goto_98
    add-int/lit8 v11, v11, -0x1

    goto :goto_65

    :cond_9b
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    :goto_a2
    if-ltz v11, :cond_be

    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_b6

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->resetSafely(J)V

    goto :goto_bb

    :cond_b6
    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :goto_bb
    add-int/lit8 v11, v11, -0x1

    goto :goto_a2

    :cond_be
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    :goto_c5
    if-ltz v11, :cond_e1

    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/AssociationState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_d9

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/procstats/AssociationState;->resetSafely(J)V

    goto :goto_de

    :cond_d9
    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :goto_de
    add-int/lit8 v11, v11, -0x1

    goto :goto_c5

    :cond_e1
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-gtz v11, :cond_fc

    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-gtz v11, :cond_fc

    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-gtz v11, :cond_fc

    invoke-virtual {v8, v9}, Landroid/util/LongSparseArray;->removeAt(I)V

    :cond_fc
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_56

    :cond_100
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    if-gtz v9, :cond_109

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_109
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_49

    :cond_10d
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_116

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_116
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_3c

    :cond_11a
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_11f
    if-ltz v5, :cond_171

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_12c
    if-ltz v7, :cond_165

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v9

    if-nez v9, :cond_146

    iget v9, v8, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    if-lez v9, :cond_13f

    goto :goto_146

    :cond_13f
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_162

    :cond_146
    :goto_146
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->isActive()Z

    move-result v9

    if-nez v9, :cond_15f

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v9

    if-eqz v9, :cond_15f

    iget v9, v8, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    if-ne v9, v4, :cond_15f

    iget-object v8, v8, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->makeStandalone()V

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_162

    :cond_15f
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    :goto_162
    add-int/lit8 v7, v7, -0x1

    goto :goto_12c

    :cond_165
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_16e

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_16e
    add-int/lit8 v5, v5, -0x1

    goto :goto_11f

    :cond_171
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_178
    if-ltz v5, :cond_19c

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/UidState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/UidState;->isInUse()Z

    move-result v6

    if-eqz v6, :cond_194

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/UidState;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/app/procstats/UidState;->resetSafely(J)V

    goto :goto_199

    :cond_194
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->removeAt(I)V

    :goto_199
    add-int/lit8 v5, v5, -0x1

    goto :goto_178

    :cond_19c
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    return-void
.end method

.method public updateFragmentation()V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/pagetypeinfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2e} :catch_7a
    .catchall {:try_start_1 .. :try_end_2e} :catchall_78

    if-nez v2, :cond_39

    nop

    nop

    :try_start_32
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    :goto_35
    goto :goto_38

    :catch_36
    move-exception v1

    goto :goto_35

    :goto_38
    return-void

    :cond_39
    :try_start_39
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_50

    goto :goto_2a

    :cond_50
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/procstats/ProcessStats;->splitAndParseNumbers(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_77} :catch_7a
    .catchall {:try_start_39 .. :try_end_77} :catchall_78

    :cond_77
    goto :goto_2a

    :catchall_78
    move-exception v1

    goto :goto_97

    :catch_7a
    move-exception v1

    :try_start_7b
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_8f
    .catchall {:try_start_7b .. :try_end_8f} :catchall_78

    if-eqz v0, :cond_96

    :try_start_91
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_96

    :catch_95
    move-exception v2

    :cond_96
    :goto_96
    return-void

    :goto_97
    if-eqz v0, :cond_9e

    :try_start_99
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_9e

    :catch_9d
    move-exception v2

    :cond_9e
    :goto_9e
    throw v1
.end method

.method public updateTrackingAssociationsLocked(IJ)V
    .registers 15

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_8
    if-ltz v1, :cond_e4

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopActiveIfNecessary(IJ)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_e0

    :cond_1f
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getAssociationState()Lcom/android/internal/app/procstats/AssociationState;

    move-result-object v3

    const-string v4, "ProcessStats"

    if-nez v3, :cond_43

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " shouldn\'t be in the tracking list."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e0

    :cond_43
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/AssociationState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v5

    if-eqz v5, :cond_c0

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v6

    rem-int/lit8 v6, v6, 0x10

    iget v7, v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-ne v7, v6, :cond_57

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->startActive(J)V

    goto :goto_bf

    :cond_57
    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopActive(J)V

    iget v7, v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-ge v7, v6, :cond_bf

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/internal/app/procstats/ProcessStats;->mNextInverseProcStateWarningUptime:J

    cmp-long v9, v9, v7

    if-lez v9, :cond_6f

    iget v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSkippedInverseProcStateWarningCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSkippedInverseProcStateWarningCount:I

    goto :goto_bf

    :cond_6f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tracking association "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " whose proc state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is better than process "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " proc state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSkippedInverseProcStateWarningCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " skipped)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSkippedInverseProcStateWarningCount:I

    const-wide/16 v9, 0x2710

    add-long/2addr v9, v7

    iput-wide v9, p0, Lcom/android/internal/app/procstats/ProcessStats;->mNextInverseProcStateWarningUptime:J

    :cond_bf
    :goto_bf
    goto :goto_e0

    :cond_c0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tracking association without process: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e0
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_8

    :cond_e4
    return-void
.end method

.method writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_12
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    not-int v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;JI)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const v4, 0x50535454

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v4, Landroid/util/ArrayMap;

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_40
    if-ge v6, v5, :cond_5e

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_4d
    if-ge v9, v8, :cond_5b

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v10, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    :cond_5e
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_69
    if-ge v8, v7, :cond_10a

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_76
    if-ge v11, v10, :cond_102

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_83
    if-ge v14, v13, :cond_f8

    invoke-virtual {v12, v14}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object/from16 v16, v9

    iget-object v9, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/16 v17, 0x0

    move/from16 v18, v10

    move/from16 v10, v17

    :goto_99
    if-ge v10, v9, :cond_b7

    move/from16 v17, v9

    iget-object v9, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v19, v12

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v12

    if-eq v12, v9, :cond_b0

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    :cond_b0
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v17

    move-object/from16 v12, v19

    goto :goto_99

    :cond_b7
    move/from16 v17, v9

    move-object/from16 v19, v12

    iget-object v9, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_c2
    if-ge v10, v9, :cond_d2

    iget-object v12, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v12, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->commitStateTime(J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_c2

    :cond_d2
    iget-object v10, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_d9
    if-ge v12, v10, :cond_ed

    move/from16 v20, v9

    iget-object v9, v15, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/AssociationState;

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/app/procstats/AssociationState;->commitStateTime(J)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v9, v20

    goto :goto_d9

    :cond_ed
    move/from16 v20, v9

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, v16

    move/from16 v10, v18

    move-object/from16 v12, v19

    goto :goto_83

    :cond_f8
    move-object/from16 v16, v9

    move/from16 v18, v10

    move-object/from16 v19, v12

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_76

    :cond_102
    move-object/from16 v16, v9

    move/from16 v18, v10

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_69

    :cond_10a
    iget v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mNumAggregated:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v8, v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeToParcel(Landroid/os/Parcel;)V

    iget v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_180

    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v10, v9, v8

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v12, v2, v12

    add-long/2addr v10, v12

    aput-wide v10, v9, v8

    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    :cond_180
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    array-length v9, v8

    invoke-direct {v0, v1, v8, v9}, Lcom/android/internal/app/procstats/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v8, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x0

    :goto_195
    if-ge v9, v8, :cond_1ae

    iget-object v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/UidState;

    invoke-virtual {v10, v1, v2, v3}, Lcom/android/internal/app/procstats/UidState;->writeToParcel(Landroid/os/Parcel;J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_195

    :cond_1ae
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x0

    :goto_1b2
    if-ge v9, v5, :cond_1f1

    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v12, 0x0

    :goto_1cb
    if-ge v12, v11, :cond_1ee

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v13, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1cb

    :cond_1ee
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b2

    :cond_1f1
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x0

    :goto_1f5
    if-ge v9, v7, :cond_305

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v12, 0x0

    :goto_20e
    if-ge v12, v11, :cond_2f9

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/LongSparseArray;

    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x0

    :goto_225
    if-ge v15, v14, :cond_2ed

    move-object/from16 v16, v4

    move/from16 v17, v5

    invoke-virtual {v13, v15}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v13, v15}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v18, 0x0

    move-object/from16 v19, v6

    move/from16 v6, v18

    :goto_247
    if-ge v6, v5, :cond_279

    move/from16 v18, v5

    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessState;

    move/from16 v20, v7

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v7

    if-ne v7, v5, :cond_26b

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_272

    :cond_26b
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    :goto_272
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v18

    move/from16 v7, v20

    goto :goto_247

    :cond_279
    move/from16 v18, v5

    move/from16 v20, v7

    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    :goto_287
    if-ge v6, v5, :cond_2ad

    iget-object v7, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ServiceState;

    move/from16 v21, v5

    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v21

    goto :goto_287

    :cond_2ad
    move/from16 v21, v5

    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    :goto_2b9
    if-ge v6, v5, :cond_2df

    iget-object v7, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/AssociationState;

    move-object/from16 v22, v4

    invoke-virtual {v7}, Lcom/android/internal/app/procstats/AssociationState;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/AssociationState;->writeToParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;J)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v22

    goto :goto_2b9

    :cond_2df
    move-object/from16 v22, v4

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v19

    move/from16 v7, v20

    goto/16 :goto_225

    :cond_2ed
    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v19, v6

    move/from16 v20, v7

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_20e

    :cond_2f9
    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v19, v6

    move/from16 v20, v7

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1f5

    :cond_305
    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v19, v6

    move/from16 v20, v7

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    :goto_317
    if-ge v5, v4, :cond_34c

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_317

    :cond_34c
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    return-void
.end method
