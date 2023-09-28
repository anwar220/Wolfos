# classes.dex

.class public final Landroid/companion/AssociationInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/AssociationInfo$NonActionableBuilder;,
        Landroid/companion/AssociationInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAST_TIME_CONNECTED_NONE:Ljava/lang/String; = "None"


# instance fields
.field private final mDeviceMacAddress:Landroid/net/MacAddress;

.field private final mDeviceProfile:Ljava/lang/String;

.field private final mDisplayName:Ljava/lang/CharSequence;

.field private final mId:I

.field private final mLastTimeConnectedMs:J

.field private final mNotifyOnDeviceNearby:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mSelfManaged:Z

.field private final mTimeApprovedMs:J

.field private final mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceMacAddress(Landroid/companion/AssociationInfo;)Landroid/net/MacAddress;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceProfile(Landroid/companion/AssociationInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayName(Landroid/companion/AssociationInfo;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Landroid/companion/AssociationInfo;)I
    .registers 1

    iget p0, p0, Landroid/companion/AssociationInfo;->mId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTimeConnectedMs(Landroid/companion/AssociationInfo;)J
    .registers 3

    iget-wide v0, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmNotifyOnDeviceNearby(Landroid/companion/AssociationInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Landroid/companion/AssociationInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelfManaged(Landroid/companion/AssociationInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeApprovedMs(Landroid/companion/AssociationInfo;)J
    .registers 3

    iget-wide v0, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Landroid/companion/AssociationInfo;)I
    .registers 1

    iget p0, p0, Landroid/companion/AssociationInfo;->mUserId:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/companion/AssociationInfo$1;

    invoke-direct {v0}, Landroid/companion/AssociationInfo$1;-><init>()V

    sput-object v0, Landroid/companion/AssociationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;ZZJJ)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_27

    if-nez p4, :cond_12

    if-eqz p5, :cond_a

    goto :goto_12

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC address and the Display Name must NOT be null at the same time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_12
    iput p1, p0, Landroid/companion/AssociationInfo;->mId:I

    iput p2, p0, Landroid/companion/AssociationInfo;->mUserId:I

    iput-object p3, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    iput-object p5, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    iput-object p6, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    iput-boolean p7, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    iput-boolean p8, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    iput-wide p9, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    iput-wide p11, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    return-void

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Association ID should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo;->mUserId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    sget-object v0, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/companion/AssociationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/AssociationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static builder(Landroid/companion/AssociationInfo;)Landroid/companion/AssociationInfo$NonActionableBuilder;
    .registers 3

    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;Landroid/companion/AssociationInfo$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public belongsToPackage(ILjava/lang/String;)Z
    .registers 4

    iget v0, p0, Landroid/companion/AssociationInfo;->mUserId:I

    if-ne v0, p1, :cond_e

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/companion/AssociationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/companion/AssociationInfo;

    iget v3, p0, Landroid/companion/AssociationInfo;->mId:I

    iget v4, v1, Landroid/companion/AssociationInfo;->mId:I

    if-ne v3, v4, :cond_5e

    iget v3, p0, Landroid/companion/AssociationInfo;->mUserId:I

    iget v4, v1, Landroid/companion/AssociationInfo;->mUserId:I

    if-ne v3, v4, :cond_5e

    iget-boolean v3, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    iget-boolean v4, v1, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    if-ne v3, v4, :cond_5e

    iget-boolean v3, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    iget-boolean v4, v1, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    if-ne v3, v4, :cond_5e

    iget-wide v3, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    iget-wide v5, v1, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5e

    iget-wide v3, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    iget-wide v5, v1, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5e

    iget-object v3, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    iget-object v4, v1, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    iget-object v4, v1, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_5f

    :cond_5e
    move v0, v2

    :goto_5f
    return v0
.end method

.method public getDeviceMacAddress()Landroid/net/MacAddress;
    .registers 2

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public getDeviceMacAddressAsString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public getDeviceProfile()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/companion/AssociationInfo;->mId:I

    return v0
.end method

.method public getLastTimeConnectedMs()Ljava/lang/Long;
    .registers 3

    iget-wide v0, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeApprovedMs()J
    .registers 3

    iget-wide v0, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    return-wide v0
.end method

.method public getUserId()I
    .registers 2

    iget v0, p0, Landroid/companion/AssociationInfo;->mUserId:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/companion/AssociationInfo;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/companion/AssociationInfo;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLinkedTo(Ljava/lang/String;)Z
    .registers 4

    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_9

    return v1

    :cond_9
    :try_start_9
    invoke-static {p1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_d} :catch_15

    nop

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :catch_15
    move-exception v0

    return v1
.end method

.method public isNotifyOnDeviceNearby()Z
    .registers 2

    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    return v0
.end method

.method public isSelfManaged()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    return v0
.end method

.method public shouldBindWhenPresent()Z
    .registers 2

    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public toShortString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/companion/AssociationInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    if-eqz v1, :cond_21

    const-string v1, ", addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    if-eqz v1, :cond_2a

    const-string v1, ", self-managed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    const-string v1, ", pkg=u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/companion/AssociationInfo;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Association{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/AssociationInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/AssociationInfo;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDeviceMacAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDisplayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDeviceProfile=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSelfManaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotifyOnDeviceNearby="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeApprovedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastTimeConnectedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_98

    const-string v1, "None"

    goto :goto_9f

    :cond_98
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/companion/AssociationInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/companion/AssociationInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
