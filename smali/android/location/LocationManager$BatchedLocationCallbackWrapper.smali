# classes2.dex

.class Landroid/location/LocationManager$BatchedLocationCallbackWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatchedLocationCallbackWrapper"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mCallback:Landroid/location/BatchedLocationCallback;


# direct methods
.method constructor <init>(Landroid/location/BatchedLocationCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/LocationManager$BatchedLocationCallbackWrapper;->mCallback:Landroid/location/BatchedLocationCallback;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    iget-object v0, p0, Landroid/location/LocationManager$BatchedLocationCallbackWrapper;->mCallback:Landroid/location/BatchedLocationCallback;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/BatchedLocationCallback;->onLocationBatch(Ljava/util/List;)V

    return-void
.end method

.method public onLocationChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/LocationManager$BatchedLocationCallbackWrapper;->mCallback:Landroid/location/BatchedLocationCallback;

    invoke-virtual {v0, p1}, Landroid/location/BatchedLocationCallback;->onLocationBatch(Ljava/util/List;)V

    return-void
.end method
