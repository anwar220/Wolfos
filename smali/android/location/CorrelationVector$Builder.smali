# classes2.dex

.class public final Landroid/location/CorrelationVector$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/CorrelationVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFrequencyOffsetMetersPerSecond:D

.field private mMagnitude:[I

.field private mSamplingStartMeters:D

.field private mSamplingWidthMeters:D


# direct methods
.method static bridge synthetic -$$Nest$fgetmFrequencyOffsetMetersPerSecond(Landroid/location/CorrelationVector$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/CorrelationVector$Builder;->mFrequencyOffsetMetersPerSecond:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMagnitude(Landroid/location/CorrelationVector$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/location/CorrelationVector$Builder;->mMagnitude:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSamplingStartMeters(Landroid/location/CorrelationVector$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/CorrelationVector$Builder;->mSamplingStartMeters:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSamplingWidthMeters(Landroid/location/CorrelationVector$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/CorrelationVector$Builder;->mSamplingWidthMeters:D

    return-wide v0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/location/CorrelationVector;
    .registers 3

    new-instance v0, Landroid/location/CorrelationVector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/CorrelationVector;-><init>(Landroid/location/CorrelationVector$Builder;Landroid/location/CorrelationVector-IA;)V

    return-object v0
.end method

.method public setFrequencyOffsetMetersPerSecond(D)Landroid/location/CorrelationVector$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/location/CorrelationVector$Builder;->mFrequencyOffsetMetersPerSecond:D

    return-object p0
.end method

.method public setMagnitude([I)Landroid/location/CorrelationVector$Builder;
    .registers 2

    iput-object p1, p0, Landroid/location/CorrelationVector$Builder;->mMagnitude:[I

    return-object p0
.end method

.method public setSamplingStartMeters(D)Landroid/location/CorrelationVector$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/location/CorrelationVector$Builder;->mSamplingStartMeters:D

    return-object p0
.end method

.method public setSamplingWidthMeters(D)Landroid/location/CorrelationVector$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/location/CorrelationVector$Builder;->mSamplingWidthMeters:D

    return-object p0
.end method
