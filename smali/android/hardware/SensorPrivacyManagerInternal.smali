# classes.dex

.class public abstract Landroid/hardware/SensorPrivacyManagerInternal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;,
        Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addSensorPrivacyListener(IILandroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;)V
.end method

.method public abstract addSensorPrivacyListenerForAllUsers(ILandroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;)V
.end method

.method public abstract isSensorPrivacyEnabled(II)Z
.end method

.method public abstract setPhysicalToggleSensorPrivacy(IIZ)V
.end method
