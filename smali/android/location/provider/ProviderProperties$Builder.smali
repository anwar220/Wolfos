# classes2.dex

.class public final Landroid/location/provider/ProviderProperties$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ProviderProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAccuracy:I

.field private mHasAltitudeSupport:Z

.field private mHasBearingSupport:Z

.field private mHasCellRequirement:Z

.field private mHasMonetaryCost:Z

.field private mHasNetworkRequirement:Z

.field private mHasSatelliteRequirement:Z

.field private mHasSpeedSupport:Z

.field private mPowerUsage:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasNetworkRequirement:Z

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSatelliteRequirement:Z

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasCellRequirement:Z

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasMonetaryCost:Z

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasAltitudeSupport:Z

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSpeedSupport:Z

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasBearingSupport:Z

    const/4 v0, 0x3

    iput v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mPowerUsage:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mAccuracy:I

    return-void
.end method

.method public constructor <init>(Landroid/location/provider/ProviderProperties;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmHasNetworkRequirement(Landroid/location/provider/ProviderProperties;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasNetworkRequirement:Z

    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmHasSatelliteRequirement(Landroid/location/provider/ProviderProperties;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSatelliteRequirement:Z

    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmHasCellRequirement(Landroid/location/provider/ProviderProperties;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasCellRequirement:Z

    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmHasMonetaryCost(Landroid/location/provider/ProviderProperties;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasMonetaryCost:Z

    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmHasAltitudeSupport(Landroid/location/provider/ProviderProperties;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasAltitudeSupport:Z

    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmHasSpeedSupport(Landroid/location/provider/ProviderProperties;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSpeedSupport:Z

    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmHasBearingSupport(Landroid/location/provider/ProviderProperties;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasBearingSupport:Z

    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmPowerUsage(Landroid/location/provider/ProviderProperties;)I

    move-result v0

    iput v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mPowerUsage:I

    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmAccuracy(Landroid/location/provider/ProviderProperties;)I

    move-result v0

    iput v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mAccuracy:I

    return-void
.end method


# virtual methods
.method public build()Landroid/location/provider/ProviderProperties;
    .registers 13

    new-instance v11, Landroid/location/provider/ProviderProperties;

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasNetworkRequirement:Z

    iget-boolean v2, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSatelliteRequirement:Z

    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasCellRequirement:Z

    iget-boolean v4, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasMonetaryCost:Z

    iget-boolean v5, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasAltitudeSupport:Z

    iget-boolean v6, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSpeedSupport:Z

    iget-boolean v7, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasBearingSupport:Z

    iget v8, p0, Landroid/location/provider/ProviderProperties$Builder;->mPowerUsage:I

    iget v9, p0, Landroid/location/provider/ProviderProperties$Builder;->mAccuracy:I

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/location/provider/ProviderProperties;-><init>(ZZZZZZZIILandroid/location/provider/ProviderProperties-IA;)V

    return-object v11
.end method

.method public setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "accuracy"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mAccuracy:I

    return-object p0
.end method

.method public setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasAltitudeSupport:Z

    return-object p0
.end method

.method public setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasBearingSupport:Z

    return-object p0
.end method

.method public setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasCellRequirement:Z

    return-object p0
.end method

.method public setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasMonetaryCost:Z

    return-object p0
.end method

.method public setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasNetworkRequirement:Z

    return-object p0
.end method

.method public setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSatelliteRequirement:Z

    return-object p0
.end method

.method public setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSpeedSupport:Z

    return-object p0
.end method

.method public setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x3

    const-string v2, "powerUsage"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mPowerUsage:I

    return-object p0
.end method
