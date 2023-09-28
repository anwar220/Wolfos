# classes2.dex

.class public final Landroid/location/provider/ProviderRequest;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/ProviderRequest$Builder;,
        Landroid/location/provider/ProviderRequest$ChangedListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/provider/ProviderRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

.field public static final INTERVAL_DISABLED:J = 0x7fffffffffffffffL


# instance fields
.field private final mAdasGnssBypass:Z

.field private final mIntervalMillis:J

.field private final mLocationSettingsIgnored:Z

.field private final mLowPower:Z

.field private final mMaxUpdateDelayMillis:J

.field private final mQuality:I

.field private final mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v10, Landroid/location/provider/ProviderRequest;

    new-instance v9, Landroid/os/WorkSource;

    invoke-direct {v9}, Landroid/os/WorkSource;-><init>()V

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x66

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/location/provider/ProviderRequest;-><init>(JIJZZZLandroid/os/WorkSource;)V

    sput-object v10, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    new-instance v0, Landroid/location/provider/ProviderRequest$1;

    invoke-direct {v0}, Landroid/location/provider/ProviderRequest$1;-><init>()V

    sput-object v0, Landroid/location/provider/ProviderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JIJZZZLandroid/os/WorkSource;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    iput p3, p0, Landroid/location/provider/ProviderRequest;->mQuality:I

    iput-wide p4, p0, Landroid/location/provider/ProviderRequest;->mMaxUpdateDelayMillis:J

    iput-boolean p6, p0, Landroid/location/provider/ProviderRequest;->mLowPower:Z

    iput-boolean p7, p0, Landroid/location/provider/ProviderRequest;->mAdasGnssBypass:Z

    iput-boolean p8, p0, Landroid/location/provider/ProviderRequest;->mLocationSettingsIgnored:Z

    invoke-static {p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    iput-object v0, p0, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method

.method synthetic constructor <init>(JIJZZZLandroid/os/WorkSource;Landroid/location/provider/ProviderRequest-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/location/provider/ProviderRequest;-><init>(JIJZZZLandroid/os/WorkSource;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5c

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/location/provider/ProviderRequest;

    iget-wide v3, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v7, v3, v5

    if-nez v7, :cond_29

    iget-wide v3, v2, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0

    :cond_29
    iget-wide v5, v2, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5a

    iget v3, p0, Landroid/location/provider/ProviderRequest;->mQuality:I

    iget v4, v2, Landroid/location/provider/ProviderRequest;->mQuality:I

    if-ne v3, v4, :cond_5a

    iget-wide v3, p0, Landroid/location/provider/ProviderRequest;->mMaxUpdateDelayMillis:J

    iget-wide v5, v2, Landroid/location/provider/ProviderRequest;->mMaxUpdateDelayMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5a

    iget-boolean v3, p0, Landroid/location/provider/ProviderRequest;->mLowPower:Z

    iget-boolean v4, v2, Landroid/location/provider/ProviderRequest;->mLowPower:Z

    if-ne v3, v4, :cond_5a

    iget-boolean v3, p0, Landroid/location/provider/ProviderRequest;->mAdasGnssBypass:Z

    iget-boolean v4, v2, Landroid/location/provider/ProviderRequest;->mAdasGnssBypass:Z

    if-ne v3, v4, :cond_5a

    iget-boolean v3, p0, Landroid/location/provider/ProviderRequest;->mLocationSettingsIgnored:Z

    iget-boolean v4, v2, Landroid/location/provider/ProviderRequest;->mLocationSettingsIgnored:Z

    if-ne v3, v4, :cond_5a

    iget-object v3, p0, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, v2, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v4}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    goto :goto_5b

    :cond_5a
    move v0, v1

    :goto_5b
    return v0

    :cond_5c
    :goto_5c
    return v1
.end method

.method public getIntervalMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    return-wide v0
.end method

.method public getMaxUpdateDelayMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/location/provider/ProviderRequest;->mMaxUpdateDelayMillis:J

    return-wide v0
.end method

.method public getQuality()I
    .registers 2

    iget v0, p0, Landroid/location/provider/ProviderRequest;->mQuality:I

    return v0
.end method

.method public getWorkSource()Landroid/os/WorkSource;
    .registers 2

    iget-object v0, p0, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/provider/ProviderRequest;->mQuality:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .registers 5

    iget-wide v0, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public isAdasGnssBypass()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mAdasGnssBypass:Z

    return v0
.end method

.method public isBypass()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mAdasGnssBypass:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mLocationSettingsIgnored:Z

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

.method public isLocationSettingsIgnored()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mLocationSettingsIgnored:Z

    return v0
.end method

.method public isLowPower()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mLowPower:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProviderRequest["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7c

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    iget v1, p0, Landroid/location/provider/ProviderRequest;->mQuality:I

    const/16 v2, 0x66

    if-eq v1, v2, :cond_38

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2f

    const-string v1, ", HIGH_ACCURACY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    :cond_2f
    const/16 v2, 0x68

    if-ne v1, v2, :cond_38

    const-string v1, ", LOW_POWER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    :goto_38
    iget-wide v1, p0, Landroid/location/provider/ProviderRequest;->mMaxUpdateDelayMillis:J

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    iget-wide v3, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_4d

    const-string v1, ", maxUpdateDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/provider/ProviderRequest;->mMaxUpdateDelayMillis:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_4d
    iget-boolean v1, p0, Landroid/location/provider/ProviderRequest;->mLowPower:Z

    if-eqz v1, :cond_56

    const-string v1, ", lowPower"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_56
    iget-boolean v1, p0, Landroid/location/provider/ProviderRequest;->mAdasGnssBypass:Z

    if-eqz v1, :cond_5f

    const-string v1, ", adasGnssBypass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-boolean v1, p0, Landroid/location/provider/ProviderRequest;->mLocationSettingsIgnored:Z

    if-eqz v1, :cond_68

    const-string v1, ", settingsBypass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_68
    iget-object v1, p0, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_81

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_81

    :cond_7c
    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_81
    :goto_81
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-wide v0, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/provider/ProviderRequest;->mIntervalMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    iget v0, p0, Landroid/location/provider/ProviderRequest;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/provider/ProviderRequest;->mMaxUpdateDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mLowPower:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mAdasGnssBypass:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/location/provider/ProviderRequest;->mLocationSettingsIgnored:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/location/provider/ProviderRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_2e
    return-void
.end method
