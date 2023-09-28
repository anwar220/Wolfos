# classes3.dex

.class public final Landroid/telephony/data/ThrottleStatus;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/ThrottleStatus$Builder;,
        Landroid/telephony/data/ThrottleStatus$RetryType;,
        Landroid/telephony/data/ThrottleStatus$ThrottleType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/ThrottleStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETRY_TYPE_HANDOVER:I = 0x3

.field public static final RETRY_TYPE_NEW_CONNECTION:I = 0x2

.field public static final RETRY_TYPE_NONE:I = 0x1

.field public static final THROTTLE_TYPE_ELAPSED_TIME:I = 0x2

.field public static final THROTTLE_TYPE_NONE:I = 0x1


# instance fields
.field private final mApnType:I

.field private final mRetryType:I

.field private final mSlotIndex:I

.field private final mThrottleExpiryTimeMillis:J

.field private final mThrottleType:I

.field private final mTransportType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/data/ThrottleStatus$1;

    invoke-direct {v0}, Landroid/telephony/data/ThrottleStatus$1;-><init>()V

    sput-object v0, Landroid/telephony/data/ThrottleStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIIIJI)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    iput p2, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    iput p3, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    iput p4, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    iput-wide p5, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    iput p7, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    return-void
.end method

.method synthetic constructor <init>(IIIIJILandroid/telephony/data/ThrottleStatus-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/telephony/data/ThrottleStatus;-><init>(IIIIJI)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/data/ThrottleStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/ThrottleStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/telephony/data/ThrottleStatus;

    if-eqz v1, :cond_33

    move-object v1, p1

    check-cast v1, Landroid/telephony/data/ThrottleStatus;

    iget v2, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    iget v3, v1, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    if-ne v2, v3, :cond_32

    iget v2, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    iget v3, v1, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    if-ne v2, v3, :cond_32

    iget v2, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    iget v3, v1, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    if-ne v2, v3, :cond_32

    iget v2, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    iget v3, v1, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    if-ne v2, v3, :cond_32

    iget-wide v2, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    iget-wide v4, v1, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_32

    iget v2, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    iget v3, v1, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    if-ne v2, v3, :cond_32

    const/4 v0, 0x1

    :cond_32
    return v0

    :cond_33
    return v0
.end method

.method public getApnType()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    return v0
.end method

.method public getRetryType()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    return v0
.end method

.method public getSlotIndex()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    return v0
.end method

.method public getThrottleExpiryTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    return-wide v0
.end method

.method public getThrottleType()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    return v0
.end method

.method public getTransportType()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThrottleStatus{mSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThrottleExpiryTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRetryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThrottleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
