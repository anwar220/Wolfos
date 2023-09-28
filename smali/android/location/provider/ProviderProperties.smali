# classes2.dex

.class public final Landroid/location/provider/ProviderProperties;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/ProviderProperties$Builder;,
        Landroid/location/provider/ProviderProperties$Accuracy;,
        Landroid/location/provider/ProviderProperties$PowerUsage;
    }
.end annotation


# static fields
.field public static final ACCURACY_COARSE:I = 0x2

.field public static final ACCURACY_FINE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/provider/ProviderProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static final POWER_USAGE_HIGH:I = 0x3

.field public static final POWER_USAGE_LOW:I = 0x1

.field public static final POWER_USAGE_MEDIUM:I = 0x2


# instance fields
.field private final mAccuracy:I

.field private final mHasAltitudeSupport:Z

.field private final mHasBearingSupport:Z

.field private final mHasCellRequirement:Z

.field private final mHasMonetaryCost:Z

.field private final mHasNetworkRequirement:Z

.field private final mHasSatelliteRequirement:Z

.field private final mHasSpeedSupport:Z

.field private final mPowerUsage:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAccuracy(Landroid/location/provider/ProviderProperties;)I
    .registers 1

    iget p0, p0, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasAltitudeSupport(Landroid/location/provider/ProviderProperties;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasBearingSupport(Landroid/location/provider/ProviderProperties;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasCellRequirement(Landroid/location/provider/ProviderProperties;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasMonetaryCost(Landroid/location/provider/ProviderProperties;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasNetworkRequirement(Landroid/location/provider/ProviderProperties;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasSatelliteRequirement(Landroid/location/provider/ProviderProperties;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasSpeedSupport(Landroid/location/provider/ProviderProperties;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerUsage(Landroid/location/provider/ProviderProperties;)I
    .registers 1

    iget p0, p0, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/provider/ProviderProperties$1;

    invoke-direct {v0}, Landroid/location/provider/ProviderProperties$1;-><init>()V

    sput-object v0, Landroid/location/provider/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ZZZZZZZII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    iput-boolean p2, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    iput-boolean p3, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    iput-boolean p4, p0, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    iput-boolean p5, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    iput-boolean p6, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    iput-boolean p7, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    iput p8, p0, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    iput p9, p0, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    return-void
.end method

.method synthetic constructor <init>(ZZZZZZZIILandroid/location/provider/ProviderProperties-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/location/provider/ProviderProperties;-><init>(ZZZZZZZII)V

    return-void
.end method

.method private static accuracyToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_9  #0x2
    const-string v0, "Coarse"

    return-object v0

    :pswitch_c  #0x1
    const-string v0, "Fine"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c  #00000001
        :pswitch_9  #00000002
    .end packed-switch
.end method

.method private static powerToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_9  #0x3
    const-string v0, "High"

    return-object v0

    :pswitch_c  #0x2
    const-string v0, "Medium"

    return-object v0

    :pswitch_f  #0x1
    const-string v0, "Low"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f  #00000001
        :pswitch_c  #00000002
        :pswitch_9  #00000003
    .end packed-switch
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
    instance-of v1, p1, Landroid/location/provider/ProviderProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/provider/ProviderProperties;

    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    iget-boolean v4, v1, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    iget-boolean v4, v1, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    iget-boolean v4, v1, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    iget-boolean v4, v1, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    iget-boolean v4, v1, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    iget-boolean v4, v1, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    iget-boolean v4, v1, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    iget v4, v1, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    iget v4, v1, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    if-ne v3, v4, :cond_44

    goto :goto_45

    :cond_44
    move v0, v2

    :goto_45
    return v0
.end method

.method public getAccuracy()I
    .registers 2

    iget v0, p0, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    return v0
.end method

.method public getPowerUsage()I
    .registers 2

    iget v0, p0, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    return v0
.end method

.method public hasAltitudeSupport()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    return v0
.end method

.method public hasBearingSupport()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    return v0
.end method

.method public hasCellRequirement()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    return v0
.end method

.method public hasMonetaryCost()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    return v0
.end method

.method public hasNetworkRequirement()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    return v0
.end method

.method public hasSatelliteRequirement()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    return v0
.end method

.method public hasSpeedSupport()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProviderProperties["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "powerUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    invoke-static {v2}, Landroid/location/provider/ProviderProperties;->powerToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    invoke-static {v2}, Landroid/location/provider/ProviderProperties;->accuracyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    if-nez v1, :cond_37

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    if-nez v1, :cond_37

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    if-eqz v1, :cond_60

    :cond_37
    const-string v1, ", requires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    if-eqz v1, :cond_45

    const-string v1, "network,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    if-eqz v1, :cond_4e

    const-string v1, "satellite,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    if-eqz v1, :cond_57

    const-string v1, "cell,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_60
    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    if-eqz v1, :cond_69

    const-string v1, ", hasMonetaryCost"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_69
    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    const-string v2, "]"

    if-nez v1, :cond_77

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    if-nez v1, :cond_77

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    if-eqz v1, :cond_a3

    :cond_77
    const-string v1, ", supports=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    if-eqz v1, :cond_85

    const-string v1, "bearing,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_85
    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    if-eqz v1, :cond_8e

    const-string v1, "speed,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8e
    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    if-eqz v1, :cond_97

    const-string v1, "altitude,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
