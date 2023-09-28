# classes3.dex

.class public final Landroid/os/BatterySaverPolicyConfig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatterySaverPolicyConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/BatterySaverPolicyConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdjustBrightnessFactor:F

.field private final mAdvertiseIsEnabled:Z

.field private final mDeferFullBackup:Z

.field private final mDeferKeyValueBackup:Z

.field private final mDeviceSpecificSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableAnimation:Z

.field private final mDisableAod:Z

.field private final mDisableLaunchBoost:Z

.field private final mDisableOptionalSensors:Z

.field private final mDisableVibration:Z

.field private final mEnableAdjustBrightness:Z

.field private final mEnableDataSaver:Z

.field private final mEnableFirewall:Z

.field private final mEnableNightMode:Z

.field private final mEnableQuickDoze:Z

.field private final mForceAllAppsStandby:Z

.field private final mForceBackgroundCheck:Z

.field private final mLocationMode:I

.field private final mSoundTriggerMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/BatterySaverPolicyConfig$1;

    invoke-direct {v0}, Landroid/os/BatterySaverPolicyConfig$1;-><init>()V

    sput-object v0, Landroid/os/BatterySaverPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/BatterySaverPolicyConfig$Builder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmAdjustBrightnessFactor(Landroid/os/BatterySaverPolicyConfig$Builder;)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdjustBrightnessFactor:F

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmAdvertiseIsEnabled(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdvertiseIsEnabled:Z

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDeferFullBackup(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferFullBackup:Z

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDeferKeyValueBackup(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferKeyValueBackup:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDeviceSpecificSettings(Landroid/os/BatterySaverPolicyConfig$Builder;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeviceSpecificSettings:Ljava/util/Map;

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDisableAnimation(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAnimation:Z

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDisableAod(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAod:Z

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDisableLaunchBoost(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableLaunchBoost:Z

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDisableOptionalSensors(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableOptionalSensors:Z

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmDisableVibration(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableVibration:Z

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmEnableAdjustBrightness(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableAdjustBrightness:Z

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmEnableDataSaver(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableDataSaver:Z

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmEnableFirewall(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableFirewall:Z

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmEnableNightMode(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableNightMode:Z

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmEnableQuickDoze(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableQuickDoze:Z

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmForceAllAppsStandby(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mForceAllAppsStandby:Z

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmForceBackgroundCheck(Landroid/os/BatterySaverPolicyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mForceBackgroundCheck:Z

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmLocationMode(Landroid/os/BatterySaverPolicyConfig$Builder;)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig;->mLocationMode:I

    invoke-static {p1}, Landroid/os/BatterySaverPolicyConfig$Builder;->-$$Nest$fgetmSoundTriggerMode(Landroid/os/BatterySaverPolicyConfig$Builder;)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig;->mSoundTriggerMode:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/BatterySaverPolicyConfig$Builder;Landroid/os/BatterySaverPolicyConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BatterySaverPolicyConfig;-><init>(Landroid/os/BatterySaverPolicyConfig$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdjustBrightnessFactor:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdvertiseIsEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferFullBackup:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferKeyValueBackup:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_30
    if-ge v2, v0, :cond_53

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4d

    goto :goto_50

    :cond_4d
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_53
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDeviceSpecificSettings:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAnimation:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAod:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableLaunchBoost:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableOptionalSensors:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableVibration:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableAdjustBrightness:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableDataSaver:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableFirewall:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableNightMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableQuickDoze:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mForceAllAppsStandby:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mForceBackgroundCheck:Z

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/os/BatterySaverPolicyConfig;->mLocationMode:I

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v4, 0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/os/BatterySaverPolicyConfig;->mSoundTriggerMode:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/BatterySaverPolicyConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BatterySaverPolicyConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAdjustBrightnessFactor()F
    .registers 2

    iget v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdjustBrightnessFactor:F

    return v0
.end method

.method public getAdvertiseIsEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdvertiseIsEnabled:Z

    return v0
.end method

.method public getDeferFullBackup()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferFullBackup:Z

    return v0
.end method

.method public getDeferKeyValueBackup()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferKeyValueBackup:Z

    return v0
.end method

.method public getDeviceSpecificSettings()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeviceSpecificSettings:Ljava/util/Map;

    return-object v0
.end method

.method public getDisableAnimation()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAnimation:Z

    return v0
.end method

.method public getDisableAod()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAod:Z

    return v0
.end method

.method public getDisableLaunchBoost()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableLaunchBoost:Z

    return v0
.end method

.method public getDisableOptionalSensors()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableOptionalSensors:Z

    return v0
.end method

.method public getDisableSoundTrigger()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/os/BatterySaverPolicyConfig;->mSoundTriggerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getDisableVibration()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableVibration:Z

    return v0
.end method

.method public getEnableAdjustBrightness()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableAdjustBrightness:Z

    return v0
.end method

.method public getEnableDataSaver()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableDataSaver:Z

    return v0
.end method

.method public getEnableFirewall()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableFirewall:Z

    return v0
.end method

.method public getEnableNightMode()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableNightMode:Z

    return v0
.end method

.method public getEnableQuickDoze()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableQuickDoze:Z

    return v0
.end method

.method public getForceAllAppsStandby()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mForceAllAppsStandby:Z

    return v0
.end method

.method public getForceBackgroundCheck()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mForceBackgroundCheck:Z

    return v0
.end method

.method public getLocationMode()I
    .registers 2

    iget v0, p0, Landroid/os/BatterySaverPolicyConfig;->mLocationMode:I

    return v0
.end method

.method public getSoundTriggerMode()I
    .registers 2

    iget v0, p0, Landroid/os/BatterySaverPolicyConfig;->mSoundTriggerMode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/os/BatterySaverPolicyConfig;->mDeviceSpecificSettings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjust_brightness_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableAdjustBrightness:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",adjust_brightness_factor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/BatterySaverPolicyConfig;->mAdjustBrightnessFactor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",advertise_is_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mAdvertiseIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",animation_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",aod_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAod:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",datasaver_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableDataSaver:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",enable_night_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableNightMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",firewall_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableFirewall:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",force_all_apps_standby="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mForceAllAppsStandby:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",force_background_check="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mForceBackgroundCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fullbackup_deferred="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferFullBackup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",gps_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/BatterySaverPolicyConfig;->mLocationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",keyvaluebackup_deferred="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferKeyValueBackup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",launch_boost_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableLaunchBoost:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",optional_sensors_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableOptionalSensors:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",quick_doze_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableQuickDoze:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",soundtrigger_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/BatterySaverPolicyConfig;->mSoundTriggerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",vibration_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableVibration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    iget v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdjustBrightnessFactor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mAdvertiseIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferFullBackup:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeferKeyValueBackup:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/os/BatterySaverPolicyConfig;->mDeviceSpecificSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_25

    :cond_44
    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAnimation:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableAod:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableLaunchBoost:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableOptionalSensors:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mDisableVibration:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableAdjustBrightness:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableDataSaver:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableFirewall:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableNightMode:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mEnableQuickDoze:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mForceAllAppsStandby:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v2, p0, Landroid/os/BatterySaverPolicyConfig;->mForceBackgroundCheck:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v2, p0, Landroid/os/BatterySaverPolicyConfig;->mLocationMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/os/BatterySaverPolicyConfig;->mSoundTriggerMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
