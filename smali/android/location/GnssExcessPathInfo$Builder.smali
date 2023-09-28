# classes2.dex

.class public final Landroid/location/GnssExcessPathInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssExcessPathInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAttenuationDb:F

.field private mExcessPathLengthMeters:F

.field private mExcessPathLengthUncertaintyMeters:F

.field private mFlags:I

.field private mReflectingPlane:Landroid/location/GnssReflectingPlane;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/location/GnssExcessPathInfo;
    .registers 9

    new-instance v7, Landroid/location/GnssExcessPathInfo;

    iget v1, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    iget v2, p0, Landroid/location/GnssExcessPathInfo$Builder;->mExcessPathLengthMeters:F

    iget v3, p0, Landroid/location/GnssExcessPathInfo$Builder;->mExcessPathLengthUncertaintyMeters:F

    iget-object v4, p0, Landroid/location/GnssExcessPathInfo$Builder;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    iget v5, p0, Landroid/location/GnssExcessPathInfo$Builder;->mAttenuationDb:F

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssExcessPathInfo;-><init>(IFFLandroid/location/GnssReflectingPlane;FLandroid/location/GnssExcessPathInfo-IA;)V

    return-object v7
.end method

.method public clearAttenuationDb()Landroid/location/GnssExcessPathInfo$Builder;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mAttenuationDb:F

    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    return-object p0
.end method

.method public clearExcessPathLengthMeters()Landroid/location/GnssExcessPathInfo$Builder;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mExcessPathLengthMeters:F

    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    return-object p0
.end method

.method public clearExcessPathLengthUncertaintyMeters()Landroid/location/GnssExcessPathInfo$Builder;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mExcessPathLengthUncertaintyMeters:F

    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    return-object p0
.end method

.method public setAttenuationDb(F)Landroid/location/GnssExcessPathInfo$Builder;
    .registers 5

    const/4 v0, 0x0

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    const-string v2, "attenuationDb"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iput p1, p0, Landroid/location/GnssExcessPathInfo$Builder;->mAttenuationDb:F

    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    return-object p0
.end method

.method public setExcessPathLengthMeters(F)Landroid/location/GnssExcessPathInfo$Builder;
    .registers 5

    const/4 v0, 0x0

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    const-string v2, "excessPathLengthMeters"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iput p1, p0, Landroid/location/GnssExcessPathInfo$Builder;->mExcessPathLengthMeters:F

    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    return-object p0
.end method

.method public setExcessPathLengthUncertaintyMeters(F)Landroid/location/GnssExcessPathInfo$Builder;
    .registers 5

    const/4 v0, 0x0

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    const-string v2, "excessPathLengthUncertaintyMeters"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iput p1, p0, Landroid/location/GnssExcessPathInfo$Builder;->mExcessPathLengthUncertaintyMeters:F

    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    return-object p0
.end method

.method public setReflectingPlane(Landroid/location/GnssReflectingPlane;)Landroid/location/GnssExcessPathInfo$Builder;
    .registers 3

    iput-object p1, p0, Landroid/location/GnssExcessPathInfo$Builder;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    if-eqz p1, :cond_b

    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    goto :goto_11

    :cond_b
    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    :goto_11
    return-object p0
.end method
