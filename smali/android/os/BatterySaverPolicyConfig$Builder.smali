# classes3.dex

.class public final Landroid/os/BatterySaverPolicyConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatterySaverPolicyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAdjustBrightnessFactor:F

.field private mAdvertiseIsEnabled:Z

.field private mDeferFullBackup:Z

.field private mDeferKeyValueBackup:Z

.field private final mDeviceSpecificSettings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableAnimation:Z

.field private mDisableAod:Z

.field private mDisableLaunchBoost:Z

.field private mDisableOptionalSensors:Z

.field private mDisableVibration:Z

.field private mEnableAdjustBrightness:Z

.field private mEnableDataSaver:Z

.field private mEnableFirewall:Z

.field private mEnableNightMode:Z

.field private mEnableQuickDoze:Z

.field private mForceAllAppsStandby:Z

.field private mForceBackgroundCheck:Z

.field private mLocationMode:I

.field private mSoundTriggerMode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdjustBrightnessFactor(Landroid/os/BatterySaverPolicyConfig$Builder;)F
    .registers 1

    iget p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdjustBrightnessFactor:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAdvertiseIsEnabled(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdvertiseIsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeferFullBackup(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferFullBackup:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeferKeyValueBackup(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferKeyValueBackup:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceSpecificSettings(Landroid/os/BatterySaverPolicyConfig$Builder;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeviceSpecificSettings:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisableAnimation(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAnimation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisableAod(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAod:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisableLaunchBoost(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableLaunchBoost:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisableOptionalSensors(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableOptionalSensors:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisableVibration(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableVibration:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableAdjustBrightness(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableAdjustBrightness:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableDataSaver(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableDataSaver:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableFirewall(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableFirewall:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableNightMode(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableNightMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableQuickDoze(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableQuickDoze:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmForceAllAppsStandby(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceAllAppsStandby:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmForceBackgroundCheck(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceBackgroundCheck:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationMode(Landroid/os/BatterySaverPolicyConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mLocationMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoundTriggerMode(Landroid/os/BatterySaverPolicyConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mSoundTriggerMode:I

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdjustBrightnessFactor:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdvertiseIsEnabled:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferFullBackup:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferKeyValueBackup:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeviceSpecificSettings:Landroid/util/ArrayMap;

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAnimation:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAod:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableLaunchBoost:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableOptionalSensors:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableVibration:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableAdjustBrightness:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableDataSaver:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableFirewall:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableNightMode:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableQuickDoze:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceAllAppsStandby:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceBackgroundCheck:Z

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mLocationMode:I

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mSoundTriggerMode:I

    return-void
.end method

.method public constructor <init>(Landroid/os/BatterySaverPolicyConfig;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdjustBrightnessFactor:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdvertiseIsEnabled:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferFullBackup:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferKeyValueBackup:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeviceSpecificSettings:Landroid/util/ArrayMap;

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAnimation:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAod:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableLaunchBoost:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableOptionalSensors:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableVibration:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableAdjustBrightness:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableDataSaver:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableFirewall:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableNightMode:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableQuickDoze:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceAllAppsStandby:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceBackgroundCheck:Z

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mLocationMode:I

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mSoundTriggerMode:I

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getAdjustBrightnessFactor()F

    move-result v0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdjustBrightnessFactor:F

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getAdvertiseIsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdvertiseIsEnabled:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDeferFullBackup()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferFullBackup:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDeferKeyValueBackup()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferKeyValueBackup:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDeviceSpecificSettings()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeviceSpecificSettings:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDeviceSpecificSettings()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_55

    :cond_71
    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDisableAnimation()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAnimation:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDisableAod()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAod:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDisableLaunchBoost()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableLaunchBoost:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDisableOptionalSensors()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableOptionalSensors:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDisableVibration()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableVibration:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getEnableAdjustBrightness()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableAdjustBrightness:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getEnableDataSaver()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableDataSaver:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getEnableFirewall()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableFirewall:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getEnableNightMode()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableNightMode:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getEnableQuickDoze()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableQuickDoze:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getForceAllAppsStandby()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceAllAppsStandby:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getForceBackgroundCheck()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceBackgroundCheck:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getLocationMode()I

    move-result v0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mLocationMode:I

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getSoundTriggerMode()I

    move-result v0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mSoundTriggerMode:I

    return-void
.end method


# virtual methods
.method public addDeviceSpecificSetting(Ljava/lang/String;Ljava/lang/String;)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 5

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeviceSpecificSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Landroid/os/BatterySaverPolicyConfig;
    .registers 3

    new-instance v0, Landroid/os/BatterySaverPolicyConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/BatterySaverPolicyConfig;-><init>(Landroid/os/BatterySaverPolicyConfig$Builder;Landroid/os/BatterySaverPolicyConfig-IA;)V

    return-object v0
.end method

.method public setAdjustBrightnessFactor(F)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdjustBrightnessFactor:F

    return-object p0
.end method

.method public setAdvertiseIsEnabled(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdvertiseIsEnabled:Z

    return-object p0
.end method

.method public setDeferFullBackup(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferFullBackup:Z

    return-object p0
.end method

.method public setDeferKeyValueBackup(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferKeyValueBackup:Z

    return-object p0
.end method

.method public setDisableAnimation(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAnimation:Z

    return-object p0
.end method

.method public setDisableAod(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAod:Z

    return-object p0
.end method

.method public setDisableLaunchBoost(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableLaunchBoost:Z

    return-object p0
.end method

.method public setDisableOptionalSensors(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableOptionalSensors:Z

    return-object p0
.end method

.method public setDisableSoundTrigger(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_6

    const/4 v0, 0x2

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mSoundTriggerMode:I

    goto :goto_9

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mSoundTriggerMode:I

    :goto_9
    return-object p0
.end method

.method public setDisableVibration(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableVibration:Z

    return-object p0
.end method

.method public setEnableAdjustBrightness(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableAdjustBrightness:Z

    return-object p0
.end method

.method public setEnableDataSaver(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableDataSaver:Z

    return-object p0
.end method

.method public setEnableFirewall(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableFirewall:Z

    return-object p0
.end method

.method public setEnableNightMode(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableNightMode:Z

    return-object p0
.end method

.method public setEnableQuickDoze(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableQuickDoze:Z

    return-object p0
.end method

.method public setForceAllAppsStandby(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceAllAppsStandby:Z

    return-object p0
.end method

.method public setForceBackgroundCheck(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceBackgroundCheck:Z

    return-object p0
.end method

.method public setLocationMode(I)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mLocationMode:I

    return-object p0
.end method

.method public setSoundTriggerMode(I)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mSoundTriggerMode:I

    return-object p0
.end method
