# classes2.dex

.class Landroid/location/Geocoder$SynchronousGeocoder;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/Geocoder$GeocodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Geocoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronousGeocoder"
.end annotation


# instance fields
.field private mError:Ljava/lang/String;

.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mError:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mResults:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getResults()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v1, 0xea60

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "Service not Available"

    iput-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mError:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_12

    :cond_11
    goto :goto_1a

    :catch_12
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_1a
    iget-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mError:Ljava/lang/String;

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mResults:Ljava/util/List;

    return-object v0

    :cond_21
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mError:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onError(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mError:Ljava/lang/String;

    iget-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onGeocode(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mResults:Ljava/util/List;

    iget-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
