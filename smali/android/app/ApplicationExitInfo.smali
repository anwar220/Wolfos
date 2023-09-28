# classes.dex

.class public final Landroid/app/ApplicationExitInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationExitInfo$SubReason;,
        Landroid/app/ApplicationExitInfo$Reason;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REASON_ANR:I = 0x6

.field public static final REASON_CRASH:I = 0x4

.field public static final REASON_CRASH_NATIVE:I = 0x5

.field public static final REASON_DEPENDENCY_DIED:I = 0xc

.field public static final REASON_EXCESSIVE_RESOURCE_USAGE:I = 0x9

.field public static final REASON_EXIT_SELF:I = 0x1

.field public static final REASON_FREEZER:I = 0xe

.field public static final REASON_INITIALIZATION_FAILURE:I = 0x7

.field public static final REASON_LOW_MEMORY:I = 0x3

.field public static final REASON_OTHER:I = 0xd

.field public static final REASON_PERMISSION_CHANGE:I = 0x8

.field public static final REASON_SIGNALED:I = 0x2

.field public static final REASON_UNKNOWN:I = 0x0

.field public static final REASON_USER_REQUESTED:I = 0xa

.field public static final REASON_USER_STOPPED:I = 0xb

.field public static final SUBREASON_CACHED_IDLE_FORCED_APP_STANDBY:I = 0x12

.field public static final SUBREASON_EXCESSIVE_CPU:I = 0x7

.field public static final SUBREASON_FORCE_STOP:I = 0x15

.field public static final SUBREASON_FREEZER_BINDER_IOCTL:I = 0x13

.field public static final SUBREASON_FREEZER_BINDER_TRANSACTION:I = 0x14

.field public static final SUBREASON_IMPERCEPTIBLE:I = 0xf

.field public static final SUBREASON_INVALID_START:I = 0xd

.field public static final SUBREASON_INVALID_STATE:I = 0xe

.field public static final SUBREASON_ISOLATED_NOT_NEEDED:I = 0x11

.field public static final SUBREASON_KILL_ALL_BG_EXCEPT:I = 0xa

.field public static final SUBREASON_KILL_ALL_FG:I = 0x9

.field public static final SUBREASON_KILL_BACKGROUND:I = 0x18

.field public static final SUBREASON_KILL_PID:I = 0xc

.field public static final SUBREASON_KILL_UID:I = 0xb

.field public static final SUBREASON_LARGE_CACHED:I = 0x5

.field public static final SUBREASON_MEMORY_PRESSURE:I = 0x6

.field public static final SUBREASON_PACKAGE_UPDATE:I = 0x19

.field public static final SUBREASON_REMOVE_LRU:I = 0x10

.field public static final SUBREASON_REMOVE_TASK:I = 0x16

.field public static final SUBREASON_STOP_APP:I = 0x17

.field public static final SUBREASON_SYSTEM_UPDATE_DONE:I = 0x8

.field public static final SUBREASON_TOO_MANY_CACHED:I = 0x2

.field public static final SUBREASON_TOO_MANY_EMPTY:I = 0x3

.field public static final SUBREASON_TRIM_EMPTY:I = 0x4

.field public static final SUBREASON_UNDELIVERED_BROADCAST:I = 0x1a

.field public static final SUBREASON_UNKNOWN:I = 0x0

.field public static final SUBREASON_WAIT_FOR_DEBUGGER:I = 0x1


# instance fields
.field private mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

.field private mConnectionGroup:I

.field private mDefiningUid:I

.field private mDescription:Ljava/lang/String;

.field private mHasForegroundServices:Z

.field private mImportance:I

.field private mLoggedInStatsd:Z

.field private mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

