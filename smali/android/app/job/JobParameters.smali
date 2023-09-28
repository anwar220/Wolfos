# classes.dex

.class public Landroid/app/job/JobParameters;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobParameters$StopReason;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_STOP_REASON_CANCELED:I = 0x0

.field public static final INTERNAL_STOP_REASON_CONSTRAINTS_NOT_SATISFIED:I = 0x1

.field public static final INTERNAL_STOP_REASON_DATA_CLEARED:I = 0x8

.field public static final INTERNAL_STOP_REASON_DEVICE_IDLE:I = 0x4

.field public static final INTERNAL_STOP_REASON_DEVICE_THERMAL:I = 0x5

.field public static final INTERNAL_STOP_REASON_PREEMPT:I = 0x2

.field public static final INTERNAL_STOP_REASON_RESTRICTED_BUCKET:I = 0x6

.field public static final INTERNAL_STOP_REASON_RTC_UPDATED:I = 0x9

.field public static final INTERNAL_STOP_REASON_SUCCESSFUL_FINISH:I = 0xa

.field public static final INTERNAL_STOP_REASON_TIMEOUT:I = 0x3

.field public static final INTERNAL_STOP_REASON_UNINSTALL:I = 0x7

.field public static final INTERNAL_STOP_REASON_UNKNOWN:I = -0x1

