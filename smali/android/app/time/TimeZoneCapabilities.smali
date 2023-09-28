# classes.dex

.class public final Landroid/app/time/TimeZoneCapabilities;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/TimeZoneCapabilities$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeZoneCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfigureAutoDetectionEnabledCapability:I

.field private final mConfigureGeoDetectionEnabledCapability:I

.field private final mSuggestManualTimeZoneCapability:I

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfigureGeoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuggestManualTimeZoneCapability(Landroid/app/time/TimeZoneCapabilities;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserHandle(Landroid/app/time/TimeZoneCapabilities;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilities;
    .registers 1

    invoke-static {p0}, Landroid/app/time/TimeZoneCapabilities;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/time/TimeZoneCapabilities$1;

    invoke-direct {v0}, Landroid/app/time/TimeZoneCapabilities$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeZoneCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/time/TimeZoneCapabilities$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmUserHandle(Landroid/app/time/TimeZoneCapabilities$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmConfigureGeoDetectionEnabledCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    invoke-static {p1}, Landroid/app/time/TimeZoneCapabilities$Builder;->-$$Nest$fgetmSuggestManualTimeZoneCapability(Landroid/app/time/TimeZoneCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/time/TimeZoneCapabilities$Builder;Landroid/app/time/TimeZoneCapabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/time/TimeZoneCapabilities;-><init>(Landroid/app/time/TimeZoneCapabilities$Builder;)V

    return-void
.end method

.method private static createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilities;
    .registers 4

    invoke-static {p0}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    new-instance v1, Landroid/app/time/TimeZoneCapabilities$Builder;

    invoke-direct {v1, v0}, Landroid/app/time/TimeZoneCapabilities$Builder;-><init>(Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureAutoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureGeoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeZoneCapabilities$Builder;->setSuggestManualTimeZoneCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilities$Builder;->build()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/time/TimeZoneCapabilities;

    iget-object v3, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    iget-object v4, v2, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget v3, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    iget v4, v2, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    iget v4, v2, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    iget v4, v2, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    if-ne v3, v4, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    return v0

    :cond_34
    :goto_34
    return v1
.end method

.method public getConfigureAutoDetectionEnabledCapability()I
    .registers 2

    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    return v0
.end method

.method public getConfigureGeoDetectionEnabledCapability()I
    .registers 2

    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    return v0
.end method

.method public getSuggestManualTimeZoneCapability()I
    .registers 2

    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneDetectorCapabilities{mUserHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigureAutoDetectionEnabledCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigureGeoDetectionEnabledCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSuggestManualTimeZoneCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryApplyConfigChanges(Landroid/app/time/TimeZoneConfiguration;Landroid/app/time/TimeZoneConfiguration;)Landroid/app/time/TimeZoneConfiguration;
    .registers 7

    new-instance v0, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v0, p1}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>(Landroid/app/time/TimeZoneConfiguration;)V

    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->hasIsAutoDetectionEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1e

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilities;->getConfigureAutoDetectionEnabledCapability()I

    move-result v1

    if-ge v1, v3, :cond_15

    return-object v2

    :cond_15
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    :cond_1c
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->hasIsGeoDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilities;->getConfigureGeoDetectionEnabledCapability()I

    move-result v1

    if-ge v1, v3, :cond_29

    return-object v2

    :cond_29
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    :cond_30
    invoke-virtual {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v0, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mConfigureGeoDetectionEnabledCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/time/TimeZoneCapabilities;->mSuggestManualTimeZoneCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
