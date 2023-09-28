# classes.dex

.class public final Landroid/bluetooth/le/AdvertiseData$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIncludeDeviceName:Z

.field private mIncludeTxPowerLevel:Z

.field private mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private mServiceSolicitationUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private mTransportDiscoveryData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/TransportDiscoveryData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceUuids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceSolicitationUuids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mTransportDiscoveryData:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mManufacturerSpecificData:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;
    .registers 6

    if-ltz p1, :cond_13

    if-eqz p2, :cond_a

    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "manufacturerSpecificData is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid manufacturerId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;
    .registers 5

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serviceDataUuid or serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addServiceSolicitationUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceSolicitationUuids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serviceSolicitationUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceUuids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serviceUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTransportDiscoveryData(Landroid/bluetooth/le/TransportDiscoveryData;)Landroid/bluetooth/le/AdvertiseData$Builder;
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mTransportDiscoveryData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "transportDiscoveryData is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Landroid/bluetooth/le/AdvertiseData;
    .registers 11

    new-instance v9, Landroid/bluetooth/le/AdvertiseData;

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceUuids:Ljava/util/List;

    iget-object v2, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceSolicitationUuids:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mTransportDiscoveryData:Ljava/util/List;

    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mManufacturerSpecificData:Landroid/util/SparseArray;

    iget-object v5, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceData:Ljava/util/Map;

    iget-boolean v6, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mIncludeTxPowerLevel:Z

    iget-boolean v7, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mIncludeDeviceName:Z

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/bluetooth/le/AdvertiseData;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZLandroid/bluetooth/le/AdvertiseData-IA;)V

    return-object v9
.end method

.method public setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mIncludeDeviceName:Z

    return-object p0
.end method

.method public setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mIncludeTxPowerLevel:Z

    return-object p0
.end method
