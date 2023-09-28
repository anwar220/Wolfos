# classes2.dex

.class public final Landroid/location/GnssAutomaticGainControl$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAutomaticGainControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCarrierFrequencyHz:J

.field private mConstellationType:I

.field private mLevelDb:D


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/location/GnssAutomaticGainControl;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/location/GnssAutomaticGainControl;->getLevelDb()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mLevelDb:D

    invoke-virtual {p1}, Landroid/location/GnssAutomaticGainControl;->getConstellationType()I

    move-result v0

    iput v0, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mConstellationType:I

    invoke-virtual {p1}, Landroid/location/GnssAutomaticGainControl;->getCarrierFrequencyHz()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mCarrierFrequencyHz:J

    return-void
.end method


# virtual methods
.method public build()Landroid/location/GnssAutomaticGainControl;
    .registers 9

    new-instance v7, Landroid/location/GnssAutomaticGainControl;

    iget-wide v1, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mLevelDb:D

    iget v3, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mConstellationType:I

    iget-wide v4, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mCarrierFrequencyHz:J

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssAutomaticGainControl;-><init>(DIJLandroid/location/GnssAutomaticGainControl-IA;)V

    return-object v7
.end method

.method public setCarrierFrequencyHz(J)Landroid/location/GnssAutomaticGainControl$Builder;
    .registers 3

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    iput-wide p1, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mCarrierFrequencyHz:J

    return-object p0
.end method

.method public setConstellationType(I)Landroid/location/GnssAutomaticGainControl$Builder;
    .registers 2

    iput p1, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mConstellationType:I

    return-object p0
.end method

.method public setLevelDb(D)Landroid/location/GnssAutomaticGainControl$Builder;
    .registers 5

    const-wide v0, -0x3f3c780000000000L  # -10000.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_14

    const-wide v0, 0x40c3880000000000L  # 10000.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput-wide p1, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mLevelDb:D

    return-object p0
.end method
