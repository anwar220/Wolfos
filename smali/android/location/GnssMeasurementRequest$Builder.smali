# classes2.dex

.class public final Landroid/location/GnssMeasurementRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCorrelationVectorOutputsEnabled:Z

.field private mFullTracking:Z

.field private mIntervalMillis:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/location/GnssMeasurementRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isCorrelationVectorOutputsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mCorrelationVectorOutputsEnabled:Z

    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isFullTracking()Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mFullTracking:Z

    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result v0

    iput v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mIntervalMillis:I

    return-void
.end method


# virtual methods
.method public build()Landroid/location/GnssMeasurementRequest;
    .registers 6

    new-instance v0, Landroid/location/GnssMeasurementRequest;

    iget-boolean v1, p0, Landroid/location/GnssMeasurementRequest$Builder;->mFullTracking:Z

    iget-boolean v2, p0, Landroid/location/GnssMeasurementRequest$Builder;->mCorrelationVectorOutputsEnabled:Z

    iget v3, p0, Landroid/location/GnssMeasurementRequest$Builder;->mIntervalMillis:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/location/GnssMeasurementRequest;-><init>(ZZILandroid/location/GnssMeasurementRequest-IA;)V

    return-object v0
.end method

.method public setCorrelationVectorOutputsEnabled(Z)Landroid/location/GnssMeasurementRequest$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/location/GnssMeasurementRequest$Builder;->mCorrelationVectorOutputsEnabled:Z

    return-object p0
.end method

.method public setFullTracking(Z)Landroid/location/GnssMeasurementRequest$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/location/GnssMeasurementRequest$Builder;->mFullTracking:Z

    return-object p0
.end method

.method public setIntervalMillis(I)Landroid/location/GnssMeasurementRequest$Builder;
    .registers 5

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const-string v2, "intervalMillis"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mIntervalMillis:I

    return-object p0
.end method
