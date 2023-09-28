# classes2.dex

.class public Landroid/location/LocationProvider;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AVAILABLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OUT_OF_SERVICE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mProperties:Landroid/location/provider/ProviderProperties;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/location/provider/ProviderProperties;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    return-void
.end method

.method public static propertiesMeetCriteria(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Landroid/location/Criteria;)Z
    .registers 6

    const-string v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    if-nez p1, :cond_d

    return v1

    :cond_d
    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    invoke-virtual {p1}, Landroid/location/provider/ProviderProperties;->getAccuracy()I

    move-result v2

    if-ge v0, v2, :cond_1e

    return v1

    :cond_1e
    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    invoke-virtual {p1}, Landroid/location/provider/ProviderProperties;->getPowerUsage()I

    move-result v2

    if-ge v0, v2, :cond_2f

    return v1

    :cond_2f
    invoke-virtual {p2}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Landroid/location/provider/ProviderProperties;->hasAltitudeSupport()Z

    move-result v0

    if-nez v0, :cond_3c

    return v1

    :cond_3c
    invoke-virtual {p2}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p1}, Landroid/location/provider/ProviderProperties;->hasSpeedSupport()Z

    move-result v0

    if-nez v0, :cond_49

    return v1

    :cond_49
    invoke-virtual {p2}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p1}, Landroid/location/provider/ProviderProperties;->hasBearingSupport()Z

    move-result v0

    if-nez v0, :cond_56

    return v1

    :cond_56
    invoke-virtual {p2}, Landroid/location/Criteria;->isCostAllowed()Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p1}, Landroid/location/provider/ProviderProperties;->hasMonetaryCost()Z

    move-result v0

    if-eqz v0, :cond_63

    return v1

    :cond_63
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getAccuracy()I
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    const/4 v0, 0x2

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->getAccuracy()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerRequirement()I
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    const/4 v0, 0x3

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->getPowerUsage()I

    move-result v0

    return v0
.end method

.method public hasMonetaryCost()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->hasMonetaryCost()Z

    move-result v0

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .registers 4

    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-static {v0, v1, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v0

    return v0
.end method

.method public requiresCell()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->hasCellRequirement()Z

    move-result v0

    return v0
.end method

.method public requiresNetwork()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->hasNetworkRequirement()Z

    move-result v0

    return v0
.end method

.method public requiresSatellite()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->hasSatelliteRequirement()Z

    move-result v0

    return v0
.end method

.method public supportsAltitude()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->hasAltitudeSupport()Z

    move-result v0

    return v0
.end method

.method public supportsBearing()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->hasBearingSupport()Z

    move-result v0

    return v0
.end method

.method public supportsSpeed()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->hasSpeedSupport()Z

    move-result v0

    return v0
.end method
