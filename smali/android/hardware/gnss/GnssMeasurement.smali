# classes2.dex

.class public Landroid/hardware/gnss/GnssMeasurement;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ADR_STATE_CYCLE_SLIP:I = 0x4

.field public static final ADR_STATE_HALF_CYCLE_RESOLVED:I = 0x8

.field public static final ADR_STATE_RESET:I = 0x2

.field public static final ADR_STATE_UNKNOWN:I = 0x0

.field public static final ADR_STATE_VALID:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field public static final HAS_AUTOMATIC_GAIN_CONTROL:I = 0x2000

.field public static final HAS_CARRIER_CYCLES:I = 0x400

.field public static final HAS_CARRIER_FREQUENCY:I = 0x200

.field public static final HAS_CARRIER_PHASE:I = 0x800

.field public static final HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field public static final HAS_CORRELATION_VECTOR:I = 0x200000

.field public static final HAS_FULL_ISB:I = 0x10000

.field public static final HAS_FULL_ISB_UNCERTAINTY:I = 0x20000

.field public static final HAS_SATELLITE_ISB:I = 0x40000

.field public static final HAS_SATELLITE_ISB_UNCERTAINTY:I = 0x80000

.field public static final HAS_SATELLITE_PVT:I = 0x100000

.field public static final HAS_SNR:I = 0x1

.field public static final STATE_2ND_CODE_LOCK:I = 0x10000

.field public static final STATE_BDS_D2_BIT_SYNC:I = 0x100

.field public static final STATE_BDS_D2_SUBFRAME_SYNC:I = 0x200

.field public static final STATE_BIT_SYNC:I = 0x2

.field public static final STATE_CODE_LOCK:I = 0x1

.field public static final STATE_GAL_E1BC_CODE_LOCK:I = 0x400

.field public static final STATE_GAL_E1B_PAGE_SYNC:I = 0x1000

.field public static final STATE_GAL_E1C_2ND_CODE_LOCK:I = 0x800

.field public static final STATE_GLO_STRING_SYNC:I = 0x40

.field public static final STATE_GLO_TOD_DECODED:I = 0x80

.field public static final STATE_GLO_TOD_KNOWN:I = 0x8000

.field public static final STATE_MSEC_AMBIGUOUS:I = 0x10

.field public static final STATE_SBAS_SYNC:I = 0x2000

.field public static final STATE_SUBFRAME_SYNC:I = 0x4

.field public static final STATE_SYMBOL_SYNC:I = 0x20

.field public static final STATE_TOW_DECODED:I = 0x8

.field public static final STATE_TOW_KNOWN:I = 0x4000

.field public static final STATE_UNKNOWN:I


# instance fields
.field public accumulatedDeltaRangeM:D

.field public accumulatedDeltaRangeState:I

.field public accumulatedDeltaRangeUncertaintyM:D

.field public agcLevelDb:D

.field public antennaCN0DbHz:D

.field public basebandCN0DbHz:D

.field public carrierCycles:J

.field public carrierPhase:D

.field public carrierPhaseUncertainty:D

