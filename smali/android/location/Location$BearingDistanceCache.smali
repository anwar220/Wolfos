# classes2.dex

.class Landroid/location/Location$BearingDistanceCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BearingDistanceCache"
.end annotation


# instance fields
.field mDistance:F

.field mFinalBearing:F

.field mInitialBearing:F

.field mLat1:D

.field mLat2:D

.field mLon1:D

.field mLon2:D


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    iput-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    iput-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    iput-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    iput v0, p0, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    iput v0, p0, Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/Location$BearingDistanceCache-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/location/Location$BearingDistanceCache;-><init>()V

    return-void
.end method
