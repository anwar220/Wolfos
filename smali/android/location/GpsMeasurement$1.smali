# classes2.dex

.class Landroid/location/GpsMeasurement$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GpsMeasurement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsMeasurement;
    .registers 5

    new-instance v0, Landroid/location/GpsMeasurement;

    invoke-direct {v0}, Landroid/location/GpsMeasurement;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->-$$Nest$fputmFlags(Landroid/location/GpsMeasurement;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->-$$Nest$fputmPrn(Landroid/location/GpsMeasurement;B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmTimeOffsetInNs(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->-$$Nest$fputmState(Landroid/location/GpsMeasurement;S)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmReceivedGpsTowInNs(Landroid/location/GpsMeasurement;J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmReceivedGpsTowUncertaintyInNs(Landroid/location/GpsMeasurement;J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmCn0InDbHz(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmPseudorangeRateInMetersPerSec(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmPseudorangeRateUncertaintyInMetersPerSec(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->-$$Nest$fputmAccumulatedDeltaRangeState(Landroid/location/GpsMeasurement;S)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmAccumulatedDeltaRangeInMeters(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmAccumulatedDeltaRangeUncertaintyInMeters(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmPseudorangeInMeters(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmPseudorangeUncertaintyInMeters(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmCodePhaseInChips(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmCodePhaseUncertaintyInChips(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->-$$Nest$fputmCarrierFrequencyInHz(Landroid/location/GpsMeasurement;F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmCarrierCycles(Landroid/location/GpsMeasurement;J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmCarrierPhase(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmCarrierPhaseUncertainty(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->-$$Nest$fputmLossOfLock(Landroid/location/GpsMeasurement;B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->-$$Nest$fputmBitNumber(Landroid/location/GpsMeasurement;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->-$$Nest$fputmTimeFromLastBitInMs(Landroid/location/GpsMeasurement;S)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmDopplerShiftInHz(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmDopplerShiftUncertaintyInHz(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->-$$Nest$fputmMultipathIndicator(Landroid/location/GpsMeasurement;B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmSnrInDb(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmElevationInDeg(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmElevationUncertaintyInDeg(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmAzimuthInDeg(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsMeasurement;->-$$Nest$fputmAzimuthUncertaintyInDeg(Landroid/location/GpsMeasurement;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e9

    const/4 v1, 0x1

    goto :goto_ea

    :cond_e9
    const/4 v1, 0x0

    :goto_ea
    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->-$$Nest$fputmUsedInFix(Landroid/location/GpsMeasurement;Z)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GpsMeasurement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsMeasurement;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GpsMeasurement;
    .registers 3

    new-array v0, p1, [Landroid/location/GpsMeasurement;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GpsMeasurement$1;->newArray(I)[Landroid/location/GpsMeasurement;

    move-result-object p1

    return-object p1
.end method