.field public correlationVectors:[Landroid/hardware/gnss/CorrelationVector;

.field public flags:I

.field public fullInterSignalBiasNs:D

.field public fullInterSignalBiasUncertaintyNs:D

.field public multipathIndicator:I

.field public pseudorangeRateMps:D

.field public pseudorangeRateUncertaintyMps:D

.field public receivedSvTimeInNs:J

.field public receivedSvTimeUncertaintyInNs:J

.field public satelliteInterSignalBiasNs:D

.field public satelliteInterSignalBiasUncertaintyNs:D

.field public satellitePvt:Landroid/hardware/gnss/SatellitePvt;

.field public signalType:Landroid/hardware/gnss/GnssSignalType;

.field public snrDb:D

.field public state:I

.field public svid:I

.field public timeOffsetNs:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/gnss/GnssMeasurement$1;

    invoke-direct {v0}, Landroid/hardware/gnss/GnssMeasurement$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->flags:I

    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->svid:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->timeOffsetNs:D

    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->state:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeInNs:J

    iput-wide v3, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->antennaCN0DbHz:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->basebandCN0DbHz:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateMps:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeState:I

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeM:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    iput-wide v3, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierCycles:J

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhase:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhaseUncertainty:D

    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->multipathIndicator:I

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->snrDb:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->agcLevelDb:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasNs:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasNs:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_19
    return v1

    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    :cond_26
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->signalType:Landroid/hardware/gnss/GnssSignalType;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satellitePvt:Landroid/hardware/gnss/SatellitePvt;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->correlationVectors:[Landroid/hardware/gnss/CorrelationVector;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getStability()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_306

    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->svid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5e
    :try_start_5e
    sget-object v2, Landroid/hardware/gnss/GnssSignalType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/GnssSignalType;

    iput-object v2, p0, Landroid/hardware/gnss/GnssMeasurement;->signalType:Landroid/hardware/gnss/GnssSignalType;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->timeOffsetNs:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_94

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_94
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9a
    :try_start_9a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b6

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b0

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_b0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b6
    :try_start_b6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeInNs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c0
    .catchall {:try_start_b6 .. :try_end_c0} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d2

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cc

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_cc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d2
    :try_start_d2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dc
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ee

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e8

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_e8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ee
    :try_start_ee
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->antennaCN0DbHz:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_104

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_104
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10a
    :try_start_10a
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->basebandCN0DbHz:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_114
    .catchall {:try_start_10a .. :try_end_114} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_126

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_120

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_120
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_126
    :try_start_126
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateMps:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_130
    .catchall {:try_start_126 .. :try_end_130} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_142

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13c

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_13c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_142
    :try_start_142
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14c
    .catchall {:try_start_142 .. :try_end_14c} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_158

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_158
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15e
    :try_start_15e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_168
    .catchall {:try_start_15e .. :try_end_168} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_174

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_174
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_17a
    :try_start_17a
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeM:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_184
    .catchall {:try_start_17a .. :try_end_184} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_196

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_190

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_190
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_196
    :try_start_196
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1a0
    .catchall {:try_start_196 .. :try_end_1a0} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1b2

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1ac

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_1ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b2
    :try_start_1b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierCycles:J

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1bc
    .catchall {:try_start_1b2 .. :try_end_1bc} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ce

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c8

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_1c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1ce
    :try_start_1ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhase:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1d8
    .catchall {:try_start_1ce .. :try_end_1d8} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ea

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1e4

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_1e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1ea
    :try_start_1ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhaseUncertainty:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1f4
    .catchall {:try_start_1ea .. :try_end_1f4} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_206

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_200

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_200
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_206
    :try_start_206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->multipathIndicator:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_210
    .catchall {:try_start_206 .. :try_end_210} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_222

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_21c

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_21c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_222
    :try_start_222
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->snrDb:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_22c
    .catchall {:try_start_222 .. :try_end_22c} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_23e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_238

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_238
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_23e
    :try_start_23e
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->agcLevelDb:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_248
    .catchall {:try_start_23e .. :try_end_248} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_254

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_254
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_25a
    :try_start_25a
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasNs:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_264
    .catchall {:try_start_25a .. :try_end_264} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_276

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_270

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_270
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_276
    :try_start_276
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_280
    .catchall {:try_start_276 .. :try_end_280} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_292

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_28c

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_28c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_292
    :try_start_292
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasNs:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_29c
    .catchall {:try_start_292 .. :try_end_29c} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2ae

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2a8

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_2a8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2ae
    :try_start_2ae
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2b8
    .catchall {:try_start_2ae .. :try_end_2b8} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2ca

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2c4

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_2c4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2ca
    :try_start_2ca
    sget-object v2, Landroid/hardware/gnss/SatellitePvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/SatellitePvt;

    iput-object v2, p0, Landroid/hardware/gnss/GnssMeasurement;->satellitePvt:Landroid/hardware/gnss/SatellitePvt;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2d8
    .catchall {:try_start_2ca .. :try_end_2d8} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2ea

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2e4

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_2e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2ea
    :try_start_2ea
    sget-object v2, Landroid/hardware/gnss/CorrelationVector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/CorrelationVector;

    iput-object v2, p0, Landroid/hardware/gnss/GnssMeasurement;->correlationVectors:[Landroid/hardware/gnss/CorrelationVector;
    :try_end_2f4
    .catchall {:try_start_2ea .. :try_end_2f4} :catchall_304

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2fe

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    nop

    return-void

    :cond_2fe
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_304
    move-exception v2

    goto :goto_30e

    :cond_306
    :try_start_306
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_30e
    .catchall {:try_start_306 .. :try_end_30e} :catchall_304

    :goto_30e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_317

    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_317
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->svid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->signalType:Landroid/hardware/gnss/GnssSignalType;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->timeOffsetNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->state:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeInNs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->antennaCN0DbHz:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->basebandCN0DbHz:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateMps:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeM:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierCycles:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhase:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhaseUncertainty:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->multipathIndicator:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->snrDb:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->agcLevelDb:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satellitePvt:Landroid/hardware/gnss/SatellitePvt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->correlationVectors:[Landroid/hardware/gnss/CorrelationVector;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
