# classes.dex

.class public final Landroid/hardware/display/ColorDisplayManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;,
        Landroid/hardware/display/ColorDisplayManager$ColorMode;,
        Landroid/hardware/display/ColorDisplayManager$AutoMode;,
        Landroid/hardware/display/ColorDisplayManager$CapabilityType;
    }
.end annotation


# static fields
.field public static final AUTO_MODE_CUSTOM_TIME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTO_MODE_DISABLED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTO_MODE_TWILIGHT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAPABILITY_HARDWARE_ACCELERATION_GLOBAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAPABILITY_HARDWARE_ACCELERATION_PER_APP:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAPABILITY_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAPABILITY_PROTECTED_CONTENT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final COLOR_MODE_AUTOMATIC:I = 0x3

.field public static final COLOR_MODE_BOOSTED:I = 0x1

.field public static final COLOR_MODE_NATURAL:I = 0x0

.field public static final COLOR_MODE_SATURATED:I = 0x2

.field public static final VENDOR_COLOR_MODE_RANGE_MAX:I = 0x1ff

.field public static final VENDOR_COLOR_MODE_RANGE_MIN:I = 0x100


# instance fields
.field private final mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getInstance()Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    return-void
.end method

.method public static areAccessibilityTransformsEnabled(Landroid/content/Context;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_inversion_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_16

    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_17

    :cond_16
    move v2, v3

    :cond_17
    return v2
.end method

.method public static getMaximumColorTemperature(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getMaximumReduceBrightColorsStrength(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    :cond_b
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static getMinimumColorTemperature(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getMinimumReduceBrightColorsStrength(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static isColorTransformAccelerated(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isDisplayWhiteBalanceAvailable(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isNightDisplayAvailable(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isReduceBrightColorsAvailable(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110195

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isStandardColorMode(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_d

    const/4 v1, 0x3

    if-ne p0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_d
    return v0
.end method


# virtual methods
.method public getColorMode()I
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getColorMode()I

    move-result v0

    return v0
.end method

.method public getNightDisplayAutoMode()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayAutoMode()I

    move-result v0

    return v0
.end method

.method public getNightDisplayAutoModeRaw()I
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayAutoModeRaw()I

    move-result v0

    return v0
.end method

.method public getNightDisplayColorTemperature()I
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayColorTemperature()I

    move-result v0

    return v0
.end method

.method public getNightDisplayCustomEndTime()Ljava/time/LocalTime;
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayCustomEndTime()Landroid/hardware/display/Time;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public getNightDisplayCustomStartTime()Ljava/time/LocalTime;
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayCustomStartTime()Landroid/hardware/display/Time;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public getReduceBrightColorsOffsetFactor()F
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getReduceBrightColorsOffsetFactor()F

    move-result v0

    return v0
.end method

.method public getReduceBrightColorsStrength()I
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getReduceBrightColorsStrength()I

    move-result v0

    return v0
.end method

.method public getTransformCapabilities()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getTransformCapabilities()I

    move-result v0

    return v0
.end method

.method public isDeviceColorManaged()Z
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->isDeviceColorManaged()Z

    move-result v0

    return v0
.end method

.method public isDisplayWhiteBalanceEnabled()Z
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->isDisplayWhiteBalanceEnabled()Z

    move-result v0

    return v0
.end method

.method public isNightDisplayActivated()Z
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->isNightDisplayActivated()Z

    move-result v0

    return v0
.end method

.method public isReduceBrightColorsActivated()Z
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->isReduceBrightColorsActivated()Z

    move-result v0

    return v0
.end method

.method public isSaturationActivated()Z
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->isSaturationActivated()Z

    move-result v0

    return v0
.end method

.method public setAppSaturationLevel(Ljava/lang/String;I)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setAppSaturationLevel(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setColorMode(I)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setColorMode(I)V

    return-void
.end method

.method public setDisplayWhiteBalanceEnabled(Z)Z
    .registers 3

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setDisplayWhiteBalanceEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setNightDisplayActivated(Z)Z
    .registers 3

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setNightDisplayActivated(Z)Z

    move-result v0

    return v0
.end method

.method public setNightDisplayAutoMode(I)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    goto :goto_22

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid autoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    :goto_22
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->getNightDisplayAutoMode()I

    move-result v0

    if-eq v0, p1, :cond_41

    invoke-direct {p0}, Landroid/hardware/display/ColorDisplayManager;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51d

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_41
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setNightDisplayAutoMode(I)Z

    move-result v0

    return v0
.end method

.method public setNightDisplayColorTemperature(I)Z
    .registers 3

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setNightDisplayColorTemperature(I)Z

    move-result v0

    return v0
.end method

.method public setNightDisplayCustomEndTime(Ljava/time/LocalTime;)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_26

    invoke-direct {p0}, Landroid/hardware/display/ColorDisplayManager;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    new-instance v1, Landroid/hardware/display/Time;

    invoke-direct {v1, p1}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z

    move-result v0

    return v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNightDisplayCustomStartTime(Ljava/time/LocalTime;)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_26

    invoke-direct {p0}, Landroid/hardware/display/ColorDisplayManager;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    new-instance v1, Landroid/hardware/display/Time;

    invoke-direct {v1, p1}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z

    move-result v0

    return v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReduceBrightColorsActivated(Z)Z
    .registers 3

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setReduceBrightColorsActivated(Z)Z

    move-result v0

    return v0
.end method

.method public setReduceBrightColorsStrength(I)Z
    .registers 3

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setReduceBrightColorsStrength(I)Z

    move-result v0

    return v0
.end method

.method public setSaturationLevel(I)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager;->mManager:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->setSaturationLevel(I)Z

    move-result v0

    return v0
.end method
