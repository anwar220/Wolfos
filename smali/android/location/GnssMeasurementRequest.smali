# classes2.dex

.class public final Landroid/location/GnssMeasurementRequest;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurementRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssMeasurementRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCorrelationVectorOutputsEnabled:Z

.field private final mFullTracking:Z

.field private final mIntervalMillis:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssMeasurementRequest$1;

    invoke-direct {v0}, Landroid/location/GnssMeasurementRequest$1;-><init>()V

    sput-object v0, Landroid/location/GnssMeasurementRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ZZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/location/GnssMeasurementRequest;->mFullTracking:Z

    iput-boolean p2, p0, Landroid/location/GnssMeasurementRequest;->mCorrelationVectorOutputsEnabled:Z

    iput p3, p0, Landroid/location/GnssMeasurementRequest;->mIntervalMillis:I

    return-void
.end method

.method synthetic constructor <init>(ZZILandroid/location/GnssMeasurementRequest-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/location/GnssMeasurementRequest;-><init>(ZZI)V

    return-void
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
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Landroid/location/GnssMeasurementRequest;

    if-nez v2, :cond_d

    return v1

    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/location/GnssMeasurementRequest;

    iget-boolean v3, p0, Landroid/location/GnssMeasurementRequest;->mFullTracking:Z

    iget-boolean v4, v2, Landroid/location/GnssMeasurementRequest;->mFullTracking:Z

    if-eq v3, v4, :cond_17

    return v1

    :cond_17
    iget-boolean v3, p0, Landroid/location/GnssMeasurementRequest;->mCorrelationVectorOutputsEnabled:Z

    iget-boolean v4, v2, Landroid/location/GnssMeasurementRequest;->mCorrelationVectorOutputsEnabled:Z

    if-eq v3, v4, :cond_1e

    return v1

    :cond_1e
    iget v3, p0, Landroid/location/GnssMeasurementRequest;->mIntervalMillis:I

    iget v4, v2, Landroid/location/GnssMeasurementRequest;->mIntervalMillis:I

    if-eq v3, v4, :cond_25

    return v1

    :cond_25
    return v0
.end method

.method public getIntervalMillis()I
    .registers 2

    iget v0, p0, Landroid/location/GnssMeasurementRequest;->mIntervalMillis:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/location/GnssMeasurementRequest;->mFullTracking:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/location/GnssMeasurementRequest;->mCorrelationVectorOutputsEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssMeasurementRequest;->mIntervalMillis:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCorrelationVectorOutputsEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/location/GnssMeasurementRequest;->mCorrelationVectorOutputsEnabled:Z

    return v0
.end method

.method public isFullTracking()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/GnssMeasurementRequest;->mFullTracking:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GnssMeasurementRequest["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/GnssMeasurementRequest;->mIntervalMillis:I

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    iget-boolean v1, p0, Landroid/location/GnssMeasurementRequest;->mFullTracking:Z

    if-eqz v1, :cond_1e

    const-string v1, ", FullTracking"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    iget-boolean v1, p0, Landroid/location/GnssMeasurementRequest;->mCorrelationVectorOutputsEnabled:Z

    if-eqz v1, :cond_27

    const-string v1, ", CorrelationVectorOutputs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/location/GnssMeasurementRequest;->mFullTracking:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/location/GnssMeasurementRequest;->mCorrelationVectorOutputsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/location/GnssMeasurementRequest;->mIntervalMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
