# classes2.dex

.class public final Landroid/location/GnssMeasurementsEvent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mClock:Landroid/location/GnssClock;

.field private mGnssAgcs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssAutomaticGainControl;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasurements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/location/GnssClock;

    invoke-direct {v0}, Landroid/location/GnssClock;-><init>()V

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mClock:Landroid/location/GnssClock;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mMeasurements:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mGnssAgcs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/location/GnssMeasurementsEvent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/location/GnssMeasurementsEvent;->getClock()Landroid/location/GnssClock;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mClock:Landroid/location/GnssClock;

    invoke-virtual {p1}, Landroid/location/GnssMeasurementsEvent;->getMeasurements()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mMeasurements:Ljava/util/List;

    invoke-virtual {p1}, Landroid/location/GnssMeasurementsEvent;->getGnssAutomaticGainControls()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mGnssAgcs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Landroid/location/GnssMeasurementsEvent;
    .registers 6

    new-instance v0, Landroid/location/GnssMeasurementsEvent;

    iget-object v1, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mClock:Landroid/location/GnssClock;

    iget-object v2, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mMeasurements:Ljava/util/List;

    iget-object v3, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mGnssAgcs:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/location/GnssMeasurementsEvent;-><init>(Landroid/location/GnssClock;Ljava/util/List;Ljava/util/List;Landroid/location/GnssMeasurementsEvent-IA;)V

    return-object v0
.end method

.method public setClock(Landroid/location/GnssClock;)Landroid/location/GnssMeasurementsEvent$Builder;
    .registers 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mClock:Landroid/location/GnssClock;

    return-object p0
.end method

.method public setGnssAutomaticGainControls(Ljava/util/Collection;)Landroid/location/GnssMeasurementsEvent$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/location/GnssAutomaticGainControl;",
            ">;)",
            "Landroid/location/GnssMeasurementsEvent$Builder;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mGnssAgcs:Ljava/util/List;

    return-object p0
.end method

.method public varargs setGnssAutomaticGainControls([Landroid/location/GnssAutomaticGainControl;)Landroid/location/GnssMeasurementsEvent$Builder;
    .registers 3

    if-nez p1, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mGnssAgcs:Ljava/util/List;

    return-object p0
.end method

.method public setMeasurements(Ljava/util/Collection;)Landroid/location/GnssMeasurementsEvent$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/location/GnssMeasurement;",
            ">;)",
            "Landroid/location/GnssMeasurementsEvent$Builder;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mMeasurements:Ljava/util/List;

    return-object p0
.end method

.method public varargs setMeasurements([Landroid/location/GnssMeasurement;)Landroid/location/GnssMeasurementsEvent$Builder;
    .registers 3

    if-nez p1, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mMeasurements:Ljava/util/List;

    return-object p0
.end method
