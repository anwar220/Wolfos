# classes.dex

.class public final Landroid/app/admin/FullyManagedDeviceProvisioningParams;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    }
.end annotation


# static fields
.field private static final CAN_DEVICE_OWNER_GRANT_SENSOR_PERMISSIONS_PARAM:Ljava/lang/String; = "CAN_DEVICE_OWNER_GRANT_SENSOR_PERMISSIONS"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/FullyManagedDeviceProvisioningParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEMO_DEVICE:Ljava/lang/String; = "DEMO_DEVICE"

.field private static final LEAVE_ALL_SYSTEM_APPS_ENABLED_PARAM:Ljava/lang/String; = "LEAVE_ALL_SYSTEM_APPS_ENABLED"

.field private static final LOCALE_PROVIDED_PARAM:Ljava/lang/String; = "LOCALE_PROVIDED"

.field private static final TIME_ZONE_PROVIDED_PARAM:Ljava/lang/String; = "TIME_ZONE_PROVIDED"


# instance fields
.field private final mAdminExtras:Landroid/os/PersistableBundle;

.field private final mDemoDevice:Z

.field private final mDeviceAdminComponentName:Landroid/content/ComponentName;

.field private final mDeviceOwnerCanGrantSensorsPermissions:Z

.field private final mLeaveAllSystemAppsEnabled:Z

.field private final mLocalTime:J

.field private final mLocale:Ljava/util/Locale;

.field private final mOwnerName:Ljava/lang/String;

.field private final mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$1;

    invoke-direct {v0}, Landroid/app/admin/FullyManagedDeviceProvisioningParams$1;-><init>()V

    sput-object v0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/lang/String;ZLandroid/os/PersistableBundle;Z)V
    .registers 22

    nop

    invoke-static/range {p7 .. p7}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/util/Locale;ZLandroid/os/PersistableBundle;Z)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/lang/String;ZLandroid/os/PersistableBundle;ZLandroid/app/admin/FullyManagedDeviceProvisioningParams-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/lang/String;ZLandroid/os/PersistableBundle;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/util/Locale;ZLandroid/os/PersistableBundle;Z)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mOwnerName:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    iput-object p4, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mTimeZone:Ljava/lang/String;

    iput-wide p5, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocalTime:J

    iput-object p7, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocale:Ljava/util/Locale;

    iput-boolean p8, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceOwnerCanGrantSensorsPermissions:Z

    iput-object p9, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    iput-boolean p10, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDemoDevice:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/util/Locale;ZLandroid/os/PersistableBundle;ZLandroid/app/admin/FullyManagedDeviceProvisioningParams-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/util/Locale;ZLandroid/os/PersistableBundle;Z)V

    return-void
.end method

.method private static getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method private logParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    nop

    const/16 v0, 0xc5

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v2, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method


# virtual methods
.method public canDeviceOwnerGrantSensorsPermissions()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceOwnerCanGrantSensorsPermissions:Z

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAdminExtras()Landroid/os/PersistableBundle;
    .registers 3

    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public getDeviceAdminComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLocalTime()J
    .registers 3

    iget-wide v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocalTime:J

    return-wide v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mOwnerName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public isDemoDevice()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDemoDevice:Z

    return v0
.end method

.method public isLeaveAllSystemAppsEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    return v0
.end method

.method public logParams(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    const-string v1, "LEAVE_ALL_SYSTEM_APPS_ENABLED"

    invoke-direct {p0, p1, v1, v0}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceOwnerCanGrantSensorsPermissions:Z

    const-string v1, "CAN_DEVICE_OWNER_GRANT_SENSOR_PERMISSIONS"

    invoke-direct {p0, p1, v1, v0}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mTimeZone:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    const-string v3, "TIME_ZONE_PROVIDED"

    invoke-direct {p0, p1, v3, v0}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    const-string v0, "LOCALE_PROVIDED"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDemoDevice:Z

    const-string v1, "DEMO_DEVICE"

    invoke-direct {p0, p1, v1, v0}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FullyManagedDeviceProvisioningParams{mDeviceAdminComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOwnerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLeaveAllSystemAppsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mTimeZone:Ljava/lang/String;

    const-string/jumbo v2, "null"

    if-nez v1, :cond_37

    move-object v1, v2

    :cond_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocalTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocale:Ljava/util/Locale;

    if-nez v1, :cond_52

    goto :goto_53

    :cond_52
    move-object v2, v1

    :goto_53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceOwnerCanGrantSensorsPermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceOwnerCanGrantSensorsPermissions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdminExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDemoDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDemoDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mOwnerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mTimeZone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mLocale:Ljava/util/Locale;

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_23

    :cond_1f
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    :goto_23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDeviceOwnerCanGrantSensorsPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    iget-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->mDemoDevice:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