.field public static final JOB_STOP_REASON_CODES:[I

.field public static final STOP_REASON_APP_STANDBY:I = 0xc

.field public static final STOP_REASON_BACKGROUND_RESTRICTION:I = 0xb

.field public static final STOP_REASON_CANCELLED_BY_APP:I = 0x1

.field public static final STOP_REASON_CONSTRAINT_BATTERY_NOT_LOW:I = 0x5

.field public static final STOP_REASON_CONSTRAINT_CHARGING:I = 0x6

.field public static final STOP_REASON_CONSTRAINT_CONNECTIVITY:I = 0x7

.field public static final STOP_REASON_CONSTRAINT_DEVICE_IDLE:I = 0x8

.field public static final STOP_REASON_CONSTRAINT_STORAGE_NOT_LOW:I = 0x9

.field public static final STOP_REASON_DEVICE_STATE:I = 0x4

.field public static final STOP_REASON_ESTIMATED_APP_LAUNCH_TIME_CHANGED:I = 0xf

.field public static final STOP_REASON_PREEMPT:I = 0x2

.field public static final STOP_REASON_QUOTA:I = 0xa

.field public static final STOP_REASON_SYSTEM_PROCESSING:I = 0xe

.field public static final STOP_REASON_TIMEOUT:I = 0x3

.field public static final STOP_REASON_UNDEFINED:I = 0x0

.field public static final STOP_REASON_USER:I = 0xd


# instance fields
.field private final callback:Landroid/os/IBinder;

.field private final clipData:Landroid/content/ClipData;

.field private final clipGrantFlags:I

.field private debugStopReason:Ljava/lang/String;

.field private final extras:Landroid/os/PersistableBundle;

.field private final jobId:I

.field private mInternalStopReason:I

.field private final mIsExpedited:Z

.field private mStopReason:I

.field private final mTriggeredContentAuthorities:[Ljava/lang/String;

.field private final mTriggeredContentUris:[Landroid/net/Uri;

.field private final network:Landroid/net/Network;

.field private final overrideDeadlineExpired:Z

.field private final transientExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/app/job/JobParameters;->JOB_STOP_REASON_CODES:[I

    new-instance v0, Landroid/app/job/JobParameters$1;

    invoke-direct {v0}, Landroid/app/job/JobParameters$1;-><init>()V

    sput-object v0, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_12
    .array-data 4
        -0x1
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
.end method

.method public constructor <init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Landroid/os/Bundle;Landroid/content/ClipData;IZZ[Landroid/net/Uri;[Ljava/lang/String;Landroid/net/Network;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    iput p2, p0, Landroid/app/job/JobParameters;->jobId:I

    iput-object p3, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    iput-object p4, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    iput p6, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    iput-object p1, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    iput-boolean p7, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    iput-boolean p8, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    iput-object p9, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    iput-object p10, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    iput-object p11, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobParameters;->jobId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    goto :goto_37

    :cond_33
    iput-object v2, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    iput v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    :goto_37
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_45

    move v0, v3

    :cond_45
    iput-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6e

    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    goto :goto_70

    :cond_6e
    iput-object v2, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    :goto_70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/job/JobParameters-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/job/JobParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getInternalReasonCodeDescription(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18  #0xa
    const-string/jumbo v0, "successful_finish"

    return-object v0

    :pswitch_1c  #0x9
    const-string/jumbo v0, "rtc_updated"

    return-object v0

    :pswitch_20  #0x8
    const-string v0, "data_cleared"

    return-object v0

    :pswitch_23  #0x7
    const-string/jumbo v0, "uninstall"

    return-object v0

    :pswitch_27  #0x6
    const-string/jumbo v0, "restricted_bucket"

    return-object v0

    :pswitch_2b  #0x5
    const-string/jumbo v0, "thermal"

    return-object v0

    :pswitch_2f  #0x4
    const-string v0, "device_idle"

    return-object v0

    :pswitch_32  #0x3
    const-string/jumbo v0, "timeout"

    return-object v0

    :pswitch_36  #0x2
    const-string/jumbo v0, "preempt"

    return-object v0

    :pswitch_3a  #0x1
    const-string v0, "constraints"

    return-object v0

    :pswitch_3d  #0x0
    const-string v0, "canceled"

    return-object v0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3d  #00000000
        :pswitch_3a  #00000001
        :pswitch_36  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_2b  #00000005
        :pswitch_27  #00000006
        :pswitch_23  #00000007
        :pswitch_20  #00000008
        :pswitch_1c  #00000009
        :pswitch_18  #0000000a
    .end packed-switch
.end method

.method public static getJobStopReasonCodes()[I
    .registers 1

    sget-object v0, Landroid/app/job/JobParameters;->JOB_STOP_REASON_CODES:[I

    return-object v0
.end method


# virtual methods
.method public completeWork(Landroid/app/job/JobWorkItem;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/job/IJobCallback;->completeWork(II)Z

    move-result v0

    if-eqz v0, :cond_14

    nop

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given work is not active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dequeueWork()Landroid/app/job/JobWorkItem;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/job/IJobCallback;->dequeueWork(I)Landroid/app/job/JobWorkItem;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Landroid/app/job/IJobCallback;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/app/job/IJobCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobCallback;

    move-result-object v0

    return-object v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getClipGrantFlags()I
    .registers 2

    iget v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    return v0
.end method

.method public getDebugStopReason()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getInternalStopReasonCode()I
    .registers 2

    iget v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    return v0
.end method

.method public getJobId()I
    .registers 2

    iget v0, p0, Landroid/app/job/JobParameters;->jobId:I

    return v0
.end method

.method public getNetwork()Landroid/net/Network;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    return-object v0
.end method

.method public getStopReason()I
    .registers 2

    iget v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    return v0
.end method

.method public getTransientExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTriggeredContentAuthorities()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    return-object v0
.end method

.method public getTriggeredContentUris()[Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public isExpeditedJob()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    return v0
.end method

.method public isOverrideDeadlineExpired()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    return v0
.end method

.method public setStopReason(IILjava/lang/String;)V
    .registers 4

    iput p1, p0, Landroid/app/job/JobParameters;->mStopReason:I

    iput p2, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    iput-object p3, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget v0, p0, Landroid/app/job/JobParameters;->jobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    :cond_23
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    iget-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    if-eqz v0, :cond_4c

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->network:Landroid/net/Network;

    invoke-virtual {v0, p1, p2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4f

    :cond_4c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4f
    iget v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