.field private mPackageList:[Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPackageUid:I

.field private mPid:I

.field private mProcessName:Ljava/lang/String;

.field private mPss:J

.field private mRealUid:I

.field private mReason:I

.field private mRss:J

.field private mState:[B

.field private mStatus:I

.field private mSubReason:I

.field private mTimestamp:J

.field private mTraceFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/ApplicationExitInfo$1;

    invoke-direct {v0}, Landroid/app/ApplicationExitInfo$1;-><init>()V

    sput-object v0, Landroid/app/ApplicationExitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/ApplicationExitInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mPid:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mRealUid:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mReason:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mStatus:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mSubReason:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    iget v0, p1, Landroid/app/ApplicationExitInfo;->mImportance:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    iget-wide v0, p1, Landroid/app/ApplicationExitInfo;->mPss:J

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    iget-wide v0, p1, Landroid/app/ApplicationExitInfo;->mRss:J

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    iget-wide v0, p1, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mPackageList:[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageList:[Ljava/lang/String;

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mState:[B

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    iget-boolean v0, p1, Landroid/app/ApplicationExitInfo;->mLoggedInStatsd:Z

    iput-boolean v0, p0, Landroid/app/ApplicationExitInfo;->mLoggedInStatsd:Z

    iget-boolean v0, p1, Landroid/app/ApplicationExitInfo;->mHasForegroundServices:Z

    iput-boolean v0, p0, Landroid/app/ApplicationExitInfo;->mHasForegroundServices:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_80

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAppTraceRetriever$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAppTraceRetriever;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    :cond_80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_91

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IParcelFileDescriptorRetriever$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IParcelFileDescriptorRetriever;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    :cond_91
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ApplicationExitInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ApplicationExitInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static intern(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method private static reasonCodeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_30

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_6  #0xe
    const-string v0, "FREEZER"

    return-object v0

    :pswitch_9  #0xd
    const-string v0, "OTHER KILLS BY SYSTEM"

    return-object v0

    :pswitch_c  #0xc
    const-string v0, "DEPENDENCY DIED"

    return-object v0

    :pswitch_f  #0xb
    const-string v0, "USER STOPPED"

    return-object v0

    :pswitch_12  #0xa
    const-string v0, "USER REQUESTED"

    return-object v0

    :pswitch_15  #0x9
    const-string v0, "EXCESSIVE RESOURCE USAGE"

    return-object v0

    :pswitch_18  #0x8
    const-string v0, "PERMISSION CHANGE"

    return-object v0

    :pswitch_1b  #0x7
    const-string v0, "INITIALIZATION FAILURE"

    return-object v0

    :pswitch_1e  #0x6
    const-string v0, "ANR"

    return-object v0

    :pswitch_21  #0x5
    const-string v0, "APP CRASH(NATIVE)"

    return-object v0

    :pswitch_24  #0x4
    const-string v0, "APP CRASH(EXCEPTION)"

    return-object v0

    :pswitch_27  #0x3
    const-string v0, "LOW_MEMORY"

    return-object v0

    :pswitch_2a  #0x2
    const-string v0, "SIGNALED"

    return-object v0

    :pswitch_2d  #0x1
    const-string v0, "EXIT_SELF"

    return-object v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d  #00000001
        :pswitch_2a  #00000002
        :pswitch_27  #00000003
        :pswitch_24  #00000004
        :pswitch_21  #00000005
        :pswitch_1e  #00000006
        :pswitch_1b  #00000007
        :pswitch_18  #00000008
        :pswitch_15  #00000009
        :pswitch_12  #0000000a
        :pswitch_f  #0000000b
        :pswitch_c  #0000000c
        :pswitch_9  #0000000d
        :pswitch_6  #0000000e
    .end packed-switch
.end method

.method public static subreasonToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_52

    :pswitch_3  #0x12
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_6  #0x1a
    const-string v0, "UNDELIVERED BROADCAST"

    return-object v0

    :pswitch_9  #0x19
    const-string v0, "PACKAGE UPDATE"

    return-object v0

    :pswitch_c  #0x18
    const-string v0, "KILL BACKGROUND"

    return-object v0

    :pswitch_f  #0x17
    const-string v0, "STOP APP"

    return-object v0

    :pswitch_12  #0x16
    const-string v0, "REMOVE TASK"

    return-object v0

    :pswitch_15  #0x15
    const-string v0, "FORCE STOP"

    return-object v0

    :pswitch_18  #0x14
    const-string v0, "FREEZER BINDER TRANSACTION"

    return-object v0

    :pswitch_1b  #0x13
    const-string v0, "FREEZER BINDER IOCTL"

    return-object v0

    :pswitch_1e  #0x11
    const-string v0, "ISOLATED NOT NEEDED"

    return-object v0

    :pswitch_21  #0x10
    const-string v0, "REMOVE LRU"

    return-object v0

    :pswitch_24  #0xf
    const-string v0, "IMPERCEPTIBLE"

    return-object v0

    :pswitch_27  #0xe
    const-string v0, "INVALID STATE"

    return-object v0

    :pswitch_2a  #0xd
    const-string v0, "INVALID START"

    return-object v0

    :pswitch_2d  #0xc
    const-string v0, "KILL PID"

    return-object v0

    :pswitch_30  #0xb
    const-string v0, "KILL UID"

    return-object v0

    :pswitch_33  #0xa
    const-string v0, "KILL ALL BG EXCEPT"

    return-object v0

    :pswitch_36  #0x9
    const-string v0, "KILL ALL FG"

    return-object v0

    :pswitch_39  #0x8
    const-string v0, "SYSTEM UPDATE_DONE"

    return-object v0

    :pswitch_3c  #0x7
    const-string v0, "EXCESSIVE CPU USAGE"

    return-object v0

    :pswitch_3f  #0x6
    const-string v0, "MEMORY PRESSURE"

    return-object v0

    :pswitch_42  #0x5
    const-string v0, "LARGE CACHED"

    return-object v0

    :pswitch_45  #0x4
    const-string v0, "TRIM EMPTY"

    return-object v0

    :pswitch_48  #0x3
    const-string v0, "TOO MANY EMPTY PROCS"

    return-object v0

    :pswitch_4b  #0x2
    const-string v0, "TOO MANY CACHED PROCS"

    return-object v0

    :pswitch_4e  #0x1
    const-string v0, "WAIT FOR DEBUGGER"

    return-object v0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4e  #00000001
        :pswitch_4b  #00000002
        :pswitch_48  #00000003
        :pswitch_45  #00000004
        :pswitch_42  #00000005
        :pswitch_3f  #00000006
        :pswitch_3c  #00000007
        :pswitch_39  #00000008
        :pswitch_36  #00000009
        :pswitch_33  #0000000a
        :pswitch_30  #0000000b
        :pswitch_2d  #0000000c
        :pswitch_2a  #0000000d
        :pswitch_27  #0000000e
        :pswitch_24  #0000000f
        :pswitch_21  #00000010
        :pswitch_1e  #00000011
        :pswitch_3  #00000012
        :pswitch_1b  #00000013
        :pswitch_18  #00000014
        :pswitch_15  #00000015
        :pswitch_12  #00000016
        :pswitch_f  #00000017
        :pswitch_c  #00000018
        :pswitch_9  #00000019
        :pswitch_6  #0000001a
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ApplicationExitInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " timestamp="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v4}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " pid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " realUid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " packageUid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " definingUid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " user="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " process="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " reason="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-static {v5}, Landroid/app/ApplicationExitInfo;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " subreason="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-static {v4}, Landroid/app/ApplicationExitInfo;->subreasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " status="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " importance="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pss="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    shl-long/2addr v3, v2

    invoke-static {v3, v4, v0}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    const-string v1, " rss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    shl-long/2addr v3, v2

    invoke-static {v3, v4, v0}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    const-string v1, " description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v3

    if-eqz v3, :cond_12a

    const-string v3, "empty"

    goto :goto_144

    :cond_12a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " trace="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_71

    instance-of v1, p1, Landroid/app/ApplicationExitInfo;

    if-nez v1, :cond_8

    goto :goto_71

    :cond_8
    move-object v1, p1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mPid:I

    if-ne v2, v3, :cond_6f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mRealUid:I

    if-ne v2, v3, :cond_6f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    if-ne v2, v3, :cond_6f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    if-ne v2, v3, :cond_6f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    if-ne v2, v3, :cond_6f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mReason:I

    if-ne v2, v3, :cond_6f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mSubReason:I

    if-ne v2, v3, :cond_6f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mImportance:I

    if-ne v2, v3, :cond_6f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    iget v3, v1, Landroid/app/ApplicationExitInfo;->mStatus:I

    if-ne v2, v3, :cond_6f

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    iget-wide v4, v1, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6f

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    iget-wide v4, v1, Landroid/app/ApplicationExitInfo;->mPss:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6f

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    iget-wide v4, v1, Landroid/app/ApplicationExitInfo;->mRss:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6f

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6f

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const/4 v0, 0x1

    goto :goto_70

    :cond_6f
    nop

    :goto_70
    return v0

    :cond_71
    :goto_71
    return v0
.end method

.method public getConnectionGroup()I
    .registers 2

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    return v0
.end method

.method public getDefiningUid()I
    .registers 2

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getImportance()I
    .registers 2

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    return v0
.end method

.method public getPackageList()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageList:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageUid()I
    .registers 2

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    return v0
.end method

.method public getPid()I
    .registers 2

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessStateSummary()[B
    .registers 2

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    return-object v0
.end method

.method public getPss()J
    .registers 3

    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    return-wide v0
.end method

.method public getRealUid()I
    .registers 2

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    return v0
.end method

.method public getReason()I
    .registers 2

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    return v0
.end method

.method public getRss()J
    .registers 3

    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    return-wide v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    return v0
.end method

.method public getSubReason()I
    .registers 2

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getTraceFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    return-object v0
.end method

.method public getTraceInputStream()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    if-nez v2, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    if-eqz v2, :cond_1b

    invoke-interface {v2}, Landroid/app/IParcelFileDescriptorRetriever;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_15

    return-object v1

    :cond_15
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v2

    :cond_1b
    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-interface {v0, v2, v3, v4}, Landroid/app/IAppTraceRetriever;->getTraceFileDescriptor(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_28

    return-object v1

    :cond_28
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_32} :catch_33

    return-object v2

    :catch_33
    move-exception v0

    return-object v1
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 2

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public hasForegroundServices()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/ApplicationExitInfo;->mHasForegroundServices:Z

    return v0
.end method

.method public hashCode()I
    .registers 5

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public isLoggedInStatsd()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/ApplicationExitInfo;->mLoggedInStatsd:Z

    return v0
.end method

.method public readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    :goto_4
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_f0

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_f4

    goto/16 :goto_ee

    :pswitch_14  #0x10
    const-wide v2, 0x10900000010L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ee

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    goto/16 :goto_ee

    :pswitch_2c  #0xf
    const-wide v2, 0x10c0000000fL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v2

    iput-object v2, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    goto/16 :goto_ee

    :pswitch_39  #0xe
    const-wide v2, 0x1090000000eL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    goto/16 :goto_ee

    :pswitch_4a  #0xd
    const-wide v2, 0x1030000000dL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    goto/16 :goto_ee

    :pswitch_57  #0xc
    const-wide v2, 0x1030000000cL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    goto/16 :goto_ee

    :pswitch_64  #0xb
    const-wide v2, 0x1030000000bL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    goto/16 :goto_ee

    :pswitch_71  #0xa
    const-wide v2, 0x10e0000000aL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    goto/16 :goto_ee

    :pswitch_7e  #0x9
    const-wide v2, 0x10500000009L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    goto :goto_ee

    :pswitch_8a  #0x8
    const-wide v2, 0x10e00000008L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    goto :goto_ee

    :pswitch_96  #0x7
    const-wide v2, 0x10e00000007L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    goto :goto_ee

    :pswitch_a2  #0x6
    const-wide v2, 0x10500000006L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    goto :goto_ee

    :pswitch_ae  #0x5
    const-wide v2, 0x10900000005L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    goto :goto_ee

    :pswitch_be  #0x4
    const-wide v2, 0x10500000004L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    goto :goto_ee

    :pswitch_ca  #0x3
    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    goto :goto_ee

    :pswitch_d6  #0x2
    const-wide v2, 0x10500000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    goto :goto_ee

    :pswitch_e2  #0x1
    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    nop

    :cond_ee
    :goto_ee
    goto/16 :goto_4

    :cond_f0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_e2  #00000001
        :pswitch_d6  #00000002
        :pswitch_ca  #00000003
        :pswitch_be  #00000004
        :pswitch_ae  #00000005
        :pswitch_a2  #00000006
        :pswitch_96  #00000007
        :pswitch_8a  #00000008
        :pswitch_7e  #00000009
        :pswitch_71  #0000000a
        :pswitch_64  #0000000b
        :pswitch_57  #0000000c
        :pswitch_4a  #0000000d
        :pswitch_39  #0000000e
        :pswitch_2c  #0000000f
        :pswitch_14  #00000010
    .end packed-switch
.end method

.method public setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    return-void
.end method

.method public setConnectionGroup(I)V
    .registers 2

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    return-void
.end method

.method public setDefiningUid(I)V
    .registers 2

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setHasForegroundServices(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/ApplicationExitInfo;->mHasForegroundServices:Z

    return-void
.end method

.method public setImportance(I)V
    .registers 2

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    return-void
.end method

.method public setLoggedInStatsd(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/ApplicationExitInfo;->mLoggedInStatsd:Z

    return-void
.end method

.method public setNativeTombstoneRetriever(Landroid/app/IParcelFileDescriptorRetriever;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    return-void
.end method

.method public setPackageList([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mPackageList:[Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPackageUid(I)V
    .registers 2

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    return-void
.end method

.method public setPid(I)V
    .registers 2

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    return-void
.end method

.method public setProcessStateSummary([B)V
    .registers 2

    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    return-void
.end method

.method public setPss(J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    return-void
.end method

.method public setRealUid(I)V
    .registers 2

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    return-void
.end method

.method public setReason(I)V
    .registers 2

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    return-void
.end method

.method public setRss(J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    return-void
.end method

.method public setSubReason(I)V
    .registers 2

    iput p1, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    return-void
.end method

.method public setTimestamp(J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    return-void
.end method

.method public setTraceFile(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationExitInfo(timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    invoke-direct {v1}, Landroid/icu/text/SimpleDateFormat;-><init>()V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " realUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packageUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " definingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " process="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-static {v3}, Landroid/app/ApplicationExitInfo;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " subreason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-static {v2}, Landroid/app/ApplicationExitInfo;->subreasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " importance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    const/16 v3, 0xa

    shl-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    const-string v1, " rss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    shl-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    const-string v1, " description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v2

    if-eqz v2, :cond_eb

    const-string v2, "empty"

    goto :goto_105

    :cond_eb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " trace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_63

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    invoke-interface {v0}, Landroid/app/IAppTraceRetriever;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_66

    :cond_63
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_66
    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    if-eqz v0, :cond_77

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    invoke-interface {v0}, Landroid/app/IParcelFileDescriptorRetriever;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_7a

    :cond_77
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7a
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    const-wide v3, 0x10900000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    const-wide v3, 0x10e00000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    const-wide v3, 0x10e00000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    const-wide v3, 0x10500000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    const-wide v3, 0x10e0000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    const-wide v4, 0x1030000000bL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    const-wide v4, 0x1030000000cL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    const-wide v4, 0x1030000000dL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    const-wide v3, 0x1090000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    const-wide v3, 0x10c0000000fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    nop

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    if-nez v2, :cond_a1

    const/4 v2, 0x0

    goto :goto_a5

    :cond_a1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_a5
    const-wide v3, 0x10900000010L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
